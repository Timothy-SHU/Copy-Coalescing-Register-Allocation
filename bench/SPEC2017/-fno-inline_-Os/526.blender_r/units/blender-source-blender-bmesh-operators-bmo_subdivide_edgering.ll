; ModuleID = 'blender/source/blender/bmesh/operators/bmo_subdivide_edgering.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_subdivide_edgering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.GSetIterator = type { %struct.GHashIterator }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.GHashPair = type { ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.LoopPairStore = type { ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"cuts\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"interp_mode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"profile_shape\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"profile_shape_factor\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"No edge rings found\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Edge-ring pair isn't connected\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Edge-rings are not connected\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_edgering_pair_store_create = private unnamed_addr constant [30 x i8] c"bm_edgering_pair_store_create\00", align 1
@__func__.bm_edgering_pair_interpolate = private unnamed_addr constant [29 x i8] c"bm_edgering_pair_interpolate\00", align 1
@__func__.bm_edgering_pair_calc = private unnamed_addr constant [22 x i8] c"bm_edgering_pair_calc\00", align 1
@switch.table.BM_iter_init = private unnamed_addr constant [11 x ptr] [ptr @bmiter__edge_of_vert_begin, ptr @bmiter__face_of_vert_begin, ptr @bmiter__loop_of_vert_begin, ptr @bmiter__vert_of_edge_begin, ptr @bmiter__face_of_edge_begin, ptr @bmiter__vert_of_face_begin, ptr @bmiter__edge_of_face_begin, ptr @bmiter__loop_of_face_begin, ptr @bmiter__loop_of_edge_begin, ptr @bmiter__loop_of_loop_begin, ptr @bmiter__loop_of_edge_begin], align 8
@switch.table.BM_iter_init.10 = private unnamed_addr constant [11 x ptr] [ptr @bmiter__edge_of_vert_step, ptr @bmiter__face_of_vert_step, ptr @bmiter__loop_of_vert_step, ptr @bmiter__vert_of_edge_step, ptr @bmiter__face_of_edge_step, ptr @bmiter__vert_of_face_step, ptr @bmiter__edge_of_face_step, ptr @bmiter__loop_of_face_step, ptr @bmiter__loop_of_edge_step, ptr @bmiter__loop_of_loop_step, ptr @bmiter__loop_of_edge_step], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_subdivide_edgering_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca %struct.BMOIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.GSetIterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #15
  %8 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #16
  %9 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.1) #16
  %10 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.2) #16
  %11 = add i32 %8, 2
  %12 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.3) #16
  %13 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.4) #16
  %14 = fcmp une float %13, 0.000000e+00
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = sext i32 %11 to i64
  %17 = shl nsw i64 %16, 2
  %18 = alloca i8, i64 %17, align 16
  br label %19

19:                                               ; preds = %2, %15
  %20 = phi ptr [ %18, %15 ], [ null, %2 ]
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, i16 noundef signext 1) #16
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 16, i8 noundef zeroext 0) #16
  %21 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 2) #16
  %22 = icmp eq ptr %21, null
  br i1 %22, label %72, label %23

23:                                               ; preds = %19, %69
  %24 = phi ptr [ %70, %69 ], [ %21, %19 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #15
  %25 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %5, i8 noundef zeroext 8, ptr noundef nonnull %24) #17
  %26 = icmp eq ptr %25, null
  br i1 %26, label %69, label %27

27:                                               ; preds = %23, %66
  %28 = phi ptr [ %67, %66 ], [ %25, %23 ]
  %29 = getelementptr inbounds %struct.BMFace, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %30, i16 noundef signext 1) #17, !range !42
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %66

33:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %34 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, i8 noundef zeroext 11, ptr noundef nonnull %28) #17
  %35 = icmp eq ptr %34, null
  br i1 %35, label %65, label %36

36:                                               ; preds = %33, %46
  %37 = phi ptr [ %47, %46 ], [ %34, %33 ]
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct.BMEdge, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !45
  %42 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %41, i16 noundef signext 1) #17, !range !42
  %43 = icmp eq i16 %42, 0
  %44 = icmp eq ptr %24, %39
  %45 = or i1 %44, %43
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %48 = icmp eq ptr %47, null
  br i1 %48, label %65, label %36, !llvm.loop !48

49:                                               ; preds = %36
  %50 = load ptr, ptr %29, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %50, i16 noundef signext 1) #17
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, i8 noundef zeroext 11, ptr noundef nonnull %28) #17
  %52 = icmp eq ptr %51, null
  br i1 %52, label %65, label %53

53:                                               ; preds = %49, %62
  %54 = phi ptr [ %63, %62 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.BMLoop, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !43
  %57 = getelementptr inbounds %struct.BMEdge, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %58, i16 noundef signext 1) #17, !range !42
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %58, i16 noundef signext 2) #17
  br label %62

62:                                               ; preds = %53, %61
  %63 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %53, !llvm.loop !50

65:                                               ; preds = %46, %62, %33, %49
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  br label %66

66:                                               ; preds = %27, %65
  %67 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %5) #17
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %27, !llvm.loop !51

69:                                               ; preds = %66, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #15
  %70 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %23, !llvm.loop !52

72:                                               ; preds = %69, %19
  %73 = icmp ne ptr %20, null
  %74 = icmp sgt i32 %8, -2
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = add nsw i32 %8, 1
  %78 = sitofp i32 %77 to float
  %79 = call i32 @llvm.smax.i32(i32 %11, i32 1)
  %80 = zext nneg i32 %79 to i64
  br label %81

81:                                               ; preds = %76, %81
  %82 = phi i64 [ 0, %76 ], [ %93, %81 ]
  %83 = trunc i64 %82 to i32
  %84 = sitofp i32 %83 to float
  %85 = fdiv float %84, %78
  %86 = fsub float 5.000000e-01, %85
  %87 = call float @llvm.fabs.f32(float %86)
  %88 = call float @llvm.fmuladd.f32(float %87, float -2.000000e+00, float 1.000000e+00)
  %89 = call float @llvm.fabs.f32(float %88)
  %90 = call float @bmesh_subd_falloff_calc(i32 noundef %12, float noundef %89) #16
  %91 = call float @llvm.fmuladd.f32(float %90, float %13, float 1.000000e+00)
  %92 = getelementptr inbounds float, ptr %20, i64 %82
  store float %91, ptr %92, align 4, !tbaa !53
  %93 = add nuw nsw i64 %82, 1
  %94 = icmp eq i64 %93, %80
  br i1 %94, label %95, label %81, !llvm.loop !55

95:                                               ; preds = %81, %72
  %96 = call i32 @BM_mesh_edgeloops_find(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @bm_edge_rim_test_cb, ptr noundef %0) #16
  %97 = icmp slt i32 %96, 2
  br i1 %97, label %156, label %98

98:                                               ; preds = %95
  %99 = icmp eq i32 %96, 2
  br i1 %99, label %100, label %110

100:                                              ; preds = %98
  %101 = load ptr, ptr %3, align 8, !tbaa !56
  %102 = getelementptr inbounds %struct.ListBase, ptr %3, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !58
  %104 = call fastcc zeroext i8 @bm_edgeloop_check_overlap_all(ptr noundef %0, ptr noundef %101, ptr noundef %103) #17, !range !59
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %156, label %106

106:                                              ; preds = %100
  %107 = call fastcc ptr @bm_edgering_pair_store_create(ptr noundef %0, ptr noundef %101, ptr noundef %103, i32 noundef %9) #17
  %108 = icmp eq ptr %107, null
  br i1 %108, label %156, label %109

109:                                              ; preds = %106
  call fastcc void @bm_edgering_pair_ringsubd(ptr noundef %0, ptr noundef nonnull %107, ptr noundef %101, ptr noundef %103, i32 noundef %9, i32 noundef %8, float noundef %10, ptr noundef %20) #17
  call fastcc void @bm_edgering_pair_store_free(ptr noundef nonnull %107, i32 noundef %9) #17
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #16
  br label %161

110:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  %111 = call fastcc ptr @bm_edgering_pair_calc(ptr noundef %0, ptr noundef nonnull %3) #17
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #16
  br label %165

114:                                              ; preds = %110
  %115 = call i32 @BLI_gset_size(ptr noundef nonnull %111) #16
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 3
  %118 = alloca i8, i64 %117, align 16
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %7, ptr noundef nonnull %111) #17
  %119 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %7) #17, !range !59
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %114, %131
  %122 = phi i64 [ %134, %131 ], [ 0, %114 ]
  %123 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %7) #17
  %124 = load ptr, ptr %123, align 8, !tbaa !60
  %125 = getelementptr inbounds %struct.GHashPair, ptr %123, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !62
  %127 = call fastcc zeroext i8 @bm_edgeloop_check_overlap_all(ptr noundef %0, ptr noundef %124, ptr noundef %126) #17, !range !59
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %121
  %130 = call fastcc ptr @bm_edgering_pair_store_create(ptr noundef %0, ptr noundef %124, ptr noundef %126, i32 noundef %9) #17
  br label %131

131:                                              ; preds = %121, %129
  %132 = phi ptr [ %130, %129 ], [ null, %121 ]
  %133 = getelementptr inbounds ptr, ptr %118, i64 %122
  store ptr %132, ptr %133, align 8, !tbaa !63
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %7) #17
  %134 = add nuw i64 %122, 1
  %135 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %7) #17, !range !59
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %121, label %137, !llvm.loop !64

137:                                              ; preds = %131, %114
  call fastcc void @BLI_gsetIterator_init(ptr noundef nonnull %7, ptr noundef nonnull %111) #17
  %138 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %7) #17, !range !59
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %163

140:                                              ; preds = %137, %151
  %141 = phi i64 [ %153, %151 ], [ 0, %137 ]
  %142 = phi i8 [ %152, %151 ], [ 0, %137 ]
  %143 = getelementptr inbounds ptr, ptr %118, i64 %141
  %144 = load ptr, ptr %143, align 8, !tbaa !63
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %140
  %147 = call fastcc ptr @BLI_gsetIterator_getKey(ptr noundef nonnull %7) #17
  %148 = getelementptr inbounds %struct.GHashPair, ptr %147, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !62
  %150 = load ptr, ptr %147, align 8, !tbaa !60
  call fastcc void @bm_edgering_pair_ringsubd(ptr noundef %0, ptr noundef nonnull %144, ptr noundef %150, ptr noundef %149, i32 noundef %9, i32 noundef %8, float noundef %10, ptr noundef %20) #17
  call fastcc void @bm_edgering_pair_store_free(ptr noundef nonnull %144, i32 noundef %9) #17
  br label %151

151:                                              ; preds = %146, %140
  %152 = phi i8 [ 1, %146 ], [ %142, %140 ]
  call fastcc void @BLI_gsetIterator_step(ptr noundef nonnull %7) #17
  %153 = add nuw i64 %141, 1
  %154 = call fastcc zeroext i8 @BLI_gsetIterator_done(ptr noundef nonnull %7) #17, !range !59
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %140, label %158, !llvm.loop !65

156:                                              ; preds = %106, %100, %95
  %157 = phi ptr [ @.str.6, %95 ], [ @.str.7, %100 ], [ @.str.7, %106 ]
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull %157) #16
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #16
  br label %165

158:                                              ; preds = %151
  %159 = icmp eq i8 %152, 0
  %160 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void @BLI_gset_free(ptr noundef nonnull %111, ptr noundef %160) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #16
  br i1 %159, label %165, label %161

161:                                              ; preds = %109, %158
  %162 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %162, ptr noundef nonnull @.str.9, i8 noundef zeroext 8, i16 noundef signext 1) #16
  br label %165

163:                                              ; preds = %137
  %164 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void @BLI_gset_free(ptr noundef nonnull %111, ptr noundef %164) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #16
  br label %165

165:                                              ; preds = %163, %113, %156, %161, %158
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !66 {
  %4 = tail call fastcc zeroext i8 @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #17
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !67 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !71
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !73 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = tail call ptr %3(ptr noundef %0) #16
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #5 !PGOFuncName !76 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !71
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare float @bmesh_subd_falloff_calc(i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BM_mesh_edgeloops_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_edge_rim_test_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = tail call fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr noundef %1, ptr noundef %4) #17
  ret i8 %5
}

; Function Attrs: optsize
declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_edgeloop_check_overlap_all(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !78 {
  %4 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #16
  %5 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %2) #16
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %1, i8 noundef zeroext 0) #17
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %2, i8 noundef zeroext 1) #17
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %4, %3 ], [ %8, %10 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !79
  %13 = tail call fastcc zeroext i8 @bm_vert_is_tag_edge_connect(ptr noundef %0, ptr noundef %12) #17
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %6, !llvm.loop !81

15:                                               ; preds = %6
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %1, i8 noundef zeroext 1) #17
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %2, i8 noundef zeroext 0) #17
  br label %16

16:                                               ; preds = %20, %15
  %17 = phi ptr [ %5, %15 ], [ %18, %20 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.LinkData, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = tail call fastcc zeroext i8 @bm_vert_is_tag_edge_connect(ptr noundef %0, ptr noundef %22) #17
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %16, !llvm.loop !82

25:                                               ; preds = %10, %20, %16
  %26 = phi i8 [ 0, %20 ], [ 1, %16 ], [ 0, %10 ]
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %1, i8 noundef zeroext 0) #17
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %2, i8 noundef zeroext 0) #17
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_edgering_pair_store_create(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !83 {
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x ptr], align 16
  %7 = alloca [2 x ptr], align 16
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %9 = tail call ptr %8(i64 noundef 32, ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #16
  %10 = icmp eq i32 %3, 2
  br i1 %10, label %11, label %71

11:                                               ; preds = %4
  %12 = tail call i32 @BM_edgeloop_length_get(ptr noundef %1) #16
  %13 = tail call i32 @BM_edgeloop_length_get(ptr noundef %2) #16
  %14 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %1) #16
  %15 = icmp eq i8 %14, 0
  %16 = sext i1 %15 to i32
  %17 = add i32 %12, %16
  %18 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %2) #16
  %19 = icmp eq i8 %18, 0
  %20 = sext i1 %19 to i32
  %21 = add i32 %13, %20
  %22 = zext i32 %17 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = alloca i8, i64 %23, align 16
  %25 = zext i32 %21 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = alloca i8, i64 %26, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  store ptr %1, ptr %5, align 16, !tbaa !63
  %28 = getelementptr inbounds ptr, ptr %5, i64 1
  store ptr %2, ptr %28, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @BM_edgeloop_edges_get(ptr noundef %1, ptr noundef nonnull %24) #16
  call void @BM_edgeloop_edges_get(ptr noundef %2, ptr noundef nonnull %27) #16
  %29 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %30 = zext i32 %12 to i64
  %31 = mul nuw nsw i64 %30, 12
  %32 = call ptr %29(i64 noundef %31, ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #16
  store ptr %32, ptr %9, align 8, !tbaa !84
  %33 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %34 = zext i32 %13 to i64
  %35 = mul nuw nsw i64 %34, 12
  %36 = call ptr %33(i64 noundef %35, ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #16
  %37 = getelementptr inbounds %struct.LoopPairStore, ptr %9, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !86
  %38 = load ptr, ptr %9, align 8, !tbaa !84
  store ptr %38, ptr %6, align 16, !tbaa !63
  %39 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 1
  store ptr %36, ptr %39, align 8, !tbaa !63
  %40 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #16
  %41 = getelementptr inbounds %struct.LoopPairStore, ptr %9, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !87
  %42 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_edgering_pair_store_create) #16
  %43 = getelementptr inbounds %struct.LoopPairStore, ptr %9, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !88
  %44 = load ptr, ptr %41, align 8, !tbaa !87
  store ptr %44, ptr %7, align 16, !tbaa !63
  %45 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  store ptr %42, ptr %45, align 8, !tbaa !63
  call fastcc void @bmo_edgeloop_vert_tag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #17
  call fastcc void @bmo_edgeloop_vert_tag(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 1) #17
  call fastcc void @bm_faces_share_tag_flush(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %17) #17
  call fastcc void @bm_faces_share_tag_flush(ptr noundef %0, ptr noundef nonnull %27, i32 noundef %21) #17
  br label %46

46:                                               ; preds = %11, %69
  %47 = phi i1 [ true, %11 ], [ false, %69 ]
  %48 = phi i64 [ 0, %11 ], [ 1, %69 ]
  %49 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = call ptr @BM_edgeloop_verts_get(ptr noundef %50) #16
  %52 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 %48
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = getelementptr inbounds [2 x ptr], ptr %6, i64 0, i64 %48
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  %56 = load ptr, ptr %51, align 8, !tbaa !63
  %57 = icmp eq ptr %56, null
  br i1 %57, label %69, label %58

58:                                               ; preds = %46, %58
  %59 = phi ptr [ %67, %58 ], [ %56, %46 ]
  %60 = phi i32 [ %66, %58 ], [ 0, %46 ]
  %61 = getelementptr inbounds %struct.LinkData, ptr %59, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !79
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds [3 x float], ptr %55, i64 %63
  call fastcc void @bm_vert_calc_surface_tangent(ptr noundef %0, ptr noundef %62, ptr noundef %64) #17
  %65 = inttoptr i64 %63 to ptr
  call void @BLI_ghash_insert(ptr noundef %53, ptr noundef %62, ptr noundef %65) #16
  %66 = add i32 %60, 1
  %67 = load ptr, ptr %59, align 8, !tbaa !63
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %58, !llvm.loop !89

69:                                               ; preds = %58, %46
  br i1 %47, label %46, label %70, !llvm.loop !90

70:                                               ; preds = %69
  call fastcc void @bmo_edgeloop_vert_tag(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #17
  call fastcc void @bmo_edgeloop_vert_tag(ptr noundef %0, ptr noundef %2, i8 noundef zeroext 0) #17
  call fastcc void @bm_faces_share_tag_clear(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %17) #17
  call fastcc void @bm_faces_share_tag_clear(ptr noundef %0, ptr noundef nonnull %27, i32 noundef %21) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br label %71

71:                                               ; preds = %70, %4
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edgering_pair_ringsubd(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, float noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !91 {
  %9 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  tail call fastcc void @bm_edgering_pair_order(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17
  call fastcc void @bm_edgering_pair_subdiv(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %5) #17
  call fastcc void @bm_edgering_pair_interpolate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %9, i32 noundef %4, i32 noundef %5, float noundef %6, ptr noundef %7) #17
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edgering_pair_store_free(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !92 {
  %3 = icmp eq i32 %1, 2
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %6 = load ptr, ptr %0, align 8, !tbaa !84
  tail call void %5(ptr noundef %6) #16
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.LoopPairStore, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  tail call void %7(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.LoopPairStore, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  tail call void @BLI_ghash_free(ptr noundef %11, ptr noundef null, ptr noundef null) #16
  %12 = getelementptr inbounds %struct.LoopPairStore, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !88
  tail call void @BLI_ghash_free(ptr noundef %13, ptr noundef null, ptr noundef null) #16
  br label %14

14:                                               ; preds = %4, %2
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  tail call void %15(ptr noundef %0) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_edgering_pair_calc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !93 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.GHashPair, align 8
  %5 = tail call ptr @BLI_gset_pair_new(ptr noundef nonnull @__func__.bm_edgering_pair_calc) #16
  %6 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.bm_edgering_pair_calc) #16
  %7 = load ptr, ptr %1, align 8, !tbaa !63
  %8 = icmp eq ptr %7, null
  br i1 %8, label %62, label %14

9:                                                ; preds = %24
  %10 = load ptr, ptr %1, align 8, !tbaa !63
  %11 = icmp eq ptr %10, null
  br i1 %11, label %62, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.GHashPair, ptr %4, i64 0, i32 1
  br label %27

14:                                               ; preds = %2, %24
  %15 = phi ptr [ %25, %24 ], [ %7, %2 ]
  %16 = tail call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %15) #16
  %17 = load ptr, ptr %16, align 8, !tbaa !56
  br label %18

18:                                               ; preds = %18, %14
  %19 = phi ptr [ %17, %14 ], [ %22, %18 ]
  %20 = getelementptr inbounds %struct.LinkData, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !79
  tail call void @BLI_ghash_insert(ptr noundef %6, ptr noundef %21, ptr noundef nonnull %15) #16
  %22 = load ptr, ptr %19, align 8, !tbaa !94
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !95

24:                                               ; preds = %18
  %25 = load ptr, ptr %15, align 8, !tbaa !63
  %26 = icmp eq ptr %25, null
  br i1 %26, label %9, label %14, !llvm.loop !96

27:                                               ; preds = %12, %59
  %28 = phi ptr [ %10, %12 ], [ %60, %59 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %29 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %28) #16
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.LinkData, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !79
  %33 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 4, ptr noundef %32) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %59, label %35

35:                                               ; preds = %27, %56
  %36 = phi ptr [ %57, %56 ], [ %33, %27 ]
  %37 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %38, i16 noundef signext 1) #17, !range !42
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %35
  %42 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %36, ptr noundef %32) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %43 = call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef %42) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %41
  store ptr %28, ptr %4, align 8, !tbaa !60
  store ptr %43, ptr %13, align 8, !tbaa !62
  %46 = icmp ugt ptr %28, %43
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  store ptr %43, ptr %4, align 8, !tbaa !60
  store ptr %28, ptr %13, align 8, !tbaa !62
  br label %48

48:                                               ; preds = %47, %45
  %49 = call zeroext i8 @BLI_gset_haskey(ptr noundef %5, ptr noundef nonnull %4) #16
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load ptr, ptr %4, align 8, !tbaa !60
  %53 = load ptr, ptr %13, align 8, !tbaa !62
  %54 = call ptr @BLI_ghashutil_pairalloc(ptr noundef %52, ptr noundef %53) #16
  call void @BLI_gset_insert(ptr noundef %5, ptr noundef %54) #16
  br label %55

55:                                               ; preds = %48, %51, %41
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %56

56:                                               ; preds = %35, %55
  %57 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %35, !llvm.loop !97

59:                                               ; preds = %56, %27
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  %60 = load ptr, ptr %28, align 8, !tbaa !63
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %27, !llvm.loop !98

62:                                               ; preds = %59, %2, %9
  call void @BLI_ghash_free(ptr noundef %6, ptr noundef null, ptr noundef null) #16
  %63 = call i32 @BLI_gset_size(ptr noundef %5) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @BLI_gset_free(ptr noundef %5, ptr noundef null) #16
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi ptr [ null, %65 ], [ %5, %62 ]
  ret ptr %67
}

; Function Attrs: optsize
declare i32 @BLI_gset_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !99 {
  tail call void @BLI_ghashIterator_init(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_gsetIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !100 {
  %2 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %0) #17, !range !59
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_gsetIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !101 {
  %2 = tail call fastcc ptr @BLI_ghashIterator_getKey(ptr noundef %0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BLI_gsetIterator_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !102 {
  tail call void @BLI_ghashIterator_step(ptr noundef %0) #16
  ret void
}

; Function Attrs: optsize
declare void @BLI_gset_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_edgeloops_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !103 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %1, ptr %4, align 4, !tbaa !104
  %5 = add i8 %1, -4
  %6 = icmp ult i8 %5, 11
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = zext nneg i8 %5 to i16
  %9 = lshr i16 1791, %8
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %7
  %13 = zext nneg i8 %5 to i64
  %14 = getelementptr inbounds [11 x ptr], ptr @switch.table.BM_iter_init, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  %16 = zext nneg i8 %5 to i64
  %17 = getelementptr inbounds [11 x ptr], ptr @switch.table.BM_iter_init.10, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr %15, ptr %19, align 8, !tbaa !105
  %20 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr %18, ptr %20, align 8, !tbaa !74
  store ptr %2, ptr %0, align 8, !tbaa !106
  tail call void %15(ptr noundef nonnull %0) #16
  br label %21

21:                                               ; preds = %7, %3, %12
  %22 = phi i8 [ 1, %12 ], [ 0, %3 ], [ 0, %7 ]
  ret i8 %22
}

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
declare void @bmiter__edge_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__edge_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_face_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_face_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_loop_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_loop_step(ptr noundef) #3

; Function Attrs: optsize
declare void @bmiter__loop_of_edge_begin(ptr noundef) #3

; Function Attrs: optsize
declare ptr @bmiter__loop_of_edge_step(ptr noundef) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bmo_elem_flag_test_bool(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !107 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !68
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !71
  %9 = trunc i16 %8 to i8
  %10 = lshr i8 %9, 1
  %11 = and i8 %10, 1
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @BM_edgeloop_verts_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edgeloop_vert_tag(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !PGOFuncName !108 {
  %3 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = zext nneg i8 %1 to i32
  br label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %4, %2 ], [ %10, %6 ]
  %8 = getelementptr inbounds %struct.LinkData, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  tail call fastcc void @_bm_elem_flag_set(ptr noundef %9, i32 noundef %5) #17
  %10 = load ptr, ptr %7, align 8, !tbaa !94
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !109

12:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @bm_vert_is_tag_edge_connect(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !110 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #15
  %4 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 4, ptr noundef %1) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2, %16
  %7 = phi ptr [ %17, %16 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.BMEdge, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %9, i16 noundef signext 1) #17, !range !42
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %7, ptr noundef %1) #17
  %14 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %13) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %6, %12
  %17 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %6, !llvm.loop !111

19:                                               ; preds = %12, %16, %2
  %20 = phi i8 [ 0, %2 ], [ 0, %16 ], [ 1, %12 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #15
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !PGOFuncName !112 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #17
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #17
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !114
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !115 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !114
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !116 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !118
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !119 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !114
  %4 = and i8 %3, 16
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @BM_edgeloop_length_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_is_closed(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_edgeloop_edges_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_edgeloop_vert_tag(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !120 {
  %4 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #16
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = zext nneg i8 %2 to i32
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %5, %3 ], [ %13, %7 ]
  %9 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !79
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  tail call fastcc void @_bmo_elem_flag_set(ptr noundef %0, ptr noundef %12, i32 noundef %6) #17
  %13 = load ptr, ptr %8, align 8, !tbaa !94
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %7, !llvm.loop !123

15:                                               ; preds = %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_faces_share_tag_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !124 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %29
  %8 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  br label %13

13:                                               ; preds = %25, %7
  %14 = phi ptr [ %12, %7 ], [ %27, %25 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !126
  %17 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %18, i16 noundef signext 2) #17, !range !42
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = tail call fastcc zeroext i8 @bmo_face_is_vert_tag_all(ptr noundef %0, ptr noundef nonnull %16) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %18, i16 noundef signext 2) #17
  br label %25

25:                                               ; preds = %13, %24, %21
  %26 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !127
  %28 = icmp eq ptr %27, %12
  br i1 %28, label %29, label %13, !llvm.loop !128

29:                                               ; preds = %25
  %30 = add nuw nsw i64 %8, 1
  %31 = icmp eq i64 %30, %6
  br i1 %31, label %32, label %7, !llvm.loop !129

32:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_vert_calc_surface_tangent(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !PGOFuncName !130 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i64 12, i1 false)
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 4, ptr noundef %1) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %69, label %11

11:                                               ; preds = %3, %55
  %12 = phi i8 [ %58, %55 ], [ 0, %3 ]
  %13 = phi i8 [ %57, %55 ], [ 0, %3 ]
  %14 = phi i8 [ %56, %55 ], [ 0, %3 ]
  %15 = phi ptr [ %59, %55 ], [ %9, %3 ]
  %16 = call fastcc zeroext i8 @BM_edge_is_wire(ptr noundef nonnull %15) #17, !range !59
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %20, i16 noundef signext 2) #17, !range !42
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, i8 noundef zeroext 14, ptr noundef nonnull %15) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %23, %45
  %27 = phi ptr [ %49, %45 ], [ %24, %23 ]
  %28 = phi i8 [ %48, %45 ], [ %12, %23 ]
  %29 = phi i8 [ %47, %45 ], [ %13, %23 ]
  %30 = phi i8 [ %46, %45 ], [ %14, %23 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #15
  call void @BM_edge_calc_face_tangent(ptr noundef nonnull %15, ptr noundef nonnull %27, ptr noundef nonnull %8) #16
  %31 = getelementptr inbounds %struct.BMLoop, ptr %27, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  %33 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %34, i16 noundef signext 2) #17, !range !42
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %8) #17
  br label %45

38:                                               ; preds = %26
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %8) #17
  %39 = load ptr, ptr %31, align 8, !tbaa !126
  %40 = getelementptr inbounds %struct.BMFace, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %41, i16 noundef signext 1) #17, !range !42
  %43 = icmp eq i16 %42, 0
  %44 = select i1 %43, i8 %28, i8 1
  br label %45

45:                                               ; preds = %38, %37
  %46 = phi i8 [ %30, %37 ], [ 1, %38 ]
  %47 = phi i8 [ 1, %37 ], [ %29, %38 ]
  %48 = phi i8 [ %28, %37 ], [ %44, %38 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #15
  %49 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #17
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %26, !llvm.loop !131

51:                                               ; preds = %45, %23
  %52 = phi i8 [ %14, %23 ], [ %46, %45 ]
  %53 = phi i8 [ %13, %23 ], [ %47, %45 ]
  %54 = phi i8 [ %12, %23 ], [ %48, %45 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  br label %55

55:                                               ; preds = %11, %51, %18
  %56 = phi i8 [ %14, %11 ], [ %52, %51 ], [ %14, %18 ]
  %57 = phi i8 [ %13, %11 ], [ %53, %51 ], [ %13, %18 ]
  %58 = phi i8 [ %12, %11 ], [ %54, %51 ], [ %12, %18 ]
  %59 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %11, !llvm.loop !132

61:                                               ; preds = %55
  %62 = icmp ne i8 %57, 0
  %63 = icmp ne i8 %58, 0
  %64 = select i1 %62, i1 %63, i1 false
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  call fastcc void @negate_v3(ptr noundef nonnull %5) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %5) #17
  call fastcc void @normalize_v3(ptr noundef nonnull %6) #17
  call fastcc void @add_v3_v3v3(ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  call fastcc void @normalize_v3(ptr noundef %2) #17
  br label %70

66:                                               ; preds = %61
  %67 = icmp eq i8 %56, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %66
  call fastcc void @negate_v3(ptr noundef nonnull %5) #17
  call fastcc void @normalize_v3_v3(ptr noundef %2, ptr noundef nonnull %5) #17
  br label %70

69:                                               ; preds = %3, %66
  call fastcc void @normalize_v3_v3(ptr noundef %2, ptr noundef nonnull %6) #17
  br label %70

70:                                               ; preds = %68, %69, %65
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_faces_share_tag_clear(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #8 !PGOFuncName !133 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi i64 [ 0, %5 ], [ %23, %22 ]
  %9 = getelementptr inbounds ptr, ptr %1, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %struct.BMEdge, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  br label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %12, %7 ], [ %20, %13 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !126
  %17 = getelementptr inbounds %struct.BMFace, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  tail call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %18, i16 noundef signext 2) #17
  %19 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = icmp eq ptr %20, %12
  br i1 %21, label %22, label %13, !llvm.loop !134

22:                                               ; preds = %13
  %23 = add nuw nsw i64 %8, 1
  %24 = icmp eq i64 %23, %6
  br i1 %24, label %25, label %7, !llvm.loop !135

25:                                               ; preds = %22, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_set(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !136 {
  %4 = icmp ne i32 %2, 0
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !71
  %11 = and i16 %10, -2
  %12 = zext i1 %4 to i16
  %13 = or disjoint i16 %11, %12
  store i16 %13, ptr %9, align 2, !tbaa !71
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmo_face_is_vert_tag_all(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !PGOFuncName !137 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !138
  br label %5

5:                                                ; preds = %13, %2
  %6 = phi ptr [ %4, %2 ], [ %15, %13 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %10, i16 noundef signext 1) #17, !range !42
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !140
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %17, label %5, !llvm.loop !141

17:                                               ; preds = %13, %5
  %18 = phi i8 [ 0, %5 ], [ 1, %13 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BM_edge_is_wire(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !142 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @BM_edge_calc_face_tangent(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !143 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  %4 = load float, ptr %0, align 4, !tbaa !53
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !53
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3(ptr nocapture noundef %0) unnamed_addr #5 !PGOFuncName !144 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !53
  %3 = fneg <2 x float> %2
  store <2 x float> %3, ptr %0, align 4, !tbaa !53
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !53
  %6 = fneg float %5
  store float %6, ptr %4, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3(ptr nocapture noundef %0) unnamed_addr #10 !PGOFuncName !145 {
  tail call fastcc void @normalize_v3_v3(ptr noundef %0, ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !146 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = load float, ptr %2, align 4, !tbaa !53
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !53
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !147 {
  %3 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %1) #17
  %4 = fcmp ogt float %3, 0x38AA95A5C0000000
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = tail call float @sqrtf(float noundef %3) #16
  %7 = fdiv float 1.000000e+00, %6
  tail call fastcc void @mul_v3_v3fl(ptr noundef %0, ptr noundef %1, float noundef %7) #17
  br label %9

8:                                                ; preds = %2
  tail call fastcc void @zero_v3(ptr noundef %0) #17
  br label %9

9:                                                ; preds = %8, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !148 {
  %3 = load float, ptr %0, align 4, !tbaa !53
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #5 !PGOFuncName !149 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !53
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !53
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !150 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !53
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !53
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #5 !PGOFuncName !151 {
  %4 = xor i16 %2, -1
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !68
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !71
  %11 = and i16 %10, %4
  store i16 %11, ptr %9, align 2, !tbaa !71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edgering_pair_order(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !152 {
  %4 = alloca %struct.BMIter, align 8
  %5 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #16
  %6 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %2) #16
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %1, i8 noundef zeroext 0) #17
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %2, i8 noundef zeroext 1) #17
  %7 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %1) #16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %2) #16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %47, label %12

12:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #15
  %13 = load ptr, ptr %5, align 8, !tbaa !56
  %14 = getelementptr inbounds %struct.LinkData, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !79
  %16 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 4, ptr noundef %15) #17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %12, %29
  %19 = phi ptr [ %30, %29 ], [ %16, %12 ]
  %20 = getelementptr inbounds %struct.BMEdge, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %21, i16 noundef signext 1) #17, !range !42
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load ptr, ptr %14, align 8, !tbaa !79
  %26 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %19, ptr noundef %25) #17
  %27 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %26) #17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %18
  %30 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #17
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %18, !llvm.loop !153

32:                                               ; preds = %29, %24, %12
  %33 = phi ptr [ null, %12 ], [ %26, %24 ], [ null, %29 ]
  br label %34

34:                                               ; preds = %38, %32
  %35 = phi ptr [ %6, %32 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.LinkData, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !79
  %41 = icmp eq ptr %40, %33
  br i1 %41, label %42, label %34, !llvm.loop !154

42:                                               ; preds = %38, %34
  call void @BLI_listbase_rotate_first(ptr noundef %6, ptr noundef %36) #16
  %43 = call fastcc zeroext i8 @bm_edgering_pair_order_is_flipped(ptr noundef %1, ptr noundef %2) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %2) #16
  call void @BLI_listbase_rotate_first(ptr noundef %6, ptr noundef %36) #16
  br label %46

46:                                               ; preds = %45, %42
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #15
  br label %62

47:                                               ; preds = %9, %3
  %48 = load ptr, ptr %5, align 8, !tbaa !56
  %49 = getelementptr inbounds %struct.LinkData, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  %51 = load ptr, ptr %6, align 8, !tbaa !56
  %52 = getelementptr inbounds %struct.LinkData, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !79
  %54 = tail call ptr @BM_edge_exists(ptr noundef %50, ptr noundef %53) #16
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.BMEdge, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %58, i16 noundef signext 1) #17, !range !42
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %47
  tail call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %2) #16
  br label %62

62:                                               ; preds = %56, %61, %46
  call fastcc void @bm_edgeloop_vert_tag(ptr noundef %2, i8 noundef zeroext 0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edgering_pair_subdiv(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !155 {
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #16
  %9 = tail call i32 @BM_edgeloop_length_get(ptr noundef %1) #16
  %10 = tail call i32 @BM_edgeloop_length_get(ptr noundef %2) #16
  %11 = tail call fastcc i32 @max_ii(i32 noundef %9, i32 noundef %10) #17
  %12 = shl nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = alloca i8, i64 %14, align 16
  %16 = alloca i8, i64 %14, align 16
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %1, i8 noundef zeroext 0) #17
  tail call fastcc void @bm_edgeloop_vert_tag(ptr noundef %2, i8 noundef zeroext 1) #17
  %17 = load ptr, ptr %8, align 8, !tbaa !63
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %75, %5
  %20 = phi i32 [ 0, %5 ], [ %76, %75 ]
  %21 = phi i32 [ 0, %5 ], [ %77, %75 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %87, label %80

23:                                               ; preds = %5, %75
  %24 = phi ptr [ %78, %75 ], [ %17, %5 ]
  %25 = phi i32 [ %77, %75 ], [ 0, %5 ]
  %26 = phi i32 [ %76, %75 ], [ 0, %5 ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #15
  %27 = getelementptr inbounds %struct.LinkData, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !79
  %29 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, i8 noundef zeroext 4, ptr noundef %28) #17
  %30 = icmp eq ptr %29, null
  br i1 %30, label %75, label %31

31:                                               ; preds = %23, %70
  %32 = phi i32 [ %72, %70 ], [ %25, %23 ]
  %33 = phi i32 [ %71, %70 ], [ %26, %23 ]
  %34 = phi ptr [ %73, %70 ], [ %29, %23 ]
  %35 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %36, i16 noundef signext 4) #17, !range !42
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %31
  %40 = load ptr, ptr %27, align 8, !tbaa !79
  %41 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %34, ptr noundef %40) #17
  %42 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %41) #17
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %70, label %44

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #15
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %36, i16 noundef signext 4) #17
  %45 = add i32 %32, 1
  %46 = zext i32 %32 to i64
  %47 = getelementptr inbounds ptr, ptr %15, i64 %46
  store ptr %34, ptr %47, align 8, !tbaa !63
  %48 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, i8 noundef zeroext 8, ptr noundef nonnull %34) #17
  %49 = icmp eq ptr %48, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %44, %64
  %51 = phi i32 [ %65, %64 ], [ %33, %44 ]
  %52 = phi ptr [ %66, %64 ], [ %48, %44 ]
  %53 = getelementptr inbounds %struct.BMFace, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !34
  %55 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %54, i16 noundef signext 1) #17, !range !42
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %54, i16 noundef signext 4) #17, !range !42
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %54, i16 noundef signext 4) #17
  %61 = add i32 %51, 1
  %62 = zext i32 %51 to i64
  %63 = getelementptr inbounds ptr, ptr %16, i64 %62
  store ptr %52, ptr %63, align 8, !tbaa !63
  br label %64

64:                                               ; preds = %50, %60, %57
  %65 = phi i32 [ %51, %57 ], [ %61, %60 ], [ %51, %50 ]
  %66 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #17
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %50, !llvm.loop !156

68:                                               ; preds = %64, %44
  %69 = phi i32 [ %33, %44 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #15
  br label %70

70:                                               ; preds = %39, %68, %31
  %71 = phi i32 [ %33, %31 ], [ %69, %68 ], [ %33, %39 ]
  %72 = phi i32 [ %32, %31 ], [ %45, %68 ], [ %32, %39 ]
  %73 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %31, !llvm.loop !157

75:                                               ; preds = %70, %23
  %76 = phi i32 [ %26, %23 ], [ %71, %70 ]
  %77 = phi i32 [ %25, %23 ], [ %72, %70 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #15
  %78 = load ptr, ptr %24, align 8, !tbaa !63
  %79 = icmp eq ptr %78, null
  br i1 %79, label %19, label %23, !llvm.loop !158

80:                                               ; preds = %19, %89
  %81 = phi i32 [ %82, %89 ], [ %21, %19 ]
  %82 = add i32 %81, -1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %15, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !63
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %80, %89, %19
  %88 = icmp eq i32 %20, 0
  br i1 %88, label %108, label %101

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !45
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %91, i16 noundef signext 4) #17
  %92 = load ptr, ptr %90, align 8, !tbaa !45
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %92, i16 noundef signext 1) #17
  %93 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !117
  %95 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %94) #17
  %96 = icmp eq i8 %95, 0
  %97 = getelementptr inbounds %struct.BMEdge, ptr %85, i64 0, i32 3
  %98 = select i1 %96, ptr %97, ptr %93
  %99 = load ptr, ptr %98, align 8, !tbaa !63
  call fastcc void @bm_edge_subdiv_as_loop(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %85, ptr noundef %99, i32 noundef %4) #17
  %100 = icmp eq i32 %82, 0
  br i1 %100, label %87, label %80, !llvm.loop !159

101:                                              ; preds = %87, %129
  %102 = phi i32 [ %103, %129 ], [ %20, %87 ]
  %103 = add i32 %102, -1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %16, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !63
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %101, %129, %87
  %109 = load ptr, ptr %3, align 8, !tbaa !63
  %110 = icmp eq ptr %109, null
  br i1 %110, label %135, label %131

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.BMFace, ptr %106, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %113, i16 noundef signext 4) #17
  %114 = getelementptr inbounds %struct.BMFace, ptr %106, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !138
  br label %116

116:                                              ; preds = %125, %111
  %117 = phi ptr [ %115, %111 ], [ %127, %125 ]
  %118 = getelementptr inbounds %struct.BMLoop, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  %120 = getelementptr inbounds %struct.BMEdge, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !45
  %122 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %121, i16 noundef signext 2) #17, !range !42
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  call fastcc void @bm_face_slice(ptr noundef %0, ptr noundef nonnull %117, i32 noundef %4) #17
  br label %129

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.BMLoop, ptr %117, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !140
  %128 = icmp eq ptr %127, %115
  br i1 %128, label %129, label %116, !llvm.loop !160

129:                                              ; preds = %125, %124
  %130 = icmp eq i32 %103, 0
  br i1 %130, label %108, label %101, !llvm.loop !161

131:                                              ; preds = %108, %131
  %132 = phi ptr [ %133, %131 ], [ %109, %108 ]
  call fastcc void @bm_edgeloop_vert_tag(ptr noundef nonnull %132, i8 noundef zeroext 0) #17
  %133 = load ptr, ptr %132, align 8, !tbaa !63
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %131, !llvm.loop !162

135:                                              ; preds = %131, %108
  call fastcc void @bm_edgeloop_vert_tag(ptr noundef %2, i8 noundef zeroext 0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edgering_pair_interpolate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, float noundef %7, ptr noundef readonly %8) unnamed_addr #0 !PGOFuncName !163 {
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
  %18 = alloca [3 x float], align 4
  %19 = alloca [4 x float], align 16
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = add i32 %6, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #15
  tail call void @BM_edgeloop_calc_center(ptr noundef %0, ptr noundef %2) #16
  tail call void @BM_edgeloop_calc_center(ptr noundef %0, ptr noundef %3) #16
  %29 = tail call zeroext i8 @BM_edgeloop_calc_normal(ptr noundef %0, ptr noundef %2) #16
  %30 = tail call zeroext i8 @BM_edgeloop_calc_normal(ptr noundef %0, ptr noundef %3) #16
  %31 = tail call ptr @BM_edgeloop_center_get(ptr noundef %2) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %10, ptr noundef %31) #17
  %32 = tail call ptr @BM_edgeloop_center_get(ptr noundef %3) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %11, ptr noundef %32) #17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %10, ptr noundef nonnull %11) #17
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %15, ptr noundef nonnull %14) #17
  %33 = icmp eq i8 %29, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %15) #16
  br label %36

36:                                               ; preds = %34, %9
  %37 = icmp eq i8 %30, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %36
  %39 = call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef %0, ptr noundef %3, ptr noundef nonnull %15) #16
  br label %40

40:                                               ; preds = %38, %36
  %41 = call ptr @BM_edgeloop_normal_get(ptr noundef %2) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %12, ptr noundef %41) #17
  %42 = call ptr @BM_edgeloop_normal_get(ptr noundef %3) #16
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %42) #17
  %43 = call fastcc float @dot_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %14) #17
  %44 = fcmp ogt float %43, 0.000000e+00
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call fastcc void @negate_v3(ptr noundef nonnull %12) #17
  br label %46

46:                                               ; preds = %45, %40
  %47 = call fastcc float @dot_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %14) #17
  %48 = fcmp olt float %47, 0.000000e+00
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  call fastcc void @negate_v3(ptr noundef nonnull %13) #17
  br label %50

50:                                               ; preds = %49, %46
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #15
  %51 = icmp eq i32 %5, 1
  %52 = icmp ne ptr %8, null
  %53 = or i1 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #15
  %55 = call fastcc float @bezier_handle_calc_length_v3(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %11, ptr noundef nonnull %13) #17
  %56 = fmul float %55, %7
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %16, ptr noundef nonnull %12, float noundef %56) #17
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %17, ptr noundef nonnull %13, float noundef %56) #17
  call fastcc void @add_v3_v3(ptr noundef nonnull %16, ptr noundef nonnull %10) #17
  call fastcc void @add_v3_v3(ptr noundef nonnull %17, ptr noundef nonnull %11) #17
  %57 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %58 = mul nsw i32 %28, 3
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 2
  %61 = call ptr %57(i64 noundef %60, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #16
  %62 = add nsw i32 %6, 1
  br label %63

63:                                               ; preds = %54, %63
  %64 = phi i64 [ 0, %54 ], [ %74, %63 ]
  %65 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 %64
  %66 = load float, ptr %65, align 4, !tbaa !53
  %67 = getelementptr inbounds [3 x float], ptr %16, i64 0, i64 %64
  %68 = load float, ptr %67, align 4, !tbaa !53
  %69 = getelementptr inbounds [3 x float], ptr %17, i64 0, i64 %64
  %70 = load float, ptr %69, align 4, !tbaa !53
  %71 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 %64
  %72 = load float, ptr %71, align 4, !tbaa !53
  %73 = getelementptr inbounds float, ptr %61, i64 %64
  call void @BKE_curve_forward_diff_bezier(float noundef %66, float noundef %68, float noundef %70, float noundef %72, ptr noundef %73, i32 noundef %62, i32 noundef 12) #16
  %74 = add nuw nsw i64 %64, 1
  %75 = icmp eq i64 %74, 3
  br i1 %75, label %76, label %63, !llvm.loop !164

76:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #15
  br label %77

77:                                               ; preds = %50, %76
  %78 = phi ptr [ %61, %76 ], [ null, %50 ]
  switch i32 %5, label %341 [
    i32 0, label %79
    i32 1, label %130
    i32 2, label %257
  ]

79:                                               ; preds = %77
  br i1 %52, label %80, label %341

80:                                               ; preds = %79
  %81 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %82 = mul nsw i32 %28, 3
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 2
  %85 = call ptr %81(i64 noundef %84, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #16
  %86 = icmp sgt i32 %6, -2
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = add nsw i32 %6, 1
  %89 = sitofp i32 %88 to float
  %90 = call i32 @llvm.smax.i32(i32 %28, i32 1)
  %91 = zext nneg i32 %90 to i64
  br label %97

92:                                               ; preds = %97, %80
  %93 = load ptr, ptr %4, align 8, !tbaa !63
  %94 = icmp eq ptr %93, null
  br i1 %94, label %338, label %95

95:                                               ; preds = %92
  %96 = sext i32 %6 to i64
  br label %108

97:                                               ; preds = %87, %97
  %98 = phi i64 [ 0, %87 ], [ %103, %97 ]
  %99 = getelementptr inbounds [3 x float], ptr %85, i64 %98
  %100 = trunc i64 %98 to i32
  %101 = sitofp i32 %100 to float
  %102 = fdiv float %101, %89
  call void @interp_v3_v3v3(ptr noundef %99, ptr noundef nonnull %10, ptr noundef nonnull %11, float noundef %102) #16
  %103 = add nuw nsw i64 %98, 1
  %104 = icmp eq i64 %103, %91
  br i1 %104, label %92, label %97, !llvm.loop !165

105:                                              ; preds = %126, %108
  %106 = load ptr, ptr %109, align 8, !tbaa !63
  %107 = icmp eq ptr %106, null
  br i1 %107, label %338, label %108, !llvm.loop !166

108:                                              ; preds = %95, %105
  %109 = phi ptr [ %106, %105 ], [ %93, %95 ]
  %110 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %109) #16
  %111 = load ptr, ptr %110, align 8, !tbaa !63
  %112 = icmp eq ptr %111, null
  br i1 %112, label %105, label %113

113:                                              ; preds = %108, %126
  %114 = phi i64 [ %127, %126 ], [ 0, %108 ]
  %115 = phi ptr [ %128, %126 ], [ %111, %108 ]
  %116 = icmp eq i64 %114, 0
  %117 = icmp sgt i64 %114, %96
  %118 = or i1 %116, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.LinkData, ptr %115, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !79
  %122 = getelementptr inbounds %struct.BMVert, ptr %121, i64 0, i32 2
  %123 = getelementptr inbounds [3 x float], ptr %85, i64 %114
  %124 = getelementptr inbounds float, ptr %8, i64 %114
  %125 = load float, ptr %124, align 4, !tbaa !53
  call void @interp_v3_v3v3(ptr noundef nonnull %122, ptr noundef nonnull %123, ptr noundef nonnull %122, float noundef %125) #16
  br label %126

126:                                              ; preds = %113, %119
  %127 = add nuw i64 %114, 1
  %128 = load ptr, ptr %115, align 8, !tbaa !63
  %129 = icmp eq ptr %128, null
  br i1 %129, label %105, label %113, !llvm.loop !167

130:                                              ; preds = %77
  %131 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %132 = mul nsw i32 %28, 3
  %133 = sext i32 %132 to i64
  %134 = shl nsw i64 %133, 2
  %135 = call ptr %131(i64 noundef %134, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #16
  %136 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %137 = sext i32 %28 to i64
  %138 = shl nsw i64 %137, 4
  %139 = call ptr %136(i64 noundef %138, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #16
  %140 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %141 = mul nsw i64 %137, 36
  %142 = call ptr %140(i64 noundef %141, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #16
  call fastcc void @copy_v3_v3(ptr noundef %135, ptr noundef nonnull %12) #17
  %143 = add i32 %6, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x float], ptr %135, i64 %144
  call fastcc void @negate_v3_v3(ptr noundef %145, ptr noundef nonnull %13) #17
  %146 = icmp slt i32 %6, 1
  br i1 %146, label %158, label %147

147:                                              ; preds = %130
  %148 = zext i32 %143 to i64
  br label %149

149:                                              ; preds = %147, %149
  %150 = phi i64 [ 1, %147 ], [ %155, %149 ]
  %151 = getelementptr inbounds [3 x float], ptr %135, i64 %150
  %152 = add nsw i64 %150, -1
  %153 = getelementptr inbounds [3 x float], ptr %78, i64 %152
  %154 = getelementptr inbounds [3 x float], ptr %78, i64 %150
  %155 = add nuw nsw i64 %150, 1
  %156 = getelementptr inbounds [3 x float], ptr %78, i64 %155
  call void @bisect_v3_v3v3v3(ptr noundef nonnull %151, ptr noundef %153, ptr noundef nonnull %154, ptr noundef nonnull %156) #16
  %157 = icmp eq i64 %155, %148
  br i1 %157, label %158, label %149, !llvm.loop !168

158:                                              ; preds = %149, %130
  call void @vec_to_quat(ptr noundef %139, ptr noundef %135, i16 noundef signext 5, i16 noundef signext 1) #16
  %159 = call float @normalize_qt(ptr noundef %139) #16
  %160 = icmp sgt i32 %6, -1
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = call i32 @llvm.smax.i32(i32 %28, i32 2)
  %163 = zext nneg i32 %162 to i64
  br label %169

164:                                              ; preds = %183, %158
  %165 = icmp sgt i32 %6, -2
  br i1 %165, label %166, label %210

166:                                              ; preds = %164
  %167 = call i32 @llvm.smax.i32(i32 %28, i32 1)
  %168 = zext nneg i32 %167 to i64
  br label %186

169:                                              ; preds = %161, %183
  %170 = phi i64 [ 1, %161 ], [ %184, %183 ]
  %171 = add nsw i64 %170, -1
  %172 = getelementptr inbounds [3 x float], ptr %135, i64 %171
  %173 = getelementptr inbounds [3 x float], ptr %135, i64 %170
  %174 = call float @angle_normalized_v3v3(ptr noundef %172, ptr noundef nonnull %173) #16
  %175 = fcmp ogt float %174, 0.000000e+00
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #15
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %18, ptr noundef %172, ptr noundef nonnull %173) #17
  call void @axis_angle_to_quat(ptr noundef nonnull %19, ptr noundef nonnull %18, float noundef %174) #16
  %177 = getelementptr inbounds [4 x float], ptr %139, i64 %170
  %178 = getelementptr inbounds [4 x float], ptr %139, i64 %171
  call void @mul_qt_qtqt(ptr noundef nonnull %177, ptr noundef nonnull %19, ptr noundef %178) #16
  %179 = call float @normalize_qt(ptr noundef nonnull %177) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #15
  br label %183

180:                                              ; preds = %169
  %181 = getelementptr inbounds [4 x float], ptr %139, i64 %170
  %182 = getelementptr inbounds [4 x float], ptr %139, i64 %171
  call void @copy_qt_qt(ptr noundef nonnull %181, ptr noundef %182) #16
  br label %183

183:                                              ; preds = %180, %176
  %184 = add nuw nsw i64 %170, 1
  %185 = icmp eq i64 %184, %163
  br i1 %185, label %164, label %169, !llvm.loop !169

186:                                              ; preds = %166, %207
  %187 = phi i64 [ 0, %166 ], [ %208, %207 ]
  br i1 %52, label %188, label %191

188:                                              ; preds = %186
  %189 = getelementptr inbounds float, ptr %8, i64 %187
  %190 = load float, ptr %189, align 4, !tbaa !53
  br label %191

191:                                              ; preds = %186, %188
  %192 = phi float [ %190, %188 ], [ 1.000000e+00, %186 ]
  %193 = getelementptr inbounds [3 x [3 x float]], ptr %142, i64 %187
  %194 = getelementptr inbounds [4 x float], ptr %139, i64 %187
  %195 = getelementptr inbounds [3 x float], ptr %78, i64 %187
  br label %196

196:                                              ; preds = %191, %204
  %197 = phi i64 [ 0, %191 ], [ %205, %204 ]
  %198 = getelementptr inbounds [3 x float], ptr %193, i64 %197
  call fastcc void @zero_v3(ptr noundef %198) #17
  %199 = trunc i64 %197 to i32
  switch i32 %199, label %204 [
    i32 1, label %202
    i32 2, label %200
  ]

200:                                              ; preds = %196
  %201 = getelementptr inbounds [3 x float], ptr %193, i64 %197, i64 1
  br label %202

202:                                              ; preds = %196, %200
  %203 = phi ptr [ %201, %200 ], [ %198, %196 ]
  store float %192, ptr %203, align 4, !tbaa !53
  br label %204

204:                                              ; preds = %202, %196
  call void @mul_qt_v3(ptr noundef %194, ptr noundef %198) #16
  call fastcc void @add_v3_v3(ptr noundef %198, ptr noundef %195) #17
  %205 = add nuw nsw i64 %197, 1
  %206 = icmp eq i64 %205, 3
  br i1 %206, label %207, label %196, !llvm.loop !170

207:                                              ; preds = %204
  %208 = add nuw nsw i64 %187, 1
  %209 = icmp eq i64 %208, %168
  br i1 %209, label %210, label %186, !llvm.loop !171

210:                                              ; preds = %207, %164
  %211 = getelementptr inbounds [3 x [3 x float]], ptr %142, i64 %144
  %212 = load ptr, ptr %4, align 8, !tbaa !63
  %213 = icmp eq ptr %212, null
  br i1 %213, label %254, label %214

214:                                              ; preds = %210
  %215 = getelementptr inbounds [3 x float], ptr %142, i64 1
  %216 = getelementptr inbounds [3 x float], ptr %142, i64 2
  %217 = getelementptr inbounds [3 x float], ptr %211, i64 1
  %218 = getelementptr inbounds [3 x float], ptr %211, i64 2
  %219 = sitofp i32 %143 to float
  br label %223

220:                                              ; preds = %238, %223
  %221 = load ptr, ptr %224, align 8, !tbaa !63
  %222 = icmp eq ptr %221, null
  br i1 %222, label %254, label %223, !llvm.loop !172

223:                                              ; preds = %214, %220
  %224 = phi ptr [ %212, %214 ], [ %221, %220 ]
  %225 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %224) #16
  %226 = load ptr, ptr %225, align 8, !tbaa !56
  %227 = getelementptr inbounds %struct.ListBase, ptr %225, i64 0, i32 1
  %228 = load ptr, ptr %226, align 8, !tbaa !94
  %229 = load ptr, ptr %227, align 8, !tbaa !58
  %230 = icmp eq ptr %228, %229
  br i1 %230, label %220, label %231

231:                                              ; preds = %223
  %232 = getelementptr inbounds %struct.LinkData, ptr %229, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !79
  %234 = getelementptr inbounds %struct.LinkData, ptr %226, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !79
  %236 = getelementptr inbounds %struct.BMVert, ptr %235, i64 0, i32 2
  %237 = getelementptr inbounds %struct.BMVert, ptr %233, i64 0, i32 2
  br label %238

238:                                              ; preds = %231, %238
  %239 = phi i64 [ 1, %231 ], [ %250, %238 ]
  %240 = phi ptr [ %228, %231 ], [ %251, %238 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #15
  %241 = getelementptr inbounds [3 x [3 x float]], ptr %142, i64 %239
  %242 = getelementptr inbounds [3 x float], ptr %241, i64 1
  %243 = getelementptr inbounds [3 x float], ptr %241, i64 2
  call void @transform_point_by_tri_v3(ptr noundef nonnull %20, ptr noundef nonnull %236, ptr noundef nonnull %241, ptr noundef nonnull %242, ptr noundef nonnull %243, ptr noundef %142, ptr noundef nonnull %215, ptr noundef nonnull %216) #16
  call void @transform_point_by_tri_v3(ptr noundef nonnull %21, ptr noundef nonnull %237, ptr noundef nonnull %241, ptr noundef nonnull %242, ptr noundef nonnull %243, ptr noundef %211, ptr noundef nonnull %217, ptr noundef nonnull %218) #16
  %244 = getelementptr inbounds %struct.LinkData, ptr %240, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !79
  %246 = getelementptr inbounds %struct.BMVert, ptr %245, i64 0, i32 2
  %247 = trunc i64 %239 to i32
  %248 = sitofp i32 %247 to float
  %249 = fdiv float %248, %219
  call void @interp_v3_v3v3(ptr noundef nonnull %246, ptr noundef nonnull %20, ptr noundef nonnull %21, float noundef %249) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #15
  %250 = add nuw i64 %239, 1
  %251 = load ptr, ptr %240, align 8, !tbaa !94
  %252 = load ptr, ptr %227, align 8, !tbaa !58
  %253 = icmp eq ptr %251, %252
  br i1 %253, label %220, label %238, !llvm.loop !173

254:                                              ; preds = %220, %210
  %255 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %255(ptr noundef %135) #16
  %256 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %256(ptr noundef %139) #16
  br label %338

257:                                              ; preds = %77
  %258 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !63
  %259 = mul nsw i32 %28, 3
  %260 = sext i32 %259 to i64
  %261 = shl nsw i64 %260, 2
  %262 = call ptr %258(i64 noundef %261, ptr noundef nonnull @__func__.bm_edgering_pair_interpolate) #16
  %263 = load ptr, ptr %4, align 8, !tbaa !63
  %264 = icmp eq ptr %263, null
  br i1 %264, label %338, label %265

265:                                              ; preds = %257
  %266 = getelementptr inbounds %struct.LoopPairStore, ptr %1, i64 0, i32 2
  %267 = getelementptr inbounds %struct.LoopPairStore, ptr %1, i64 0, i32 3
  %268 = getelementptr inbounds %struct.LoopPairStore, ptr %1, i64 0, i32 1
  %269 = add nsw i32 %6, 1
  %270 = sext i32 %6 to i64
  br label %271

271:                                              ; preds = %265, %335
  %272 = phi ptr [ %263, %265 ], [ %336, %335 ]
  %273 = call ptr @BM_edgeloop_verts_get(ptr noundef nonnull %272) #16
  %274 = load ptr, ptr %273, align 8, !tbaa !56
  %275 = getelementptr inbounds %struct.LinkData, ptr %274, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !79
  %277 = getelementptr inbounds %struct.ListBase, ptr %273, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !58
  %279 = getelementptr inbounds %struct.LinkData, ptr %278, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #15
  %281 = getelementptr inbounds %struct.BMVert, ptr %276, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %22, ptr noundef nonnull %281) #17
  %282 = getelementptr inbounds %struct.BMVert, ptr %280, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %25, ptr noundef nonnull %282) #17
  %283 = load ptr, ptr %266, align 8, !tbaa !87
  %284 = call ptr @BLI_ghash_lookup(ptr noundef %283, ptr noundef %276) #16
  %285 = ptrtoint ptr %284 to i64
  %286 = load ptr, ptr %267, align 8, !tbaa !88
  %287 = call ptr @BLI_ghash_lookup(ptr noundef %286, ptr noundef %280) #16
  %288 = ptrtoint ptr %287 to i64
  %289 = load ptr, ptr %1, align 8, !tbaa !84
  %290 = and i64 %285, 4294967295
  %291 = getelementptr inbounds [3 x float], ptr %289, i64 %290
  call fastcc void @copy_v3_v3(ptr noundef nonnull %23, ptr noundef %291) #17
  %292 = load ptr, ptr %268, align 8, !tbaa !86
  %293 = and i64 %288, 4294967295
  %294 = getelementptr inbounds [3 x float], ptr %292, i64 %293
  call fastcc void @copy_v3_v3(ptr noundef nonnull %26, ptr noundef %294) #17
  %295 = call fastcc float @bezier_handle_calc_length_v3(ptr noundef nonnull %22, ptr noundef nonnull %23, ptr noundef nonnull %25, ptr noundef nonnull %26) #17
  %296 = fmul float %295, %7
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %24, ptr noundef nonnull %23, float noundef %296) #17
  call fastcc void @mul_v3_v3fl(ptr noundef nonnull %27, ptr noundef nonnull %26, float noundef %296) #17
  call fastcc void @add_v3_v3(ptr noundef nonnull %24, ptr noundef nonnull %22) #17
  call fastcc void @add_v3_v3(ptr noundef nonnull %27, ptr noundef nonnull %25) #17
  br label %297

297:                                              ; preds = %271, %297
  %298 = phi i64 [ 0, %271 ], [ %308, %297 ]
  %299 = getelementptr inbounds [3 x float], ptr %22, i64 0, i64 %298
  %300 = load float, ptr %299, align 4, !tbaa !53
  %301 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 %298
  %302 = load float, ptr %301, align 4, !tbaa !53
  %303 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 %298
  %304 = load float, ptr %303, align 4, !tbaa !53
  %305 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 %298
  %306 = load float, ptr %305, align 4, !tbaa !53
  %307 = getelementptr inbounds float, ptr %262, i64 %298
  call void @BKE_curve_forward_diff_bezier(float noundef %300, float noundef %302, float noundef %304, float noundef %306, ptr noundef %307, i32 noundef %269, i32 noundef 12) #16
  %308 = add nuw nsw i64 %298, 1
  %309 = icmp eq i64 %308, 3
  br i1 %309, label %310, label %297, !llvm.loop !174

310:                                              ; preds = %297
  %311 = load ptr, ptr %273, align 8, !tbaa !56
  %312 = load ptr, ptr %311, align 8, !tbaa !94
  %313 = load ptr, ptr %277, align 8, !tbaa !58
  %314 = icmp eq ptr %312, %313
  br i1 %314, label %335, label %315

315:                                              ; preds = %310, %330
  %316 = phi i64 [ %331, %330 ], [ 1, %310 ]
  %317 = phi ptr [ %332, %330 ], [ %312, %310 ]
  %318 = icmp sgt i64 %316, %270
  br i1 %318, label %330, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.LinkData, ptr %317, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !79
  %322 = getelementptr inbounds %struct.BMVert, ptr %321, i64 0, i32 2
  %323 = getelementptr inbounds [3 x float], ptr %262, i64 %316
  call fastcc void @copy_v3_v3(ptr noundef nonnull %322, ptr noundef nonnull %323) #17
  br i1 %52, label %324, label %330

324:                                              ; preds = %319
  %325 = load ptr, ptr %320, align 8, !tbaa !79
  %326 = getelementptr inbounds %struct.BMVert, ptr %325, i64 0, i32 2
  %327 = getelementptr inbounds [3 x float], ptr %78, i64 %316
  %328 = getelementptr inbounds float, ptr %8, i64 %316
  %329 = load float, ptr %328, align 4, !tbaa !53
  call void @interp_v3_v3v3(ptr noundef nonnull %326, ptr noundef nonnull %327, ptr noundef nonnull %326, float noundef %329) #16
  br label %330

330:                                              ; preds = %315, %324, %319
  %331 = add nuw i64 %316, 1
  %332 = load ptr, ptr %317, align 8, !tbaa !94
  %333 = load ptr, ptr %277, align 8, !tbaa !58
  %334 = icmp eq ptr %332, %333
  br i1 %334, label %335, label %315, !llvm.loop !175

335:                                              ; preds = %330, %310
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #15
  %336 = load ptr, ptr %272, align 8, !tbaa !63
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %271, !llvm.loop !176

338:                                              ; preds = %335, %105, %257, %92, %254
  %339 = phi ptr [ %142, %254 ], [ %85, %92 ], [ %262, %257 ], [ %85, %105 ], [ %262, %335 ]
  %340 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %340(ptr noundef %339) #16
  br label %341

341:                                              ; preds = %338, %79, %77
  %342 = icmp eq ptr %78, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %341
  %344 = load ptr, ptr @MEM_freeN, align 8, !tbaa !63
  call void %344(ptr noundef nonnull %78) #16
  br label %345

345:                                              ; preds = %343, %341
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #15
  ret void
}

; Function Attrs: optsize
declare void @BLI_listbase_rotate_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @bm_edgering_pair_order_is_flipped(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !177 {
  %3 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %0) #16
  %4 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #16
  %5 = load ptr, ptr %3, align 8, !tbaa !56
  %6 = load ptr, ptr %4, align 8, !tbaa !56
  %7 = load ptr, ptr %5, align 8, !tbaa !94
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  br label %11

11:                                               ; preds = %9, %25
  %12 = phi ptr [ %7, %9 ], [ %26, %25 ]
  %13 = getelementptr inbounds %struct.LinkData, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = load ptr, ptr %10, align 8, !tbaa !79
  %16 = tail call ptr @BM_edge_exists(ptr noundef %14, ptr noundef %15) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load ptr, ptr %13, align 8, !tbaa !79
  %20 = load ptr, ptr %6, align 8, !tbaa !94
  %21 = getelementptr inbounds %struct.LinkData, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !79
  %23 = tail call ptr @BM_edge_exists(ptr noundef %19, ptr noundef %22) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %11
  %26 = load ptr, ptr %12, align 8, !tbaa !94
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %11, !llvm.loop !178

28:                                               ; preds = %18, %25, %2
  %29 = phi ptr [ null, %2 ], [ null, %25 ], [ %12, %18 ]
  %30 = phi i1 [ true, %2 ], [ true, %25 ], [ false, %18 ]
  %31 = load ptr, ptr %6, align 8, !tbaa !94
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.LinkData, ptr %5, i64 0, i32 2
  br label %35

35:                                               ; preds = %33, %49
  %36 = phi ptr [ %31, %33 ], [ %50, %49 ]
  %37 = getelementptr inbounds %struct.LinkData, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !79
  %39 = load ptr, ptr %34, align 8, !tbaa !79
  %40 = tail call ptr @BM_edge_exists(ptr noundef %38, ptr noundef %39) #16
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load ptr, ptr %37, align 8, !tbaa !79
  %44 = load ptr, ptr %5, align 8, !tbaa !94
  %45 = getelementptr inbounds %struct.LinkData, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !79
  %47 = tail call ptr @BM_edge_exists(ptr noundef %43, ptr noundef %46) #16
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42, %35
  %50 = load ptr, ptr %36, align 8, !tbaa !94
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %35, !llvm.loop !179

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.LinkData, ptr %29, i64 0, i32 1
  %54 = getelementptr inbounds %struct.ListBase, ptr %3, i64 0, i32 1
  %55 = select i1 %30, ptr %54, ptr %53
  %56 = getelementptr inbounds %struct.LinkData, ptr %36, i64 0, i32 1
  br label %62

57:                                               ; preds = %49, %28
  %58 = getelementptr inbounds %struct.LinkData, ptr %29, i64 0, i32 1
  %59 = getelementptr inbounds %struct.ListBase, ptr %3, i64 0, i32 1
  %60 = select i1 %30, ptr %59, ptr %58
  %61 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  br label %62

62:                                               ; preds = %52, %57
  %63 = phi ptr [ %60, %57 ], [ %55, %52 ]
  %64 = phi ptr [ %61, %57 ], [ %56, %52 ]
  %65 = load ptr, ptr %63, align 8, !tbaa !63
  %66 = load ptr, ptr %64, align 8, !tbaa !63
  %67 = getelementptr inbounds %struct.LinkData, ptr %65, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !79
  %69 = getelementptr inbounds %struct.LinkData, ptr %66, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !79
  %71 = tail call ptr @BM_edge_exists(ptr noundef %68, ptr noundef %70) #16
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %88

73:                                               ; preds = %62
  %74 = load ptr, ptr %5, align 8, !tbaa !94
  %75 = getelementptr inbounds %struct.LinkData, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !79
  %77 = load ptr, ptr %69, align 8, !tbaa !79
  %78 = tail call ptr @BM_edge_exists(ptr noundef %76, ptr noundef %77) #16
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load ptr, ptr %6, align 8, !tbaa !94
  %82 = getelementptr inbounds %struct.LinkData, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !79
  %84 = load ptr, ptr %67, align 8, !tbaa !79
  %85 = tail call ptr @BM_edge_exists(ptr noundef %83, ptr noundef %84) #16
  %86 = icmp eq ptr %85, null
  %87 = zext i1 %86 to i8
  br label %88

88:                                               ; preds = %80, %73, %62
  %89 = phi i8 [ 0, %73 ], [ 0, %62 ], [ %87, %80 ]
  ret i8 %89
}

; Function Attrs: optsize
declare void @BM_edgeloop_flip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #13 !PGOFuncName !180 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 %0)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_edge_subdiv_as_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !181 {
  %6 = add nsw i32 %4, 2
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = alloca i8, i64 %8, align 16
  %10 = tail call fastcc ptr @BM_edge_other_vert(ptr noundef %2, ptr noundef %3) #17
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  %12 = call ptr @BM_edge_split_n(ptr noundef %0, ptr noundef %2, i32 noundef %4, ptr noundef nonnull %11) #16
  %13 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = icmp eq ptr %14, %3
  %16 = sext i32 %4 to i64
  %17 = getelementptr ptr, ptr %9, i64 %16
  %18 = getelementptr ptr, ptr %17, i64 1
  %19 = select i1 %15, ptr %3, ptr %10
  %20 = select i1 %15, ptr %10, ptr %3
  store ptr %19, ptr %9, align 16, !tbaa !63
  store ptr %20, ptr %18, align 8, !tbaa !63
  %21 = call ptr @BM_edgeloop_from_verts(ptr noundef nonnull %9, i32 noundef %6, i8 noundef zeroext 0) #16
  %22 = load ptr, ptr %13, align 8, !tbaa !117
  %23 = icmp eq ptr %22, %3
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %21) #16
  br label %25

25:                                               ; preds = %24, %5
  call void @BLI_addtail(ptr noundef %1, ptr noundef %21) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_slice(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !182 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  store ptr %1, ptr %4, align 8, !tbaa !63
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %3, %31
  %7 = phi i32 [ %42, %31 ], [ 0, %3 ]
  %8 = load ptr, ptr %4, align 8, !tbaa !63
  %9 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !140
  %15 = getelementptr inbounds %struct.BMLoop, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !140
  %17 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %10, ptr noundef %12, ptr noundef %16, ptr noundef nonnull %4, ptr noundef null, i8 noundef zeroext 0) #16
  %18 = load ptr, ptr %4, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !126
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !184
  %23 = getelementptr inbounds %struct.BMLoop, ptr %18, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !127
  %25 = getelementptr inbounds %struct.BMLoop, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !126
  %27 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !184
  %29 = icmp slt i32 %22, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %6
  store ptr %24, ptr %4, align 8, !tbaa !63
  br label %31

31:                                               ; preds = %30, %6
  %32 = phi ptr [ %26, %30 ], [ %20, %6 ]
  %33 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %34, i16 noundef signext 1) #17
  %35 = load ptr, ptr %4, align 8, !tbaa !63
  %36 = getelementptr inbounds %struct.BMLoop, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !127
  %38 = getelementptr inbounds %struct.BMLoop, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !126
  %40 = getelementptr inbounds %struct.BMFace, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %41, i16 noundef signext 1) #17
  %42 = add nuw nsw i32 %7, 1
  %43 = icmp eq i32 %42, %2
  br i1 %43, label %44, label %6, !llvm.loop !185

44:                                               ; preds = %31, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_split_n(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_edgeloop_from_verts(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_edgeloop_calc_center(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_calc_normal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !186 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  store float %3, ptr %0, align 4, !tbaa !53
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edgeloop_center_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !187 {
  %4 = load float, ptr %1, align 4, !tbaa !53
  %5 = load float, ptr %2, align 4, !tbaa !53
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !53
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !53
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !53
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !53
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_edgeloop_normal_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @bezier_handle_calc_length_v3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !188 {
  %5 = alloca [3 x float], align 4
  %6 = tail call fastcc float @dot_v3v3(ptr noundef %1, ptr noundef %3) #17
  %7 = fcmp olt float %6, 0.000000e+00
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = fadd float %6, 1.000000e+00
  %10 = fsub float 1.000000e+00, %9
  %11 = fmul float %10, 7.500000e-01
  %12 = tail call float @llvm.fmuladd.f32(float %9, float 0x3FF5555500000000, float %11)
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi float [ %12, %8 ], [ 0x3FF5555500000000, %4 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #15
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %3) #17
  %15 = call fastcc float @len_squared_v3(ptr noundef nonnull %5) #17
  %16 = fcmp ogt float %15, 0x3E80000000000000
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #17
  %18 = call float @closest_to_line_v3(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %5) #16
  br label %20

19:                                               ; preds = %13
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %0) #17
  br label %20

20:                                               ; preds = %19, %17
  %21 = call fastcc float @len_v3v3(ptr noundef nonnull %5, ptr noundef %2) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #15
  %22 = fmul float %21, 5.000000e-01
  %23 = fmul float %14, %22
  ret float %23
}

; Function Attrs: optsize
declare void @BKE_curve_forward_diff_bezier(float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @negate_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !189 {
  %3 = load float, ptr %1, align 4, !tbaa !53
  %4 = fneg float %3
  store float %4, ptr %0, align 4, !tbaa !53
  %5 = getelementptr inbounds float, ptr %1, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !53
  %7 = fneg float %6
  %8 = getelementptr inbounds float, ptr %0, i64 1
  store float %7, ptr %8, align 4, !tbaa !53
  %9 = getelementptr inbounds float, ptr %1, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !53
  %11 = fneg float %10
  %12 = getelementptr inbounds float, ptr %0, i64 2
  store float %11, ptr %12, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @bisect_v3_v3v3v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vec_to_quat(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare float @normalize_qt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !190 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !53
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !53
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !53
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !53
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !53
  %15 = load float, ptr %8, align 4, !tbaa !53
  %16 = load float, ptr %2, align 4, !tbaa !53
  %17 = load float, ptr %1, align 4, !tbaa !53
  %18 = load float, ptr %6, align 4, !tbaa !53
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !53
  %23 = load float, ptr %1, align 4, !tbaa !53
  %24 = load float, ptr %10, align 4, !tbaa !53
  %25 = load float, ptr %4, align 4, !tbaa !53
  %26 = load float, ptr %2, align 4, !tbaa !53
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @axis_angle_to_quat(ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_qt_qtqt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @copy_qt_qt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mul_qt_v3(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @transform_point_by_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !191 {
  %2 = load float, ptr %0, align 4, !tbaa !53
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !53
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !53
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: optsize
declare float @closest_to_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !192 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #17
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #15
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !193 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #17
  %3 = tail call float @sqrtf(float noundef %2) #16
  ret float %3
}

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_gset_pair_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BLI_gset_haskey(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_ghashutil_pairalloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_gset_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !194 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getKey(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !197 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !198
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{i16 0, i16 5}
!43 = !{!44, !37, i64 24}
!44 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!45 = !{!46, !37, i64 16}
!46 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !47, i64 48, !47, i64 64}
!47 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.mustprogress"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !38, i64 0}
!55 = distinct !{!55, !49}
!56 = !{!57, !37, i64 0}
!57 = !{!"ListBase", !37, i64 0, !37, i64 8}
!58 = !{!57, !37, i64 8}
!59 = !{i8 0, i8 2}
!60 = !{!61, !37, i64 0}
!61 = !{!"GHashPair", !37, i64 0, !37, i64 8}
!62 = !{!61, !37, i64 8}
!63 = !{!37, !37, i64 0}
!64 = distinct !{!64, !49}
!65 = distinct !{!65, !49}
!66 = !{!"bmo_subdivide_edgering.c:BM_iter_new"}
!67 = !{!"bmo_subdivide_edgering.c:_bmo_elem_flag_test"}
!68 = !{!69, !40, i64 128}
!69 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !70, i64 144, !70, i64 344, !70, i64 544, !70, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !57, i64 960, !37, i64 976, !57, i64 984, !37, i64 1000}
!70 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!71 = !{!72, !41, i64 0}
!72 = !{!"BMFlagLayer", !41, i64 0}
!73 = !{!"bmo_subdivide_edgering.c:BM_iter_step"}
!74 = !{!75, !37, i64 48}
!75 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!76 = !{!"bmo_subdivide_edgering.c:_bmo_elem_flag_enable"}
!77 = !{!"bmo_subdivide_edgering.c:bm_edge_rim_test_cb"}
!78 = !{!"bmo_subdivide_edgering.c:bm_edgeloop_check_overlap_all"}
!79 = !{!80, !37, i64 16}
!80 = !{!"LinkData", !37, i64 0, !37, i64 8, !37, i64 16}
!81 = distinct !{!81, !49}
!82 = distinct !{!82, !49}
!83 = !{!"bmo_subdivide_edgering.c:bm_edgering_pair_store_create"}
!84 = !{!85, !37, i64 0}
!85 = !{!"LoopPairStore", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!86 = !{!85, !37, i64 8}
!87 = !{!85, !37, i64 16}
!88 = !{!85, !37, i64 24}
!89 = distinct !{!89, !49}
!90 = distinct !{!90, !49}
!91 = !{!"bmo_subdivide_edgering.c:bm_edgering_pair_ringsubd"}
!92 = !{!"bmo_subdivide_edgering.c:bm_edgering_pair_store_free"}
!93 = !{!"bmo_subdivide_edgering.c:bm_edgering_pair_calc"}
!94 = !{!80, !37, i64 0}
!95 = distinct !{!95, !49}
!96 = distinct !{!96, !49}
!97 = distinct !{!97, !49}
!98 = distinct !{!98, !49}
!99 = !{!"bmo_subdivide_edgering.c:BLI_gsetIterator_init"}
!100 = !{!"bmo_subdivide_edgering.c:BLI_gsetIterator_done"}
!101 = !{!"bmo_subdivide_edgering.c:BLI_gsetIterator_getKey"}
!102 = !{!"bmo_subdivide_edgering.c:BLI_gsetIterator_step"}
!103 = !{!"bmo_subdivide_edgering.c:BM_iter_init"}
!104 = !{!75, !38, i64 60}
!105 = !{!75, !37, i64 40}
!106 = !{!38, !38, i64 0}
!107 = !{!"bmo_subdivide_edgering.c:_bmo_elem_flag_test_bool"}
!108 = !{!"bmo_subdivide_edgering.c:bm_edgeloop_vert_tag"}
!109 = distinct !{!109, !49}
!110 = !{!"bmo_subdivide_edgering.c:bm_vert_is_tag_edge_connect"}
!111 = distinct !{!111, !49}
!112 = !{!"bmo_subdivide_edgering.c:_bm_elem_flag_set"}
!113 = !{!"bmo_subdivide_edgering.c:_bm_elem_flag_enable"}
!114 = !{!36, !38, i64 13}
!115 = !{!"bmo_subdivide_edgering.c:_bm_elem_flag_disable"}
!116 = !{!"bmo_subdivide_edgering.c:BM_edge_other_vert"}
!117 = !{!46, !37, i64 24}
!118 = !{!46, !37, i64 32}
!119 = !{!"bmo_subdivide_edgering.c:_bm_elem_flag_test"}
!120 = !{!"bmo_subdivide_edgering.c:bmo_edgeloop_vert_tag"}
!121 = !{!122, !37, i64 16}
!122 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!123 = distinct !{!123, !49}
!124 = !{!"bmo_subdivide_edgering.c:bm_faces_share_tag_flush"}
!125 = !{!46, !37, i64 40}
!126 = !{!44, !37, i64 32}
!127 = !{!44, !37, i64 40}
!128 = distinct !{!128, !49}
!129 = distinct !{!129, !49}
!130 = !{!"bmo_subdivide_edgering.c:bm_vert_calc_surface_tangent"}
!131 = distinct !{!131, !49}
!132 = distinct !{!132, !49}
!133 = !{!"bmo_subdivide_edgering.c:bm_faces_share_tag_clear"}
!134 = distinct !{!134, !49}
!135 = distinct !{!135, !49}
!136 = !{!"bmo_subdivide_edgering.c:_bmo_elem_flag_set"}
!137 = !{!"bmo_subdivide_edgering.c:bmo_face_is_vert_tag_all"}
!138 = !{!35, !37, i64 24}
!139 = !{!44, !37, i64 16}
!140 = !{!44, !37, i64 56}
!141 = distinct !{!141, !49}
!142 = !{!"bmo_subdivide_edgering.c:BM_edge_is_wire"}
!143 = !{!"bmo_subdivide_edgering.c:add_v3_v3"}
!144 = !{!"bmo_subdivide_edgering.c:negate_v3"}
!145 = !{!"bmo_subdivide_edgering.c:normalize_v3"}
!146 = !{!"bmo_subdivide_edgering.c:add_v3_v3v3"}
!147 = !{!"bmo_subdivide_edgering.c:normalize_v3_v3"}
!148 = !{!"bmo_subdivide_edgering.c:dot_v3v3"}
!149 = !{!"bmo_subdivide_edgering.c:mul_v3_v3fl"}
!150 = !{!"bmo_subdivide_edgering.c:zero_v3"}
!151 = !{!"bmo_subdivide_edgering.c:_bmo_elem_flag_disable"}
!152 = !{!"bmo_subdivide_edgering.c:bm_edgering_pair_order"}
!153 = distinct !{!153, !49}
!154 = distinct !{!154, !49}
!155 = !{!"bmo_subdivide_edgering.c:bm_edgering_pair_subdiv"}
!156 = distinct !{!156, !49}
!157 = distinct !{!157, !49}
!158 = distinct !{!158, !49}
!159 = distinct !{!159, !49}
!160 = distinct !{!160, !49}
!161 = distinct !{!161, !49}
!162 = distinct !{!162, !49}
!163 = !{!"bmo_subdivide_edgering.c:bm_edgering_pair_interpolate"}
!164 = distinct !{!164, !49}
!165 = distinct !{!165, !49}
!166 = distinct !{!166, !49}
!167 = distinct !{!167, !49}
!168 = distinct !{!168, !49}
!169 = distinct !{!169, !49}
!170 = distinct !{!170, !49}
!171 = distinct !{!171, !49}
!172 = distinct !{!172, !49}
!173 = distinct !{!173, !49}
!174 = distinct !{!174, !49}
!175 = distinct !{!175, !49}
!176 = distinct !{!176, !49}
!177 = !{!"bmo_subdivide_edgering.c:bm_edgering_pair_order_is_flipped"}
!178 = distinct !{!178, !49}
!179 = distinct !{!179, !49}
!180 = !{!"bmo_subdivide_edgering.c:max_ii"}
!181 = !{!"bmo_subdivide_edgering.c:bm_edge_subdiv_as_loop"}
!182 = !{!"bmo_subdivide_edgering.c:bm_face_slice"}
!183 = !{!44, !37, i64 64}
!184 = !{!35, !40, i64 32}
!185 = distinct !{!185, !49}
!186 = !{!"bmo_subdivide_edgering.c:copy_v3_v3"}
!187 = !{!"bmo_subdivide_edgering.c:sub_v3_v3v3"}
!188 = !{!"bmo_subdivide_edgering.c:bezier_handle_calc_length_v3"}
!189 = !{!"bmo_subdivide_edgering.c:negate_v3_v3"}
!190 = !{!"bmo_subdivide_edgering.c:cross_v3_v3v3"}
!191 = !{!"bmo_subdivide_edgering.c:len_squared_v3"}
!192 = !{!"bmo_subdivide_edgering.c:len_v3v3"}
!193 = !{!"bmo_subdivide_edgering.c:len_v3"}
!194 = !{!"bmo_subdivide_edgering.c:BLI_ghashIterator_done"}
!195 = !{!196, !37, i64 8}
!196 = !{!"GHashIterator", !37, i64 0, !37, i64 8, !40, i64 16}
!197 = !{!"bmo_subdivide_edgering.c:BLI_ghashIterator_getKey"}
!198 = !{!199, !37, i64 8}
!199 = !{!"_gh_Entry", !37, i64 0, !37, i64 8, !37, i64 16}
