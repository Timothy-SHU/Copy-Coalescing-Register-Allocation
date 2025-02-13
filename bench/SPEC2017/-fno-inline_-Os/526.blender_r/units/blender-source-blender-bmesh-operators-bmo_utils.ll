; ModuleID = 'blender/source/blender/bmesh/operators/bmo_utils.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFlagLayer = type { i16 }
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
@switch.table.BM_iter_init = private unnamed_addr constant [8 x ptr] [ptr @bmiter__edge_of_vert_begin, ptr @bmiter__face_of_vert_begin, ptr @bmiter__loop_of_vert_begin, ptr @bmiter__vert_of_edge_begin, ptr @bmiter__face_of_edge_begin, ptr @bmiter__vert_of_face_begin, ptr @bmiter__edge_of_face_begin, ptr @bmiter__loop_of_face_begin], align 8
@switch.table.BM_iter_init.25 = private unnamed_addr constant [8 x ptr] [ptr @bmiter__edge_of_vert_step, ptr @bmiter__face_of_vert_step, ptr @bmiter__loop_of_vert_step, ptr @bmiter__vert_of_edge_step, ptr @bmiter__face_of_edge_step, ptr @bmiter__vert_of_face_step, ptr @bmiter__edge_of_face_step, ptr @bmiter__loop_of_face_step], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_create_vert_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #8
  %4 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %3, ptr noundef null, i32 noundef 0) #8
  %5 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, i8 noundef zeroext 1, i16 noundef signext 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BMO_slot_vec_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_enable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !41 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !47
  %9 = or i16 %8, 1
  store i16 %9, ptr %7, align 2, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_transform_exec(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca [4 x [4 x float]], align 16
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #8
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #8
  %7 = call zeroext i8 @is_zero_m4(ptr noundef nonnull %5) #8
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %6, ptr noundef nonnull %5) #8
  call void @_va_mul_m4_series_4(ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  br label %11

11:                                               ; preds = %9, %2
  %12 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %17, %14 ], [ %12, %11 ]
  %16 = getelementptr inbounds %struct.BMVert, ptr %15, i64 0, i32 2
  call void @mul_m4_v3(ptr noundef nonnull %4, ptr noundef nonnull %16) #8
  %17 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %14, !llvm.loop !49

19:                                               ; preds = %14, %11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_mat4_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_zero_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_va_mul_m4_series_4(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_translate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4 x [4 x float]], align 16
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #8
  call void @unit_m4(ptr noundef nonnull %3) #8
  %5 = getelementptr inbounds [4 x [4 x float]], ptr %3, i64 0, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %4) #9
  %6 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !51
  %8 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %7, ptr noundef nonnull @.str.6, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !53 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_op_callf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_scale_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x [3 x float]], align 16
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %4) #8
  call void @unit_m3(ptr noundef nonnull %3) #8
  %5 = load float, ptr %4, align 4, !tbaa !54
  store float %5, ptr %3, align 16, !tbaa !54
  %6 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !54
  %8 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 1, i64 1
  store float %7, ptr %8, align 16, !tbaa !54
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = getelementptr inbounds [3 x [3 x float]], ptr %3, i64 0, i64 2, i64 2
  store float %10, ptr %11, align 16, !tbaa !54
  %12 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !51
  %14 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %13, ptr noundef nonnull @.str.7, ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.4) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @unit_m3(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_rotate_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @BMO_slot_vec_get(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #8
  call void @BMO_slot_mat4_get(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %4) #8
  call void @transform_pivot_set_m4(ptr noundef nonnull %4, ptr noundef nonnull %3) #8
  %5 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = call zeroext i8 (ptr, i32, ptr, ...) @BMO_op_callf(ptr noundef %0, i32 noundef %6, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %1, ptr noundef nonnull @.str.4) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @transform_pivot_set_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_reverse_faces_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  %4 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %2 ]
  call void @BM_face_normal_flip(ptr noundef %0, ptr noundef nonnull %7) #8
  %8 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !56

10:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare void @BM_face_normal_flip(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_rotate_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  %6 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  %7 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.11) #8
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, i16 1, i16 5
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.11, i8 noundef zeroext 2) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %2, %48
  %13 = phi ptr [ %49, %48 ], [ %10, %2 ]
  %14 = call zeroext i8 @BM_edge_rotate_check(ptr noundef nonnull %13) #8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %48, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %17 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %13, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %4, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.BMFace, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %22, i16 noundef signext 1) #9, !range !60
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load ptr, ptr %5, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.BMFace, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %28, i16 noundef signext 1) #9, !range !60
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %22) #9
  %32 = load ptr, ptr %5, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.BMFace, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %34) #9
  %35 = call ptr @BM_edge_rotate(ptr noundef %0, ptr noundef nonnull %13, i8 noundef zeroext %6, i16 noundef signext %9) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load ptr, ptr %4, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.BMFace, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %40) #9
  %41 = load ptr, ptr %5, align 8, !tbaa !57
  %42 = getelementptr inbounds %struct.BMFace, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !58
  call fastcc void @_bmo_elem_flag_disable(ptr noundef %0, ptr noundef %43) #9
  br label %47

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.BMEdge, ptr %35, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %46) #9
  br label %47

47:                                               ; preds = %16, %44, %25, %19, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  br label %48

48:                                               ; preds = %47, %12
  %49 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %12, !llvm.loop !64

51:                                               ; preds = %48, %2
  %52 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %52, ptr noundef nonnull @.str.12, i8 noundef zeroext 2, i16 noundef signext 1) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BMO_slot_buffer_count(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_rotate_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc signext i16 @_bmo_elem_flag_test(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i16 noundef signext %2) unnamed_addr #4 !PGOFuncName !65 {
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = sext i32 %5 to i64
  %7 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %6
  %8 = getelementptr %struct.BMFlagLayer, ptr %7, i64 -1
  %9 = load i16, ptr %8, align 2, !tbaa !47
  %10 = and i16 %9, %2
  ret i16 %10
}

; Function Attrs: optsize
declare ptr @BM_edge_rotate(ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bmo_elem_flag_disable(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #3 !PGOFuncName !66 {
  %3 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = sext i32 %4 to i64
  %6 = getelementptr %struct.BMFlagLayer, ptr %1, i64 %5
  %7 = getelementptr %struct.BMFlagLayer, ptr %6, i64 -1
  %8 = load i16, ptr %7, align 2, !tbaa !47
  %9 = and i16 %8, -2
  store i16 %9, ptr %7, align 2, !tbaa !47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_region_extend_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.13) #8
  %4 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.14) #8
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 11, i16 noundef signext 2) #8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @bmo_region_extend_constrict(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %3) #9
  br label %8

7:                                                ; preds = %2
  tail call fastcc void @bmo_region_extend_extend(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %3) #9
  br label %8

8:                                                ; preds = %7, %6
  %9 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  tail call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull @.str.16, i8 noundef zeroext 11, i16 noundef signext 1) #8
  ret void
}

; Function Attrs: optsize
declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_region_extend_constrict(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !67 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #7
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 1) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %82, label %12

12:                                               ; preds = %9, %43
  %13 = phi ptr [ %44, %43 ], [ %10, %9 ]
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 4, ptr noundef nonnull %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %12, %25
  %17 = phi ptr [ %26, %25 ], [ %14, %12 ]
  %18 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17) #9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %22, i16 noundef signext 2) #9, !range !60
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16, %20
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %43, label %16, !llvm.loop !68

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %30) #9
  %31 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 4, ptr noundef nonnull %13) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %28, %40
  %34 = phi ptr [ %41, %40 ], [ %31, %28 ]
  %35 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %34) #9
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.BMEdge, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %39) #9
  br label %40

40:                                               ; preds = %33, %37
  %41 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %33, !llvm.loop !69

43:                                               ; preds = %25, %40, %12, %28
  %44 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %82, label %12, !llvm.loop !70

46:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  %47 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 8) #8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %81, label %49

49:                                               ; preds = %46, %78
  %50 = phi ptr [ %79, %78 ], [ %47, %46 ]
  %51 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, i8 noundef zeroext 11, ptr noundef nonnull %50) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %78, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.BMFace, ptr %50, i64 0, i32 1
  br label %55

55:                                               ; preds = %53, %75
  %56 = phi ptr [ %51, %53 ], [ %76, %75 ]
  %57 = getelementptr inbounds %struct.BMLoop, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !71
  %59 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, i8 noundef zeroext 8, ptr noundef %58) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %61

61:                                               ; preds = %55, %72
  %62 = phi ptr [ %73, %72 ], [ %59, %55 ]
  %63 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %62) #9
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.BMFace, ptr %62, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !58
  %68 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %67, i16 noundef signext 2) #9, !range !60
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load ptr, ptr %54, align 8, !tbaa !58
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %71) #9
  br label %75

72:                                               ; preds = %61, %65
  %73 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #9
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %61, !llvm.loop !73

75:                                               ; preds = %72, %55, %70
  %76 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #9
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %55, !llvm.loop !74

78:                                               ; preds = %75, %49
  %79 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %49, !llvm.loop !75

81:                                               ; preds = %78, %46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %82

82:                                               ; preds = %43, %9, %81
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bmo_region_extend_extend(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !76 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMOIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #7
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %3
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 1) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %80, label %12

12:                                               ; preds = %9, %44
  %13 = phi ptr [ %45, %44 ], [ %10, %9 ]
  %14 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 4, ptr noundef nonnull %13) #9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %44, label %16

16:                                               ; preds = %12, %25
  %17 = phi ptr [ %26, %25 ], [ %14, %12 ]
  %18 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %17) #9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BMEdge, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  %23 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %22, i16 noundef signext 2) #9, !range !60
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16, %20
  %26 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %16, !llvm.loop !77

28:                                               ; preds = %20
  %29 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 4, ptr noundef nonnull %13) #9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %28, %41
  %32 = phi ptr [ %42, %41 ], [ %29, %28 ]
  %33 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %32) #9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.BMEdge, ptr %32, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %37) #9
  %38 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %32, ptr noundef nonnull %13) #9
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %40) #9
  br label %41

41:                                               ; preds = %31, %35
  %42 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %31, !llvm.loop !78

44:                                               ; preds = %25, %41, %12, %28
  %45 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %80, label %12, !llvm.loop !79

47:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #7
  %48 = call ptr @BMO_iter_new(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull @.str.15, i8 noundef zeroext 8) #8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %79, label %50

50:                                               ; preds = %47, %76
  %51 = phi ptr [ %77, %76 ], [ %48, %47 ]
  %52 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %6, i8 noundef zeroext 11, ptr noundef nonnull %51) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %50, %73
  %55 = phi ptr [ %74, %73 ], [ %52, %50 ]
  %56 = getelementptr inbounds %struct.BMLoop, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %7, i8 noundef zeroext 8, ptr noundef %57) #9
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %54, %70
  %61 = phi ptr [ %71, %70 ], [ %58, %54 ]
  %62 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %61) #9
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !58
  %67 = call fastcc signext i16 @_bmo_elem_flag_test(ptr noundef %0, ptr noundef %66, i16 noundef signext 2) #9, !range !60
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  call fastcc void @_bmo_elem_flag_enable(ptr noundef %0, ptr noundef %66) #9
  br label %70

70:                                               ; preds = %60, %69, %64
  %71 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %7) #9
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %60, !llvm.loop !80

73:                                               ; preds = %70, %54
  %74 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %6) #9
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %54, !llvm.loop !81

76:                                               ; preds = %73, %50
  %77 = call ptr @BMO_iter_step(ptr noundef nonnull %5) #8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %50, !llvm.loop !82

79:                                               ; preds = %76, %47
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %80

80:                                               ; preds = %44, %9, %79
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_smooth_vert_exec(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !57
  %6 = tail call i32 @BMO_slot_buffer_count(ptr noundef %1, ptr noundef nonnull @.str.4) #8
  %7 = sext i32 %6 to i64
  %8 = mul nsw i64 %7, 12
  %9 = tail call ptr %5(i64 noundef %8, ptr noundef nonnull @__func__.bmo_smooth_vert_exec) #8
  %10 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.17) #8
  %11 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.18) #8
  %12 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.19) #8
  %13 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.20) #8
  %14 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.21) #8
  %15 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.22) #8
  %16 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.23) #8
  %17 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.24) #8
  %18 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %69, label %20

20:                                               ; preds = %2
  %21 = icmp eq i8 %12, 0
  %22 = icmp eq i8 %13, 0
  %23 = icmp eq i8 %14, 0
  br label %24

24:                                               ; preds = %20, %65
  %25 = phi i64 [ 0, %20 ], [ %66, %65 ]
  %26 = phi ptr [ %18, %20 ], [ %67, %65 ]
  %27 = getelementptr inbounds [3 x float], ptr %9, i64 %25
  call fastcc void @zero_v3(ptr noundef %27) #9
  %28 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 4, ptr noundef nonnull %26) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %24, %30
  %31 = phi ptr [ %36, %30 ], [ %28, %24 ]
  %32 = phi i32 [ %35, %30 ], [ 0, %24 ]
  %33 = call fastcc ptr @BM_edge_other_vert(ptr noundef nonnull %31, ptr noundef nonnull %26) #9
  %34 = getelementptr inbounds %struct.BMVert, ptr %33, i64 0, i32 2
  call fastcc void @add_v3_v3v3(ptr noundef %27, ptr noundef %27, ptr noundef nonnull %34) #9
  %35 = add nuw nsw i32 %32, 1
  %36 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %30, !llvm.loop !83

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call fastcc void @copy_v3_v3(ptr noundef %27, ptr noundef nonnull %39) #9
  br label %65

40:                                               ; preds = %30
  %41 = sitofp i32 %35 to float
  %42 = fdiv float 1.000000e+00, %41
  call fastcc void @mul_v3_fl(ptr noundef %27, float noundef %42) #9
  %43 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2
  call void @interp_v3_v3v3(ptr noundef %27, ptr noundef nonnull %43, ptr noundef %27, float noundef %11) #8
  br i1 %21, label %49, label %44

44:                                               ; preds = %40
  %45 = load float, ptr %43, align 8, !tbaa !54
  %46 = call float @llvm.fabs.f32(float %45)
  %47 = fcmp ugt float %46, %10
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store float 0.000000e+00, ptr %27, align 4, !tbaa !54
  br label %49

49:                                               ; preds = %48, %44, %40
  br i1 %22, label %57, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !54
  %53 = call float @llvm.fabs.f32(float %52)
  %54 = fcmp ugt float %53, %10
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds float, ptr %27, i64 1
  store float 0.000000e+00, ptr %56, align 4, !tbaa !54
  br label %57

57:                                               ; preds = %55, %50, %49
  br i1 %23, label %65, label %58

58:                                               ; preds = %57
  %59 = getelementptr inbounds %struct.BMVert, ptr %26, i64 0, i32 2, i64 2
  %60 = load float, ptr %59, align 8, !tbaa !54
  %61 = call float @llvm.fabs.f32(float %60)
  %62 = fcmp ugt float %61, %10
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds float, ptr %27, i64 2
  store float 0.000000e+00, ptr %64, align 4, !tbaa !54
  br label %65

65:                                               ; preds = %57, %58, %63, %38
  %66 = add nuw i64 %25, 1
  %67 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %24, !llvm.loop !84

69:                                               ; preds = %65, %2
  %70 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.4, i8 noundef zeroext 1) #8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %97, label %72

72:                                               ; preds = %69
  %73 = icmp eq i8 %15, 0
  %74 = icmp eq i8 %16, 0
  %75 = icmp eq i8 %17, 0
  br label %76

76:                                               ; preds = %72, %93
  %77 = phi i64 [ 0, %72 ], [ %94, %93 ]
  %78 = phi ptr [ %70, %72 ], [ %95, %93 ]
  br i1 %73, label %83, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds [3 x float], ptr %9, i64 %77
  %81 = load float, ptr %80, align 4, !tbaa !54
  %82 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 2
  store float %81, ptr %82, align 8, !tbaa !54
  br label %83

83:                                               ; preds = %79, %76
  br i1 %74, label %88, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds [3 x float], ptr %9, i64 %77, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !54
  %87 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 2, i64 1
  store float %86, ptr %87, align 4, !tbaa !54
  br label %88

88:                                               ; preds = %84, %83
  br i1 %75, label %93, label %89

89:                                               ; preds = %88
  %90 = getelementptr inbounds [3 x float], ptr %9, i64 %77, i64 2
  %91 = load float, ptr %90, align 4, !tbaa !54
  %92 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 2, i64 2
  store float %91, ptr %92, align 8, !tbaa !54
  br label %93

93:                                               ; preds = %89, %88
  %94 = add nuw i64 %77, 1
  %95 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %76, !llvm.loop !85

97:                                               ; preds = %93, %69
  %98 = load ptr, ptr @MEM_freeN, align 8, !tbaa !57
  call void %98(ptr noundef %9) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #5 !PGOFuncName !86 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !54
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !87 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #9
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #9
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @BM_edge_other_vert(ptr nocapture noundef readonly %0, ptr noundef readnone %1) unnamed_addr #4 !PGOFuncName !88 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = icmp eq ptr %4, %1
  %6 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = icmp eq ptr %7, %1
  %9 = select i1 %8, ptr %4, ptr null
  %10 = select i1 %5, ptr %7, ptr %9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #3 !PGOFuncName !91 {
  %4 = load float, ptr %1, align 4, !tbaa !54
  %5 = load float, ptr %2, align 4, !tbaa !54
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !54
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !54
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !54
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !54
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !92 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = tail call ptr %3(ptr noundef %0) #8
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #3 !PGOFuncName !95 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !54
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !54
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !54
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !54
  ret void
}

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_rotate_uvs_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [2 x float], align 4
  %6 = alloca [2 x float], align 4
  %7 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %8 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %10 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %9, i32 noundef 16) #8
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %67, label %12

12:                                               ; preds = %2
  %13 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %15

15:                                               ; preds = %12
  %16 = icmp eq i8 %8, 0
  %17 = sext i32 %10 to i64
  br label %18

18:                                               ; preds = %15, %61
  %19 = phi ptr [ undef, %15 ], [ %64, %61 ]
  %20 = phi ptr [ undef, %15 ], [ %63, %61 ]
  %21 = phi ptr [ %13, %15 ], [ %65, %61 ]
  %22 = phi ptr [ undef, %15 ], [ %62, %61 ]
  br i1 %16, label %23, label %42

23:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 11, ptr noundef nonnull %21) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %23, %35
  %27 = phi i32 [ %37, %35 ], [ 0, %23 ]
  %28 = phi ptr [ %36, %35 ], [ %22, %23 ]
  %29 = phi ptr [ %38, %35 ], [ %24, %23 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = getelementptr inbounds i8, ptr %30, i64 %17
  %32 = icmp eq i32 %27, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef %31) #9
  br label %35

34:                                               ; preds = %26
  call fastcc void @copy_v2_v2(ptr noundef nonnull %6, ptr noundef %31) #9
  call fastcc void @copy_v2_v2(ptr noundef %31, ptr noundef nonnull %5) #9
  call fastcc void @copy_v2_v2(ptr noundef nonnull %5, ptr noundef nonnull %6) #9
  br label %35

35:                                               ; preds = %34, %33
  %36 = phi ptr [ %31, %33 ], [ %28, %34 ]
  %37 = add nuw nsw i32 %27, 1
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %26, !llvm.loop !97

40:                                               ; preds = %35, %23
  %41 = phi ptr [ %22, %23 ], [ %36, %35 ]
  call fastcc void @copy_v2_v2(ptr noundef %41, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %61

42:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  %43 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 11, ptr noundef nonnull %21) #9
  %44 = icmp eq ptr %43, null
  br i1 %44, label %58, label %45

45:                                               ; preds = %42, %54
  %46 = phi i32 [ %55, %54 ], [ 0, %42 ]
  %47 = phi ptr [ %50, %54 ], [ %20, %42 ]
  %48 = phi ptr [ %56, %54 ], [ %43, %42 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !96
  %50 = getelementptr inbounds i8, ptr %49, i64 %17
  %51 = icmp eq i32 %46, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call fastcc void @copy_v2_v2(ptr noundef nonnull %7, ptr noundef %50) #9
  br label %54

53:                                               ; preds = %45
  call fastcc void @copy_v2_v2(ptr noundef %47, ptr noundef %50) #9
  br label %54

54:                                               ; preds = %53, %52
  %55 = add nuw nsw i32 %46, 1
  %56 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %45, !llvm.loop !98

58:                                               ; preds = %54, %42
  %59 = phi ptr [ %20, %42 ], [ %50, %54 ]
  %60 = phi ptr [ %19, %42 ], [ %50, %54 ]
  call fastcc void @copy_v2_v2(ptr noundef %60, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %61

61:                                               ; preds = %40, %58
  %62 = phi ptr [ %41, %40 ], [ %22, %58 ]
  %63 = phi ptr [ %20, %40 ], [ %59, %58 ]
  %64 = phi ptr [ %19, %40 ], [ %60, %58 ]
  %65 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %18, !llvm.loop !99

67:                                               ; preds = %61, %12, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !100 {
  %3 = load float, ptr %1, align 4, !tbaa !54
  store float %3, ptr %0, align 4, !tbaa !54
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !54
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !54
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_reverse_uvs_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 16) #8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  call fastcc void @bm_face_reverse_uvs(ptr noundef nonnull %11, i32 noundef %5) #9
  %12 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !101

14:                                               ; preds = %10, %7, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_reverse_uvs(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !102 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !103
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = alloca i8, i64 %7, align 16
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 11, ptr noundef %0) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %2
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %20, %13 ]
  %15 = phi ptr [ %9, %11 ], [ %19, %13 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds i8, ptr %16, i64 %12
  %18 = getelementptr inbounds [2 x float], ptr %8, i64 %14
  call fastcc void @copy_v2_v2(ptr noundef nonnull %18, ptr noundef %17) #9
  %19 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #9
  %20 = add nuw i64 %14, 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %13, !llvm.loop !104

22:                                               ; preds = %13, %2
  %23 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 11, ptr noundef %0) #9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = sext i32 %1 to i64
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi ptr [ %23, %25 ], [ %37, %27 ]
  %29 = phi i32 [ 0, %25 ], [ %38, %27 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !96
  %31 = getelementptr inbounds i8, ptr %30, i64 %26
  %32 = load i32, ptr %4, align 8, !tbaa !103
  %33 = xor i32 %29, -1
  %34 = add i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x float], ptr %8, i64 %35
  call fastcc void @copy_v2_v2(ptr noundef %31, ptr noundef nonnull %36) #9
  %37 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #9
  %38 = add nuw nsw i32 %29, 1
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %27, !llvm.loop !105

40:                                               ; preds = %27, %22
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_rotate_colors_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  %5 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.10) #8
  %6 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %7 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %6, i32 noundef 17) #8
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %71, label %12

12:                                               ; preds = %9
  %13 = icmp eq i8 %5, 0
  %14 = sext i32 %7 to i64
  br label %15

15:                                               ; preds = %12, %63
  %16 = phi ptr [ undef, %12 ], [ %68, %63 ]
  %17 = phi ptr [ undef, %12 ], [ %67, %63 ]
  %18 = phi ptr [ %10, %12 ], [ %69, %63 ]
  %19 = phi ptr [ undef, %12 ], [ %66, %63 ]
  %20 = phi i32 [ undef, %12 ], [ %65, %63 ]
  %21 = phi i32 [ undef, %12 ], [ %64, %63 ]
  %22 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %4, i8 noundef zeroext 11, ptr noundef nonnull %18) #9
  %23 = icmp eq ptr %22, null
  br i1 %13, label %24, label %43

24:                                               ; preds = %15
  br i1 %23, label %40, label %25

25:                                               ; preds = %24, %35
  %26 = phi i32 [ %37, %35 ], [ 0, %24 ]
  %27 = phi ptr [ %36, %35 ], [ %19, %24 ]
  %28 = phi ptr [ %38, %35 ], [ %22, %24 ]
  %29 = phi i32 [ %33, %35 ], [ %21, %24 ]
  %30 = load ptr, ptr %28, align 8, !tbaa !96
  %31 = getelementptr inbounds i8, ptr %30, i64 %14
  %32 = icmp eq i32 %26, 0
  %33 = load i32, ptr %31, align 1
  br i1 %32, label %35, label %34

34:                                               ; preds = %25
  store i32 %29, ptr %31, align 1
  br label %35

35:                                               ; preds = %25, %34
  %36 = phi ptr [ %27, %34 ], [ %31, %25 ]
  %37 = add nuw nsw i32 %26, 1
  %38 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %25, !llvm.loop !106

40:                                               ; preds = %35, %24
  %41 = phi i32 [ %21, %24 ], [ %33, %35 ]
  %42 = phi ptr [ %19, %24 ], [ %36, %35 ]
  store i32 %41, ptr %42, align 1
  br label %63

43:                                               ; preds = %15
  br i1 %23, label %59, label %44

44:                                               ; preds = %43, %54
  %45 = phi i32 [ %56, %54 ], [ 0, %43 ]
  %46 = phi ptr [ %50, %54 ], [ %17, %43 ]
  %47 = phi ptr [ %57, %54 ], [ %22, %43 ]
  %48 = phi i32 [ %55, %54 ], [ %20, %43 ]
  %49 = load ptr, ptr %47, align 8, !tbaa !96
  %50 = getelementptr inbounds i8, ptr %49, i64 %14
  %51 = icmp eq i32 %45, 0
  %52 = load i32, ptr %50, align 1
  br i1 %51, label %54, label %53

53:                                               ; preds = %44
  store i32 %52, ptr %46, align 1
  br label %54

54:                                               ; preds = %44, %53
  %55 = phi i32 [ %48, %53 ], [ %52, %44 ]
  %56 = add nuw nsw i32 %45, 1
  %57 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %4) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %44, !llvm.loop !107

59:                                               ; preds = %54, %43
  %60 = phi i32 [ %20, %43 ], [ %55, %54 ]
  %61 = phi ptr [ %17, %43 ], [ %50, %54 ]
  %62 = phi ptr [ %16, %43 ], [ %50, %54 ]
  store i32 %60, ptr %62, align 1
  br label %63

63:                                               ; preds = %40, %59
  %64 = phi i32 [ %41, %40 ], [ %21, %59 ]
  %65 = phi i32 [ %20, %40 ], [ %60, %59 ]
  %66 = phi ptr [ %42, %40 ], [ %19, %59 ]
  %67 = phi ptr [ %17, %40 ], [ %61, %59 ]
  %68 = phi ptr [ %16, %40 ], [ %62, %59 ]
  %69 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %15, !llvm.loop !108

71:                                               ; preds = %63, %9, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @bmo_reverse_colors_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 17) #8
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 8) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  call fastcc void @bm_face_reverse_colors(ptr noundef nonnull %11, i32 noundef %5) #9
  %12 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %10, !llvm.loop !109

14:                                               ; preds = %10, %7, %2
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bm_face_reverse_colors(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !110 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.BMFace, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !103
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = alloca i8, i64 %7, align 16
  %9 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 11, ptr noundef %0) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = sext i32 %1 to i64
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %21, %13 ]
  %15 = phi ptr [ %9, %11 ], [ %20, %13 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds i8, ptr %16, i64 %12
  %18 = getelementptr inbounds %struct.MLoopCol, ptr %8, i64 %14
  %19 = load i32, ptr %17, align 1
  store i32 %19, ptr %18, align 4
  %20 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #9
  %21 = add nuw i64 %14, 1
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %13, !llvm.loop !111

23:                                               ; preds = %13, %2
  %24 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, i8 noundef zeroext 11, ptr noundef %0) #9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26

26:                                               ; preds = %23
  %27 = sext i32 %1 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi ptr [ %24, %26 ], [ %39, %28 ]
  %30 = phi i32 [ 0, %26 ], [ %40, %28 ]
  %31 = load ptr, ptr %29, align 8, !tbaa !96
  %32 = getelementptr inbounds i8, ptr %31, i64 %27
  %33 = load i32, ptr %4, align 8, !tbaa !103
  %34 = xor i32 %30, -1
  %35 = add i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.MLoopCol, ptr %8, i64 %36
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %32, align 1
  %39 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #9
  %40 = add nuw nsw i32 %30, 1
  %41 = icmp eq ptr %39, null
  br i1 %41, label %42, label %28, !llvm.loop !112

42:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !114
  %4 = and i8 %3, 2
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !115 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %1, ptr %4, align 4, !tbaa !116
  %5 = add nsw i8 %1, -4
  %6 = sext i8 %5 to i64
  %7 = getelementptr inbounds [8 x ptr], ptr @switch.table.BM_iter_init, i64 0, i64 %6
  %8 = load ptr, ptr %7, align 8
  %9 = sext i8 %5 to i64
  %10 = getelementptr inbounds [8 x ptr], ptr @switch.table.BM_iter_init.25, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr %8, ptr %13, align 8, !tbaa !117
  store ptr %11, ptr %12, align 8, !tbaa !93
  store ptr %2, ptr %0, align 8, !tbaa !118
  tail call void %8(ptr noundef nonnull %0) #8
  ret void
}

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

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
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
!34 = !{!35, !37, i64 16}
!35 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"bmo_utils.c:_bmo_elem_flag_enable"}
!42 = !{!43, !40, i64 128}
!43 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !46, i64 960, !37, i64 976, !46, i64 984, !37, i64 1000}
!44 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!45 = !{!"short", !38, i64 0}
!46 = !{!"ListBase", !37, i64 0, !37, i64 8}
!47 = !{!48, !45, i64 0}
!48 = !{!"BMFlagLayer", !45, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !40, i64 1304}
!52 = !{!"BMOperator", !38, i64 0, !38, i64 640, !37, i64 1280, !37, i64 1288, !40, i64 1296, !40, i64 1300, !40, i64 1304}
!53 = !{!"bmo_utils.c:copy_v3_v3"}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !38, i64 0}
!56 = distinct !{!56, !50}
!57 = !{!37, !37, i64 0}
!58 = !{!59, !37, i64 16}
!59 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !45, i64 48}
!60 = !{i16 0, i16 3}
!61 = !{!62, !37, i64 16}
!62 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !63, i64 48, !63, i64 64}
!63 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!64 = distinct !{!64, !50}
!65 = !{!"bmo_utils.c:_bmo_elem_flag_test"}
!66 = !{!"bmo_utils.c:_bmo_elem_flag_disable"}
!67 = !{!"bmo_utils.c:bmo_region_extend_constrict"}
!68 = distinct !{!68, !50}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
!71 = !{!72, !37, i64 24}
!72 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = distinct !{!75, !50}
!76 = !{!"bmo_utils.c:bmo_region_extend_extend"}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
!80 = distinct !{!80, !50}
!81 = distinct !{!81, !50}
!82 = distinct !{!82, !50}
!83 = distinct !{!83, !50}
!84 = distinct !{!84, !50}
!85 = distinct !{!85, !50}
!86 = !{!"bmo_utils.c:zero_v3"}
!87 = !{!"bmo_utils.c:BM_iter_new"}
!88 = !{!"bmo_utils.c:BM_edge_other_vert"}
!89 = !{!62, !37, i64 24}
!90 = !{!62, !37, i64 32}
!91 = !{!"bmo_utils.c:add_v3_v3v3"}
!92 = !{!"bmo_utils.c:BM_iter_step"}
!93 = !{!94, !37, i64 48}
!94 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!95 = !{!"bmo_utils.c:mul_v3_fl"}
!96 = !{!72, !37, i64 0}
!97 = distinct !{!97, !50}
!98 = distinct !{!98, !50}
!99 = distinct !{!99, !50}
!100 = !{!"bmo_utils.c:copy_v2_v2"}
!101 = distinct !{!101, !50}
!102 = !{!"bmo_utils.c:bm_face_reverse_uvs"}
!103 = !{!59, !40, i64 32}
!104 = distinct !{!104, !50}
!105 = distinct !{!105, !50}
!106 = distinct !{!106, !50}
!107 = distinct !{!107, !50}
!108 = distinct !{!108, !50}
!109 = distinct !{!109, !50}
!110 = !{!"bmo_utils.c:bm_face_reverse_colors"}
!111 = distinct !{!111, !50}
!112 = distinct !{!112, !50}
!113 = !{!"bmo_utils.c:_bm_elem_flag_test"}
!114 = !{!36, !38, i64 13}
!115 = !{!"bmo_utils.c:BM_iter_init"}
!116 = !{!94, !38, i64 60}
!117 = !{!94, !37, i64 40}
!118 = !{!38, !38, i64 0}
