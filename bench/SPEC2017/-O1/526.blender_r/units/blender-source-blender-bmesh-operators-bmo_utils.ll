; ModuleID = 'blender/source/blender/bmesh/operators/bmo_utils.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.MLoopCol = type { i8, i8, i8, i8 }

@.str = private unnamed_addr constant [3 x i8] c"co\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"vert.out\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"matrix\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"transform matrix=%m4 space=%s verts=%s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"transform matrix=%m3 space=%s verts=%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"cent\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"use_ccw\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"use_faces\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"use_constrict\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"geom.out\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_smooth_vert_exec = private unnamed_addr constant [21 x i8] c"bmo_smooth_vert_exec\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"clip_dist\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"factor\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"mirror_clip_x\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"mirror_clip_y\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"mirror_clip_z\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"use_axis_x\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"use_axis_y\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"use_axis_z\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @bmo_create_vert_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #4
  %4 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #4
  %5 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %8 to i64
  %10 = getelementptr %struct.BMFlagLayer, ptr %6, i64 %9
  %11 = getelementptr %struct.BMFlagLayer, ptr %10, i64 -1
  %12 = load i16, ptr %11, align 2, !tbaa !46
  %13 = or i16 %12, 1
  store i16 %13, ptr %11, align 2, !tbaa !46
  %14 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %14, ptr noundef nonnull @.str.1, i8 noundef zeroext 1, i16 noundef signext 1) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_transform_exec(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #4
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #4
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #4
  %7 = call zeroext i8 @is_zero_m4(ptr noundef nonnull %5) #4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #4
  call void @_va_mul_m4_series_4(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  br label %11

11:                                               ; preds = %9, %2
  %12 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %16) #4
  %17 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !48

19:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

declare void @BMO_slot_mat4_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @is_zero_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_translate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #4
  call void @unit_m4(ptr noundef nonnull %3) #4
  %5 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3
  %6 = load float, ptr %4, align 4, !tbaa !51
  store float %6, ptr %5, align 16, !tbaa !51
  %7 = getelementptr inbounds float, ptr %4, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3, i64 1
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %4, i64 2
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3, i64 2
  store float %11, ptr %12, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !53
  %15 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %14, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_scale_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #4
  call void @unit_m3(ptr noundef nonnull %3) #4
  %5 = load float, ptr %4, align 4, !tbaa !51
  store float %5, ptr %3, align 16, !tbaa !51
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !51
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 1
  store float %7, ptr %8, align 16, !tbaa !51
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  store float %10, ptr %11, align 16, !tbaa !51
  %12 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !53
  %14 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %13, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #4
  ret void
}

declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_rotate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #4
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #4
  call void @transform_pivot_set_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #4
  %5 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !53
  %7 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.4) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret void
}

declare void @transform_pivot_set_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_reverse_faces_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  %4 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  call void @BM_face_normal_flip(ptr noundef %0, ptr noundef nonnull %7) #4
  %8 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !55

10:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

declare void @BM_face_normal_flip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_rotate_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #4
  %7 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.11) #4
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, i16 1, i16 5
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 2) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %77, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %14

14:                                               ; preds = %12, %74
  %15 = phi ptr [ %10, %12 ], [ %75, %74 ]
  %16 = call zeroext i8 @BM_edge_rotate_check(ptr noundef nonnull %15) #4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %74, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %19 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %15, ptr noundef nonnull %4, ptr noundef nonnull %5) #4
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %73, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %4, align 8, !tbaa !56
  %23 = getelementptr inbounds %struct.BMFace, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  %25 = load i32, ptr %13, align 8, !tbaa !41
  %26 = sext i32 %25 to i64
  %27 = getelementptr %struct.BMFlagLayer, ptr %24, i64 %26
  %28 = getelementptr %struct.BMFlagLayer, ptr %27, i64 -1
  %29 = load i16, ptr %28, align 2, !tbaa !46
  %30 = and i16 %29, 1
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %73

32:                                               ; preds = %21
  %33 = load ptr, ptr %5, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.BMFace, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = getelementptr %struct.BMFlagLayer, ptr %35, i64 %26
  %37 = getelementptr %struct.BMFlagLayer, ptr %36, i64 -1
  %38 = load i16, ptr %37, align 2, !tbaa !46
  %39 = and i16 %38, 1
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %73

41:                                               ; preds = %32
  %42 = or disjoint i16 %29, 1
  store i16 %42, ptr %28, align 2, !tbaa !46
  %43 = load i16, ptr %37, align 2, !tbaa !46
  %44 = or i16 %43, 1
  store i16 %44, ptr %37, align 2, !tbaa !46
  %45 = call ptr @BM_edge_rotate(ptr noundef %0, ptr noundef nonnull %15, i8 noundef zeroext %6, i16 noundef signext %9) #4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %41
  %48 = load ptr, ptr %4, align 8, !tbaa !56
  %49 = getelementptr inbounds %struct.BMFace, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = load i32, ptr %13, align 8, !tbaa !41
  %52 = sext i32 %51 to i64
  %53 = getelementptr %struct.BMFlagLayer, ptr %50, i64 %52
  %54 = getelementptr %struct.BMFlagLayer, ptr %53, i64 -1
  %55 = load i16, ptr %54, align 2, !tbaa !46
  %56 = and i16 %55, -2
  store i16 %56, ptr %54, align 2, !tbaa !46
  %57 = load ptr, ptr %5, align 8, !tbaa !56
  %58 = getelementptr inbounds %struct.BMFace, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !57
  %60 = getelementptr %struct.BMFlagLayer, ptr %59, i64 %52
  %61 = getelementptr %struct.BMFlagLayer, ptr %60, i64 -1
  %62 = load i16, ptr %61, align 2, !tbaa !46
  %63 = and i16 %62, -2
  store i16 %63, ptr %61, align 2, !tbaa !46
  br label %73

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.BMEdge, ptr %45, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !59
  %67 = load i32, ptr %13, align 8, !tbaa !41
  %68 = sext i32 %67 to i64
  %69 = getelementptr %struct.BMFlagLayer, ptr %66, i64 %68
  %70 = getelementptr %struct.BMFlagLayer, ptr %69, i64 -1
  %71 = load i16, ptr %70, align 2, !tbaa !46
  %72 = or i16 %71, 1
  store i16 %72, ptr %70, align 2, !tbaa !46
  br label %73

73:                                               ; preds = %18, %64, %32, %21, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #4
  br label %74

74:                                               ; preds = %73, %14
  %75 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %14, !llvm.loop !62

77:                                               ; preds = %74, %2
  %78 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %78, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, i16 noundef signext 1) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_rotate_check(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_rotate(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_region_extend_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMOIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca %struct.BMOIter, align 8
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMIter, align 8
  %11 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.13) #4
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.14) #4
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 11, i16 noundef signext 2) #4
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq i8 %11, 0
  br i1 %13, label %142, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #4
  br i1 %14, label %16, label %82

16:                                               ; preds = %15
  %17 = call ptr @BMO_iter_new(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 1) #4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %141, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %21 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %22 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %24 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %25

25:                                               ; preds = %19, %79
  %26 = phi ptr [ %17, %19 ], [ %80, %79 ]
  store i8 4, ptr %20, align 4, !tbaa !63
  store ptr @bmiter__edge_of_vert_begin, ptr %21, align 8, !tbaa !65
  store ptr @bmiter__edge_of_vert_step, ptr %22, align 8, !tbaa !66
  store ptr %26, ptr %7, align 8, !tbaa !67
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #4
  %27 = load ptr, ptr %22, align 8, !tbaa !66
  %28 = call ptr %27(ptr noundef nonnull %7) #4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %79, label %30

30:                                               ; preds = %25, %46
  %31 = phi ptr [ %48, %46 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !68
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  %39 = load i32, ptr %23, align 8, !tbaa !41
  %40 = sext i32 %39 to i64
  %41 = getelementptr %struct.BMFlagLayer, ptr %38, i64 %40
  %42 = getelementptr %struct.BMFlagLayer, ptr %41, i64 -1
  %43 = load i16, ptr %42, align 2, !tbaa !46
  %44 = and i16 %43, 2
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36, %30
  %47 = load ptr, ptr %22, align 8, !tbaa !66
  %48 = call ptr %47(ptr noundef nonnull %7) #4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %79, label %30, !llvm.loop !69

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = getelementptr %struct.BMFlagLayer, ptr %52, i64 %40
  %54 = getelementptr %struct.BMFlagLayer, ptr %53, i64 -1
  %55 = load i16, ptr %54, align 2, !tbaa !46
  %56 = or i16 %55, 1
  store i16 %56, ptr %54, align 2, !tbaa !46
  store i8 4, ptr %20, align 4, !tbaa !63
  store ptr @bmiter__edge_of_vert_begin, ptr %21, align 8, !tbaa !65
  store ptr @bmiter__edge_of_vert_step, ptr %22, align 8, !tbaa !66
  store ptr %26, ptr %7, align 8, !tbaa !67
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #4
  %57 = load ptr, ptr %22, align 8, !tbaa !66
  %58 = call ptr %57(ptr noundef nonnull %7) #4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %79, label %60

60:                                               ; preds = %50, %75
  %61 = phi ptr [ %77, %75 ], [ %58, %50 ]
  %62 = getelementptr inbounds %struct.BMHeader, ptr %61, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !68
  %64 = and i8 %63, 2
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.BMEdge, ptr %61, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !59
  %69 = load i32, ptr %24, align 8, !tbaa !41
  %70 = sext i32 %69 to i64
  %71 = getelementptr %struct.BMFlagLayer, ptr %68, i64 %70
  %72 = getelementptr %struct.BMFlagLayer, ptr %71, i64 -1
  %73 = load i16, ptr %72, align 2, !tbaa !46
  %74 = or i16 %73, 1
  store i16 %74, ptr %72, align 2, !tbaa !46
  br label %75

75:                                               ; preds = %66, %60
  %76 = load ptr, ptr %22, align 8, !tbaa !66
  %77 = call ptr %76(ptr noundef nonnull %7) #4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %60, !llvm.loop !70

79:                                               ; preds = %46, %75, %25, %50
  %80 = call ptr @BMO_iter_step(ptr noundef nonnull %8) #4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %141, label %25, !llvm.loop !71

82:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #4
  %83 = call ptr @BMO_iter_new(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 8) #4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %140, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  %87 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  %88 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  %89 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 4
  %90 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 1
  %91 = getelementptr inbounds %struct.BMIter, ptr %10, i64 0, i32 2
  %92 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %93

93:                                               ; preds = %85, %137
  %94 = phi ptr [ %83, %85 ], [ %138, %137 ]
  store i8 11, ptr %86, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %87, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %88, align 8, !tbaa !66
  store ptr %94, ptr %9, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %9) #4
  %95 = load ptr, ptr %88, align 8, !tbaa !66
  %96 = call ptr %95(ptr noundef nonnull %9) #4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %137, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.BMFace, ptr %94, i64 0, i32 1
  br label %100

100:                                              ; preds = %98, %133
  %101 = phi ptr [ %96, %98 ], [ %135, %133 ]
  %102 = getelementptr inbounds %struct.BMLoop, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !72
  store i8 8, ptr %89, align 4, !tbaa !63
  store ptr @bmiter__face_of_edge_begin, ptr %90, align 8, !tbaa !65
  store ptr @bmiter__face_of_edge_step, ptr %91, align 8, !tbaa !66
  store ptr %103, ptr %10, align 8, !tbaa !67
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %10) #4
  %104 = load ptr, ptr %91, align 8, !tbaa !66
  %105 = call ptr %104(ptr noundef nonnull %10) #4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %133, label %107

107:                                              ; preds = %100, %129
  %108 = phi ptr [ %131, %129 ], [ %105, %100 ]
  %109 = getelementptr inbounds %struct.BMHeader, ptr %108, i64 0, i32 3
  %110 = load i8, ptr %109, align 1, !tbaa !68
  %111 = and i8 %110, 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %129

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.BMFace, ptr %108, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !57
  %116 = load i32, ptr %92, align 8, !tbaa !41
  %117 = sext i32 %116 to i64
  %118 = getelementptr %struct.BMFlagLayer, ptr %115, i64 %117
  %119 = getelementptr %struct.BMFlagLayer, ptr %118, i64 -1
  %120 = load i16, ptr %119, align 2, !tbaa !46
  %121 = and i16 %120, 2
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %113
  %124 = load ptr, ptr %99, align 8, !tbaa !57
  %125 = getelementptr %struct.BMFlagLayer, ptr %124, i64 %117
  %126 = getelementptr %struct.BMFlagLayer, ptr %125, i64 -1
  %127 = load i16, ptr %126, align 2, !tbaa !46
  %128 = or i16 %127, 1
  store i16 %128, ptr %126, align 2, !tbaa !46
  br label %133

129:                                              ; preds = %113, %107
  %130 = load ptr, ptr %91, align 8, !tbaa !66
  %131 = call ptr %130(ptr noundef nonnull %10) #4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %107, !llvm.loop !74

133:                                              ; preds = %129, %100, %123
  %134 = load ptr, ptr %88, align 8, !tbaa !66
  %135 = call ptr %134(ptr noundef nonnull %9) #4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %100, !llvm.loop !75

137:                                              ; preds = %133, %93
  %138 = call ptr @BMO_iter_step(ptr noundef nonnull %8) #4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %93, !llvm.loop !76

140:                                              ; preds = %137, %82
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #4
  br label %141

141:                                              ; preds = %79, %16, %140
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #4
  br label %271

142:                                              ; preds = %2
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #4
  br i1 %14, label %143, label %217

143:                                              ; preds = %142
  %144 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 1) #4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %270, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  %148 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  %149 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  %150 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %151 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %152

152:                                              ; preds = %146, %214
  %153 = phi ptr [ %144, %146 ], [ %215, %214 ]
  store i8 4, ptr %147, align 4, !tbaa !63
  store ptr @bmiter__edge_of_vert_begin, ptr %148, align 8, !tbaa !65
  store ptr @bmiter__edge_of_vert_step, ptr %149, align 8, !tbaa !66
  store ptr %153, ptr %3, align 8, !tbaa !67
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #4
  %154 = load ptr, ptr %149, align 8, !tbaa !66
  %155 = call ptr %154(ptr noundef nonnull %3) #4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %214, label %157

157:                                              ; preds = %152, %173
  %158 = phi ptr [ %175, %173 ], [ %155, %152 ]
  %159 = getelementptr inbounds %struct.BMHeader, ptr %158, i64 0, i32 3
  %160 = load i8, ptr %159, align 1, !tbaa !68
  %161 = and i8 %160, 2
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.BMEdge, ptr %158, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !59
  %166 = load i32, ptr %150, align 8, !tbaa !41
  %167 = sext i32 %166 to i64
  %168 = getelementptr %struct.BMFlagLayer, ptr %165, i64 %167
  %169 = getelementptr %struct.BMFlagLayer, ptr %168, i64 -1
  %170 = load i16, ptr %169, align 2, !tbaa !46
  %171 = and i16 %170, 2
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %163, %157
  %174 = load ptr, ptr %149, align 8, !tbaa !66
  %175 = call ptr %174(ptr noundef nonnull %3) #4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %214, label %157, !llvm.loop !77

177:                                              ; preds = %163
  store i8 4, ptr %147, align 4, !tbaa !63
  store ptr @bmiter__edge_of_vert_begin, ptr %148, align 8, !tbaa !65
  store ptr @bmiter__edge_of_vert_step, ptr %149, align 8, !tbaa !66
  store ptr %153, ptr %3, align 8, !tbaa !67
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %3) #4
  %178 = load ptr, ptr %149, align 8, !tbaa !66
  %179 = call ptr %178(ptr noundef nonnull %3) #4
  %180 = icmp eq ptr %179, null
  br i1 %180, label %214, label %181

181:                                              ; preds = %177, %210
  %182 = phi ptr [ %212, %210 ], [ %179, %177 ]
  %183 = getelementptr inbounds %struct.BMHeader, ptr %182, i64 0, i32 3
  %184 = load i8, ptr %183, align 1, !tbaa !68
  %185 = and i8 %184, 2
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %210

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.BMEdge, ptr %182, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !59
  %190 = load i32, ptr %151, align 8, !tbaa !41
  %191 = sext i32 %190 to i64
  %192 = getelementptr %struct.BMFlagLayer, ptr %189, i64 %191
  %193 = getelementptr %struct.BMFlagLayer, ptr %192, i64 -1
  %194 = load i16, ptr %193, align 2, !tbaa !46
  %195 = or i16 %194, 1
  store i16 %195, ptr %193, align 2, !tbaa !46
  %196 = getelementptr inbounds %struct.BMEdge, ptr %182, i64 0, i32 2
  %197 = load ptr, ptr %196, align 8, !tbaa !78
  %198 = icmp eq ptr %197, %153
  %199 = getelementptr inbounds %struct.BMEdge, ptr %182, i64 0, i32 3
  %200 = load ptr, ptr %199, align 8, !tbaa !79
  %201 = icmp eq ptr %200, %153
  %202 = select i1 %201, ptr %197, ptr null
  %203 = select i1 %198, ptr %200, ptr %202
  %204 = getelementptr inbounds %struct.BMVert, ptr %203, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !34
  %206 = getelementptr %struct.BMFlagLayer, ptr %205, i64 %191
  %207 = getelementptr %struct.BMFlagLayer, ptr %206, i64 -1
  %208 = load i16, ptr %207, align 2, !tbaa !46
  %209 = or i16 %208, 1
  store i16 %209, ptr %207, align 2, !tbaa !46
  br label %210

210:                                              ; preds = %187, %181
  %211 = load ptr, ptr %149, align 8, !tbaa !66
  %212 = call ptr %211(ptr noundef nonnull %3) #4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %181, !llvm.loop !80

214:                                              ; preds = %173, %210, %152, %177
  %215 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %270, label %152, !llvm.loop !81

217:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #4
  %218 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 8) #4
  %219 = icmp eq ptr %218, null
  br i1 %219, label %269, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %222 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %223 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %224 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %225 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %226 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %227 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %228

228:                                              ; preds = %220, %266
  %229 = phi ptr [ %218, %220 ], [ %267, %266 ]
  store i8 11, ptr %221, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %222, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %223, align 8, !tbaa !66
  store ptr %229, ptr %5, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %5) #4
  %230 = load ptr, ptr %223, align 8, !tbaa !66
  %231 = call ptr %230(ptr noundef nonnull %5) #4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %266, label %233

233:                                              ; preds = %228, %262
  %234 = phi ptr [ %264, %262 ], [ %231, %228 ]
  %235 = getelementptr inbounds %struct.BMLoop, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !72
  store i8 8, ptr %224, align 4, !tbaa !63
  store ptr @bmiter__face_of_edge_begin, ptr %225, align 8, !tbaa !65
  store ptr @bmiter__face_of_edge_step, ptr %226, align 8, !tbaa !66
  store ptr %236, ptr %6, align 8, !tbaa !67
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %6) #4
  %237 = load ptr, ptr %226, align 8, !tbaa !66
  %238 = call ptr %237(ptr noundef nonnull %6) #4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %262, label %240

240:                                              ; preds = %233, %258
  %241 = phi ptr [ %260, %258 ], [ %238, %233 ]
  %242 = getelementptr inbounds %struct.BMHeader, ptr %241, i64 0, i32 3
  %243 = load i8, ptr %242, align 1, !tbaa !68
  %244 = and i8 %243, 2
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.BMFace, ptr %241, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !57
  %249 = load i32, ptr %227, align 8, !tbaa !41
  %250 = sext i32 %249 to i64
  %251 = getelementptr %struct.BMFlagLayer, ptr %248, i64 %250
  %252 = getelementptr %struct.BMFlagLayer, ptr %251, i64 -1
  %253 = load i16, ptr %252, align 2, !tbaa !46
  %254 = and i16 %253, 2
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %246
  %257 = or i16 %253, 1
  store i16 %257, ptr %252, align 2, !tbaa !46
  br label %258

258:                                              ; preds = %256, %246, %240
  %259 = load ptr, ptr %226, align 8, !tbaa !66
  %260 = call ptr %259(ptr noundef nonnull %6) #4
  %261 = icmp eq ptr %260, null
  br i1 %261, label %262, label %240, !llvm.loop !82

262:                                              ; preds = %258, %233
  %263 = load ptr, ptr %223, align 8, !tbaa !66
  %264 = call ptr %263(ptr noundef nonnull %5) #4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %233, !llvm.loop !83

266:                                              ; preds = %262, %228
  %267 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #4
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %228, !llvm.loop !84

269:                                              ; preds = %266, %217
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  br label %270

270:                                              ; preds = %214, %143, %269
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  br label %271

271:                                              ; preds = %270, %141
  %272 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %272, ptr noundef nonnull @.str.16, i8 noundef zeroext 11, i16 noundef signext 1) #4
  ret void
}

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_smooth_vert_exec(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !56
  %6 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.4) #4
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @__func__.bmo_smooth_vert_exec) #4
  %10 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.17) #4
  %11 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.18) #4
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.19) #4
  %13 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.20) #4
  %14 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.21) #4
  %15 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.22) #4
  %16 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.23) #4
  %17 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.24) #4
  %18 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %107, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %22 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %23 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %24 = icmp eq i8 %12, 0
  %25 = icmp eq i8 %13, 0
  %26 = icmp eq i8 %14, 0
  br label %27

27:                                               ; preds = %20, %103
  %28 = phi i64 [ 0, %20 ], [ %104, %103 ]
  %29 = phi ptr [ %18, %20 ], [ %105, %103 ]
  %30 = getelementptr inbounds [3 x float], ptr %9, i64 %28
  store float 0.000000e+00, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds float, ptr %30, i64 1
  store float 0.000000e+00, ptr %31, align 4, !tbaa !51
  %32 = getelementptr inbounds float, ptr %30, i64 2
  store float 0.000000e+00, ptr %32, align 4, !tbaa !51
  store i8 4, ptr %21, align 4, !tbaa !63
  store ptr @bmiter__edge_of_vert_begin, ptr %22, align 8, !tbaa !65
  store ptr @bmiter__edge_of_vert_step, ptr %23, align 8, !tbaa !66
  store ptr %29, ptr %4, align 8, !tbaa !67
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #4
  %33 = load ptr, ptr %23, align 8, !tbaa !66
  %34 = call ptr %33(ptr noundef nonnull %4) #4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %27, %36
  %37 = phi ptr [ %61, %36 ], [ %34, %27 ]
  %38 = phi i32 [ %59, %36 ], [ 0, %27 ]
  %39 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !78
  %41 = icmp eq ptr %40, %29
  %42 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  %44 = icmp eq ptr %43, %29
  %45 = select i1 %44, ptr %40, ptr null
  %46 = select i1 %41, ptr %43, ptr %45
  %47 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2
  %48 = load float, ptr %30, align 4, !tbaa !51
  %49 = load float, ptr %47, align 4, !tbaa !51
  %50 = fadd float %48, %49
  store float %50, ptr %30, align 4, !tbaa !51
  %51 = load float, ptr %31, align 4, !tbaa !51
  %52 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2, i64 1
  %53 = load float, ptr %52, align 4, !tbaa !51
  %54 = fadd float %51, %53
  store float %54, ptr %31, align 4, !tbaa !51
  %55 = load float, ptr %32, align 4, !tbaa !51
  %56 = getelementptr inbounds %struct.BMVert, ptr %46, i64 0, i32 2, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !51
  %58 = fadd float %55, %57
  store float %58, ptr %32, align 4, !tbaa !51
  %59 = add nuw nsw i32 %38, 1
  %60 = load ptr, ptr %23, align 8, !tbaa !66
  %61 = call ptr %60(ptr noundef nonnull %4) #4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %36, !llvm.loop !85

63:                                               ; preds = %36, %27
  %64 = phi i32 [ 0, %27 ], [ %59, %36 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %68 = load float, ptr %67, align 4, !tbaa !51
  store float %68, ptr %30, align 4, !tbaa !51
  %69 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 1
  %70 = load float, ptr %69, align 4, !tbaa !51
  store float %70, ptr %31, align 4, !tbaa !51
  %71 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !51
  br label %101

73:                                               ; preds = %63
  %74 = sitofp i32 %64 to float
  %75 = fdiv float 1.000000e+00, %74
  %76 = load float, ptr %30, align 4, !tbaa !51
  %77 = fmul float %75, %76
  store float %77, ptr %30, align 4, !tbaa !51
  %78 = load float, ptr %31, align 4, !tbaa !51
  %79 = fmul float %75, %78
  store float %79, ptr %31, align 4, !tbaa !51
  %80 = load float, ptr %32, align 4, !tbaa !51
  %81 = fmul float %75, %80
  store float %81, ptr %32, align 4, !tbaa !51
  %82 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  call void @interp_v3_v3v3(ptr noundef nonnull %30, ptr noundef nonnull %82, ptr noundef nonnull %30, float noundef %11) #4
  br i1 %24, label %88, label %83

83:                                               ; preds = %73
  %84 = load float, ptr %82, align 8, !tbaa !51
  %85 = call float @llvm.fabs.f32(float %84)
  %86 = fcmp ugt float %85, %10
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  store float 0.000000e+00, ptr %30, align 4, !tbaa !51
  br label %88

88:                                               ; preds = %87, %83, %73
  br i1 %25, label %95, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 1
  %91 = load float, ptr %90, align 4, !tbaa !51
  %92 = call float @llvm.fabs.f32(float %91)
  %93 = fcmp ugt float %92, %10
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  store float 0.000000e+00, ptr %31, align 4, !tbaa !51
  br label %95

95:                                               ; preds = %94, %89, %88
  br i1 %26, label %103, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 2
  %98 = load float, ptr %97, align 8, !tbaa !51
  %99 = call float @llvm.fabs.f32(float %98)
  %100 = fcmp ugt float %99, %10
  br i1 %100, label %103, label %101

101:                                              ; preds = %96, %66
  %102 = phi float [ %72, %66 ], [ 0.000000e+00, %96 ]
  store float %102, ptr %32, align 4, !tbaa !51
  br label %103

103:                                              ; preds = %101, %95, %96
  %104 = add nuw i64 %28, 1
  %105 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %27, !llvm.loop !86

107:                                              ; preds = %103, %2
  %108 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %135, label %110

110:                                              ; preds = %107
  %111 = icmp eq i8 %15, 0
  %112 = icmp eq i8 %16, 0
  %113 = icmp eq i8 %17, 0
  br label %114

114:                                              ; preds = %110, %131
  %115 = phi i64 [ 0, %110 ], [ %132, %131 ]
  %116 = phi ptr [ %108, %110 ], [ %133, %131 ]
  br i1 %111, label %121, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds [3 x float], ptr %9, i64 %115
  %119 = load float, ptr %118, align 4, !tbaa !51
  %120 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2
  store float %119, ptr %120, align 8, !tbaa !51
  br label %121

121:                                              ; preds = %117, %114
  br i1 %112, label %126, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds [3 x float], ptr %9, i64 %115, i64 1
  %124 = load float, ptr %123, align 4, !tbaa !51
  %125 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2, i64 1
  store float %124, ptr %125, align 4, !tbaa !51
  br label %126

126:                                              ; preds = %122, %121
  br i1 %113, label %131, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds [3 x float], ptr %9, i64 %115, i64 2
  %129 = load float, ptr %128, align 4, !tbaa !51
  %130 = getelementptr inbounds %struct.BMVert, ptr %116, i64 0, i32 2, i64 2
  store float %129, ptr %130, align 8, !tbaa !51
  br label %131

131:                                              ; preds = %127, %126
  %132 = add nuw i64 %115, 1
  %133 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %114, !llvm.loop !87

135:                                              ; preds = %131, %107
  %136 = load ptr, ptr @MEM_freeN, align 8, !tbaa !56
  call void %136(ptr noundef %9) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind uwtable
define dso_local void @bmo_rotate_uvs_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  %5 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #4
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %7 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 16) #4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %104, label %9

9:                                                ; preds = %2
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %104, label %12

12:                                               ; preds = %9
  %13 = icmp eq i8 %5, 0
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %21 = sext i32 %7 to i64
  br label %22

22:                                               ; preds = %12, %91
  %23 = phi ptr [ undef, %12 ], [ %100, %91 ]
  %24 = phi ptr [ undef, %12 ], [ %99, %91 ]
  %25 = phi ptr [ %10, %12 ], [ %102, %91 ]
  %26 = phi ptr [ undef, %12 ], [ %98, %91 ]
  %27 = phi float [ undef, %12 ], [ %97, %91 ]
  %28 = phi float [ undef, %12 ], [ %96, %91 ]
  %29 = phi float [ undef, %12 ], [ %95, %91 ]
  %30 = phi float [ undef, %12 ], [ %94, %91 ]
  br i1 %13, label %31, label %58

31:                                               ; preds = %22
  store i8 11, ptr %18, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %19, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %20, align 8, !tbaa !66
  store ptr %25, ptr %4, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #4
  %32 = load ptr, ptr %20, align 8, !tbaa !66
  %33 = call ptr %32(ptr noundef nonnull %4) #4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %31, %48
  %36 = phi i32 [ %50, %48 ], [ 0, %31 ]
  %37 = phi ptr [ %49, %48 ], [ %26, %31 ]
  %38 = phi ptr [ %52, %48 ], [ %33, %31 ]
  %39 = phi float [ %46, %48 ], [ %29, %31 ]
  %40 = phi float [ %44, %48 ], [ %30, %31 ]
  %41 = load ptr, ptr %38, align 8, !tbaa !88
  %42 = getelementptr inbounds i8, ptr %41, i64 %21
  %43 = icmp eq i32 %36, 0
  %44 = load float, ptr %42, align 4, !tbaa !51
  %45 = getelementptr inbounds float, ptr %42, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !51
  br i1 %43, label %48, label %47

47:                                               ; preds = %35
  store float %40, ptr %42, align 4, !tbaa !51
  store float %39, ptr %45, align 4, !tbaa !51
  br label %48

48:                                               ; preds = %35, %47
  %49 = phi ptr [ %37, %47 ], [ %42, %35 ]
  %50 = add nuw nsw i32 %36, 1
  %51 = load ptr, ptr %20, align 8, !tbaa !66
  %52 = call ptr %51(ptr noundef nonnull %4) #4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %35, !llvm.loop !89

54:                                               ; preds = %48, %31
  %55 = phi float [ %30, %31 ], [ %44, %48 ]
  %56 = phi float [ %29, %31 ], [ %46, %48 ]
  %57 = phi ptr [ %26, %31 ], [ %49, %48 ]
  store float %55, ptr %57, align 4, !tbaa !51
  br label %91

58:                                               ; preds = %22
  store i8 11, ptr %14, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %15, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %16, align 8, !tbaa !66
  store ptr %25, ptr %4, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #4
  %59 = load ptr, ptr %16, align 8, !tbaa !66
  %60 = call ptr %59(ptr noundef nonnull %4) #4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %86, label %62

62:                                               ; preds = %58, %79
  %63 = phi i32 [ %82, %79 ], [ 0, %58 ]
  %64 = phi ptr [ %69, %79 ], [ %24, %58 ]
  %65 = phi ptr [ %84, %79 ], [ %60, %58 ]
  %66 = phi float [ %81, %79 ], [ %27, %58 ]
  %67 = phi float [ %80, %79 ], [ %28, %58 ]
  %68 = load ptr, ptr %65, align 8, !tbaa !88
  %69 = getelementptr inbounds i8, ptr %68, i64 %17
  %70 = icmp eq i32 %63, 0
  %71 = load float, ptr %69, align 4, !tbaa !51
  br i1 %70, label %72, label %75

72:                                               ; preds = %62
  %73 = getelementptr inbounds float, ptr %69, i64 1
  %74 = load float, ptr %73, align 4, !tbaa !51
  br label %79

75:                                               ; preds = %62
  store float %71, ptr %64, align 4, !tbaa !51
  %76 = getelementptr inbounds float, ptr %69, i64 1
  %77 = load float, ptr %76, align 4, !tbaa !51
  %78 = getelementptr inbounds float, ptr %64, i64 1
  store float %77, ptr %78, align 4, !tbaa !51
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi float [ %74, %72 ], [ %67, %75 ]
  %81 = phi float [ %71, %72 ], [ %66, %75 ]
  %82 = add nuw nsw i32 %63, 1
  %83 = load ptr, ptr %16, align 8, !tbaa !66
  %84 = call ptr %83(ptr noundef nonnull %4) #4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %62, !llvm.loop !90

86:                                               ; preds = %79, %58
  %87 = phi float [ %28, %58 ], [ %80, %79 ]
  %88 = phi float [ %27, %58 ], [ %81, %79 ]
  %89 = phi ptr [ %24, %58 ], [ %69, %79 ]
  %90 = phi ptr [ %23, %58 ], [ %69, %79 ]
  store float %88, ptr %90, align 4, !tbaa !51
  br label %91

91:                                               ; preds = %54, %86
  %92 = phi ptr [ %57, %54 ], [ %90, %86 ]
  %93 = phi float [ %56, %54 ], [ %87, %86 ]
  %94 = phi float [ %55, %54 ], [ %30, %86 ]
  %95 = phi float [ %56, %54 ], [ %29, %86 ]
  %96 = phi float [ %28, %54 ], [ %87, %86 ]
  %97 = phi float [ %27, %54 ], [ %88, %86 ]
  %98 = phi ptr [ %57, %54 ], [ %26, %86 ]
  %99 = phi ptr [ %24, %54 ], [ %89, %86 ]
  %100 = phi ptr [ %23, %54 ], [ %90, %86 ]
  %101 = getelementptr inbounds float, ptr %92, i64 1
  store float %93, ptr %101, align 4, !tbaa !51
  %102 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %22, !llvm.loop !91

104:                                              ; preds = %91, %9, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_reverse_uvs_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 16) #4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  call fastcc void @bm_face_reverse_uvs(ptr noundef nonnull %11, i32 noundef %5)
  %12 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !92

14:                                               ; preds = %10, %7, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_face_reverse_uvs(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 11, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %10, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %11, align 8, !tbaa !66
  store ptr %0, ptr %3, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #4
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = call ptr %12(ptr noundef nonnull %3) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %2
  %16 = sext i32 %1 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %29, %17 ]
  %19 = phi ptr [ %13, %15 ], [ %28, %17 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = getelementptr inbounds i8, ptr %20, i64 %16
  %22 = getelementptr inbounds [2 x float], ptr %8, i64 %18
  %23 = load float, ptr %21, align 4, !tbaa !51
  store float %23, ptr %22, align 8, !tbaa !51
  %24 = getelementptr inbounds float, ptr %21, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !51
  %26 = getelementptr inbounds float, ptr %22, i64 1
  store float %25, ptr %26, align 4, !tbaa !51
  %27 = load ptr, ptr %11, align 8, !tbaa !66
  %28 = call ptr %27(ptr noundef nonnull %3) #4
  %29 = add nuw i64 %18, 1
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %17, !llvm.loop !94

31:                                               ; preds = %17, %2
  store i8 11, ptr %9, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %10, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %11, align 8, !tbaa !66
  store ptr %0, ptr %3, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #4
  %32 = load ptr, ptr %11, align 8, !tbaa !66
  %33 = call ptr %32(ptr noundef nonnull %3) #4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %31
  %36 = sext i32 %1 to i64
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %33, %35 ], [ %52, %37 ]
  %39 = phi i32 [ 0, %35 ], [ %53, %37 ]
  %40 = load ptr, ptr %38, align 8, !tbaa !88
  %41 = getelementptr inbounds i8, ptr %40, i64 %36
  %42 = load i32, ptr %4, align 8, !tbaa !93
  %43 = xor i32 %39, -1
  %44 = add i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x float], ptr %8, i64 %45
  %47 = load float, ptr %46, align 8, !tbaa !51
  store float %47, ptr %41, align 4, !tbaa !51
  %48 = getelementptr inbounds float, ptr %46, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !51
  %50 = getelementptr inbounds float, ptr %41, i64 1
  store float %49, ptr %50, align 4, !tbaa !51
  %51 = load ptr, ptr %11, align 8, !tbaa !66
  %52 = call ptr %51(ptr noundef nonnull %3) #4
  %53 = add nuw nsw i32 %39, 1
  %54 = icmp eq ptr %52, null
  br i1 %54, label %55, label %37, !llvm.loop !95

55:                                               ; preds = %37, %31
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmo_rotate_colors_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  %5 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #4
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %7 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 17) #4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %84, label %9

9:                                                ; preds = %2
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %84, label %12

12:                                               ; preds = %9
  %13 = icmp eq i8 %5, 0
  %14 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %15 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %16 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %17 = sext i32 %7 to i64
  %18 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %19 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %21 = sext i32 %7 to i64
  br label %22

22:                                               ; preds = %12, %76
  %23 = phi ptr [ undef, %12 ], [ %81, %76 ]
  %24 = phi ptr [ undef, %12 ], [ %80, %76 ]
  %25 = phi ptr [ %10, %12 ], [ %82, %76 ]
  %26 = phi ptr [ undef, %12 ], [ %79, %76 ]
  %27 = phi i32 [ undef, %12 ], [ %78, %76 ]
  %28 = phi i32 [ undef, %12 ], [ %77, %76 ]
  br i1 %13, label %29, label %52

29:                                               ; preds = %22
  store i8 11, ptr %18, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %19, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %20, align 8, !tbaa !66
  store ptr %25, ptr %4, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #4
  %30 = load ptr, ptr %20, align 8, !tbaa !66
  %31 = call ptr %30(ptr noundef nonnull %4) #4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %29, %43
  %34 = phi i32 [ %45, %43 ], [ 0, %29 ]
  %35 = phi ptr [ %44, %43 ], [ %26, %29 ]
  %36 = phi ptr [ %47, %43 ], [ %31, %29 ]
  %37 = phi i32 [ %41, %43 ], [ %28, %29 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !88
  %39 = getelementptr inbounds i8, ptr %38, i64 %21
  %40 = icmp eq i32 %34, 0
  %41 = load i32, ptr %39, align 1
  br i1 %40, label %43, label %42

42:                                               ; preds = %33
  store i32 %37, ptr %39, align 1
  br label %43

43:                                               ; preds = %33, %42
  %44 = phi ptr [ %35, %42 ], [ %39, %33 ]
  %45 = add nuw nsw i32 %34, 1
  %46 = load ptr, ptr %20, align 8, !tbaa !66
  %47 = call ptr %46(ptr noundef nonnull %4) #4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %33, !llvm.loop !96

49:                                               ; preds = %43, %29
  %50 = phi i32 [ %28, %29 ], [ %41, %43 ]
  %51 = phi ptr [ %26, %29 ], [ %44, %43 ]
  store i32 %50, ptr %51, align 1
  br label %76

52:                                               ; preds = %22
  store i8 11, ptr %14, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %15, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %16, align 8, !tbaa !66
  store ptr %25, ptr %4, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %4) #4
  %53 = load ptr, ptr %16, align 8, !tbaa !66
  %54 = call ptr %53(ptr noundef nonnull %4) #4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %72, label %56

56:                                               ; preds = %52, %66
  %57 = phi i32 [ %68, %66 ], [ 0, %52 ]
  %58 = phi ptr [ %62, %66 ], [ %24, %52 ]
  %59 = phi ptr [ %70, %66 ], [ %54, %52 ]
  %60 = phi i32 [ %67, %66 ], [ %27, %52 ]
  %61 = load ptr, ptr %59, align 8, !tbaa !88
  %62 = getelementptr inbounds i8, ptr %61, i64 %17
  %63 = icmp eq i32 %57, 0
  %64 = load i32, ptr %62, align 1
  br i1 %63, label %66, label %65

65:                                               ; preds = %56
  store i32 %64, ptr %58, align 1
  br label %66

66:                                               ; preds = %56, %65
  %67 = phi i32 [ %60, %65 ], [ %64, %56 ]
  %68 = add nuw nsw i32 %57, 1
  %69 = load ptr, ptr %16, align 8, !tbaa !66
  %70 = call ptr %69(ptr noundef nonnull %4) #4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %56, !llvm.loop !97

72:                                               ; preds = %66, %52
  %73 = phi i32 [ %27, %52 ], [ %67, %66 ]
  %74 = phi ptr [ %24, %52 ], [ %62, %66 ]
  %75 = phi ptr [ %23, %52 ], [ %62, %66 ]
  store i32 %73, ptr %75, align 1
  br label %76

76:                                               ; preds = %49, %72
  %77 = phi i32 [ %50, %49 ], [ %28, %72 ]
  %78 = phi i32 [ %27, %49 ], [ %73, %72 ]
  %79 = phi ptr [ %51, %49 ], [ %26, %72 ]
  %80 = phi ptr [ %24, %49 ], [ %74, %72 ]
  %81 = phi ptr [ %23, %49 ], [ %75, %72 ]
  %82 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %22, !llvm.loop !98

84:                                               ; preds = %76, %9, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bmo_reverse_colors_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 17) #4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  call fastcc void @bm_face_reverse_colors(ptr noundef nonnull %11, i32 noundef %5)
  %12 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !99

14:                                               ; preds = %10, %7, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bm_face_reverse_colors(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !93
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = alloca i8, i64 %7, align 16
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 11, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %10, align 8, !tbaa !65
  %11 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %11, align 8, !tbaa !66
  store ptr %0, ptr %3, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #4
  %12 = load ptr, ptr %11, align 8, !tbaa !66
  %13 = call ptr %12(ptr noundef nonnull %3) #4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = sext i32 %1 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %26, %17 ]
  %19 = phi ptr [ %13, %15 ], [ %25, %17 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = getelementptr inbounds i8, ptr %20, i64 %16
  %22 = getelementptr inbounds %struct.MLoopCol, ptr %8, i64 %18
  %23 = load i32, ptr %21, align 1
  store i32 %23, ptr %22, align 4
  %24 = load ptr, ptr %11, align 8, !tbaa !66
  %25 = call ptr %24(ptr noundef nonnull %3) #4
  %26 = add nuw i64 %18, 1
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %17, !llvm.loop !100

28:                                               ; preds = %17, %2
  store i8 11, ptr %9, align 4, !tbaa !63
  store ptr @bmiter__loop_of_face_begin, ptr %10, align 8, !tbaa !65
  store ptr @bmiter__loop_of_face_step, ptr %11, align 8, !tbaa !66
  store ptr %0, ptr %3, align 8, !tbaa !67
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %3) #4
  %29 = load ptr, ptr %11, align 8, !tbaa !66
  %30 = call ptr %29(ptr noundef nonnull %3) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %49, label %32

32:                                               ; preds = %28
  %33 = sext i32 %1 to i64
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi ptr [ %30, %32 ], [ %46, %34 ]
  %36 = phi i32 [ 0, %32 ], [ %47, %34 ]
  %37 = load ptr, ptr %35, align 8, !tbaa !88
  %38 = getelementptr inbounds i8, ptr %37, i64 %33
  %39 = load i32, ptr %4, align 8, !tbaa !93
  %40 = xor i32 %36, -1
  %41 = add i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.MLoopCol, ptr %8, i64 %42
  %44 = load i32, ptr %43, align 4
  store i32 %44, ptr %38, align 1
  %45 = load ptr, ptr %11, align 8, !tbaa !66
  %46 = call ptr %45(ptr noundef nonnull %3) #4
  %47 = add nuw nsw i32 %36, 1
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %34, !llvm.loop !101

49:                                               ; preds = %34, %28
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret void
}

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__face_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__face_of_edge_step(ptr noundef) #2

declare void @bmiter__loop_of_face_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_face_step(ptr noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!35 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !40, i64 128}
!42 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !43, i64 144, !43, i64 344, !43, i64 544, !43, i64 744, !44, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !45, i64 960, !37, i64 976, !45, i64 984, !37, i64 1000}
!43 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!44 = !{!"short", !38, i64 0}
!45 = !{!"ListBase", !37, i64 0, !37, i64 8}
!46 = !{!47, !44, i64 0}
!47 = !{!"BMFlagLayer", !44, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !38, i64 0}
!53 = !{!54, !40, i64 1304}
!54 = !{!"BMOperator", !38, i64 0, !38, i64 640, !37, i64 1280, !37, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!55 = distinct !{!55, !49, !50}
!56 = !{!37, !37, i64 0}
!57 = !{!58, !37, i64 16}
!58 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !44, i64 48}
!59 = !{!60, !37, i64 16}
!60 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !61, i64 48, !61, i64 64}
!61 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!62 = distinct !{!62, !49, !50}
!63 = !{!64, !38, i64 60}
!64 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!65 = !{!64, !37, i64 40}
!66 = !{!64, !37, i64 48}
!67 = !{!38, !38, i64 0}
!68 = !{!36, !38, i64 13}
!69 = distinct !{!69, !49, !50}
!70 = distinct !{!70, !49, !50}
!71 = distinct !{!71, !49, !50}
!72 = !{!73, !37, i64 24}
!73 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!74 = distinct !{!74, !49, !50}
!75 = distinct !{!75, !49, !50}
!76 = distinct !{!76, !49, !50}
!77 = distinct !{!77, !49, !50}
!78 = !{!60, !37, i64 24}
!79 = !{!60, !37, i64 32}
!80 = distinct !{!80, !49, !50}
!81 = distinct !{!81, !49, !50}
!82 = distinct !{!82, !49, !50}
!83 = distinct !{!83, !49, !50}
!84 = distinct !{!84, !49, !50}
!85 = distinct !{!85, !49, !50}
!86 = distinct !{!86, !49, !50}
!87 = distinct !{!87, !49, !50}
!88 = !{!73, !37, i64 0}
!89 = distinct !{!89, !49, !50}
!90 = distinct !{!90, !49, !50}
!91 = distinct !{!91, !49, !50}
!92 = distinct !{!92, !49, !50}
!93 = !{!58, !40, i64 32}
!94 = distinct !{!94, !49, !50}
!95 = distinct !{!95, !49, !50}
!96 = distinct !{!96, !49, !50}
!97 = distinct !{!97, !49, !50}
!98 = distinct !{!98, !49, !50}
!99 = distinct !{!99, !49, !50}
!100 = distinct !{!100, !49, !50}
!101 = distinct !{!101, !49, !50}
