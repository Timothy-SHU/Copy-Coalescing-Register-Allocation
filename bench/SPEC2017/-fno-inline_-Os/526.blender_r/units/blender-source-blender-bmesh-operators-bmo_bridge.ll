; ModuleID = 'blender/source/blender/bmesh/operators/bmo_bridge.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMFlagLayer = type { i16 }

@.str = private unnamed_addr constant [10 x i8] c"use_pairs\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"use_merge\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"merge_factor\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"use_cyclic\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"twist_offset\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Select at least two edge loops\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Select an even number of loops to bridge pairs\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Selected loops must have equal edge counts\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"triangulate faces=%hf\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"beautify_fill faces=%hf edges=ae use_restrict_tag=%b method=%i\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"weld_verts\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"targetmap\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_bridge_loops_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %4 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #15
  %5 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #15
  %6 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.2) #15
  %7 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #15
  %8 = icmp ne i8 %7, 0
  %9 = icmp eq i8 %5, 0
  %10 = select i1 %8, i1 %9, i1 false
  %11 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.4) #15
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 2, i16 noundef signext 4) #15
  %12 = call i32 @BM_mesh_edgeloops_find(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @bm_edge_test_cb, ptr noundef %0) #15
  call void @BM_mesh_edgeloops_calc_center(ptr noundef %0, ptr noundef nonnull %3) #15
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %57, label %14

14:                                               ; preds = %2
  %15 = icmp eq i8 %4, 0
  %16 = and i32 %12, 1
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %14
  br i1 %9, label %30, label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %3, align 8, !tbaa !34
  %22 = call i32 @BM_edgeloop_length_get(ptr noundef %21) #15
  br label %23

23:                                               ; preds = %27, %20
  %24 = phi ptr [ %3, %20 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !39
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = call i32 @BM_edgeloop_length_get(ptr noundef nonnull %25) #15
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %23, label %57, !llvm.loop !40

30:                                               ; preds = %23, %19
  %31 = icmp ne i32 %12, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  br i1 %15, label %34, label %33

33:                                               ; preds = %32
  call void @BM_mesh_edgeloops_calc_normal(ptr noundef %0, ptr noundef nonnull %3) #15
  br label %34

34:                                               ; preds = %33, %32
  call void @BM_mesh_edgeloops_calc_order(ptr noundef %0, ptr noundef nonnull %3, i8 noundef zeroext %4) #15
  br label %35

35:                                               ; preds = %34, %30
  %36 = load ptr, ptr %3, align 8, !tbaa !39
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #15
  br label %64

39:                                               ; preds = %35
  %40 = and i1 %10, %31
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi ptr [ %36, %39 ], [ %55, %53 ]
  %43 = phi i1 [ false, %39 ], [ true, %53 ]
  %44 = load ptr, ptr %42, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  br i1 %40, label %47, label %59

47:                                               ; preds = %46
  %48 = load ptr, ptr %3, align 8, !tbaa !34
  br label %49

49:                                               ; preds = %47, %41
  %50 = phi ptr [ %48, %47 ], [ %44, %41 ]
  call fastcc void @bridge_loop_pair(ptr noundef %0, ptr noundef nonnull %42, ptr noundef %50, i8 noundef zeroext %5, float noundef %6, i32 noundef %11) #16
  br i1 %15, label %53, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr %42, align 8, !tbaa !42
  br label %53

53:                                               ; preds = %49, %51
  %54 = phi ptr [ %52, %51 ], [ %42, %49 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !39
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %41, !llvm.loop !44

57:                                               ; preds = %27, %14, %2
  %58 = phi ptr [ @.str.6, %2 ], [ @.str.7, %14 ], [ @.str.8, %27 ]
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull %58) #15
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #15
  br label %64

59:                                               ; preds = %53, %46
  %60 = phi i1 [ true, %53 ], [ %43, %46 ]
  %61 = select i1 %60, i1 %9, i1 false
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %3) #15
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %63, ptr noundef nonnull @.str.9, i8 noundef zeroext 8, i16 noundef signext 16) #15
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %63, ptr noundef nonnull @.str.10, i8 noundef zeroext 2, i16 noundef signext 8) #15
  br label %64

64:                                               ; preds = %38, %57, %62, %59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BM_mesh_edgeloops_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_edge_test_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !PGOFuncName !45 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = tail call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %1, ptr noundef %4) #16
  %6 = trunc i16 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare void @BM_mesh_edgeloops_calc_center(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @BM_edgeloop_length_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BM_mesh_edgeloops_calc_normal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_edgeloops_calc_order(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bridge_loop_pair(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, float noundef %4, i32 noundef %5) unnamed_addr #0 !PGOFuncName !51 {
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [2 x ptr], align 16
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca [4 x ptr], align 16
  %19 = alloca [3 x ptr], align 16
  %20 = alloca [2 x ptr], align 16
  %21 = alloca %struct.BMOperator, align 8
  %22 = alloca %struct.BMOIter, align 8
  %23 = alloca %struct.BMOIter, align 8
  %24 = alloca %struct.BMOIter, align 8
  %25 = alloca [2 x ptr], align 16
  %26 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %1) #15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = tail call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %2) #15
  %30 = icmp ne i8 %29, 0
  br label %31

31:                                               ; preds = %28, %6
  %32 = phi i1 [ false, %6 ], [ %30, %28 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #14
  %33 = tail call i32 @BM_edgeloop_length_get(ptr noundef %1) #15
  %34 = tail call i32 @BM_edgeloop_length_get(ptr noundef %2) #15
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi i32 [ %33, %36 ], [ %34, %31 ]
  %39 = phi i32 [ %34, %36 ], [ %33, %31 ]
  %40 = phi ptr [ %1, %36 ], [ %2, %31 ]
  %41 = phi ptr [ %2, %36 ], [ %1, %31 ]
  %42 = icmp eq i32 %39, %38
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @BM_mesh_elem_hflag_disable_all(ptr noundef %0, i8 noundef zeroext 10, i8 noundef zeroext 16, i8 noundef zeroext 0) #15
  br label %44

44:                                               ; preds = %43, %37
  %45 = tail call ptr @BM_edgeloop_center_get(ptr noundef %41) #15
  %46 = tail call ptr @BM_edgeloop_center_get(ptr noundef %40) #15
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %45, ptr noundef %46) #16
  br i1 %32, label %47, label %50

47:                                               ; preds = %44
  %48 = tail call zeroext i8 @BM_edgeloop_calc_normal(ptr noundef %0, ptr noundef %41) #15
  %49 = tail call zeroext i8 @BM_edgeloop_calc_normal(ptr noundef %0, ptr noundef %40) #15
  br label %77

50:                                               ; preds = %44
  %51 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %41) #15
  %52 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %40) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #14
  %53 = load ptr, ptr %51, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.LinkData, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !52
  %56 = getelementptr inbounds %struct.BMVert, ptr %55, i64 0, i32 2
  %57 = getelementptr inbounds %struct.ListBase, ptr %51, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  %59 = getelementptr inbounds %struct.LinkData, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !52
  %61 = getelementptr inbounds %struct.BMVert, ptr %60, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %56, ptr noundef nonnull %61) #16
  %62 = load ptr, ptr %52, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.LinkData, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  %65 = getelementptr inbounds %struct.BMVert, ptr %64, i64 0, i32 2
  %66 = getelementptr inbounds %struct.ListBase, ptr %52, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !53
  %68 = getelementptr inbounds %struct.LinkData, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !52
  %70 = getelementptr inbounds %struct.BMVert, ptr %69, i64 0, i32 2
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %65, ptr noundef nonnull %70) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %7) #16
  call fastcc void @cross_v3_v3v3(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  %71 = call fastcc float @dot_v3v3(ptr noundef nonnull %9, ptr noundef nonnull %10) #16
  %72 = fcmp olt float %71, 0.000000e+00
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  tail call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %40) #15
  br label %74

74:                                               ; preds = %73, %50
  call fastcc void @normalize_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %7) #16
  %75 = call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef %0, ptr noundef %41, ptr noundef nonnull %8) #15
  %76 = call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef %0, ptr noundef %40, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #14
  br label %77

77:                                               ; preds = %74, %47
  %78 = call ptr @BM_edgeloop_normal_get(ptr noundef %41) #15
  %79 = call fastcc float @dot_v3v3(ptr noundef %78, ptr noundef nonnull %7) #16
  %80 = call ptr @BM_edgeloop_normal_get(ptr noundef %40) #15
  %81 = call fastcc float @dot_v3v3(ptr noundef %80, ptr noundef nonnull %7) #16
  %82 = call fastcc float @len_squared_v3(ptr noundef nonnull %7) #16
  %83 = fcmp olt float %82, 0x3EE4F8B580000000
  br i1 %83, label %90, label %84

84:                                               ; preds = %77
  %85 = call float @llvm.fabs.f32(float %79)
  %86 = fcmp olt float %85, 0x3EE4F8B580000000
  %87 = call float @llvm.fabs.f32(float %81)
  %88 = fcmp olt float %87, 0x3EE4F8B580000000
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %95

90:                                               ; preds = %84, %77
  %91 = call ptr @BM_edgeloop_normal_get(ptr noundef %41) #15
  %92 = call ptr @BM_edgeloop_normal_get(ptr noundef %40) #15
  %93 = call fastcc float @dot_v3v3(ptr noundef %91, ptr noundef %92) #16
  %94 = fcmp olt float %93, 0.000000e+00
  br i1 %94, label %99, label %100

95:                                               ; preds = %84
  %96 = fcmp olt float %79, 0.000000e+00
  %97 = fcmp uge float %81, 0.000000e+00
  %98 = xor i1 %96, %97
  br i1 %98, label %100, label %99

99:                                               ; preds = %95, %90
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %40) #15
  br label %100

100:                                              ; preds = %99, %95, %90
  %101 = icmp eq i8 %3, 0
  br i1 %101, label %102, label %168

102:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #14
  %103 = call ptr @BM_edgeloop_normal_get(ptr noundef %41) #15
  %104 = call ptr @BM_edgeloop_normal_get(ptr noundef %40) #15
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %11, ptr noundef %103, ptr noundef %104) #16
  %105 = call fastcc float @dot_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %7) #16
  %106 = fcmp olt float %105, 0.000000e+00
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %41) #15
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %40) #15
  br label %108

108:                                              ; preds = %107, %102
  %109 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 3
  %110 = load i32, ptr %109, align 4, !tbaa !54
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %167, label %112

112:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  store ptr %41, ptr %12, align 16, !tbaa !39
  %113 = getelementptr inbounds ptr, ptr %12, i64 1
  store ptr %40, ptr %113, align 8, !tbaa !39
  br label %114

114:                                              ; preds = %112, %161
  %115 = phi i1 [ true, %112 ], [ false, %161 ]
  %116 = phi i64 [ 0, %112 ], [ 1, %161 ]
  %117 = phi i32 [ 0, %112 ], [ %162, %161 ]
  %118 = phi i32 [ 1, %112 ], [ %124, %161 ]
  %119 = getelementptr inbounds [2 x ptr], ptr %12, i64 0, i64 %116
  %120 = load ptr, ptr %119, align 8, !tbaa !39
  %121 = call ptr @BM_edgeloop_verts_get(ptr noundef %120) #15
  %122 = load ptr, ptr %121, align 8, !tbaa !39
  %123 = icmp eq ptr %122, null
  %124 = sub nsw i32 0, %118
  br i1 %123, label %161, label %125

125:                                              ; preds = %114, %157
  %126 = phi ptr [ %159, %157 ], [ %122, %114 ]
  %127 = phi i32 [ %158, %157 ], [ %117, %114 ]
  %128 = load ptr, ptr %126, align 8, !tbaa !42
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %120) #15
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %157, label %133

133:                                              ; preds = %130
  %134 = call ptr @BM_edgeloop_verts_get(ptr noundef %120) #15
  %135 = load ptr, ptr %134, align 8, !tbaa !34
  %136 = icmp eq ptr %135, null
  br i1 %136, label %157, label %137

137:                                              ; preds = %125, %133
  %138 = phi ptr [ %135, %133 ], [ %128, %125 ]
  %139 = getelementptr inbounds %struct.LinkData, ptr %126, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !52
  %141 = getelementptr inbounds %struct.LinkData, ptr %138, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !52
  %143 = call ptr @BM_edge_exists(ptr noundef %140, ptr noundef %142) #15
  %144 = icmp eq ptr %143, null
  br i1 %144, label %157, label %145

145:                                              ; preds = %137
  %146 = call fastcc zeroext i8 @BM_edge_is_boundary(ptr noundef nonnull %143) #16, !range !58
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.BMEdge, ptr %143, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !59
  %151 = getelementptr inbounds %struct.BMLoop, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !60
  %153 = load ptr, ptr %139, align 8, !tbaa !52
  %154 = icmp eq ptr %152, %153
  %155 = select i1 %154, i32 %118, i32 %124
  %156 = add nsw i32 %155, %127
  br label %157

157:                                              ; preds = %130, %137, %145, %148, %133
  %158 = phi i32 [ %127, %133 ], [ %156, %148 ], [ %127, %145 ], [ %127, %137 ], [ %127, %130 ]
  %159 = load ptr, ptr %126, align 8, !tbaa !39
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %125, !llvm.loop !62

161:                                              ; preds = %157, %114
  %162 = phi i32 [ %117, %114 ], [ %158, %157 ]
  br i1 %115, label %114, label %163, !llvm.loop !63

163:                                              ; preds = %161
  %164 = icmp slt i32 %162, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %163
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %41) #15
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %40) #15
  br label %166

166:                                              ; preds = %165, %163
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  br label %167

167:                                              ; preds = %166, %108
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #14
  br label %168

168:                                              ; preds = %167, %100
  %169 = icmp sgt i32 %39, %38
  br i1 %169, label %170, label %172

170:                                              ; preds = %168
  %171 = call ptr @BM_edgeloop_copy(ptr noundef %40) #15
  call void @BM_edgeloop_expand(ptr noundef %0, ptr noundef %171, i32 noundef %39) #15
  br label %172

172:                                              ; preds = %170, %168
  %173 = phi ptr [ %171, %170 ], [ %40, %168 ]
  br i1 %32, label %174, label %181

174:                                              ; preds = %172
  call fastcc void @bm_bridge_best_rotation(ptr noundef %41, ptr noundef %173) #16
  %175 = icmp eq i32 %5, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %174
  %177 = call i32 @BM_edgeloop_length_get(ptr noundef %173) #15
  %178 = call ptr @BM_edgeloop_verts_get(ptr noundef %173) #15
  %179 = call fastcc i32 @mod_i(i32 noundef %5, i32 noundef %177) #16
  %180 = call ptr @BLI_rfindlink(ptr noundef %178, i32 noundef %179) #15
  call void @BLI_listbase_rotate_first(ptr noundef %178, ptr noundef %180) #15
  br label %181

181:                                              ; preds = %174, %176, %172
  %182 = call ptr @BM_edgeloop_verts_get(ptr noundef %41) #15
  %183 = load ptr, ptr %182, align 8, !tbaa !34
  %184 = call ptr @BM_edgeloop_verts_get(ptr noundef %173) #15
  %185 = load ptr, ptr %184, align 8, !tbaa !34
  br i1 %101, label %186, label %192

186:                                              ; preds = %181
  %187 = getelementptr inbounds ptr, ptr %18, i64 1
  %188 = getelementptr inbounds ptr, ptr %18, i64 2
  %189 = getelementptr inbounds ptr, ptr %18, i64 3
  %190 = getelementptr inbounds ptr, ptr %19, i64 1
  %191 = getelementptr inbounds ptr, ptr %19, i64 2
  br label %193

192:                                              ; preds = %181
  call fastcc void @bm_bridge_splice_loops(ptr noundef %0, ptr noundef %183, ptr noundef %185, float noundef %4) #16
  br label %332

193:                                              ; preds = %186, %331
  %194 = phi ptr [ %221, %331 ], [ %183, %186 ]
  %195 = phi ptr [ %222, %331 ], [ %185, %186 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  store ptr null, ptr %14, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #14
  store ptr null, ptr %15, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #14
  store ptr null, ptr %16, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #14
  store ptr null, ptr %17, align 8, !tbaa !39
  %196 = load ptr, ptr %194, align 8, !tbaa !42
  br i1 %32, label %197, label %215

197:                                              ; preds = %193
  %198 = icmp eq ptr %196, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %197
  %200 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %41) #15
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = call ptr @BM_edgeloop_verts_get(ptr noundef %41) #15
  %204 = load ptr, ptr %203, align 8, !tbaa !34
  br label %205

205:                                              ; preds = %197, %202, %199
  %206 = phi ptr [ %204, %202 ], [ null, %199 ], [ %196, %197 ]
  %207 = load ptr, ptr %195, align 8, !tbaa !42
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %220

209:                                              ; preds = %205
  %210 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %173) #15
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %220, label %212

212:                                              ; preds = %209
  %213 = call ptr @BM_edgeloop_verts_get(ptr noundef %173) #15
  %214 = load ptr, ptr %213, align 8, !tbaa !34
  br label %220

215:                                              ; preds = %193
  %216 = load ptr, ptr %195, align 8, !tbaa !42
  %217 = icmp eq ptr %196, null
  %218 = icmp eq ptr %216, null
  %219 = select i1 %217, i1 true, i1 %218
  br i1 %219, label %330, label %220

220:                                              ; preds = %209, %212, %205, %215
  %221 = phi ptr [ %196, %215 ], [ %206, %205 ], [ %206, %212 ], [ %206, %209 ]
  %222 = phi ptr [ %216, %215 ], [ %207, %205 ], [ %214, %212 ], [ null, %209 ]
  %223 = getelementptr inbounds %struct.LinkData, ptr %194, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !52
  %225 = getelementptr inbounds %struct.LinkData, ptr %195, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !52
  %227 = getelementptr inbounds %struct.LinkData, ptr %221, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !52
  %229 = getelementptr inbounds %struct.LinkData, ptr %222, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !52
  %231 = icmp eq ptr %226, %230
  call fastcc void @bm_vert_loop_pair(ptr noundef %0, ptr noundef %224, ptr noundef %228, ptr noundef nonnull %14, ptr noundef nonnull %16) #16
  br i1 %231, label %233, label %232

232:                                              ; preds = %220
  call fastcc void @bm_vert_loop_pair(ptr noundef %0, ptr noundef %226, ptr noundef %230, ptr noundef nonnull %15, ptr noundef nonnull %17) #16
  br label %235

233:                                              ; preds = %220
  %234 = call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %226, i32 noundef 0) #15
  store ptr %234, ptr %17, align 8, !tbaa !39
  store ptr %234, ptr %15, align 8, !tbaa !39
  br label %235

235:                                              ; preds = %233, %232
  %236 = load ptr, ptr %14, align 8
  %237 = icmp ne ptr %236, null
  %238 = load ptr, ptr %16, align 8
  %239 = icmp eq ptr %238, null
  %240 = select i1 %237, i1 %239, i1 false
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  store ptr %236, ptr %16, align 8, !tbaa !39
  br label %247

242:                                              ; preds = %235
  %243 = icmp ne ptr %238, null
  %244 = icmp eq ptr %236, null
  %245 = and i1 %244, %243
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store ptr %238, ptr %14, align 8, !tbaa !39
  br label %247

247:                                              ; preds = %241, %246, %242
  %248 = phi ptr [ %236, %241 ], [ %238, %246 ], [ %236, %242 ]
  %249 = phi ptr [ %236, %241 ], [ %238, %246 ], [ %238, %242 ]
  %250 = load ptr, ptr %15, align 8
  %251 = icmp ne ptr %250, null
  %252 = load ptr, ptr %17, align 8
  %253 = icmp eq ptr %252, null
  %254 = select i1 %251, i1 %253, i1 false
  br i1 %254, label %255, label %256

255:                                              ; preds = %247
  store ptr %250, ptr %17, align 8, !tbaa !39
  br label %261

256:                                              ; preds = %247
  %257 = icmp ne ptr %252, null
  %258 = icmp eq ptr %250, null
  %259 = and i1 %258, %257
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store ptr %252, ptr %15, align 8, !tbaa !39
  br label %261

261:                                              ; preds = %255, %260, %256
  %262 = phi ptr [ %250, %255 ], [ %252, %260 ], [ %250, %256 ]
  %263 = phi ptr [ %250, %255 ], [ %252, %260 ], [ %252, %256 ]
  %264 = icmp eq ptr %248, null
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = icmp eq ptr %262, null
  br i1 %266, label %271, label %267

267:                                              ; preds = %265, %261
  %268 = phi ptr [ %248, %261 ], [ %262, %265 ]
  %269 = getelementptr inbounds %struct.BMLoop, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !64
  br label %271

271:                                              ; preds = %267, %265
  %272 = phi ptr [ null, %265 ], [ %270, %267 ]
  br i1 %231, label %297, label %273

273:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #14
  store ptr %224, ptr %18, align 16, !tbaa !39
  store ptr %226, ptr %187, align 8, !tbaa !39
  store ptr %230, ptr %188, align 16, !tbaa !39
  store ptr %228, ptr %189, align 8, !tbaa !39
  %274 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %18, i32 noundef 4, ptr noundef nonnull %13) #15
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %296

276:                                              ; preds = %273
  %277 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %18, i32 noundef 4, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #15
  store ptr %277, ptr %13, align 8, !tbaa !39
  %278 = getelementptr inbounds %struct.BMFace, ptr %277, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !65
  %280 = icmp eq ptr %262, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %276
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %262, ptr noundef %279) #15
  br label %282

282:                                              ; preds = %281, %276
  %283 = getelementptr inbounds %struct.BMLoop, ptr %279, i64 0, i32 6
  %284 = load ptr, ptr %283, align 8, !tbaa !67
  %285 = icmp eq ptr %263, null
  br i1 %285, label %287, label %286

286:                                              ; preds = %282
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %263, ptr noundef %284) #15
  br label %287

287:                                              ; preds = %286, %282
  %288 = getelementptr inbounds %struct.BMLoop, ptr %284, i64 0, i32 6
  %289 = load ptr, ptr %288, align 8, !tbaa !67
  %290 = icmp eq ptr %249, null
  br i1 %290, label %292, label %291

291:                                              ; preds = %287
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %249, ptr noundef %289) #15
  br label %292

292:                                              ; preds = %291, %287
  br i1 %264, label %296, label %293

293:                                              ; preds = %292
  %294 = getelementptr inbounds %struct.BMLoop, ptr %289, i64 0, i32 6
  %295 = load ptr, ptr %294, align 8, !tbaa !67
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %248, ptr noundef %295) #15
  br label %296

296:                                              ; preds = %292, %293, %273
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #14
  br label %316

297:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #14
  store ptr %224, ptr %19, align 16, !tbaa !39
  store ptr %226, ptr %190, align 8, !tbaa !39
  store ptr %228, ptr %191, align 16, !tbaa !39
  %298 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %19, i32 noundef 3, ptr noundef nonnull %13) #15
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %300, label %315

300:                                              ; preds = %297
  %301 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %19, i32 noundef 3, ptr noundef null, i32 noundef 0, i8 noundef zeroext 1) #15
  store ptr %301, ptr %13, align 8, !tbaa !39
  %302 = getelementptr inbounds %struct.BMFace, ptr %301, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !65
  %304 = icmp eq ptr %262, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %300
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %262, ptr noundef %303) #15
  br label %306

306:                                              ; preds = %305, %300
  %307 = getelementptr inbounds %struct.BMLoop, ptr %303, i64 0, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !67
  %309 = icmp eq ptr %249, null
  br i1 %309, label %311, label %310

310:                                              ; preds = %306
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %249, ptr noundef %308) #15
  br label %311

311:                                              ; preds = %310, %306
  br i1 %264, label %315, label %312

312:                                              ; preds = %311
  %313 = getelementptr inbounds %struct.BMLoop, ptr %308, i64 0, i32 6
  %314 = load ptr, ptr %313, align 8, !tbaa !67
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %248, ptr noundef %314) #15
  br label %315

315:                                              ; preds = %311, %312, %297
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #14
  br label %316

316:                                              ; preds = %315, %296
  %317 = icmp eq ptr %272, null
  %318 = load ptr, ptr %13, align 8, !tbaa !39
  br i1 %317, label %323, label %319

319:                                              ; preds = %316
  %320 = icmp eq ptr %272, %318
  br i1 %320, label %323, label %321

321:                                              ; preds = %319
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %272, ptr noundef %318) #15
  %322 = load ptr, ptr %13, align 8, !tbaa !39
  br label %323

323:                                              ; preds = %321, %319, %316
  %324 = phi ptr [ %322, %321 ], [ %272, %319 ], [ %318, %316 ]
  %325 = getelementptr inbounds %struct.BMFace, ptr %324, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %326, i16 noundef signext 16) #16
  %327 = load ptr, ptr %13, align 8, !tbaa !39
  call fastcc void @_bm_elem_flag_enable(ptr noundef %327) #16
  %328 = load ptr, ptr %13, align 8, !tbaa !39
  call fastcc void @bm_face_edges_tag_out(ptr noundef %0, ptr noundef %328) #16
  %329 = icmp eq ptr %221, %183
  br i1 %329, label %330, label %331

330:                                              ; preds = %215, %323
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  br label %332

331:                                              ; preds = %323
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  br label %193

332:                                              ; preds = %330, %192
  br i1 %42, label %381, label %333

333:                                              ; preds = %332
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #14
  store ptr %41, ptr %20, align 16, !tbaa !39
  %334 = getelementptr inbounds ptr, ptr %20, i64 1
  store ptr %173, ptr %334, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %21) #14
  %335 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %21, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef 16, i32 noundef 1) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %22) #14
  %336 = call ptr @BMO_iter_new(ptr noundef nonnull %22, ptr noundef nonnull %21, ptr noundef nonnull @.str.12, i8 noundef zeroext 8) #15
  %337 = icmp eq ptr %336, null
  br i1 %337, label %342, label %338

338:                                              ; preds = %333, %338
  %339 = phi ptr [ %340, %338 ], [ %336, %333 ]
  call void @BM_face_normal_update(ptr noundef nonnull %339) #15
  %340 = call ptr @BMO_iter_step(ptr noundef nonnull %22) #15
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %338, !llvm.loop !69

342:                                              ; preds = %338, %333
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %22) #14
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %21) #15
  %343 = getelementptr inbounds %struct.BMOperator, ptr %21, i64 0, i32 1
  call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef nonnull %343, ptr noundef nonnull @.str.9, i8 noundef zeroext 8, i16 noundef signext 16) #15
  call void @BMO_slot_buffer_hflag_enable(ptr noundef %0, ptr noundef nonnull %343, ptr noundef nonnull @.str.9, i8 noundef zeroext 8, i8 noundef zeroext 16, i8 noundef zeroext 0) #15
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %21) #15
  br label %344

344:                                              ; preds = %342, %360
  %345 = phi i1 [ true, %342 ], [ false, %360 ]
  %346 = phi i64 [ 0, %342 ], [ 1, %360 ]
  %347 = getelementptr inbounds [2 x ptr], ptr %20, i64 0, i64 %346
  %348 = load ptr, ptr %347, align 8, !tbaa !39
  %349 = call ptr @BM_edgeloop_verts_get(ptr noundef %348) #15
  %350 = load ptr, ptr %349, align 8, !tbaa !39
  %351 = icmp eq ptr %350, null
  br i1 %351, label %360, label %352

352:                                              ; preds = %344
  %353 = trunc i64 %346 to i32
  br label %354

354:                                              ; preds = %352, %354
  %355 = phi ptr [ %358, %354 ], [ %350, %352 ]
  %356 = getelementptr inbounds %struct.LinkData, ptr %355, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !52
  call fastcc void @_bm_elem_flag_set(ptr noundef %357, i32 noundef %353) #16
  %358 = load ptr, ptr %355, align 8, !tbaa !39
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %354, !llvm.loop !70

360:                                              ; preds = %354, %344
  br i1 %345, label %344, label %361, !llvm.loop !71

361:                                              ; preds = %360
  %362 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %21, i32 noundef 0, ptr noundef nonnull @.str.13, i32 noundef 16, i32 noundef 1, i32 noundef 1) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %23) #14
  %363 = call ptr @BMO_iter_new(ptr noundef nonnull %23, ptr noundef nonnull %21, ptr noundef nonnull @.str.12, i8 noundef zeroext 8) #15
  %364 = icmp eq ptr %363, null
  br i1 %364, label %371, label %365

365:                                              ; preds = %361, %365
  %366 = phi ptr [ %369, %365 ], [ %363, %361 ]
  %367 = getelementptr inbounds %struct.BMFace, ptr %366, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %368, i16 noundef signext 16) #16
  call fastcc void @bm_face_edges_tag_out(ptr noundef %0, ptr noundef nonnull %366) #16
  %369 = call ptr @BMO_iter_step(ptr noundef nonnull %23) #15
  %370 = icmp eq ptr %369, null
  br i1 %370, label %371, label %365, !llvm.loop !72

371:                                              ; preds = %365, %361
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %23) #14
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %21) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %24) #14
  %372 = call ptr @BMO_iter_new(ptr noundef nonnull %24, ptr noundef nonnull %343, ptr noundef nonnull @.str.14, i8 noundef zeroext 8) #15
  %373 = icmp eq ptr %372, null
  br i1 %373, label %380, label %374

374:                                              ; preds = %371, %374
  %375 = phi ptr [ %378, %374 ], [ %372, %371 ]
  %376 = getelementptr inbounds %struct.BMFace, ptr %375, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !68
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %377, i16 noundef signext 16) #16
  call fastcc void @bm_face_edges_tag_out(ptr noundef %0, ptr noundef nonnull %375) #16
  %378 = call ptr @BMO_iter_step(ptr noundef nonnull %24) #15
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %374, !llvm.loop !73

380:                                              ; preds = %374, %371
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %24) #14
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %21) #15
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %21) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #14
  br label %381

381:                                              ; preds = %380, %332
  br i1 %101, label %382, label %419

382:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %25) #14
  store ptr %41, ptr %25, align 16, !tbaa !39
  %383 = getelementptr inbounds ptr, ptr %25, i64 1
  store ptr %173, ptr %383, align 8, !tbaa !39
  br label %384

384:                                              ; preds = %382, %417
  %385 = phi i1 [ true, %382 ], [ false, %417 ]
  %386 = phi i64 [ 0, %382 ], [ 1, %417 ]
  %387 = getelementptr inbounds [2 x ptr], ptr %25, i64 0, i64 %386
  %388 = load ptr, ptr %387, align 8, !tbaa !39
  %389 = call ptr @BM_edgeloop_verts_get(ptr noundef %388) #15
  %390 = load ptr, ptr %389, align 8, !tbaa !39
  %391 = icmp eq ptr %390, null
  br i1 %391, label %417, label %392

392:                                              ; preds = %384, %414
  %393 = phi ptr [ %415, %414 ], [ %390, %384 ]
  %394 = load ptr, ptr %393, align 8, !tbaa !42
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %403

396:                                              ; preds = %392
  %397 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %388) #15
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %414, label %399

399:                                              ; preds = %396
  %400 = call ptr @BM_edgeloop_verts_get(ptr noundef %388) #15
  %401 = load ptr, ptr %400, align 8, !tbaa !34
  %402 = icmp eq ptr %401, null
  br i1 %402, label %414, label %403

403:                                              ; preds = %392, %399
  %404 = phi ptr [ %401, %399 ], [ %394, %392 ]
  %405 = getelementptr inbounds %struct.LinkData, ptr %393, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !52
  %407 = getelementptr inbounds %struct.LinkData, ptr %404, i64 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !52
  %409 = icmp eq ptr %406, %408
  br i1 %409, label %414, label %410

410:                                              ; preds = %403
  %411 = call ptr @BM_edge_exists(ptr noundef %406, ptr noundef %408) #15
  %412 = getelementptr inbounds %struct.BMEdge, ptr %411, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !46
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %413) #16
  br label %414

414:                                              ; preds = %396, %403, %410, %399
  %415 = load ptr, ptr %393, align 8, !tbaa !39
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %392, !llvm.loop !74

417:                                              ; preds = %414, %384
  br i1 %385, label %384, label %418, !llvm.loop !75

418:                                              ; preds = %417
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %25) #14
  br label %419

419:                                              ; preds = %418, %381
  br i1 %169, label %420, label %421

420:                                              ; preds = %419
  call void @BM_edgeloop_free(ptr noundef %173) #15
  br label %421

421:                                              ; preds = %420, %419
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #14
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_edgeloops_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !78
  %9 = and i16 %8, 4
  ret i16 %9
}

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_is_closed(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_mesh_elem_hflag_disable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !80 {
  %4 = load float, ptr %1, align 4, !tbaa !81
  %5 = load float, ptr %2, align 4, !tbaa !81
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !81
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !81
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !81
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !81
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !81
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !81
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edgeloop_center_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_calc_normal(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_edgeloop_verts_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @cross_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !83 {
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !81
  %6 = getelementptr inbounds float, ptr %2, i64 2
  %7 = load float, ptr %6, align 4, !tbaa !81
  %8 = getelementptr inbounds float, ptr %1, i64 2
  %9 = load float, ptr %8, align 4, !tbaa !81
  %10 = getelementptr inbounds float, ptr %2, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !81
  %12 = fneg float %9
  %13 = fmul float %11, %12
  %14 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %13)
  store float %14, ptr %0, align 4, !tbaa !81
  %15 = load float, ptr %8, align 4, !tbaa !81
  %16 = load float, ptr %2, align 4, !tbaa !81
  %17 = load float, ptr %1, align 4, !tbaa !81
  %18 = load float, ptr %6, align 4, !tbaa !81
  %19 = fneg float %17
  %20 = fmul float %18, %19
  %21 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %20)
  %22 = getelementptr inbounds float, ptr %0, i64 1
  store float %21, ptr %22, align 4, !tbaa !81
  %23 = load float, ptr %1, align 4, !tbaa !81
  %24 = load float, ptr %10, align 4, !tbaa !81
  %25 = load float, ptr %4, align 4, !tbaa !81
  %26 = load float, ptr %2, align 4, !tbaa !81
  %27 = fneg float %25
  %28 = fmul float %26, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = getelementptr inbounds float, ptr %0, i64 2
  store float %29, ptr %30, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @dot_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !84 {
  %3 = load float, ptr %0, align 4, !tbaa !81
  %4 = load float, ptr %1, align 4, !tbaa !81
  %5 = getelementptr inbounds float, ptr %0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !81
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !81
  %9 = fmul float %6, %8
  %10 = tail call float @llvm.fmuladd.f32(float %3, float %4, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !81
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !81
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %10)
  ret float %15
}

; Function Attrs: optsize
declare void @BM_edgeloop_flip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @normalize_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !85 {
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
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_edgeloop_normal_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @len_squared_v3(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !86 {
  %2 = load float, ptr %0, align 4, !tbaa !81
  %3 = getelementptr inbounds float, ptr %0, i64 1
  %4 = load float, ptr %3, align 4, !tbaa !81
  %5 = fmul float %4, %4
  %6 = tail call float @llvm.fmuladd.f32(float %2, float %2, float %5)
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !81
  %9 = tail call float @llvm.fmuladd.f32(float %8, float %8, float %6)
  ret float %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #6 !PGOFuncName !87 {
  %4 = load float, ptr %1, align 4, !tbaa !81
  %5 = load float, ptr %2, align 4, !tbaa !81
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !81
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !81
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !81
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !81
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !81
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !81
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @BM_edge_is_boundary(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !88 {
  %2 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.BMLoop, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = icmp eq ptr %7, %3
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %5 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @BM_edgeloop_copy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_edgeloop_expand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_bridge_best_rotation(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !90 {
  %3 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %0) #15
  %4 = tail call ptr @BM_edgeloop_verts_get(ptr noundef %1) #15
  %5 = load ptr, ptr %3, align 8, !tbaa !34
  %6 = load ptr, ptr %4, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %21, label %8

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %16, %8 ], [ %6, %2 ]
  %10 = phi float [ %15, %8 ], [ 0x47EFFFFFE0000000, %2 ]
  %11 = phi ptr [ %14, %8 ], [ null, %2 ]
  %12 = tail call fastcc float @bm_edgeloop_offset_length(ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %6, float noundef %10) #16
  %13 = fcmp olt float %12, %10
  %14 = select i1 %13, ptr %9, ptr %11
  %15 = select i1 %13, float %12, float %10
  %16 = load ptr, ptr %9, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !91

18:                                               ; preds = %8
  %19 = icmp eq ptr %14, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @BLI_listbase_rotate_first(ptr noundef nonnull %4, ptr noundef nonnull %14) #15
  br label %21

21:                                               ; preds = %2, %20, %18
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_rfindlink(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @mod_i(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !92 {
  %3 = srem i32 %0, %1
  %4 = add nsw i32 %3, %1
  %5 = srem i32 %4, %1
  ret i32 %5
}

; Function Attrs: optsize
declare void @BLI_listbase_rotate_first(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_bridge_splice_loops(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #0 !PGOFuncName !93 {
  %5 = alloca %struct.BMOperator, align 8
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %5) #14
  call void @BMO_op_init(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull @.str.15) #15
  %6 = call ptr @BMO_slot_get(ptr noundef nonnull %5, ptr noundef nonnull @.str.16) #15
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %2, %4 ], [ %16, %7 ]
  %9 = phi ptr [ %1, %4 ], [ %17, %7 ]
  %10 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  call void @BM_data_interp_from_verts(ptr noundef %0, ptr noundef %11, ptr noundef %13, ptr noundef %13, float noundef %3) #15
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.BMVert, ptr %11, i64 0, i32 2
  call void @interp_v3_v3v3(ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %14, float noundef %3) #15
  call fastcc void @BMO_slot_map_elem_insert(ptr noundef nonnull %5, ptr noundef %6, ptr noundef %11, ptr noundef %13) #16
  %16 = load ptr, ptr %8, align 8, !tbaa !42
  %17 = load ptr, ptr %9, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !94

19:                                               ; preds = %7
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %5) #15
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %5) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_vert_loop_pair(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !PGOFuncName !95 {
  %6 = tail call ptr @BM_edge_exists(ptr noundef %1, ptr noundef %2) #15
  %7 = getelementptr inbounds %struct.BMEdge, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = icmp eq ptr %12, %1
  %14 = getelementptr inbounds %struct.BMLoop, ptr %8, i64 0, i32 6
  br i1 %13, label %15, label %17

15:                                               ; preds = %10
  store ptr %8, ptr %3, align 8, !tbaa !39
  %16 = load ptr, ptr %14, align 8, !tbaa !67
  store ptr %16, ptr %4, align 8, !tbaa !39
  br label %22

17:                                               ; preds = %10
  store ptr %8, ptr %4, align 8, !tbaa !39
  %18 = load ptr, ptr %14, align 8, !tbaa !67
  store ptr %18, ptr %3, align 8, !tbaa !39
  br label %22

19:                                               ; preds = %5
  %20 = tail call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %1, i32 noundef 0) #15
  store ptr %20, ptr %3, align 8, !tbaa !39
  %21 = tail call ptr @BM_iter_at_index(ptr noundef %0, i8 noundef zeroext 6, ptr noundef %2, i32 noundef 0) #15
  store ptr %21, ptr %4, align 8, !tbaa !39
  br label %22

22:                                               ; preds = %15, %17, %19
  ret void
}

; Function Attrs: optsize
declare ptr @BM_iter_at_index(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i16 noundef signext %2) unnamed_addr #6 !PGOFuncName !96 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !77
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !78
  %10 = or i16 %9, %2
  store i16 %10, ptr %8, align 2, !tbaa !78
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !97 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !98
  %4 = or i8 %3, 16
  store i8 %4, ptr %2, align 1, !tbaa !98
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bm_face_edges_tag_out(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !99 {
  %3 = getelementptr inbounds %struct.BMFace, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %4, %2 ], [ %12, %5 ]
  %7 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = getelementptr inbounds %struct.BMEdge, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %10, i16 noundef signext 8) #16
  %11 = getelementptr inbounds %struct.BMLoop, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %5, !llvm.loop !101

14:                                               ; preds = %5
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_slot_buffer_hflag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !PGOFuncName !102 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0) #16
  br label %6

5:                                                ; preds = %2
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0) #16
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 !PGOFuncName !103 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !77
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !78
  %9 = and i16 %8, -9
  store i16 %9, ptr %7, align 2, !tbaa !78
  ret void
}

; Function Attrs: optsize
declare void @BM_edgeloop_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_v3fl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, float noundef %2) unnamed_addr #6 !PGOFuncName !104 {
  %4 = load float, ptr %1, align 4, !tbaa !81
  %5 = fmul float %4, %2
  store float %5, ptr %0, align 4, !tbaa !81
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !81
  %8 = fmul float %7, %2
  %9 = getelementptr inbounds float, ptr %0, i64 1
  store float %8, ptr %9, align 4, !tbaa !81
  %10 = getelementptr inbounds float, ptr %1, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !81
  %12 = fmul float %11, %2
  %13 = getelementptr inbounds float, ptr %0, i64 2
  store float %12, ptr %13, align 4, !tbaa !81
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #12 !PGOFuncName !105 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !81
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !81
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc float @bm_edgeloop_offset_length(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3) unnamed_addr #13 !PGOFuncName !106 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %1, %4 ], [ %19, %5 ]
  %7 = phi ptr [ %0, %4 ], [ %20, %5 ]
  %8 = phi float [ 0.000000e+00, %4 ], [ %16, %5 ]
  %9 = getelementptr inbounds %struct.LinkData, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = tail call fastcc float @len_v3v3(ptr noundef nonnull %11, ptr noundef nonnull %14) #16
  %16 = fadd float %8, %15
  %17 = load ptr, ptr %6, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr %2, ptr %17
  %20 = load ptr, ptr %7, align 8, !tbaa !42
  %21 = icmp ne ptr %20, null
  %22 = fcmp olt float %16, %3
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %5, label %24, !llvm.loop !107

24:                                               ; preds = %5
  ret float %16
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3v3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #7 !PGOFuncName !108 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #14
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %0) #16
  %4 = call fastcc float @len_v3(ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #14
  ret float %4
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc float @len_v3(ptr nocapture noundef readonly %0) unnamed_addr #7 !PGOFuncName !109 {
  %2 = tail call fastcc float @dot_v3v3(ptr noundef %0, ptr noundef %0) #16
  %3 = tail call float @sqrtf(float noundef %2) #15
  ret float %3
}

; Function Attrs: optsize
declare void @BMO_op_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BM_data_interp_from_verts(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BMO_slot_map_elem_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !110 {
  tail call void @BMO_slot_map_insert(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #15
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_map_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0) unnamed_addr #6 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !98
  %4 = and i8 %3, -17
  store i8 %4, ptr %2, align 1, !tbaa !98
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!36, !36, i64 0}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!43, !36, i64 0}
!43 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!44 = distinct !{!44, !41}
!45 = !{!"bmo_bridge.c:bm_edge_test_cb"}
!46 = !{!47, !36, i64 16}
!47 = !{!"BMEdge", !48, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !50, i64 48, !50, i64 64}
!48 = !{!"BMHeader", !36, i64 0, !49, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!49 = !{!"int", !37, i64 0}
!50 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!51 = !{!"bmo_bridge.c:bridge_loop_pair"}
!52 = !{!43, !36, i64 16}
!53 = !{!35, !36, i64 8}
!54 = !{!55, !49, i64 12}
!55 = !{!"BMesh", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !49, i64 88, !49, i64 92, !49, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !49, i64 128, !36, i64 136, !56, i64 144, !56, i64 344, !56, i64 544, !56, i64 744, !57, i64 944, !49, i64 948, !49, i64 952, !49, i64 956, !35, i64 960, !36, i64 976, !35, i64 984, !36, i64 1000}
!56 = !{!"CustomData", !36, i64 0, !37, i64 8, !49, i64 172, !49, i64 176, !49, i64 180, !36, i64 184, !36, i64 192}
!57 = !{!"short", !37, i64 0}
!58 = !{i8 0, i8 2}
!59 = !{!47, !36, i64 40}
!60 = !{!61, !36, i64 16}
!61 = !{!"BMLoop", !48, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !41}
!64 = !{!61, !36, i64 32}
!65 = !{!66, !36, i64 24}
!66 = !{!"BMFace", !48, i64 0, !36, i64 16, !36, i64 24, !49, i64 32, !37, i64 36, !57, i64 48}
!67 = !{!61, !36, i64 56}
!68 = !{!66, !36, i64 16}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !41}
!72 = distinct !{!72, !41}
!73 = distinct !{!73, !41}
!74 = distinct !{!74, !41}
!75 = distinct !{!75, !41}
!76 = !{!"bmo_bridge.c:_bmo_elem_flag_test"}
!77 = !{!55, !49, i64 128}
!78 = !{!79, !57, i64 0}
!79 = !{!"BMFlagLayer", !57, i64 0}
!80 = !{!"bmo_bridge.c:sub_v3_v3v3"}
!81 = !{!82, !82, i64 0}
!82 = !{!"float", !37, i64 0}
!83 = !{!"bmo_bridge.c:cross_v3_v3v3"}
!84 = !{!"bmo_bridge.c:dot_v3v3"}
!85 = !{!"bmo_bridge.c:normalize_v3_v3"}
!86 = !{!"bmo_bridge.c:len_squared_v3"}
!87 = !{!"bmo_bridge.c:add_v3_v3v3"}
!88 = !{!"bmo_bridge.c:BM_edge_is_boundary"}
!89 = !{!61, !36, i64 40}
!90 = !{!"bmo_bridge.c:bm_bridge_best_rotation"}
!91 = distinct !{!91, !41}
!92 = !{!"bmo_bridge.c:mod_i"}
!93 = !{!"bmo_bridge.c:bm_bridge_splice_loops"}
!94 = distinct !{!94, !41}
!95 = !{!"bmo_bridge.c:bm_vert_loop_pair"}
!96 = !{!"bmo_bridge.c:_bmo_elem_flag_enable"}
!97 = !{!"bmo_bridge.c:_bm_elem_flag_enable"}
!98 = !{!48, !37, i64 13}
!99 = !{!"bmo_bridge.c:bm_face_edges_tag_out"}
!100 = !{!61, !36, i64 24}
!101 = distinct !{!101, !41}
!102 = !{!"bmo_bridge.c:_bm_elem_flag_set"}
!103 = !{!"bmo_bridge.c:_bmo_elem_flag_disable"}
!104 = !{!"bmo_bridge.c:mul_v3_v3fl"}
!105 = !{!"bmo_bridge.c:zero_v3"}
!106 = !{!"bmo_bridge.c:bm_edgeloop_offset_length"}
!107 = distinct !{!107, !41}
!108 = !{!"bmo_bridge.c:len_v3v3"}
!109 = !{!"bmo_bridge.c:len_v3"}
!110 = !{!"bmo_bridge.c:BMO_slot_map_elem_insert"}
!111 = !{!"bmo_bridge.c:_bm_elem_flag_disable"}
