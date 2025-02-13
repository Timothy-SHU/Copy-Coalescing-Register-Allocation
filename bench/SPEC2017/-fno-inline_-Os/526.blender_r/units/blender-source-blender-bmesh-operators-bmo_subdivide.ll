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
%struct.SubDPattern = type { [20 x i32], ptr, i32 }
%struct.SubDFaceData = type { ptr, ptr, i32, ptr }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMFlagLayer = type { i16 }
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

; Function Attrs: noinline nounwind optsize uwtable
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
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  store ptr null, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  store ptr null, ptr %8, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  store ptr null, ptr %9, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #14
  store ptr null, ptr %10, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 2, i16 noundef signext 1) #15
  %15 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #15
  %16 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #15
  %17 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.3) #15
  %18 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.4) #15
  %19 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.5) #15
  %20 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.6) #15
  %21 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.7) #15
  %22 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.8) #15
  %23 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.9) #15
  %24 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #15
  %25 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.11) #15
  store ptr null, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 1), align 8, !tbaa !34
  %26 = icmp ult i32 %21, 3
  br i1 %26, label %27, label %31

27:                                               ; preds = %2
  %28 = zext nneg i32 %21 to i64
  %29 = shl i64 %28, 2
  %30 = call ptr @llvm.load.relative.i64(ptr @reltable.bmo_subdivide_edges_exec, i64 %29)
  store ptr %30, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 1), align 8, !tbaa !34
  br label %31

31:                                               ; preds = %2, %27
  %32 = icmp eq i8 %22, 0
  %33 = select i1 %32, ptr null, ptr @quad_1edge
  %34 = select i1 %32, ptr null, ptr @tri_1edge
  store ptr %33, ptr @patterns, align 16, !tbaa !34
  store ptr %34, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 2), align 16, !tbaa !34
  %35 = icmp eq i8 %23, 0
  %36 = select i1 %35, ptr null, ptr @quad_4edge
  %37 = select i1 %35, ptr null, ptr @tri_3edge
  store ptr %36, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 3), align 8, !tbaa !34
  store ptr %37, ptr getelementptr inbounds ([6 x ptr], ptr @patterns, i64 0, i64 5), align 8, !tbaa !34
  %38 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %38, i32 noundef 28) #15
  call fastcc void @bmo_subd_init_shape_info(ptr noundef %0, ptr noundef nonnull %3) #16
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 14, i32 1
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi ptr [ %39, %41 ], [ %50, %43 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = load i32, ptr %42, align 8, !tbaa !42
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %48, ptr noundef nonnull %49) #16
  %50 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %43, !llvm.loop !46

52:                                               ; preds = %43, %31
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 2, i16 noundef signext 1) #15
  store i32 %15, ptr %3, align 8, !tbaa !48
  %53 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 10
  store ptr %1, ptr %53, align 8, !tbaa !49
  %54 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.12) #15
  %55 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 11
  store ptr %54, ptr %55, align 8, !tbaa !50
  %56 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.13) #15
  %57 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 12
  store ptr %56, ptr %57, align 8, !tbaa !51
  %58 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 1
  store float %17, ptr %58, align 4, !tbaa !52
  %59 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 2
  store i32 %18, ptr %59, align 8, !tbaa !53
  %60 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 9
  store i32 %16, ptr %60, align 8, !tbaa !54
  %61 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 3
  store float %19, ptr %61, align 4, !tbaa !55
  %62 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 4
  store float %20, ptr %62, align 8, !tbaa !56
  %63 = fcmp une float %17, 0.000000e+00
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 5
  store i8 %64, ptr %65, align 4, !tbaa !57
  %66 = call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.14) #15
  %67 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 6
  store i8 %66, ptr %67, align 1, !tbaa !58
  %68 = fcmp une float %19, 0.000000e+00
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 8
  store i8 %69, ptr %70, align 1, !tbaa !59
  %71 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 7
  store i8 %25, ptr %71, align 2, !tbaa !60
  br i1 %68, label %72, label %83

72:                                               ; preds = %52
  %73 = call ptr @BLI_rng_new_srandom(i32 noundef %16) #15
  %74 = call float @BLI_rng_get_float(ptr noundef %73) #15
  %75 = fmul float %74, 2.000000e+02
  %76 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 13
  store float %75, ptr %76, align 8, !tbaa !61
  %77 = call float @BLI_rng_get_float(ptr noundef %73) #15
  %78 = fmul float %77, 2.000000e+02
  %79 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 13, i64 1
  store float %78, ptr %79, align 4, !tbaa !61
  %80 = call float @BLI_rng_get_float(ptr noundef %73) #15
  %81 = fmul float %80, 2.000000e+02
  %82 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 13, i64 2
  store float %81, ptr %82, align 8, !tbaa !61
  call void @BLI_rng_free(ptr noundef %73) #15
  br label %83

83:                                               ; preds = %72, %52
  call void @BMO_slot_map_to_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.13, i8 noundef zeroext 8, i16 noundef signext 4) #15
  call void @BMO_slot_map_to_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, i16 noundef signext 2) #15
  %84 = call ptr @BLI_stack_new(i64 noundef 32, ptr noundef nonnull @__func__.bmo_subdivide_edges_exec) #15
  %85 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, ptr noundef %0, i8 noundef zeroext 3, ptr noundef null) #16
  %86 = icmp eq ptr %85, null
  br i1 %86, label %304, label %87

87:                                               ; preds = %83
  %88 = icmp eq i8 %24, 0
  br label %89

89:                                               ; preds = %87, %300
  %90 = phi ptr [ %85, %87 ], [ %302, %300 ]
  %91 = phi i32 [ undef, %87 ], [ %301, %300 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  br i1 %88, label %96, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.BMFace, ptr %90, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !62
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %300

96:                                               ; preds = %89, %92
  %97 = load ptr, ptr %8, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %101 = call i64 %100(ptr noundef nonnull %97) #15
  %102 = lshr i64 %101, 3
  br label %103

103:                                              ; preds = %99, %96
  %104 = phi i64 [ %102, %99 ], [ 0, %96 ]
  %105 = getelementptr inbounds %struct.BMFace, ptr %90, i64 0, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !62
  %107 = sext i32 %106 to i64
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  call void @_bli_array_grow_func(ptr noundef nonnull %8, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %106, ptr noundef nonnull @.str.15) #15
  br label %110

110:                                              ; preds = %109, %103
  %111 = load ptr, ptr %7, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %115 = call i64 %114(ptr noundef nonnull %111) #15
  %116 = lshr i64 %115, 3
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i64 [ %116, %113 ], [ 0, %110 ]
  %119 = load i32, ptr %105, align 8, !tbaa !62
  %120 = sext i32 %119 to i64
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %119, ptr noundef nonnull @.str.16) #15
  br label %123

123:                                              ; preds = %122, %117
  %124 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %90) #16
  store ptr %124, ptr %11, align 8, !tbaa !34
  %125 = icmp eq ptr %124, null
  br i1 %125, label %182, label %126

126:                                              ; preds = %123, %126
  %127 = phi i64 [ %156, %126 ], [ 0, %123 ]
  %128 = phi ptr [ %154, %126 ], [ null, %123 ]
  %129 = phi ptr [ %153, %126 ], [ null, %123 ]
  %130 = phi i32 [ %151, %126 ], [ 0, %123 ]
  %131 = phi ptr [ %155, %126 ], [ %124, %123 ]
  %132 = getelementptr inbounds %struct.BMLoop, ptr %131, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !65
  %134 = load ptr, ptr %8, align 8, !tbaa !34
  %135 = getelementptr inbounds ptr, ptr %134, i64 %127
  store ptr %133, ptr %135, align 8, !tbaa !34
  %136 = load ptr, ptr %11, align 8, !tbaa !34
  %137 = getelementptr inbounds %struct.BMLoop, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !67
  %139 = load ptr, ptr %7, align 8, !tbaa !34
  %140 = getelementptr inbounds ptr, ptr %139, i64 %127
  store ptr %138, ptr %140, align 8, !tbaa !34
  %141 = load ptr, ptr %8, align 8, !tbaa !34
  %142 = getelementptr inbounds ptr, ptr %141, i64 %127
  %143 = load ptr, ptr %142, align 8, !tbaa !34
  %144 = getelementptr inbounds %struct.BMEdge, ptr %143, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !68
  %146 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %145, i16 noundef signext 1) #16, !range !71
  %147 = icmp ne i16 %146, 0
  %148 = icmp eq ptr %129, null
  %149 = select i1 %148, ptr %128, ptr %143
  %150 = zext i1 %147 to i32
  %151 = add nuw nsw i32 %130, %150
  %152 = select i1 %147, i1 %148, i1 false
  %153 = select i1 %152, ptr %143, ptr %129
  %154 = select i1 %147, ptr %149, ptr %128
  %155 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  store ptr %155, ptr %11, align 8, !tbaa !34
  %156 = add nuw i64 %127, 1
  %157 = icmp eq ptr %155, null
  br i1 %157, label %158, label %126, !llvm.loop !72

158:                                              ; preds = %126
  %159 = icmp eq i32 %151, 2
  br i1 %159, label %160, label %182

160:                                              ; preds = %158
  %161 = call zeroext i8 @BM_edge_share_vert_check(ptr noundef %153, ptr noundef %154) #15
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %182, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.BMEdge, ptr %153, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !73
  %166 = getelementptr inbounds %struct.BMVert, ptr %165, i64 0, i32 2
  %167 = getelementptr inbounds %struct.BMEdge, ptr %153, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !74
  %169 = getelementptr inbounds %struct.BMVert, ptr %168, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %166, ptr noundef nonnull %169) #16
  %170 = getelementptr inbounds %struct.BMEdge, ptr %154, i64 0, i32 3
  %171 = load ptr, ptr %170, align 8, !tbaa !73
  %172 = getelementptr inbounds %struct.BMVert, ptr %171, i64 0, i32 2
  %173 = getelementptr inbounds %struct.BMEdge, ptr %154, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !74
  %175 = getelementptr inbounds %struct.BMVert, ptr %174, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %172, ptr noundef nonnull %175) #16
  %176 = call fastcc float @normalize_v3(ptr noundef nonnull %12) #16
  %177 = call fastcc float @normalize_v3(ptr noundef nonnull %13) #16
  %178 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %13) #16
  %179 = call float @llvm.fabs.f32(float %178)
  %180 = fcmp ogt float %179, 0x3FEFFF9720000000
  br i1 %180, label %181, label %182

181:                                              ; preds = %163
  br label %182

182:                                              ; preds = %123, %163, %181, %160, %158
  %183 = phi i32 [ 0, %181 ], [ 2, %163 ], [ 2, %160 ], [ %151, %158 ], [ 0, %123 ]
  %184 = getelementptr inbounds %struct.BMFace, ptr %90, i64 0, i32 1
  %185 = load ptr, ptr %184, align 8, !tbaa !75
  %186 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %185, i16 noundef signext 4) #16, !range !71
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load ptr, ptr %8, align 8
  br label %234

190:                                              ; preds = %182
  %191 = load ptr, ptr %57, align 8, !tbaa !51
  %192 = call fastcc ptr @BMO_slot_map_data_get(ptr noundef %191, ptr noundef nonnull %90) #16
  %193 = load ptr, ptr %192, align 8, !tbaa !34
  %194 = getelementptr inbounds %struct.SubDPattern, ptr %193, i64 0, i32 2
  %195 = load i32, ptr %194, align 8, !tbaa !76
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %300

197:                                              ; preds = %190
  %198 = load ptr, ptr %8, align 8
  %199 = zext nneg i32 %195 to i64
  br label %200

200:                                              ; preds = %197, %231
  %201 = phi i64 [ 0, %197 ], [ %232, %231 ]
  br label %205

202:                                              ; preds = %205
  %203 = add nuw nsw i64 %206, 1
  %204 = icmp eq i64 %203, %199
  br i1 %204, label %221, label %205, !llvm.loop !78

205:                                              ; preds = %200, %202
  %206 = phi i64 [ 0, %200 ], [ %203, %202 ]
  %207 = add nuw nsw i64 %206, %201
  %208 = trunc i64 %207 to i32
  %209 = urem i32 %208, %195
  %210 = zext nneg i32 %209 to i64
  %211 = getelementptr inbounds ptr, ptr %198, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !34
  %213 = getelementptr inbounds %struct.BMEdge, ptr %212, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !68
  %215 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %214, i16 noundef signext 1) #16, !range !71
  %216 = icmp ne i16 %215, 0
  %217 = getelementptr inbounds [20 x i32], ptr %193, i64 0, i64 %206
  %218 = load i32, ptr %217, align 4, !tbaa !79
  %219 = icmp eq i32 %218, 0
  %220 = xor i1 %216, %219
  br i1 %220, label %202, label %231

221:                                              ; preds = %202
  %222 = call ptr @BLI_stack_push_r(ptr noundef %84) #15
  %223 = getelementptr inbounds %struct.SubDFaceData, ptr %222, i64 0, i32 1
  store ptr %193, ptr %223, align 8, !tbaa !80
  %224 = load ptr, ptr %7, align 8, !tbaa !34
  %225 = and i64 %201, 4294967295
  %226 = getelementptr inbounds ptr, ptr %224, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !34
  store ptr %227, ptr %222, align 8, !tbaa !82
  %228 = getelementptr inbounds %struct.SubDFaceData, ptr %222, i64 0, i32 3
  store ptr %90, ptr %228, align 8, !tbaa !83
  %229 = getelementptr inbounds %struct.SubDFaceData, ptr %222, i64 0, i32 2
  store i32 %183, ptr %229, align 8, !tbaa !84
  %230 = load ptr, ptr %184, align 8, !tbaa !75
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %230, i16 noundef signext 1) #16
  br label %300

231:                                              ; preds = %205
  %232 = add nuw nsw i64 %201, 1
  %233 = icmp eq i64 %232, %199
  br i1 %233, label %300, label %200, !llvm.loop !85

234:                                              ; preds = %188, %285
  %235 = phi i64 [ 0, %188 ], [ %287, %285 ]
  %236 = phi i1 [ false, %188 ], [ %288, %285 ]
  %237 = phi i32 [ %91, %188 ], [ %286, %285 ]
  %238 = getelementptr inbounds [6 x ptr], ptr @patterns, i64 0, i64 %235
  %239 = load ptr, ptr %238, align 8, !tbaa !34
  %240 = icmp eq ptr %239, null
  br i1 %240, label %285, label %241

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.SubDPattern, ptr %239, i64 0, i32 2
  %243 = load i32, ptr %242, align 8, !tbaa !76
  %244 = load i32, ptr %105, align 8, !tbaa !62
  %245 = icmp eq i32 %243, %244
  %246 = icmp sgt i32 %243, 0
  %247 = and i1 %245, %246
  br i1 %247, label %248, label %285

248:                                              ; preds = %241
  %249 = zext nneg i32 %243 to i64
  br label %250

250:                                              ; preds = %248, %271
  %251 = phi i64 [ 0, %248 ], [ %272, %271 ]
  br label %252

252:                                              ; preds = %250, %268
  %253 = phi i64 [ 0, %250 ], [ %269, %268 ]
  %254 = add nuw nsw i64 %253, %251
  %255 = trunc i64 %254 to i32
  %256 = srem i32 %255, %243
  %257 = zext nneg i32 %256 to i64
  %258 = getelementptr inbounds ptr, ptr %189, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !34
  %260 = getelementptr inbounds %struct.BMEdge, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !68
  %262 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %261, i16 noundef signext 1) #16, !range !71
  %263 = icmp ne i16 %262, 0
  %264 = getelementptr inbounds [20 x i32], ptr %239, i64 0, i64 %253
  %265 = load i32, ptr %264, align 4, !tbaa !79
  %266 = icmp eq i32 %265, 0
  %267 = xor i1 %263, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %252
  %269 = add nuw nsw i64 %253, 1
  %270 = icmp eq i64 %269, %249
  br i1 %270, label %274, label %252, !llvm.loop !86

271:                                              ; preds = %252
  %272 = add nuw nsw i64 %251, 1
  %273 = icmp eq i64 %272, %249
  br i1 %273, label %283, label %250, !llvm.loop !87

274:                                              ; preds = %268
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %185, i16 noundef signext 1) #16
  %275 = call ptr @BLI_stack_push_r(ptr noundef %84) #15
  %276 = getelementptr inbounds %struct.SubDFaceData, ptr %275, i64 0, i32 1
  store ptr %239, ptr %276, align 8, !tbaa !80
  %277 = load ptr, ptr %7, align 8, !tbaa !34
  %278 = and i64 %251, 4294967295
  %279 = getelementptr inbounds ptr, ptr %277, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !34
  store ptr %280, ptr %275, align 8, !tbaa !82
  %281 = getelementptr inbounds %struct.SubDFaceData, ptr %275, i64 0, i32 3
  store ptr %90, ptr %281, align 8, !tbaa !83
  %282 = getelementptr inbounds %struct.SubDFaceData, ptr %275, i64 0, i32 2
  store i32 %183, ptr %282, align 8, !tbaa !84
  br label %290

283:                                              ; preds = %271
  %284 = trunc i64 %253 to i32
  br label %285

285:                                              ; preds = %283, %241, %234
  %286 = phi i32 [ %237, %241 ], [ %237, %234 ], [ %284, %283 ]
  %287 = add nuw nsw i64 %235, 1
  %288 = icmp ugt i64 %235, 4
  %289 = icmp eq i64 %287, 6
  br i1 %289, label %290, label %234, !llvm.loop !88

290:                                              ; preds = %285, %274
  %291 = phi i1 [ %236, %274 ], [ %288, %285 ]
  %292 = phi i32 [ %243, %274 ], [ %286, %285 ]
  %293 = icmp ne i32 %183, 0
  %294 = and i1 %291, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load ptr, ptr %184, align 8, !tbaa !75
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %296, i16 noundef signext 1) #16
  %297 = call ptr @BLI_stack_push_r(ptr noundef %84) #15
  %298 = getelementptr inbounds %struct.SubDFaceData, ptr %297, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %297, i8 0, i64 16, i1 false)
  store i32 %183, ptr %298, align 8, !tbaa !84
  %299 = getelementptr inbounds %struct.SubDFaceData, ptr %297, i64 0, i32 3
  store ptr %90, ptr %299, align 8, !tbaa !83
  br label %300

300:                                              ; preds = %231, %190, %290, %295, %221, %92
  %301 = phi i32 [ %91, %92 ], [ %91, %221 ], [ %292, %295 ], [ %292, %290 ], [ %91, %190 ], [ %91, %231 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  %302 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #16
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %89, !llvm.loop !89

304:                                              ; preds = %300, %83
  %305 = phi i32 [ undef, %83 ], [ %301, %300 ]
  %306 = call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str) #15
  %307 = getelementptr inbounds %struct.BMOpSlot, ptr %306, i64 0, i32 3
  %308 = load i32, ptr %307, align 8, !tbaa !90
  %309 = icmp sgt i32 %308, 0
  br i1 %309, label %310, label %325

310:                                              ; preds = %304
  %311 = getelementptr inbounds %struct.BMOpSlot, ptr %306, i64 0, i32 4
  br label %312

312:                                              ; preds = %310, %312
  %313 = phi i64 [ 0, %310 ], [ %321, %312 ]
  %314 = load ptr, ptr %311, align 8, !tbaa !92
  %315 = getelementptr inbounds ptr, ptr %314, i64 %313
  %316 = load ptr, ptr %315, align 8, !tbaa !34
  %317 = getelementptr inbounds %struct.BMEdge, ptr %316, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !74
  %319 = getelementptr inbounds %struct.BMEdge, ptr %316, i64 0, i32 3
  %320 = load ptr, ptr %319, align 8, !tbaa !73
  call fastcc void @bm_subdivide_multicut(ptr noundef %0, ptr noundef %316, ptr noundef nonnull %3, ptr noundef %318, ptr noundef %320) #16
  %321 = add nuw nsw i64 %313, 1
  %322 = load i32, ptr %307, align 8, !tbaa !90
  %323 = sext i32 %322 to i64
  %324 = icmp slt i64 %321, %323
  br i1 %324, label %312, label %325, !llvm.loop !93

325:                                              ; preds = %312, %304
  %326 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #16
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 14, i32 1
  br label %340

330:                                              ; preds = %340, %325
  %331 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %84) #15
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %333, label %610

333:                                              ; preds = %330
  %334 = add i32 %15, 1
  %335 = add nsw i32 %15, -1
  %336 = sext i32 %15 to i64
  %337 = icmp sgt i32 %15, 0
  %338 = zext nneg i32 %15 to i64
  %339 = zext nneg i32 %15 to i64
  br label %349

340:                                              ; preds = %328, %340
  %341 = phi ptr [ %326, %328 ], [ %347, %340 ]
  %342 = load ptr, ptr %341, align 8, !tbaa !38
  %343 = load i32, ptr %329, align 8, !tbaa !42
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, ptr %342, i64 %344
  %346 = getelementptr inbounds %struct.BMVert, ptr %341, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %346, ptr noundef %345) #16
  %347 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %348 = icmp eq ptr %347, null
  br i1 %348, label %330, label %340, !llvm.loop !94

349:                                              ; preds = %333, %606
  %350 = phi i32 [ %305, %333 ], [ %607, %606 ]
  %351 = call ptr @BLI_stack_peek(ptr noundef %84) #15
  %352 = getelementptr inbounds %struct.SubDFaceData, ptr %351, i64 0, i32 3
  %353 = load ptr, ptr %352, align 8, !tbaa !83
  %354 = getelementptr inbounds %struct.SubDFaceData, ptr %351, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !80
  %356 = icmp eq ptr %355, null
  br i1 %356, label %357, label %552

357:                                              ; preds = %349
  %358 = getelementptr inbounds %struct.SubDFaceData, ptr %351, i64 0, i32 2
  %359 = load i32, ptr %358, align 8, !tbaa !84
  %360 = icmp eq i32 %359, 2
  br i1 %360, label %361, label %606

361:                                              ; preds = %357
  %362 = load ptr, ptr %10, align 8
  %363 = icmp eq ptr %362, null
  br i1 %363, label %368, label %364

364:                                              ; preds = %361
  %365 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %366 = call i64 %365(ptr noundef nonnull %362) #15
  %367 = lshr i64 %366, 3
  br label %368

368:                                              ; preds = %364, %361
  %369 = phi i64 [ %367, %364 ], [ 0, %361 ]
  %370 = getelementptr inbounds %struct.BMFace, ptr %353, i64 0, i32 3
  %371 = load i32, ptr %370, align 8, !tbaa !62
  %372 = sext i32 %371 to i64
  %373 = icmp ult i64 %369, %372
  br i1 %373, label %374, label %376

374:                                              ; preds = %368
  call void @_bli_array_grow_func(ptr noundef nonnull %10, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %371, ptr noundef nonnull @.str.17) #15
  %375 = load i32, ptr %370, align 8, !tbaa !62
  br label %376

376:                                              ; preds = %374, %368
  %377 = phi i32 [ %375, %374 ], [ %371, %368 ]
  %378 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %353) #16
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %385

380:                                              ; preds = %385, %376
  %381 = icmp sgt i32 %377, 1
  %382 = load ptr, ptr %10, align 8, !tbaa !34
  br i1 %381, label %383, label %417

383:                                              ; preds = %380
  %384 = zext nneg i32 %377 to i64
  br label %393

385:                                              ; preds = %376, %385
  %386 = phi i64 [ %391, %385 ], [ 0, %376 ]
  %387 = phi ptr [ %390, %385 ], [ %378, %376 ]
  %388 = load ptr, ptr %10, align 8, !tbaa !34
  %389 = getelementptr inbounds ptr, ptr %388, i64 %386
  store ptr %387, ptr %389, align 8, !tbaa !34
  %390 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  %391 = add nuw i64 %386, 1
  %392 = icmp eq ptr %390, null
  br i1 %392, label %380, label %385, !llvm.loop !95

393:                                              ; preds = %383, %412
  %394 = phi i64 [ 1, %383 ], [ %413, %412 ]
  %395 = getelementptr ptr, ptr %382, i64 %394
  %396 = getelementptr ptr, ptr %395, i64 -1
  %397 = load ptr, ptr %396, align 8, !tbaa !34
  %398 = getelementptr inbounds %struct.BMLoop, ptr %397, i64 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !67
  %400 = getelementptr inbounds %struct.BMVert, ptr %399, i64 0, i32 1
  %401 = load ptr, ptr %400, align 8, !tbaa !96
  %402 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %401, i16 noundef signext 8) #16, !range !71
  %403 = icmp eq i16 %402, 0
  br i1 %403, label %404, label %412

404:                                              ; preds = %393
  %405 = load ptr, ptr %395, align 8, !tbaa !34
  %406 = getelementptr inbounds %struct.BMLoop, ptr %405, i64 0, i32 1
  %407 = load ptr, ptr %406, align 8, !tbaa !67
  %408 = getelementptr inbounds %struct.BMVert, ptr %407, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !96
  %410 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %409, i16 noundef signext 8) #16, !range !71
  %411 = icmp eq i16 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %393, %404
  %413 = add nuw nsw i64 %394, 1
  %414 = icmp eq i64 %413, %384
  br i1 %414, label %417, label %393, !llvm.loop !97

415:                                              ; preds = %404
  %416 = trunc i64 %394 to i32
  br label %417

417:                                              ; preds = %412, %415, %380
  %418 = phi i32 [ 1, %380 ], [ %416, %415 ], [ %377, %412 ]
  %419 = add i32 %334, %418
  %420 = srem i32 %419, %377
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds ptr, ptr %382, i64 %421
  %423 = load ptr, ptr %422, align 8, !tbaa !34
  %424 = getelementptr inbounds %struct.BMLoop, ptr %423, i64 0, i32 1
  %425 = load ptr, ptr %424, align 8, !tbaa !67
  %426 = getelementptr inbounds %struct.BMVert, ptr %425, i64 0, i32 1
  %427 = load ptr, ptr %426, align 8, !tbaa !96
  %428 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %427, i16 noundef signext 8) #16, !range !71
  %429 = icmp eq i16 %428, 0
  br i1 %429, label %430, label %466

430:                                              ; preds = %417
  %431 = getelementptr ptr, ptr %382, i64 -1
  %432 = icmp sgt i32 %377, 0
  br i1 %432, label %433, label %466

433:                                              ; preds = %430, %464
  %434 = phi i32 [ %465, %464 ], [ 0, %430 ]
  %435 = add i32 %419, %434
  %436 = srem i32 %435, %377
  %437 = icmp eq i32 %436, 0
  %438 = select i1 %437, i32 %377, i32 %436
  %439 = sext i32 %438 to i64
  %440 = getelementptr ptr, ptr %431, i64 %439
  %441 = load ptr, ptr %440, align 8, !tbaa !34
  %442 = getelementptr inbounds %struct.BMLoop, ptr %441, i64 0, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !67
  %444 = getelementptr inbounds %struct.BMVert, ptr %443, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !96
  %446 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %445, i16 noundef signext 8) #16, !range !71
  %447 = icmp eq i16 %446, 0
  br i1 %447, label %448, label %461

448:                                              ; preds = %433
  %449 = sext i32 %436 to i64
  %450 = getelementptr inbounds ptr, ptr %382, i64 %449
  %451 = load ptr, ptr %450, align 8, !tbaa !34
  %452 = getelementptr inbounds %struct.BMLoop, ptr %451, i64 0, i32 1
  %453 = load ptr, ptr %452, align 8, !tbaa !67
  %454 = getelementptr inbounds %struct.BMVert, ptr %453, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !96
  %456 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %455, i16 noundef signext 8) #16, !range !71
  %457 = icmp eq i16 %456, 0
  %458 = add nuw nsw i32 %434, 1
  %459 = icmp slt i32 %458, %377
  %460 = select i1 %457, i1 %459, i1 false
  br i1 %460, label %464, label %466

461:                                              ; preds = %433
  %462 = add nuw nsw i32 %434, 1
  %463 = icmp slt i32 %462, %377
  br i1 %463, label %464, label %466

464:                                              ; preds = %461, %448
  %465 = phi i32 [ %462, %461 ], [ %458, %448 ]
  br label %433, !llvm.loop !98

466:                                              ; preds = %448, %461, %430, %417
  %467 = phi i32 [ %420, %417 ], [ %350, %430 ], [ %436, %461 ], [ %436, %448 ]
  %468 = add nsw i32 %335, %467
  %469 = load ptr, ptr %9, align 8
  %470 = icmp eq ptr %469, null
  br i1 %470, label %475, label %471

471:                                              ; preds = %466
  %472 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %473 = call i64 %472(ptr noundef nonnull %469) #15
  %474 = lshr i64 %473, 4
  br label %475

475:                                              ; preds = %471, %466
  %476 = phi i64 [ 0, %466 ], [ %474, %471 ]
  %477 = icmp ult i64 %476, %336
  br i1 %477, label %478, label %479

478:                                              ; preds = %475
  call void @_bli_array_grow_func(ptr noundef nonnull %9, ptr noundef null, i32 noundef 16, i32 noundef 0, i32 noundef %15, ptr noundef nonnull @.str.18) #15
  br label %479

479:                                              ; preds = %478, %475
  br i1 %337, label %481, label %606

480:                                              ; preds = %522
  br i1 %337, label %532, label %606

481:                                              ; preds = %479, %522
  %482 = phi i64 [ %530, %522 ], [ 0, %479 ]
  %483 = phi i32 [ %529, %522 ], [ %418, %479 ]
  %484 = phi i32 [ %527, %522 ], [ %468, %479 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #14
  %485 = load ptr, ptr %10, align 8, !tbaa !34
  %486 = sext i32 %483 to i64
  %487 = getelementptr inbounds ptr, ptr %485, i64 %486
  %488 = load ptr, ptr %487, align 8, !tbaa !34
  %489 = getelementptr inbounds %struct.BMLoop, ptr %488, i64 0, i32 1
  %490 = load ptr, ptr %489, align 8, !tbaa !67
  %491 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %14, ptr noundef null, i8 noundef zeroext 6, ptr noundef %490) #16
  %492 = icmp eq ptr %491, null
  %493 = sext i32 %484 to i64
  br i1 %492, label %510, label %494

494:                                              ; preds = %481, %507
  %495 = phi ptr [ %508, %507 ], [ %491, %481 ]
  %496 = getelementptr inbounds %struct.BMLoop, ptr %495, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8, !tbaa !99
  %498 = icmp eq ptr %497, %353
  br i1 %498, label %507, label %499

499:                                              ; preds = %494
  %500 = load ptr, ptr %10, align 8, !tbaa !34
  %501 = getelementptr inbounds ptr, ptr %500, i64 %493
  %502 = load ptr, ptr %501, align 8, !tbaa !34
  %503 = getelementptr inbounds %struct.BMLoop, ptr %502, i64 0, i32 1
  %504 = load ptr, ptr %503, align 8, !tbaa !67
  %505 = call zeroext i8 @BM_vert_in_face(ptr noundef %497, ptr noundef %504) #15
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %507, label %519

507:                                              ; preds = %494, %499
  %508 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %14) #16
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %494, !llvm.loop !100

510:                                              ; preds = %507, %481
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #14
  %511 = load ptr, ptr %10, align 8, !tbaa !34
  %512 = getelementptr inbounds ptr, ptr %511, i64 %486
  %513 = load ptr, ptr %512, align 8, !tbaa !34
  %514 = load ptr, ptr %9, align 8, !tbaa !34
  %515 = getelementptr inbounds [2 x ptr], ptr %514, i64 %482
  store ptr %513, ptr %515, align 8, !tbaa !34
  %516 = load ptr, ptr %10, align 8, !tbaa !34
  %517 = getelementptr inbounds ptr, ptr %516, i64 %493
  %518 = load ptr, ptr %517, align 8, !tbaa !34
  br label %522

519:                                              ; preds = %499
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #14
  %520 = load ptr, ptr %9, align 8, !tbaa !34
  %521 = getelementptr inbounds [2 x ptr], ptr %520, i64 %482
  store ptr null, ptr %521, align 8, !tbaa !34
  br label %522

522:                                              ; preds = %519, %510
  %523 = phi ptr [ null, %519 ], [ %518, %510 ]
  %524 = load ptr, ptr %9, align 8, !tbaa !34
  %525 = getelementptr inbounds [2 x ptr], ptr %524, i64 %482, i64 1
  store ptr %523, ptr %525, align 8, !tbaa !34
  %526 = add nsw i32 %484, -1
  %527 = srem i32 %526, %377
  %528 = add nsw i32 %483, 1
  %529 = srem i32 %528, %377
  %530 = add nuw nsw i64 %482, 1
  %531 = icmp eq i64 %530, %338
  br i1 %531, label %480, label %481, !llvm.loop !101

532:                                              ; preds = %480, %549
  %533 = phi i64 [ %550, %549 ], [ 0, %480 ]
  %534 = load ptr, ptr %9, align 8, !tbaa !34
  %535 = getelementptr inbounds [2 x ptr], ptr %534, i64 %533
  %536 = load ptr, ptr %535, align 8, !tbaa !34
  %537 = icmp eq ptr %536, null
  br i1 %537, label %549, label %538

538:                                              ; preds = %532
  %539 = getelementptr inbounds [2 x ptr], ptr %534, i64 %533, i64 1
  %540 = load ptr, ptr %539, align 8, !tbaa !34
  %541 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %353, ptr noundef nonnull %536, ptr noundef %540, ptr noundef nonnull %11, ptr noundef null, i8 noundef zeroext 0) #15
  %542 = icmp eq ptr %541, null
  br i1 %542, label %549, label %543

543:                                              ; preds = %538
  %544 = load ptr, ptr %11, align 8, !tbaa !34
  %545 = getelementptr inbounds %struct.BMLoop, ptr %544, i64 0, i32 2
  %546 = load ptr, ptr %545, align 8, !tbaa !65
  %547 = getelementptr inbounds %struct.BMEdge, ptr %546, i64 0, i32 1
  %548 = load ptr, ptr %547, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %548, i16 noundef signext 8) #16
  br label %549

549:                                              ; preds = %538, %543, %532
  %550 = add nuw nsw i64 %533, 1
  %551 = icmp eq i64 %550, %339
  br i1 %551, label %606, label %532, !llvm.loop !102

552:                                              ; preds = %349
  %553 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef %353) #16
  store ptr %553, ptr %11, align 8, !tbaa !34
  %554 = icmp eq ptr %553, null
  br i1 %554, label %568, label %555

555:                                              ; preds = %552, %564
  %556 = phi i32 [ %566, %564 ], [ 0, %552 ]
  %557 = phi ptr [ %565, %564 ], [ %553, %552 ]
  %558 = getelementptr inbounds %struct.BMLoop, ptr %557, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !67
  %560 = load ptr, ptr %351, align 8, !tbaa !82
  %561 = icmp eq ptr %559, %560
  br i1 %561, label %562, label %564

562:                                              ; preds = %555
  %563 = xor i32 %556, -1
  br label %568

564:                                              ; preds = %555
  %565 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  store ptr %565, ptr %11, align 8, !tbaa !34
  %566 = add nuw nsw i32 %556, 1
  %567 = icmp eq ptr %565, null
  br i1 %567, label %568, label %555, !llvm.loop !103

568:                                              ; preds = %564, %552, %562
  %569 = phi i32 [ %563, %562 ], [ 0, %552 ], [ 0, %564 ]
  %570 = load ptr, ptr %7, align 8
  %571 = icmp eq ptr %570, null
  br i1 %571, label %576, label %572

572:                                              ; preds = %568
  %573 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %574 = call i64 %573(ptr noundef nonnull %570) #15
  %575 = lshr i64 %574, 3
  br label %576

576:                                              ; preds = %572, %568
  %577 = phi i64 [ %575, %572 ], [ 0, %568 ]
  %578 = getelementptr inbounds %struct.BMFace, ptr %353, i64 0, i32 3
  %579 = load i32, ptr %578, align 8, !tbaa !62
  %580 = sext i32 %579 to i64
  %581 = icmp ult i64 %577, %580
  br i1 %581, label %582, label %583

582:                                              ; preds = %576
  call void @_bli_array_grow_func(ptr noundef nonnull %7, ptr noundef null, i32 noundef 8, i32 noundef 0, i32 noundef %579, ptr noundef nonnull @.str.16) #15
  br label %583

583:                                              ; preds = %582, %576
  %584 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 11, ptr noundef nonnull %353) #16
  store ptr %584, ptr %11, align 8, !tbaa !34
  %585 = icmp eq ptr %584, null
  br i1 %585, label %601, label %586

586:                                              ; preds = %583, %586
  %587 = phi i32 [ %599, %586 ], [ 0, %583 ]
  %588 = phi ptr [ %598, %586 ], [ %584, %583 ]
  %589 = add i32 %587, %569
  %590 = load i32, ptr %578, align 8, !tbaa !62
  %591 = add nsw i32 %589, %590
  %592 = srem i32 %591, %590
  %593 = getelementptr inbounds %struct.BMLoop, ptr %588, i64 0, i32 1
  %594 = load ptr, ptr %593, align 8, !tbaa !67
  %595 = load ptr, ptr %7, align 8, !tbaa !34
  %596 = sext i32 %592 to i64
  %597 = getelementptr inbounds ptr, ptr %595, i64 %596
  store ptr %594, ptr %597, align 8, !tbaa !34
  %598 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #16
  store ptr %598, ptr %11, align 8, !tbaa !34
  %599 = add nuw nsw i32 %587, 1
  %600 = icmp eq ptr %598, null
  br i1 %600, label %601, label %586, !llvm.loop !104

601:                                              ; preds = %586, %583
  %602 = phi i32 [ %350, %583 ], [ %592, %586 ]
  %603 = getelementptr inbounds %struct.SubDPattern, ptr %355, i64 0, i32 1
  %604 = load ptr, ptr %603, align 8, !tbaa !105
  %605 = load ptr, ptr %7, align 8, !tbaa !34
  call void %604(ptr noundef %0, ptr noundef nonnull %353, ptr noundef %605, ptr noundef nonnull %3) #15
  br label %606

606:                                              ; preds = %549, %479, %480, %357, %601
  %607 = phi i32 [ %602, %601 ], [ %350, %357 ], [ %527, %480 ], [ %468, %479 ], [ %527, %549 ]
  call void @BLI_stack_discard(ptr noundef %84) #15
  %608 = call zeroext i8 @BLI_stack_is_empty(ptr noundef %84) #15
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %349, label %610, !llvm.loop !106

610:                                              ; preds = %606, %330
  %611 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, ptr noundef %0, i8 noundef zeroext 1, ptr noundef null) #16
  %612 = icmp eq ptr %611, null
  br i1 %612, label %624, label %613

613:                                              ; preds = %610
  %614 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 14, i32 1
  br label %615

615:                                              ; preds = %613, %615
  %616 = phi ptr [ %611, %613 ], [ %622, %615 ]
  %617 = load ptr, ptr %616, align 8, !tbaa !38
  %618 = load i32, ptr %614, align 8, !tbaa !42
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i8, ptr %617, i64 %619
  %621 = getelementptr inbounds %struct.BMVert, ptr %616, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %621, ptr noundef %620) #16
  %622 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #16
  %623 = icmp eq ptr %622, null
  br i1 %623, label %624, label %615, !llvm.loop !107

624:                                              ; preds = %615, %610
  %625 = getelementptr inbounds %struct.SubDParams, ptr %3, i64 0, i32 14, i32 3
  %626 = load i32, ptr %625, align 8, !tbaa !108
  call void @BM_data_layer_free_n(ptr noundef %0, ptr noundef nonnull %38, i32 noundef 28, i32 noundef %626) #15
  call void @BLI_stack_free(ptr noundef %84) #15
  %627 = load ptr, ptr %8, align 8
  %628 = icmp eq ptr %627, null
  br i1 %628, label %631, label %629

629:                                              ; preds = %624
  %630 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %630(ptr noundef nonnull %627) #15
  br label %631

631:                                              ; preds = %629, %624
  %632 = load ptr, ptr %7, align 8
  %633 = icmp eq ptr %632, null
  br i1 %633, label %636, label %634

634:                                              ; preds = %631
  %635 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %635(ptr noundef nonnull %632) #15
  br label %636

636:                                              ; preds = %634, %631
  %637 = load ptr, ptr %9, align 8, !tbaa !34
  %638 = icmp eq ptr %637, null
  br i1 %638, label %641, label %639

639:                                              ; preds = %636
  %640 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %640(ptr noundef nonnull %637) #15
  br label %641

641:                                              ; preds = %639, %636
  %642 = load ptr, ptr %10, align 8, !tbaa !34
  %643 = icmp eq ptr %642, null
  br i1 %643, label %646, label %644

644:                                              ; preds = %641
  %645 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %645(ptr noundef nonnull %642) #15
  br label %646

646:                                              ; preds = %644, %641
  %647 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %647, ptr noundef nonnull @.str.19, i8 noundef zeroext 11, i16 noundef signext 8) #15
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %647, ptr noundef nonnull @.str.20, i8 noundef zeroext 11, i16 noundef signext 16) #15
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %647, ptr noundef nonnull @.str.21, i8 noundef zeroext 11, i16 noundef signext 25) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_subd_init_shape_info(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !PGOFuncName !109 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %4 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %3, i32 noundef 28) #15
  %5 = add nsw i32 %4, -1
  %6 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14
  %7 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14, i32 3
  store i32 %5, ptr %7, align 4, !tbaa !108
  %8 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %3, i32 noundef 28) #15
  store i32 %8, ptr %6, align 4, !tbaa !110
  %9 = tail call i32 @CustomData_get_n_offset(ptr noundef nonnull %3, i32 noundef 28, i32 noundef %5) #15
  %10 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !42
  %11 = tail call i32 @CustomData_number_of_layers(ptr noundef nonnull %3, i32 noundef 28) #15
  %12 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !111
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !112 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #16
  %5 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #16
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !113 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !115
  %4 = tail call ptr %3(ptr noundef %0) #15
  ret ptr %4
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_rng_new_srandom(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BLI_rng_get_float(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_rng_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_map_to_flag(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_stack_new(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !117 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !118
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !122
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: optsize
declare zeroext i8 @BM_edge_share_vert_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !124 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = load float, ptr %2, align 4, !tbaa !61
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !61
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !125 {
  %2 = tail call fastcc float @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #16
  ret float %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !126 {
  %3 = load float, ptr %0, align 4, !tbaa !61
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BMO_slot_map_data_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !127 {
  %3 = getelementptr inbounds %struct.BMOpSlot, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !92
  %5 = tail call ptr @BLI_ghash_lookup_p(ptr noundef %4, ptr noundef %1) #15
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @BLI_stack_push_r(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #3 !PGOFuncName !128 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !118
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !122
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !122
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_subdivide_multicut(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !129 {
  %6 = alloca ptr, align 8
  %7 = alloca %struct.BMVert, align 8
  %8 = alloca %struct.BMVert, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #14
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %10, i64 56, i1 false), !tbaa.struct !130
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #14
  %11 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %12, i64 56, i1 false), !tbaa.struct !130
  %13 = load i32, ptr %2, align 8, !tbaa !48
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i32 [ 0, %15 ], [ %32, %17 ]
  %19 = load i32, ptr %2, align 8, !tbaa !48
  %20 = call fastcc ptr @subdivideedgenum(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %18, i32 noundef %19, ptr noundef nonnull %2, ptr noundef nonnull %6, ptr noundef %3, ptr noundef %4) #16
  %21 = getelementptr inbounds %struct.BMVert, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %22, i16 noundef signext 1) #16
  %23 = load ptr, ptr %16, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %23, i16 noundef signext 1) #16
  %24 = load ptr, ptr %6, align 8, !tbaa !34
  %25 = getelementptr inbounds %struct.BMEdge, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %26, i16 noundef signext 1) #16
  %27 = load ptr, ptr %21, align 8, !tbaa !96
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %27, i16 noundef signext 16) #16
  %28 = load ptr, ptr %16, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %28, i16 noundef signext 16) #16
  %29 = load ptr, ptr %6, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %31, i16 noundef signext 1) #16
  %32 = add nuw nsw i32 %18, 1
  %33 = icmp eq i32 %32, %13
  br i1 %33, label %34, label %17, !llvm.loop !131

34:                                               ; preds = %17, %5
  call fastcc void @alter_co(ptr noundef %10, ptr noundef nonnull %2, float noundef 0.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  call fastcc void @alter_co(ptr noundef %12, ptr noundef nonnull %2, float noundef 1.000000e+00, ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_stack_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_stack_peek(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_stack_discard(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_data_layer_free_n(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_stack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BM_mesh_esubdivide(ptr noundef %0, i8 noundef zeroext %1, float noundef %2, i16 noundef signext %3, i8 noundef zeroext %4, float noundef %5, float noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i16 noundef signext %10, i16 noundef signext %11, i16 noundef signext %12, i32 noundef %13) local_unnamed_addr #0 {
  %15 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %15) #14
  %16 = zext i8 %1 to i32
  %17 = fpext float %2 to double
  %18 = sext i16 %3 to i32
  %19 = zext i8 %4 to i32
  %20 = fpext float %5 to double
  %21 = fpext float %6 to double
  %22 = sext i16 %10 to i32
  %23 = sext i16 %11 to i32
  %24 = sext i16 %12 to i32
  %25 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 1, ptr noundef nonnull @.str.22, i32 noundef %16, double noundef %17, i32 noundef %18, i32 noundef %19, double noundef %20, double noundef %21, i32 noundef %7, i32 noundef %9, i32 noundef %22, i32 noundef %23, i32 noundef %24, i32 noundef %13) #15
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %15) #15
  switch i32 %8, label %32 [
    i32 3, label %30
    i32 1, label %26
    i32 2, label %28
  ]

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.BMOperator, ptr %15, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull @.str.19, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  call void @BM_mesh_select_flush(ptr noundef %0) #15
  br label %32

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.BMOperator, ptr %15, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef nonnull %29, ptr noundef nonnull @.str.19, i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %32

30:                                               ; preds = %14
  call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 0) #15
  %31 = getelementptr inbounds %struct.BMOperator, ptr %15, i64 0, i32 1
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull @.str.19, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 1) #15
  br label %32

32:                                               ; preds = %14, %30, %28, %26
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %15) #14
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_select_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_bisect_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.SubDParams, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #15
  store i32 %5, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 10
  store ptr %1, ptr %6, align 8, !tbaa !49
  %7 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str.12) #15
  %8 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 11
  store ptr %7, ptr %8, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  tail call void @BM_data_layer_add(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 28) #15
  call fastcc void @bmo_subd_init_shape_info(ptr noundef %0, ptr noundef nonnull %4) #16
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 2) #15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2, %12
  %13 = phi ptr [ %18, %12 ], [ %10, %2 ]
  %14 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.BMEdge, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  call fastcc void @bm_subdivide_multicut(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef %15, ptr noundef %17) #16
  %18 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #15
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12, !llvm.loop !132

20:                                               ; preds = %12, %2
  %21 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %21, ptr noundef nonnull @.str.20, i8 noundef zeroext 11, i16 noundef signext 16) #15
  %22 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 14, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !108
  call void @BM_data_layer_free_n(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 28, i32 noundef %23) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @quad_3edge_split(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !133 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = load i32, ptr %3, align 8, !tbaa !48
  %7 = getelementptr ptr, ptr %2, i64 1
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = lshr i32 %6, 1
  %11 = and i32 %6, 1
  %12 = icmp eq i32 %11, 0
  %13 = shl nuw nsw i32 %6, 1
  %14 = add nuw nsw i32 %13, 2
  %15 = zext nneg i32 %6 to i64
  %16 = zext nneg i32 %10 to i64
  %17 = xor i32 %10, -1
  %18 = getelementptr ptr, ptr %7, i64 %16
  %19 = getelementptr ptr, ptr %18, i64 %15
  %20 = getelementptr ptr, ptr %7, i64 %15
  br label %28

21:                                               ; preds = %42, %4
  %22 = icmp slt i32 %6, -1
  br i1 %22, label %68, label %23

23:                                               ; preds = %21
  %24 = sdiv i32 %6, 2
  %25 = mul i32 %6, 3
  %26 = add nuw nsw i32 %24, 1
  %27 = zext nneg i32 %26 to i64
  br label %56

28:                                               ; preds = %9, %42
  %29 = phi i64 [ 0, %9 ], [ %54, %42 ]
  %30 = phi i32 [ 0, %9 ], [ %43, %42 ]
  %31 = icmp ne i64 %29, %16
  %32 = or i1 %31, %12
  %33 = select i1 %31, i32 %30, i32 %14
  br i1 %32, label %42, label %34

34:                                               ; preds = %28
  %35 = add i32 %30, %6
  %36 = add i32 %35, %17
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = load ptr, ptr %19, align 8, !tbaa !34
  %41 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %39, ptr noundef %40, ptr noundef nonnull %5) #16
  br label %42

42:                                               ; preds = %28, %34
  %43 = phi i32 [ %33, %28 ], [ %14, %34 ]
  %44 = trunc i64 %29 to i32
  %45 = xor i32 %44, -1
  %46 = add nsw i32 %6, %45
  %47 = add nsw i32 %46, %43
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %2, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = getelementptr ptr, ptr %20, i64 %29
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %50, ptr noundef %52, ptr noundef nonnull %5) #16
  %54 = add nuw nsw i64 %29, 1
  %55 = icmp eq i64 %54, %15
  br i1 %55, label %21, label %28, !llvm.loop !134

56:                                               ; preds = %23, %56
  %57 = phi i64 [ 0, %23 ], [ %66, %56 ]
  %58 = getelementptr inbounds ptr, ptr %2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = trunc i64 %57 to i32
  %61 = sub i32 %25, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr ptr, ptr %7, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %59, ptr noundef %64, ptr noundef nonnull %5) #16
  %66 = add nuw nsw i64 %57, 1
  %67 = icmp eq i64 %66, %27
  br i1 %67, label %68, label %56, !llvm.loop !135

68:                                               ; preds = %56, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef writeonly %3) unnamed_addr #0 !PGOFuncName !136 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %8 = call ptr @BM_vert_pair_share_face_by_len(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, i8 noundef zeroext 1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %11 = load ptr, ptr %5, align 8, !tbaa !34
  %12 = load ptr, ptr %6, align 8, !tbaa !34
  %13 = call ptr @BM_face_split(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %11, ptr noundef %12, ptr noundef nonnull %7, ptr noundef null, i8 noundef zeroext 0) #15
  %14 = icmp eq ptr %3, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store ptr %13, ptr %3, align 8, !tbaa !34
  br label %16

16:                                               ; preds = %15, %10
  %17 = load ptr, ptr %7, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  br label %22

22:                                               ; preds = %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  br label %24

24:                                               ; preds = %4, %22
  %25 = phi ptr [ %23, %22 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret ptr %25
}

; Function Attrs: optsize
declare ptr @BM_vert_pair_share_face_by_len(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @quad_2edge_split_path(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !137 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = load i32, ptr %3, align 8, !tbaa !48
  %7 = icmp sgt i32 %6, 0
  %8 = shl i32 %6, 1
  br i1 %7, label %9, label %23

9:                                                ; preds = %4
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %21, %11 ]
  %13 = getelementptr inbounds ptr, ptr %2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = trunc i64 %12 to i32
  %16 = sub i32 %8, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %14, ptr noundef %19, ptr noundef nonnull %5) #16
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %10
  br i1 %22, label %23, label %11, !llvm.loop !138

23:                                               ; preds = %11, %4
  %24 = sext i32 %8 to i64
  %25 = getelementptr ptr, ptr %2, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = or disjoint i32 %8, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %27, ptr noundef %31, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @quad_2edge_split_innervert(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !139 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %7 = load i32, ptr %3, align 8, !tbaa !48
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %2, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp sgt i32 %7, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = shl nsw i32 %7, 1
  br label %40

14:                                               ; preds = %4
  %15 = add nsw i32 %7, -1
  %16 = shl nuw i32 %7, 1
  %17 = zext nneg i32 %15 to i64
  br label %18

18:                                               ; preds = %14, %38
  %19 = phi i64 [ %8, %14 ], [ %21, %38 ]
  %20 = phi ptr [ %10, %14 ], [ %34, %38 ]
  %21 = add nsw i64 %19, -1
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = trunc i64 %21 to i32
  %25 = sub i32 %16, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %23, ptr noundef %28, ptr noundef nonnull %5) #16
  %30 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = call fastcc ptr @bm_subdivide_edge_addvert(ptr noundef %0, ptr noundef %29, ptr noundef nonnull %3, float noundef 5.000000e-01, float noundef 5.000000e-01, ptr noundef nonnull %6, ptr noundef %31, ptr noundef %33) #16
  %35 = icmp eq i64 %21, %17
  br i1 %35, label %38, label %36

36:                                               ; preds = %18
  %37 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %20, ptr noundef %34, ptr noundef nonnull %5) #16
  br label %38

38:                                               ; preds = %36, %18
  %39 = icmp sgt i64 %19, 1
  br i1 %39, label %18, label %40, !llvm.loop !140

40:                                               ; preds = %38, %12
  %41 = phi i32 [ %13, %12 ], [ %16, %38 ]
  %42 = phi ptr [ %10, %12 ], [ %34, %38 ]
  %43 = sext i32 %41 to i64
  %44 = getelementptr ptr, ptr %2, i64 %43
  %45 = getelementptr ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %42, ptr noundef %46, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @bm_subdivide_edge_addvert(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !141 {
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = tail call ptr @BM_edge_split(ptr noundef %0, ptr noundef %1, ptr noundef %10, ptr noundef %5, float noundef %3) #15
  %12 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %13, i16 noundef signext 8) #16
  tail call fastcc void @alter_co(ptr noundef %11, ptr noundef %2, float noundef %4, ptr noundef %6, ptr noundef %7) #16
  %14 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 3
  %15 = getelementptr inbounds %struct.BMVert, ptr %6, i64 0, i32 3
  %16 = getelementptr inbounds %struct.BMVert, ptr %7, i64 0, i32 3
  tail call void @interp_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, float noundef %4) #15
  %17 = tail call fastcc float @normalize_v3(ptr noundef nonnull %14) #16
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @alter_co(ptr noundef %0, ptr nocapture noundef readonly %1, float noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !PGOFuncName !142 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #14
  %14 = load ptr, ptr %0, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14
  %16 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !42
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %14, i64 %18
  %20 = getelementptr inbounds %struct.BMVert, ptr %0, i64 0, i32 2
  tail call fastcc void @copy_v3_v3(ptr noundef %19, ptr noundef nonnull %20) #16
  %21 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 7
  %22 = load i8, ptr %21, align 2, !tbaa !60
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = tail call fastcc float @normalize_v3(ptr noundef %19) #16
  %26 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !52
  tail call fastcc void @mul_v3_fl(ptr noundef %19, float noundef %27) #16
  br label %61

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 5
  %30 = load i8, ptr %29, align 4, !tbaa !57
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %61, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  %33 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %34 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %33, ptr noundef nonnull %34) #16
  %35 = call fastcc float @normalize_v3(ptr noundef nonnull %7) #16
  %36 = fmul float %35, 5.000000e-01
  %37 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %37) #16
  %38 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %9, ptr noundef nonnull %38) #16
  %39 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #16
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %8, float noundef %39) #16
  %40 = call fastcc float @dot_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %9) #16
  %41 = fneg float %40
  call fastcc void @madd_v3_v3fl(ptr noundef nonnull %6, ptr noundef nonnull %9, float noundef %41) #16
  %42 = fsub float 5.000000e-01, %2
  %43 = tail call float @llvm.fabs.f32(float %42)
  %44 = tail call float @llvm.fmuladd.f32(float %43, float -2.000000e+00, float 1.000000e+00)
  %45 = tail call float @llvm.fabs.f32(float %44)
  %46 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !53
  %48 = tail call float @bmesh_subd_falloff_calc(i32 noundef %47, float noundef %45) #15
  %49 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 6
  %50 = load i8, ptr %49, align 1, !tbaa !58
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %32
  %53 = tail call float @BM_vert_calc_shell_factor(ptr noundef nonnull %0) #15
  %54 = fmul float %48, %53
  br label %55

55:                                               ; preds = %52, %32
  %56 = phi float [ %54, %52 ], [ %48, %32 ]
  %57 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !52
  %59 = fmul float %56, %58
  %60 = fmul float %36, %59
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6, float noundef %60) #16
  call fastcc void @add_v3_v3(ptr noundef %19, ptr noundef nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  br label %61

61:                                               ; preds = %28, %55, %24
  %62 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 8
  %63 = load i8, ptr %62, align 1, !tbaa !59
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %101, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 2
  %67 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %68 = tail call fastcc float @len_v3v3(ptr noundef nonnull %66, ptr noundef nonnull %67) #16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #14
  %69 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 3
  %70 = load float, ptr %69, align 4, !tbaa !55
  %71 = fmul float %68, %70
  %72 = getelementptr inbounds %struct.BMVert, ptr %3, i64 0, i32 3
  %73 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 3
  call void @mid_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %72, ptr noundef nonnull %73) #15
  call void @ortho_basis_v3v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %10) #15
  %74 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 13
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %20, ptr noundef nonnull %74) #16
  call fastcc void @mul_v3_fl(ptr noundef nonnull %11, float noundef 1.000000e+01) #16
  %75 = load float, ptr %11, align 4, !tbaa !61
  %76 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !61
  %78 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %79 = load float, ptr %78, align 4, !tbaa !61
  %80 = call float @BLI_gTurbulence(float noundef 1.000000e+00, float noundef %75, float noundef %77, float noundef %79, i32 noundef 15, i32 noundef 0, i32 noundef 2) #15
  %81 = call float @BLI_gTurbulence(float noundef 1.000000e+00, float noundef %77, float noundef %75, float noundef %79, i32 noundef 15, i32 noundef 0, i32 noundef 2) #15
  %82 = insertelement <2 x float> poison, float %80, i64 0
  %83 = insertelement <2 x float> %82, float %81, i64 1
  %84 = fadd <2 x float> %83, <float -5.000000e-01, float -5.000000e-01>
  %85 = insertelement <2 x float> poison, float %71, i64 0
  %86 = shufflevector <2 x float> %85, <2 x float> poison, <2 x i32> zeroinitializer
  %87 = fmul <2 x float> %86, %84
  store <2 x float> %87, ptr %6, align 8, !tbaa !61
  %88 = call float @BLI_gTurbulence(float noundef 1.000000e+00, float noundef %77, float noundef %79, float noundef %75, i32 noundef 15, i32 noundef 0, i32 noundef 2) #15
  %89 = fadd float %88, -5.000000e-01
  %90 = fmul float %71, %89
  %91 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float %90, ptr %91, align 8, !tbaa !61
  %92 = extractelement <2 x float> %87, i64 0
  call fastcc void @madd_v3_v3fl(ptr noundef %19, ptr noundef nonnull %10, float noundef %92) #16
  %93 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 4
  %94 = load float, ptr %93, align 8, !tbaa !56
  %95 = fsub float 1.000000e+00, %94
  %96 = extractelement <2 x float> %87, i64 1
  %97 = fmul float %96, %95
  call fastcc void @madd_v3_v3fl(ptr noundef %19, ptr noundef nonnull %12, float noundef %97) #16
  %98 = load float, ptr %93, align 8, !tbaa !56
  %99 = fsub float 1.000000e+00, %98
  %100 = fmul float %90, %99
  call fastcc void @madd_v3_v3fl(ptr noundef %19, ptr noundef nonnull %13, float noundef %100) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  br label %101

101:                                              ; preds = %65, %61
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef %19) #16
  %102 = getelementptr inbounds %struct.SubDParams, ptr %1, i64 0, i32 14, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !111
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = add nsw i32 %103, -1
  %107 = load ptr, ptr %0, align 8, !tbaa !38
  %108 = load i32, ptr %15, align 4, !tbaa !110
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, ptr %107, i64 %109
  br label %111

111:                                              ; preds = %105, %111
  %112 = phi i32 [ %115, %111 ], [ %106, %105 ]
  %113 = phi ptr [ %114, %111 ], [ %110, %105 ]
  %114 = getelementptr inbounds float, ptr %113, i64 3
  call fastcc void @sub_v3_v3(ptr noundef nonnull %114, ptr noundef nonnull %6) #16
  %115 = add nsw i32 %112, -1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %111, !llvm.loop !143

117:                                              ; preds = %111, %101
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #14
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !144 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !61
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !145 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !61
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !61
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @madd_v3_v3fl(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #3 !PGOFuncName !146 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = load float, ptr %0, align 4, !tbaa !61
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %2, float %5)
  store float %6, ptr %0, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = tail call float @llvm.fmuladd.f32(float %8, float %2, float %10)
  store float %11, ptr %9, align 4, !tbaa !61
  %12 = getelementptr inbounds float, ptr %1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !61
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !61
  %16 = tail call float @llvm.fmuladd.f32(float %13, float %2, float %15)
  store float %16, ptr %14, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare float @bmesh_subd_falloff_calc(i32 noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @BM_vert_calc_shell_factor(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !147 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  %4 = load float, ptr %0, align 4, !tbaa !61
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !61
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !61
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !148 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ortho_basis_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !149 {
  %4 = load float, ptr %1, align 4, !tbaa !61
  %5 = load float, ptr %2, align 4, !tbaa !61
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !61
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !61
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare float @BLI_gTurbulence(float noundef, float noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !150 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  %4 = load float, ptr %0, align 4, !tbaa !61
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !61
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !61
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !61
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !151 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #16
  %3 = tail call float @sqrtf(float noundef %2) #15
  ret float %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal void @quad_2edge_split_fan(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !152 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = load i32, ptr %3, align 8, !tbaa !48
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = getelementptr ptr, ptr %2, i64 2
  %10 = shl nuw i32 %6, 1
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr ptr, ptr %9, i64 %11
  %13 = zext nneg i32 %6 to i64
  br label %14

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %27, %14 ]
  %16 = getelementptr inbounds ptr, ptr %2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = load ptr, ptr %12, align 8, !tbaa !34
  %19 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %5) #16
  %20 = trunc i64 %15 to i32
  %21 = sub i32 %10, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = load ptr, ptr %12, align 8, !tbaa !34
  %26 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %24, ptr noundef %25, ptr noundef nonnull %5) #16
  %27 = add nuw nsw i64 %15, 1
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %29, label %14, !llvm.loop !153

29:                                               ; preds = %14, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @quad_1edge_split(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !154 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = load i32, ptr %3, align 8, !tbaa !48
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = icmp sgt i32 %6, 0
  br i1 %8, label %15, label %10

10:                                               ; preds = %4
  br i1 %9, label %11, label %58

11:                                               ; preds = %10
  %12 = lshr i32 %6, 1
  %13 = zext nneg i32 %12 to i64
  %14 = zext nneg i32 %6 to i64
  br label %35

15:                                               ; preds = %4
  br i1 %9, label %16, label %58

16:                                               ; preds = %15
  %17 = lshr exact i32 %6, 1
  %18 = zext nneg i32 %17 to i64
  %19 = zext nneg i32 %6 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %33, %20 ]
  %22 = phi i32 [ 2, %16 ], [ %25, %20 ]
  %23 = icmp eq i64 %21, %18
  %24 = sext i1 %23 to i32
  %25 = add nsw i32 %22, %24
  %26 = getelementptr inbounds ptr, ptr %2, i64 %21
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = add nsw i32 %25, %6
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %27, ptr noundef %31, ptr noundef nonnull %5) #16
  %33 = add nuw nsw i64 %21, 1
  %34 = icmp eq i64 %33, %19
  br i1 %34, label %58, label %20, !llvm.loop !155

35:                                               ; preds = %11, %54
  %36 = phi i64 [ 0, %11 ], [ %56, %54 ]
  %37 = phi i32 [ 2, %11 ], [ %55, %54 ]
  %38 = getelementptr inbounds ptr, ptr %2, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = add nsw i32 %37, %6
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %39, ptr noundef %43, ptr noundef nonnull %5) #16
  %45 = icmp eq i64 %36, %13
  br i1 %45, label %46, label %54

46:                                               ; preds = %35
  %47 = add nsw i32 %37, -1
  %48 = load ptr, ptr %38, align 8, !tbaa !34
  %49 = add nsw i32 %47, %6
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %48, ptr noundef %52, ptr noundef nonnull %5) #16
  br label %54

54:                                               ; preds = %35, %46
  %55 = phi i32 [ %47, %46 ], [ %37, %35 ]
  %56 = add nuw nsw i64 %36, 1
  %57 = icmp eq i64 %56, %14
  br i1 %57, label %58, label %35, !llvm.loop !156

58:                                               ; preds = %54, %20, %10, %15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tri_1edge_split(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !157 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %6 = load i32, ptr %3, align 8, !tbaa !48
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %4
  %9 = getelementptr ptr, ptr %2, i64 1
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr ptr, ptr %9, i64 %10
  br label %12

12:                                               ; preds = %8, %12
  %13 = phi i64 [ 0, %8 ], [ %18, %12 ]
  %14 = getelementptr inbounds ptr, ptr %2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load ptr, ptr %11, align 8, !tbaa !34
  %17 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %15, ptr noundef %16, ptr noundef nonnull %5) #16
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %20, label %12, !llvm.loop !158

20:                                               ; preds = %12, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @quad_4edge_subdivide(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !159 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %7 = load i32, ptr %3, align 8, !tbaa !48
  %8 = add i32 %7, 2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = sext i32 %8 to i64
  %11 = shl nsw i64 %10, 3
  %12 = mul i64 %11, %10
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @.str.30) #15
  %14 = icmp sgt i32 %7, -2
  br i1 %14, label %15, label %139

15:                                               ; preds = %4
  %16 = mul nsw i32 %7, 3
  %17 = add i32 %7, 3
  %18 = add i32 %17, %16
  %19 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %20 = zext nneg i32 %19 to i64
  br label %31

21:                                               ; preds = %31
  br i1 %14, label %22, label %139

22:                                               ; preds = %21
  %23 = add nsw i32 %7, 1
  %24 = mul nsw i32 %23, %8
  %25 = sext i32 %7 to i64
  %26 = sext i32 %24 to i64
  %27 = tail call i32 @llvm.smax.i32(i32 %8, i32 1)
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr ptr, ptr %2, i64 %25
  %30 = getelementptr ptr, ptr %13, i64 %26
  br label %50

31:                                               ; preds = %15, %31
  %32 = phi i64 [ 0, %15 ], [ %39, %31 ]
  %33 = trunc i64 %32 to i32
  %34 = sub i32 %18, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds ptr, ptr %13, i64 %32
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = add nuw nsw i64 %32, 1
  %40 = icmp eq i64 %39, %20
  br i1 %40, label %21, label %31, !llvm.loop !160

41:                                               ; preds = %50
  %42 = icmp sgt i32 %7, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %41
  %44 = getelementptr ptr, ptr %13, i64 -1
  %45 = shl nuw i32 %7, 1
  %46 = add i32 %8, %45
  %47 = getelementptr ptr, ptr %13, i64 1
  %48 = zext nneg i32 %7 to i64
  %49 = getelementptr ptr, ptr %44, i64 %10
  br label %65

50:                                               ; preds = %22, %50
  %51 = phi i64 [ 0, %22 ], [ %55, %50 ]
  %52 = getelementptr ptr, ptr %29, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = getelementptr ptr, ptr %30, i64 %51
  store ptr %53, ptr %54, align 8, !tbaa !34
  %55 = add nuw nsw i64 %51, 1
  %56 = icmp eq i64 %55, %28
  br i1 %56, label %41, label %50, !llvm.loop !161

57:                                               ; preds = %108, %41
  %58 = icmp sgt i32 %7, -1
  br i1 %58, label %59, label %139

59:                                               ; preds = %57
  %60 = icmp eq i32 %7, 0
  %61 = add nuw nsw i32 %7, 1
  %62 = call i32 @llvm.smax.i32(i32 %8, i32 2)
  %63 = zext nneg i32 %62 to i64
  %64 = zext nneg i32 %61 to i64
  br label %111

65:                                               ; preds = %43, %108
  %66 = phi i64 [ 0, %43 ], [ %109, %108 ]
  %67 = trunc i64 %66 to i32
  %68 = xor i32 %67, -1
  %69 = add i32 %46, %68
  %70 = getelementptr inbounds ptr, ptr %2, i64 %66
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds ptr, ptr %2, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !34
  %75 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %71, ptr noundef %74, ptr noundef nonnull %5) #16
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = add nuw nsw i64 %66, 1
  br label %108

79:                                               ; preds = %65
  %80 = getelementptr inbounds %struct.BMEdge, ptr %75, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %81, i16 noundef signext 8) #16
  %82 = load ptr, ptr %5, align 8, !tbaa !34
  %83 = getelementptr inbounds %struct.BMFace, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !75
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %84, i16 noundef signext 8) #16
  %85 = load ptr, ptr %70, align 8, !tbaa !34
  %86 = add nuw nsw i64 %66, 1
  %87 = mul nsw i64 %86, %10
  %88 = getelementptr inbounds ptr, ptr %13, i64 %87
  store ptr %85, ptr %88, align 8, !tbaa !34
  %89 = load ptr, ptr %73, align 8, !tbaa !34
  %90 = getelementptr ptr, ptr %49, i64 %87
  store ptr %89, ptr %90, align 8, !tbaa !34
  %91 = and i64 %87, 4294967295
  %92 = getelementptr ptr, ptr %47, i64 %91
  br label %93

93:                                               ; preds = %79, %101
  %94 = phi i64 [ 0, %79 ], [ %106, %101 ]
  %95 = trunc i64 %94 to i32
  %96 = call fastcc ptr @subdivideedgenum(ptr noundef %0, ptr noundef nonnull %75, i32 noundef %95, i32 noundef %7, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %85, ptr noundef %89) #16
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load ptr, ptr @stderr, align 8, !tbaa !34
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.quad_4edge_subdivide, i32 noundef 587, ptr noundef nonnull @.str.33) #17
  br label %101

101:                                              ; preds = %93, %98
  %102 = load ptr, ptr %6, align 8, !tbaa !34
  %103 = getelementptr inbounds %struct.BMEdge, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %104, i16 noundef signext 8) #16
  %105 = getelementptr ptr, ptr %92, i64 %94
  store ptr %96, ptr %105, align 8, !tbaa !34
  %106 = add nuw nsw i64 %94, 1
  %107 = icmp eq i64 %106, %48
  br i1 %107, label %108, label %93, !llvm.loop !162

108:                                              ; preds = %101, %77
  %109 = phi i64 [ %78, %77 ], [ %86, %101 ]
  %110 = icmp eq i64 %109, %48
  br i1 %110, label %57, label %65, !llvm.loop !163

111:                                              ; preds = %59, %136
  %112 = phi i64 [ 1, %59 ], [ %137, %136 ]
  br i1 %60, label %136, label %113

113:                                              ; preds = %111
  %114 = mul nsw i64 %112, %10
  %115 = add nsw i64 %112, -1
  %116 = mul nsw i64 %115, %10
  %117 = getelementptr ptr, ptr %13, i64 %114
  %118 = getelementptr ptr, ptr %13, i64 %116
  br label %119

119:                                              ; preds = %113, %133
  %120 = phi i64 [ 1, %113 ], [ %134, %133 ]
  %121 = getelementptr ptr, ptr %117, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = getelementptr ptr, ptr %118, i64 %120
  %124 = load ptr, ptr %123, align 8, !tbaa !34
  %125 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %122, ptr noundef %124, ptr noundef nonnull %5) #16
  %126 = icmp eq ptr %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.BMEdge, ptr %125, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %129, i16 noundef signext 8) #16
  %130 = load ptr, ptr %5, align 8, !tbaa !34
  %131 = getelementptr inbounds %struct.BMFace, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !75
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %132, i16 noundef signext 8) #16
  br label %133

133:                                              ; preds = %119, %127
  %134 = add nuw nsw i64 %120, 1
  %135 = icmp eq i64 %134, %64
  br i1 %135, label %136, label %119, !llvm.loop !164

136:                                              ; preds = %133, %111
  %137 = add nuw nsw i64 %112, 1
  %138 = icmp eq i64 %137, %63
  br i1 %138, label %139, label %111, !llvm.loop !165

139:                                              ; preds = %136, %21, %4, %57
  %140 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %140(ptr noundef %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @subdivideedgenum(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !166 {
  %9 = getelementptr inbounds %struct.BMEdge, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !68
  %11 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %10, i16 noundef signext 2) #16, !range !71
  %12 = icmp ne i16 %11, 0
  %13 = icmp eq i32 %3, 1
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.SubDParams, ptr %4, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !50
  %18 = tail call fastcc float @BMO_slot_map_float_get(ptr noundef %17, ptr noundef nonnull %1) #16
  %19 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %18, i64 0
  br label %30

20:                                               ; preds = %8
  %21 = add nsw i32 %3, 1
  %22 = sub nsw i32 %21, %2
  %23 = add nsw i32 %2, 1
  %24 = sitofp i32 %23 to float
  %25 = insertelement <2 x i32> poison, i32 %22, i64 0
  %26 = insertelement <2 x i32> %25, i32 %21, i64 1
  %27 = sitofp <2 x i32> %26 to <2 x float>
  %28 = insertelement <2 x float> <float 1.000000e+00, float poison>, float %24, i64 1
  %29 = fdiv <2 x float> %28, %27
  br label %30

30:                                               ; preds = %20, %15
  %31 = phi <2 x float> [ %19, %15 ], [ %29, %20 ]
  %32 = extractelement <2 x float> %31, i64 0
  %33 = extractelement <2 x float> %31, i64 1
  %34 = tail call fastcc ptr @bm_subdivide_edge_addvert(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %4, float noundef %32, float noundef %33, ptr noundef %5, ptr noundef %6, ptr noundef %7) #16
  ret ptr %34
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @BMO_slot_map_float_get(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !167 {
  %3 = tail call fastcc ptr @BMO_slot_map_data_get(ptr noundef %0, ptr noundef %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !34
  %7 = load float, ptr %6, align 4, !tbaa !61
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi float [ %7, %5 ], [ 0.000000e+00, %2 ]
  ret float %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @tri_3edge_subdivide(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !168 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [1 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  %8 = load i32, ptr %3, align 8, !tbaa !48
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = add nsw i32 %8, 2
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 3
  %13 = tail call ptr %9(i64 noundef %12, ptr noundef nonnull @.str.35) #15
  store ptr %7, ptr %13, align 8, !tbaa !34
  %14 = shl nsw i32 %8, 1
  %15 = or disjoint i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds ptr, ptr %2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  store ptr %18, ptr %7, align 8, !tbaa !34
  %19 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %20 = call ptr %19(i64 noundef %12, ptr noundef nonnull @.str.36) #15
  %21 = add i32 %8, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %13, i64 %22
  store ptr %20, ptr %23, align 8, !tbaa !34
  %24 = icmp sgt i32 %8, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  %26 = zext nneg i32 %8 to i64
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i64 [ 0, %25 ], [ %32, %27 ]
  %29 = getelementptr inbounds ptr, ptr %2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = load ptr, ptr %23, align 8, !tbaa !34
  %32 = add nuw nsw i64 %28, 1
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %30, ptr %33, align 8, !tbaa !34
  %34 = icmp eq i64 %32, %26
  br i1 %34, label %35, label %27, !llvm.loop !169

35:                                               ; preds = %27
  %36 = load ptr, ptr %23, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %35, %4
  %38 = phi ptr [ %36, %35 ], [ %20, %4 ]
  %39 = mul nsw i32 %8, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr ptr, ptr %2, i64 %40
  %42 = getelementptr ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  store ptr %43, ptr %38, align 8, !tbaa !34
  %44 = sext i32 %8 to i64
  %45 = getelementptr inbounds ptr, ptr %2, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !34
  %47 = load ptr, ptr %23, align 8, !tbaa !34
  %48 = getelementptr inbounds ptr, ptr %47, i64 %22
  store ptr %46, ptr %48, align 8, !tbaa !34
  br i1 %24, label %49, label %136

49:                                               ; preds = %37
  %50 = zext nneg i32 %14 to i64
  %51 = zext nneg i32 %8 to i64
  %52 = zext nneg i32 %14 to i64
  %53 = getelementptr ptr, ptr %2, i64 %52
  %54 = getelementptr ptr, ptr %53, i64 2
  br label %59

55:                                               ; preds = %88, %74
  %56 = icmp eq i64 %65, %51
  br i1 %56, label %57, label %59, !llvm.loop !170

57:                                               ; preds = %55
  %58 = zext i32 %21 to i64
  br label %101

59:                                               ; preds = %49, %55
  %60 = phi i64 [ 0, %49 ], [ %65, %55 ]
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %62 = shl i64 %60, 3
  %63 = add i64 %62, 16
  %64 = call ptr %61(i64 noundef %63, ptr noundef nonnull @.str.37) #15
  %65 = add nuw nsw i64 %60, 1
  %66 = getelementptr inbounds ptr, ptr %13, i64 %65
  store ptr %64, ptr %66, align 8, !tbaa !34
  %67 = sub nsw i64 %50, %60
  %68 = getelementptr ptr, ptr %54, i64 %60
  %69 = load ptr, ptr %68, align 8, !tbaa !34
  %70 = getelementptr inbounds ptr, ptr %2, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !34
  %72 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %69, ptr noundef %71, ptr noundef nonnull %5) #16
  %73 = icmp eq ptr %72, null
  br i1 %73, label %136, label %74

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.BMEdge, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %76, i16 noundef signext 8) #16
  %77 = load ptr, ptr %5, align 8, !tbaa !34
  %78 = getelementptr inbounds %struct.BMFace, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !75
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %79, i16 noundef signext 8) #16
  %80 = load ptr, ptr %68, align 8, !tbaa !34
  %81 = load ptr, ptr %66, align 8, !tbaa !34
  store ptr %80, ptr %81, align 8, !tbaa !34
  %82 = load ptr, ptr %70, align 8, !tbaa !34
  %83 = load ptr, ptr %66, align 8, !tbaa !34
  %84 = getelementptr inbounds ptr, ptr %83, i64 %65
  store ptr %82, ptr %84, align 8, !tbaa !34
  %85 = icmp eq i64 %60, 0
  br i1 %85, label %55, label %86

86:                                               ; preds = %74
  %87 = trunc i64 %60 to i32
  br label %88

88:                                               ; preds = %86, %88
  %89 = phi i64 [ 0, %86 ], [ %95, %88 ]
  %90 = load ptr, ptr %68, align 8, !tbaa !34
  %91 = load ptr, ptr %70, align 8, !tbaa !34
  %92 = trunc i64 %89 to i32
  %93 = call fastcc ptr @subdivideedgenum(ptr noundef %0, ptr noundef nonnull %72, i32 noundef %92, i32 noundef %87, ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %90, ptr noundef %91) #16
  %94 = load ptr, ptr %66, align 8, !tbaa !34
  %95 = add nuw nsw i64 %89, 1
  %96 = getelementptr inbounds ptr, ptr %94, i64 %95
  store ptr %93, ptr %96, align 8, !tbaa !34
  %97 = load ptr, ptr %6, align 8, !tbaa !34
  %98 = getelementptr inbounds %struct.BMEdge, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %99, i16 noundef signext 8) #16
  %100 = icmp eq i64 %95, %60
  br i1 %100, label %55, label %88, !llvm.loop !171

101:                                              ; preds = %57, %133
  %102 = phi i64 [ 1, %57 ], [ %134, %133 ]
  %103 = getelementptr inbounds ptr, ptr %13, i64 %102
  %104 = getelementptr ptr, ptr %103, i64 1
  br label %105

105:                                              ; preds = %101, %105
  %106 = phi i64 [ 0, %101 ], [ %111, %105 ]
  %107 = load ptr, ptr %103, align 8, !tbaa !34
  %108 = getelementptr inbounds ptr, ptr %107, i64 %106
  %109 = load ptr, ptr %108, align 8, !tbaa !34
  %110 = load ptr, ptr %104, align 8, !tbaa !34
  %111 = add nuw nsw i64 %106, 1
  %112 = getelementptr inbounds ptr, ptr %110, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  %114 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %109, ptr noundef %113, ptr noundef nonnull %5) #16
  %115 = getelementptr inbounds %struct.BMEdge, ptr %114, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %116, i16 noundef signext 8) #16
  %117 = load ptr, ptr %5, align 8, !tbaa !34
  %118 = getelementptr inbounds %struct.BMFace, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %119, i16 noundef signext 8) #16
  %120 = load ptr, ptr %103, align 8, !tbaa !34
  %121 = getelementptr inbounds ptr, ptr %120, i64 %111
  %122 = load ptr, ptr %121, align 8, !tbaa !34
  %123 = load ptr, ptr %104, align 8, !tbaa !34
  %124 = getelementptr inbounds ptr, ptr %123, i64 %111
  %125 = load ptr, ptr %124, align 8, !tbaa !34
  %126 = call fastcc ptr @connect_smallest_face(ptr noundef %0, ptr noundef %122, ptr noundef %125, ptr noundef nonnull %5) #16
  %127 = getelementptr inbounds %struct.BMEdge, ptr %126, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %128, i16 noundef signext 8) #16
  %129 = load ptr, ptr %5, align 8, !tbaa !34
  %130 = getelementptr inbounds %struct.BMFace, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !75
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %131, i16 noundef signext 8) #16
  %132 = icmp eq i64 %111, %102
  br i1 %132, label %133, label %105, !llvm.loop !172

133:                                              ; preds = %105
  %134 = add nuw nsw i64 %102, 1
  %135 = icmp eq i64 %134, %58
  br i1 %135, label %136, label %101, !llvm.loop !173

136:                                              ; preds = %59, %133, %37
  %137 = icmp sgt i32 %8, -1
  br i1 %137, label %138, label %150

138:                                              ; preds = %136
  %139 = zext nneg i32 %10 to i64
  br label %140

140:                                              ; preds = %138, %147
  %141 = phi i64 [ 1, %138 ], [ %148, %147 ]
  %142 = getelementptr inbounds ptr, ptr %13, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !34
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %140
  %146 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %146(ptr noundef nonnull %143) #15
  br label %147

147:                                              ; preds = %140, %145
  %148 = add nuw nsw i64 %141, 1
  %149 = icmp eq i64 %148, %139
  br i1 %149, label %150, label %140, !llvm.loop !174

150:                                              ; preds = %147, %136
  %151 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %151(ptr noundef nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_number_of_layers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_n_offset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !175 {
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %5, align 4, !tbaa !176
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  switch i8 %2, label %25 [
    i8 1, label %8
    i8 2, label %11
    i8 3, label %14
    i8 4, label %17
    i8 5, label %18
    i8 6, label %19
    i8 7, label %20
    i8 8, label %21
    i8 9, label %22
    i8 10, label %23
    i8 11, label %24
  ]

8:                                                ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !178
  br label %26

11:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !115
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  br label %26

14:                                               ; preds = %4
  store ptr @bmiter__elem_of_mesh_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__elem_of_mesh_step, ptr %7, align 8, !tbaa !115
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !180
  br label %26

17:                                               ; preds = %4
  store ptr @bmiter__edge_of_vert_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__edge_of_vert_step, ptr %7, align 8, !tbaa !115
  br label %26

18:                                               ; preds = %4
  store ptr @bmiter__face_of_vert_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__face_of_vert_step, ptr %7, align 8, !tbaa !115
  br label %26

19:                                               ; preds = %4
  store ptr @bmiter__loop_of_vert_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__loop_of_vert_step, ptr %7, align 8, !tbaa !115
  br label %26

20:                                               ; preds = %4
  store ptr @bmiter__vert_of_edge_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__vert_of_edge_step, ptr %7, align 8, !tbaa !115
  br label %26

21:                                               ; preds = %4
  store ptr @bmiter__face_of_edge_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__face_of_edge_step, ptr %7, align 8, !tbaa !115
  br label %26

22:                                               ; preds = %4
  store ptr @bmiter__vert_of_face_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__vert_of_face_step, ptr %7, align 8, !tbaa !115
  br label %26

23:                                               ; preds = %4
  store ptr @bmiter__edge_of_face_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__edge_of_face_step, ptr %7, align 8, !tbaa !115
  br label %26

24:                                               ; preds = %4
  store ptr @bmiter__loop_of_face_begin, ptr %6, align 8, !tbaa !177
  store ptr @bmiter__loop_of_face_step, ptr %7, align 8, !tbaa !115
  br label %26

25:                                               ; preds = %4
  unreachable

26:                                               ; preds = %24, %23, %22, %21, %20, %19, %18, %17, %14, %11, %8
  %27 = phi ptr [ %3, %24 ], [ %3, %23 ], [ %3, %22 ], [ %3, %21 ], [ %3, %20 ], [ %3, %19 ], [ %3, %18 ], [ %3, %17 ], [ %16, %14 ], [ %13, %11 ], [ %10, %8 ]
  %28 = phi ptr [ @bmiter__loop_of_face_begin, %24 ], [ @bmiter__edge_of_face_begin, %23 ], [ @bmiter__vert_of_face_begin, %22 ], [ @bmiter__face_of_edge_begin, %21 ], [ @bmiter__vert_of_edge_begin, %20 ], [ @bmiter__loop_of_vert_begin, %19 ], [ @bmiter__face_of_vert_begin, %18 ], [ @bmiter__edge_of_vert_begin, %17 ], [ @bmiter__elem_of_mesh_begin, %14 ], [ @bmiter__elem_of_mesh_begin, %11 ], [ @bmiter__elem_of_mesh_begin, %8 ]
  store ptr %27, ptr %0, align 8, !tbaa !92
  tail call void %28(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__face_of_edge_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__vert_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__vert_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__edge_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #2

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #2

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !181 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #16
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #15
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #16
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #16
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi float [ %6, %5 ], [ 0.000000e+00, %8 ]
  ret float %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #11 !PGOFuncName !182 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !61
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { cold optsize }

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
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 0}
!39 = !{!"BMVert", !40, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!40 = !{!"BMHeader", !35, i64 0, !41, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!41 = !{!"int", !36, i64 0}
!42 = !{!43, !41, i64 72}
!43 = !{!"SubDParams", !41, i64 0, !44, i64 4, !41, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 21, !36, i64 22, !36, i64 23, !41, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !36, i64 56, !45, i64 68}
!44 = !{!"float", !36, i64 0}
!45 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!43, !41, i64 0}
!49 = !{!43, !35, i64 32}
!50 = !{!43, !35, i64 40}
!51 = !{!43, !35, i64 48}
!52 = !{!43, !44, i64 4}
!53 = !{!43, !41, i64 8}
!54 = !{!43, !41, i64 24}
!55 = !{!43, !44, i64 12}
!56 = !{!43, !44, i64 16}
!57 = !{!43, !36, i64 20}
!58 = !{!43, !36, i64 21}
!59 = !{!43, !36, i64 23}
!60 = !{!43, !36, i64 22}
!61 = !{!44, !44, i64 0}
!62 = !{!63, !41, i64 32}
!63 = !{!"BMFace", !40, i64 0, !35, i64 16, !35, i64 24, !41, i64 32, !36, i64 36, !64, i64 48}
!64 = !{!"short", !36, i64 0}
!65 = !{!66, !35, i64 24}
!66 = !{!"BMLoop", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!67 = !{!66, !35, i64 16}
!68 = !{!69, !35, i64 16}
!69 = !{!"BMEdge", !40, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !70, i64 48, !70, i64 64}
!70 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!71 = !{i16 0, i16 9}
!72 = distinct !{!72, !47}
!73 = !{!69, !35, i64 32}
!74 = !{!69, !35, i64 24}
!75 = !{!63, !35, i64 16}
!76 = !{!77, !41, i64 88}
!77 = !{!"SubDPattern", !36, i64 0, !35, i64 80, !41, i64 88}
!78 = distinct !{!78, !47}
!79 = !{!41, !41, i64 0}
!80 = !{!81, !35, i64 8}
!81 = !{!"SubDFaceData", !35, i64 0, !35, i64 8, !41, i64 16, !35, i64 24}
!82 = !{!81, !35, i64 0}
!83 = !{!81, !35, i64 24}
!84 = !{!81, !41, i64 16}
!85 = distinct !{!85, !47}
!86 = distinct !{!86, !47}
!87 = distinct !{!87, !47}
!88 = distinct !{!88, !47}
!89 = distinct !{!89, !47}
!90 = !{!91, !41, i64 16}
!91 = !{!"BMOpSlot", !35, i64 0, !41, i64 8, !36, i64 12, !41, i64 16, !36, i64 24}
!92 = !{!36, !36, i64 0}
!93 = distinct !{!93, !47}
!94 = distinct !{!94, !47}
!95 = distinct !{!95, !47}
!96 = !{!39, !35, i64 16}
!97 = distinct !{!97, !47}
!98 = distinct !{!98, !47}
!99 = !{!66, !35, i64 32}
!100 = distinct !{!100, !47}
!101 = distinct !{!101, !47}
!102 = distinct !{!102, !47}
!103 = distinct !{!103, !47}
!104 = distinct !{!104, !47}
!105 = !{!77, !35, i64 80}
!106 = distinct !{!106, !47}
!107 = distinct !{!107, !47}
!108 = !{!43, !41, i64 80}
!109 = !{!"bmo_subdivide.c:bmo_subd_init_shape_info"}
!110 = !{!43, !41, i64 68}
!111 = !{!43, !41, i64 76}
!112 = !{!"bmo_subdivide.c:BM_iter_new"}
!113 = !{!"bmo_subdivide.c:copy_v3_v3"}
!114 = !{!"bmo_subdivide.c:BM_iter_step"}
!115 = !{!116, !35, i64 48}
!116 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !41, i64 56, !36, i64 60}
!117 = !{!"bmo_subdivide.c:_bmo_elem_flag_test"}
!118 = !{!119, !41, i64 128}
!119 = !{!"BMesh", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !41, i64 88, !41, i64 92, !41, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !41, i64 128, !35, i64 136, !120, i64 144, !120, i64 344, !120, i64 544, !120, i64 744, !64, i64 944, !41, i64 948, !41, i64 952, !41, i64 956, !121, i64 960, !35, i64 976, !121, i64 984, !35, i64 1000}
!120 = !{!"CustomData", !35, i64 0, !36, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !35, i64 184, !35, i64 192}
!121 = !{!"ListBase", !35, i64 0, !35, i64 8}
!122 = !{!123, !64, i64 0}
!123 = !{!"BMFlagLayer", !64, i64 0}
!124 = !{!"bmo_subdivide.c:sub_v3_v3v3"}
!125 = !{!"bmo_subdivide.c:normalize_v3"}
!126 = !{!"bmo_subdivide.c:dot_v3v3"}
!127 = !{!"bmo_subdivide.c:BMO_slot_map_data_get"}
!128 = !{!"bmo_subdivide.c:_bmo_elem_flag_enable"}
!129 = !{!"bmo_subdivide.c:bm_subdivide_multicut"}
!130 = !{i64 0, i64 8, !34, i64 8, i64 4, !79, i64 12, i64 1, !92, i64 13, i64 1, !92, i64 14, i64 1, !92, i64 16, i64 8, !34, i64 24, i64 12, !92, i64 36, i64 12, !92, i64 48, i64 8, !34}
!131 = distinct !{!131, !47}
!132 = distinct !{!132, !47}
!133 = !{!"bmo_subdivide.c:quad_3edge_split"}
!134 = distinct !{!134, !47}
!135 = distinct !{!135, !47}
!136 = !{!"bmo_subdivide.c:connect_smallest_face"}
!137 = !{!"bmo_subdivide.c:quad_2edge_split_path"}
!138 = distinct !{!138, !47}
!139 = !{!"bmo_subdivide.c:quad_2edge_split_innervert"}
!140 = distinct !{!140, !47}
!141 = !{!"bmo_subdivide.c:bm_subdivide_edge_addvert"}
!142 = !{!"bmo_subdivide.c:alter_co"}
!143 = distinct !{!143, !47}
!144 = !{!"bmo_subdivide.c:mul_v3_fl"}
!145 = !{!"bmo_subdivide.c:mul_v3_v3fl"}
!146 = !{!"bmo_subdivide.c:madd_v3_v3fl"}
!147 = !{!"bmo_subdivide.c:add_v3_v3"}
!148 = !{!"bmo_subdivide.c:len_v3v3"}
!149 = !{!"bmo_subdivide.c:add_v3_v3v3"}
!150 = !{!"bmo_subdivide.c:sub_v3_v3"}
!151 = !{!"bmo_subdivide.c:len_v3"}
!152 = !{!"bmo_subdivide.c:quad_2edge_split_fan"}
!153 = distinct !{!153, !47}
!154 = !{!"bmo_subdivide.c:quad_1edge_split"}
!155 = distinct !{!155, !47}
!156 = distinct !{!156, !47}
!157 = !{!"bmo_subdivide.c:tri_1edge_split"}
!158 = distinct !{!158, !47}
!159 = !{!"bmo_subdivide.c:quad_4edge_subdivide"}
!160 = distinct !{!160, !47}
!161 = distinct !{!161, !47}
!162 = distinct !{!162, !47}
!163 = distinct !{!163, !47}
!164 = distinct !{!164, !47}
!165 = distinct !{!165, !47}
!166 = !{!"bmo_subdivide.c:subdivideedgenum"}
!167 = !{!"bmo_subdivide.c:BMO_slot_map_float_get"}
!168 = !{!"bmo_subdivide.c:tri_3edge_subdivide"}
!169 = distinct !{!169, !47}
!170 = distinct !{!170, !47}
!171 = distinct !{!171, !47}
!172 = distinct !{!172, !47}
!173 = distinct !{!173, !47}
!174 = distinct !{!174, !47}
!175 = !{!"bmo_subdivide.c:BM_iter_init"}
!176 = !{!116, !36, i64 60}
!177 = !{!116, !35, i64 40}
!178 = !{!119, !35, i64 32}
!179 = !{!119, !35, i64 40}
!180 = !{!119, !35, i64 56}
!181 = !{!"bmo_subdivide.c:normalize_v3_v3"}
!182 = !{!"bmo_subdivide.c:zero_v3"}
