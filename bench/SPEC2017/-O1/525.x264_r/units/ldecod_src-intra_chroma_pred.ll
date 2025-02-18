; ModuleID = 'ldecod_src/intra_chroma_pred.c'
source_filename = "ldecod_src/intra_chroma_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }

@.str = private unnamed_addr constant [52 x i8] c"unexpected VERT_PRED_8 chroma intra prediction mode\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"illegal chroma intra prediction mode\00", align 1
@subblk_offset_y = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\00\00\04\04", [4 x i8] c"\00\00\04\04", [4 x i8] c"\08\08\0C\0C", [4 x i8] c"\08\08\0C\0C"]], align 16
@subblk_offset_x = internal unnamed_addr constant [3 x [8 x [4 x i8]]] [[8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] c"\00\04\00\04", [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer], [8 x [4 x i8]] [[4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C", [4 x i8] c"\00\04\00\04", [4 x i8] c"\08\0C\08\0C"]], align 16
@.str.2 = private unnamed_addr constant [51 x i8] c"unexpected HOR_PRED_8 chroma intra prediction mode\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"unexpected PLANE_8 chroma intra prediction mode\00", align 1
@intrapred_chroma_dc.block_pos = internal unnamed_addr constant [3 x [4 x [4 x i32]]] [[4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] zeroinitializer, [4 x i32] zeroinitializer], [4 x [4 x i32]] [[4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 1, i32 1, i32 3, i32 3], [4 x i32] [i32 2, i32 3, i32 2, i32 3], [4 x i32] [i32 3, i32 3, i32 3, i32 3]]], align 16

; Function Attrs: nounwind uwtable
define dso_local void @intrapred_chroma_ver_mbaff(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  %8 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 77
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 78
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 81, i64 1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %12, ptr noundef nonnull %2) #5
  %13 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %14, i64 0, i32 30
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %2, align 4, !tbaa !56
  br i1 %17, label %30, label %19

19:                                               ; preds = %1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 128
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !59
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !60
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %1, %21, %19
  %31 = phi i32 [ %29, %21 ], [ 0, %19 ], [ %18, %1 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #5
  br label %71

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 77
  %36 = load ptr, ptr %35, align 8, !tbaa !61
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  %39 = getelementptr inbounds ptr, ptr %36, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 33
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  %44 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 5
  %45 = load i16, ptr %44, align 2, !tbaa !66
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !62
  %49 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 4
  %50 = load i16, ptr %49, align 4, !tbaa !67
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds i16, ptr %48, i64 %51
  %53 = getelementptr inbounds ptr, ptr %42, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !62
  %55 = getelementptr inbounds ptr, ptr %54, i64 %46
  %56 = load ptr, ptr %55, align 8, !tbaa !62
  %57 = getelementptr inbounds i16, ptr %56, i64 %51
  %58 = icmp sgt i32 %11, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %34
  %60 = sext i32 %9 to i64
  %61 = shl nsw i64 %60, 1
  %62 = zext nneg i32 %11 to i64
  br label %63

63:                                               ; preds = %59, %63
  %64 = phi i64 [ 0, %59 ], [ %69, %63 ]
  %65 = getelementptr inbounds ptr, ptr %38, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %66, ptr align 2 %52, i64 %61, i1 false)
  %67 = getelementptr inbounds ptr, ptr %40, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %68, ptr align 2 %57, i64 %61, i1 false)
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, %62
  br i1 %70, label %71, label %63, !llvm.loop !68

71:                                               ; preds = %63, %34, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @intrapred_chroma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 8
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  %11 = load i8, ptr %10, align 1, !tbaa !71
  switch i8 %11, label %973 [
    i8 0, label %12
    i8 1, label %580
    i8 2, label %663
    i8 3, label %733
  ]

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 125
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.storable_picture, ptr %17, i64 0, i32 48
  %19 = load i32, ptr %18, align 4, !tbaa !72
  %20 = add nsw i32 %19, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #5
  %21 = getelementptr inbounds %struct.storable_picture, ptr %17, i64 0, i32 33
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = getelementptr inbounds ptr, ptr %22, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 77
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = getelementptr inbounds ptr, ptr %27, i64 2
  %31 = load ptr, ptr %30, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 81, i64 1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %32, ptr noundef nonnull %8) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %32, ptr noundef nonnull %9) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %32, ptr noundef nonnull %7) #5
  %33 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !53
  %35 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %34, i64 0, i32 30
  %36 = load i32, ptr %35, align 4, !tbaa !54
  %37 = icmp eq i32 %36, 0
  %38 = load i32, ptr %7, align 4, !tbaa !56
  br i1 %37, label %39, label %41

39:                                               ; preds = %12
  %40 = load i32, ptr %9, align 8, !tbaa !56
  br label %65

41:                                               ; preds = %12
  %42 = icmp eq i32 %38, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 128
  %45 = load ptr, ptr %44, align 8, !tbaa !58
  %46 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !59
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !60
  %51 = sext i8 %50 to i32
  br label %52

52:                                               ; preds = %43, %41
  %53 = phi i32 [ %51, %43 ], [ 0, %41 ]
  %54 = load i32, ptr %9, align 8, !tbaa !56
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 128
  %58 = load ptr, ptr %57, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !60
  %64 = sext i8 %63 to i32
  br label %65

65:                                               ; preds = %52, %56, %39
  %66 = phi i32 [ %38, %39 ], [ %53, %56 ], [ %53, %52 ]
  %67 = phi i32 [ %40, %39 ], [ %64, %56 ], [ 0, %52 ]
  %68 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 75
  %69 = load i32, ptr %68, align 4, !tbaa !73
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %579

71:                                               ; preds = %65
  %72 = sext i32 %20 to i64
  %73 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 69, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !74
  %75 = getelementptr inbounds %struct.video_par, ptr %15, i64 0, i32 69, i64 2
  %76 = load i32, ptr %75, align 4, !tbaa !74
  %77 = getelementptr ptr, ptr %23, i64 -1
  %78 = getelementptr ptr, ptr %25, i64 -1
  %79 = getelementptr ptr, ptr %23, i64 -1
  %80 = getelementptr ptr, ptr %25, i64 -1
  %81 = getelementptr ptr, ptr %23, i64 -1
  %82 = getelementptr ptr, ptr %25, i64 -1
  %83 = getelementptr ptr, ptr %23, i64 -1
  %84 = getelementptr ptr, ptr %25, i64 -1
  %85 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %86 = getelementptr inbounds i8, ptr %9, i64 12
  %87 = getelementptr inbounds i8, ptr %9, i64 14
  %88 = icmp ne i32 %66, 0
  %89 = icmp ne i32 %67, 0
  %90 = and i1 %88, %89
  %91 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %92 = getelementptr inbounds i8, ptr %9, i64 12
  %93 = getelementptr inbounds i8, ptr %9, i64 14
  %94 = icmp ne i32 %66, 0
  %95 = icmp eq i32 %67, 0
  %96 = and i1 %94, %95
  %97 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %98 = getelementptr inbounds i8, ptr %9, i64 12
  %99 = getelementptr inbounds i8, ptr %9, i64 14
  %100 = icmp eq i32 %66, 0
  %101 = icmp eq i32 %67, 0
  %102 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %103 = getelementptr inbounds i8, ptr %9, i64 12
  %104 = getelementptr inbounds i8, ptr %9, i64 14
  %105 = icmp ne i32 %66, 0
  %106 = icmp ne i32 %67, 0
  %107 = and i1 %105, %106
  %108 = zext nneg i32 %69 to i64
  br label %109

109:                                              ; preds = %71, %576
  %110 = phi i64 [ 0, %71 ], [ %577, %576 ]
  br label %111

111:                                              ; preds = %109, %573
  %112 = phi i64 [ 0, %109 ], [ %574, %573 ]
  %113 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %72, i64 %110, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !60
  %115 = zext i8 %114 to i32
  %116 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %72, i64 %110, i64 %112
  %117 = load i8, ptr %116, align 1, !tbaa !60
  %118 = zext i8 %117 to i32
  %119 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %72, i64 %110, i64 %112
  %120 = load i32, ptr %119, align 4, !tbaa !74
  switch i32 %120, label %547 [
    i32 0, label %121
    i32 1, label %236
    i32 2, label %334
    i32 3, label %432
  ]

121:                                              ; preds = %111
  %122 = add nuw nsw i32 %115, 1
  %123 = load i64, ptr %102, align 4
  %124 = load i16, ptr %103, align 4
  %125 = load i16, ptr %104, align 2
  br i1 %105, label %126, label %146

126:                                              ; preds = %121
  %127 = ashr i64 %123, 48
  %128 = getelementptr inbounds ptr, ptr %23, i64 %127
  %129 = load ptr, ptr %128, align 8, !tbaa !62
  %130 = lshr i64 %123, 16
  %131 = trunc i64 %130 to i32
  %132 = ashr i32 %131, 16
  %133 = add nsw i32 %132, %118
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i16, ptr %129, i64 %134
  br label %136

136:                                              ; preds = %136, %126
  %137 = phi i32 [ 0, %126 ], [ %144, %136 ]
  %138 = phi ptr [ %135, %126 ], [ %140, %136 ]
  %139 = phi i32 [ 0, %126 ], [ %143, %136 ]
  %140 = getelementptr inbounds i16, ptr %138, i64 1
  %141 = load i16, ptr %138, align 2, !tbaa !75
  %142 = zext i16 %141 to i32
  %143 = add nuw nsw i32 %139, %142
  %144 = add nuw nsw i32 %137, 1
  %145 = icmp eq i32 %144, 4
  br i1 %145, label %146, label %136, !llvm.loop !76

146:                                              ; preds = %136, %121
  %147 = phi i32 [ 0, %121 ], [ %143, %136 ]
  br i1 %106, label %148, label %166

148:                                              ; preds = %146
  %149 = sext i16 %125 to i32
  %150 = add nsw i32 %122, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr ptr, ptr %83, i64 %151
  %153 = sext i16 %124 to i64
  br label %154

154:                                              ; preds = %154, %148
  %155 = phi i32 [ 0, %148 ], [ %164, %154 ]
  %156 = phi ptr [ %152, %148 ], [ %158, %154 ]
  %157 = phi i32 [ 0, %148 ], [ %163, %154 ]
  %158 = getelementptr inbounds ptr, ptr %156, i64 1
  %159 = load ptr, ptr %156, align 8, !tbaa !62
  %160 = getelementptr inbounds i16, ptr %159, i64 %153
  %161 = load i16, ptr %160, align 2, !tbaa !75
  %162 = zext i16 %161 to i32
  %163 = add nuw nsw i32 %157, %162
  %164 = add nuw nsw i32 %155, 1
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %166, label %154, !llvm.loop !77

166:                                              ; preds = %154, %146
  %167 = phi i32 [ 0, %146 ], [ %163, %154 ]
  br i1 %107, label %168, label %172

168:                                              ; preds = %166
  %169 = add i32 %147, 4
  %170 = add i32 %169, %167
  %171 = ashr i32 %170, 3
  br label %180

172:                                              ; preds = %166
  br i1 %105, label %173, label %176

173:                                              ; preds = %172
  %174 = add nsw i32 %147, 2
  %175 = ashr i32 %174, 2
  br label %180

176:                                              ; preds = %172
  br i1 %106, label %177, label %180

177:                                              ; preds = %176
  %178 = add nsw i32 %167, 2
  %179 = ashr i32 %178, 2
  br label %180

180:                                              ; preds = %168, %173, %176, %177
  %181 = phi i32 [ %171, %168 ], [ %175, %173 ], [ %179, %177 ], [ %74, %176 ]
  br i1 %105, label %182, label %202

182:                                              ; preds = %180
  %183 = ashr i64 %123, 48
  %184 = getelementptr inbounds ptr, ptr %25, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !62
  %186 = lshr i64 %123, 16
  %187 = trunc i64 %186 to i32
  %188 = ashr i32 %187, 16
  %189 = add nsw i32 %188, %118
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i16, ptr %185, i64 %190
  br label %192

192:                                              ; preds = %192, %182
  %193 = phi i32 [ 0, %182 ], [ %200, %192 ]
  %194 = phi ptr [ %191, %182 ], [ %196, %192 ]
  %195 = phi i32 [ 0, %182 ], [ %199, %192 ]
  %196 = getelementptr inbounds i16, ptr %194, i64 1
  %197 = load i16, ptr %194, align 2, !tbaa !75
  %198 = zext i16 %197 to i32
  %199 = add nuw nsw i32 %195, %198
  %200 = add nuw nsw i32 %193, 1
  %201 = icmp eq i32 %200, 4
  br i1 %201, label %202, label %192, !llvm.loop !76

202:                                              ; preds = %192, %180
  %203 = phi i32 [ 0, %180 ], [ %199, %192 ]
  br i1 %106, label %204, label %222

204:                                              ; preds = %202
  %205 = sext i16 %125 to i32
  %206 = add nsw i32 %122, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr ptr, ptr %84, i64 %207
  %209 = sext i16 %124 to i64
  br label %210

210:                                              ; preds = %210, %204
  %211 = phi i32 [ 0, %204 ], [ %220, %210 ]
  %212 = phi ptr [ %208, %204 ], [ %214, %210 ]
  %213 = phi i32 [ 0, %204 ], [ %219, %210 ]
  %214 = getelementptr inbounds ptr, ptr %212, i64 1
  %215 = load ptr, ptr %212, align 8, !tbaa !62
  %216 = getelementptr inbounds i16, ptr %215, i64 %209
  %217 = load i16, ptr %216, align 2, !tbaa !75
  %218 = zext i16 %217 to i32
  %219 = add nuw nsw i32 %213, %218
  %220 = add nuw nsw i32 %211, 1
  %221 = icmp eq i32 %220, 4
  br i1 %221, label %222, label %210, !llvm.loop !77

222:                                              ; preds = %210, %202
  %223 = phi i32 [ 0, %202 ], [ %219, %210 ]
  br i1 %107, label %224, label %228

224:                                              ; preds = %222
  %225 = add i32 %203, 4
  %226 = add i32 %225, %223
  %227 = ashr i32 %226, 3
  br label %547

228:                                              ; preds = %222
  br i1 %105, label %229, label %232

229:                                              ; preds = %228
  %230 = add nsw i32 %203, 2
  %231 = ashr i32 %230, 2
  br label %547

232:                                              ; preds = %228
  br i1 %106, label %233, label %547

233:                                              ; preds = %232
  %234 = add nsw i32 %223, 2
  %235 = ashr i32 %234, 2
  br label %547

236:                                              ; preds = %111
  %237 = add nuw nsw i32 %115, 1
  %238 = load i16, ptr %98, align 4
  %239 = load i16, ptr %99, align 2
  br i1 %100, label %264, label %240

240:                                              ; preds = %236
  %241 = load i64, ptr %97, align 4
  %242 = ashr i64 %241, 48
  %243 = getelementptr inbounds ptr, ptr %23, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !62
  %245 = lshr i64 %241, 16
  %246 = trunc i64 %245 to i32
  %247 = ashr i32 %246, 16
  %248 = add nsw i32 %247, %118
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i16, ptr %244, i64 %249
  br label %251

251:                                              ; preds = %240, %251
  %252 = phi i32 [ 0, %240 ], [ %259, %251 ]
  %253 = phi ptr [ %250, %240 ], [ %255, %251 ]
  %254 = phi i32 [ 0, %240 ], [ %258, %251 ]
  %255 = getelementptr inbounds i16, ptr %253, i64 1
  %256 = load i16, ptr %253, align 2, !tbaa !75
  %257 = zext i16 %256 to i32
  %258 = add nuw nsw i32 %254, %257
  %259 = add nuw nsw i32 %252, 1
  %260 = icmp eq i32 %259, 4
  br i1 %260, label %261, label %251, !llvm.loop !78

261:                                              ; preds = %251
  %262 = add nuw nsw i32 %258, 2
  %263 = lshr i32 %262, 2
  br label %286

264:                                              ; preds = %236
  br i1 %101, label %286, label %265

265:                                              ; preds = %264
  %266 = sext i16 %239 to i32
  %267 = add nsw i32 %237, %266
  %268 = sext i32 %267 to i64
  %269 = getelementptr ptr, ptr %81, i64 %268
  %270 = sext i16 %238 to i64
  br label %271

271:                                              ; preds = %265, %271
  %272 = phi i32 [ 0, %265 ], [ %281, %271 ]
  %273 = phi ptr [ %269, %265 ], [ %275, %271 ]
  %274 = phi i32 [ 0, %265 ], [ %280, %271 ]
  %275 = getelementptr inbounds ptr, ptr %273, i64 1
  %276 = load ptr, ptr %273, align 8, !tbaa !62
  %277 = getelementptr inbounds i16, ptr %276, i64 %270
  %278 = load i16, ptr %277, align 2, !tbaa !75
  %279 = zext i16 %278 to i32
  %280 = add nuw nsw i32 %274, %279
  %281 = add nuw nsw i32 %272, 1
  %282 = icmp eq i32 %281, 4
  br i1 %282, label %283, label %271, !llvm.loop !79

283:                                              ; preds = %271
  %284 = add nuw nsw i32 %280, 2
  %285 = lshr i32 %284, 2
  br label %286

286:                                              ; preds = %283, %264, %261
  %287 = phi i32 [ %74, %264 ], [ %285, %283 ], [ %263, %261 ]
  br i1 %100, label %312, label %288

288:                                              ; preds = %286
  %289 = load i64, ptr %97, align 4
  %290 = ashr i64 %289, 48
  %291 = getelementptr inbounds ptr, ptr %25, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !62
  %293 = lshr i64 %289, 16
  %294 = trunc i64 %293 to i32
  %295 = ashr i32 %294, 16
  %296 = add nsw i32 %295, %118
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i16, ptr %292, i64 %297
  br label %299

299:                                              ; preds = %288, %299
  %300 = phi i32 [ 0, %288 ], [ %307, %299 ]
  %301 = phi ptr [ %298, %288 ], [ %303, %299 ]
  %302 = phi i32 [ 0, %288 ], [ %306, %299 ]
  %303 = getelementptr inbounds i16, ptr %301, i64 1
  %304 = load i16, ptr %301, align 2, !tbaa !75
  %305 = zext i16 %304 to i32
  %306 = add nuw nsw i32 %302, %305
  %307 = add nuw nsw i32 %300, 1
  %308 = icmp eq i32 %307, 4
  br i1 %308, label %309, label %299, !llvm.loop !78

309:                                              ; preds = %299
  %310 = add nuw nsw i32 %306, 2
  %311 = lshr i32 %310, 2
  br label %547

312:                                              ; preds = %286
  br i1 %101, label %547, label %313

313:                                              ; preds = %312
  %314 = sext i16 %239 to i32
  %315 = add nsw i32 %237, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr ptr, ptr %82, i64 %316
  %318 = sext i16 %238 to i64
  br label %319

319:                                              ; preds = %313, %319
  %320 = phi i32 [ 0, %313 ], [ %329, %319 ]
  %321 = phi ptr [ %317, %313 ], [ %323, %319 ]
  %322 = phi i32 [ 0, %313 ], [ %328, %319 ]
  %323 = getelementptr inbounds ptr, ptr %321, i64 1
  %324 = load ptr, ptr %321, align 8, !tbaa !62
  %325 = getelementptr inbounds i16, ptr %324, i64 %318
  %326 = load i16, ptr %325, align 2, !tbaa !75
  %327 = zext i16 %326 to i32
  %328 = add nuw nsw i32 %322, %327
  %329 = add nuw nsw i32 %320, 1
  %330 = icmp eq i32 %329, 4
  br i1 %330, label %331, label %319, !llvm.loop !79

331:                                              ; preds = %319
  %332 = add nuw nsw i32 %328, 2
  %333 = lshr i32 %332, 2
  br label %547

334:                                              ; preds = %111
  %335 = add nuw nsw i32 %115, 1
  %336 = load i16, ptr %92, align 4
  %337 = load i16, ptr %93, align 2
  br i1 %96, label %338, label %362

338:                                              ; preds = %334
  %339 = load i64, ptr %91, align 4
  %340 = ashr i64 %339, 48
  %341 = getelementptr inbounds ptr, ptr %23, i64 %340
  %342 = load ptr, ptr %341, align 8, !tbaa !62
  %343 = lshr i64 %339, 16
  %344 = trunc i64 %343 to i32
  %345 = ashr i32 %344, 16
  %346 = add nsw i32 %345, %118
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i16, ptr %342, i64 %347
  br label %349

349:                                              ; preds = %338, %349
  %350 = phi i32 [ 0, %338 ], [ %357, %349 ]
  %351 = phi ptr [ %348, %338 ], [ %353, %349 ]
  %352 = phi i32 [ 0, %338 ], [ %356, %349 ]
  %353 = getelementptr inbounds i16, ptr %351, i64 1
  %354 = load i16, ptr %351, align 2, !tbaa !75
  %355 = zext i16 %354 to i32
  %356 = add nuw nsw i32 %352, %355
  %357 = add nuw nsw i32 %350, 1
  %358 = icmp eq i32 %357, 4
  br i1 %358, label %359, label %349, !llvm.loop !78

359:                                              ; preds = %349
  %360 = add nuw nsw i32 %356, 2
  %361 = lshr i32 %360, 2
  br label %384

362:                                              ; preds = %334
  br i1 %95, label %384, label %363

363:                                              ; preds = %362
  %364 = sext i16 %337 to i32
  %365 = add nsw i32 %335, %364
  %366 = sext i32 %365 to i64
  %367 = getelementptr ptr, ptr %79, i64 %366
  %368 = sext i16 %336 to i64
  br label %369

369:                                              ; preds = %363, %369
  %370 = phi i32 [ 0, %363 ], [ %379, %369 ]
  %371 = phi ptr [ %367, %363 ], [ %373, %369 ]
  %372 = phi i32 [ 0, %363 ], [ %378, %369 ]
  %373 = getelementptr inbounds ptr, ptr %371, i64 1
  %374 = load ptr, ptr %371, align 8, !tbaa !62
  %375 = getelementptr inbounds i16, ptr %374, i64 %368
  %376 = load i16, ptr %375, align 2, !tbaa !75
  %377 = zext i16 %376 to i32
  %378 = add nuw nsw i32 %372, %377
  %379 = add nuw nsw i32 %370, 1
  %380 = icmp eq i32 %379, 4
  br i1 %380, label %381, label %369, !llvm.loop !79

381:                                              ; preds = %369
  %382 = add nuw nsw i32 %378, 2
  %383 = lshr i32 %382, 2
  br label %384

384:                                              ; preds = %381, %362, %359
  %385 = phi i32 [ %361, %359 ], [ %74, %362 ], [ %383, %381 ]
  br i1 %96, label %386, label %410

386:                                              ; preds = %384
  %387 = load i64, ptr %91, align 4
  %388 = ashr i64 %387, 48
  %389 = getelementptr inbounds ptr, ptr %25, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !62
  %391 = lshr i64 %387, 16
  %392 = trunc i64 %391 to i32
  %393 = ashr i32 %392, 16
  %394 = add nsw i32 %393, %118
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i16, ptr %390, i64 %395
  br label %397

397:                                              ; preds = %386, %397
  %398 = phi i32 [ 0, %386 ], [ %405, %397 ]
  %399 = phi ptr [ %396, %386 ], [ %401, %397 ]
  %400 = phi i32 [ 0, %386 ], [ %404, %397 ]
  %401 = getelementptr inbounds i16, ptr %399, i64 1
  %402 = load i16, ptr %399, align 2, !tbaa !75
  %403 = zext i16 %402 to i32
  %404 = add nuw nsw i32 %400, %403
  %405 = add nuw nsw i32 %398, 1
  %406 = icmp eq i32 %405, 4
  br i1 %406, label %407, label %397, !llvm.loop !78

407:                                              ; preds = %397
  %408 = add nuw nsw i32 %404, 2
  %409 = lshr i32 %408, 2
  br label %547

410:                                              ; preds = %384
  br i1 %95, label %547, label %411

411:                                              ; preds = %410
  %412 = sext i16 %337 to i32
  %413 = add nsw i32 %335, %412
  %414 = sext i32 %413 to i64
  %415 = getelementptr ptr, ptr %80, i64 %414
  %416 = sext i16 %336 to i64
  br label %417

417:                                              ; preds = %411, %417
  %418 = phi i32 [ 0, %411 ], [ %427, %417 ]
  %419 = phi ptr [ %415, %411 ], [ %421, %417 ]
  %420 = phi i32 [ 0, %411 ], [ %426, %417 ]
  %421 = getelementptr inbounds ptr, ptr %419, i64 1
  %422 = load ptr, ptr %419, align 8, !tbaa !62
  %423 = getelementptr inbounds i16, ptr %422, i64 %416
  %424 = load i16, ptr %423, align 2, !tbaa !75
  %425 = zext i16 %424 to i32
  %426 = add nuw nsw i32 %420, %425
  %427 = add nuw nsw i32 %418, 1
  %428 = icmp eq i32 %427, 4
  br i1 %428, label %429, label %417, !llvm.loop !79

429:                                              ; preds = %417
  %430 = add nuw nsw i32 %426, 2
  %431 = lshr i32 %430, 2
  br label %547

432:                                              ; preds = %111
  %433 = add nuw nsw i32 %115, 1
  %434 = load i64, ptr %85, align 4
  %435 = load i16, ptr %86, align 4
  %436 = load i16, ptr %87, align 2
  br i1 %88, label %437, label %457

437:                                              ; preds = %432
  %438 = ashr i64 %434, 48
  %439 = getelementptr inbounds ptr, ptr %23, i64 %438
  %440 = load ptr, ptr %439, align 8, !tbaa !62
  %441 = lshr i64 %434, 16
  %442 = trunc i64 %441 to i32
  %443 = ashr i32 %442, 16
  %444 = add nsw i32 %443, %118
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i16, ptr %440, i64 %445
  br label %447

447:                                              ; preds = %447, %437
  %448 = phi i32 [ 0, %437 ], [ %455, %447 ]
  %449 = phi ptr [ %446, %437 ], [ %451, %447 ]
  %450 = phi i32 [ 0, %437 ], [ %454, %447 ]
  %451 = getelementptr inbounds i16, ptr %449, i64 1
  %452 = load i16, ptr %449, align 2, !tbaa !75
  %453 = zext i16 %452 to i32
  %454 = add nuw nsw i32 %450, %453
  %455 = add nuw nsw i32 %448, 1
  %456 = icmp eq i32 %455, 4
  br i1 %456, label %457, label %447, !llvm.loop !76

457:                                              ; preds = %447, %432
  %458 = phi i32 [ 0, %432 ], [ %454, %447 ]
  br i1 %89, label %459, label %477

459:                                              ; preds = %457
  %460 = sext i16 %436 to i32
  %461 = add nsw i32 %433, %460
  %462 = sext i32 %461 to i64
  %463 = getelementptr ptr, ptr %77, i64 %462
  %464 = sext i16 %435 to i64
  br label %465

465:                                              ; preds = %465, %459
  %466 = phi i32 [ 0, %459 ], [ %475, %465 ]
  %467 = phi ptr [ %463, %459 ], [ %469, %465 ]
  %468 = phi i32 [ 0, %459 ], [ %474, %465 ]
  %469 = getelementptr inbounds ptr, ptr %467, i64 1
  %470 = load ptr, ptr %467, align 8, !tbaa !62
  %471 = getelementptr inbounds i16, ptr %470, i64 %464
  %472 = load i16, ptr %471, align 2, !tbaa !75
  %473 = zext i16 %472 to i32
  %474 = add nuw nsw i32 %468, %473
  %475 = add nuw nsw i32 %466, 1
  %476 = icmp eq i32 %475, 4
  br i1 %476, label %477, label %465, !llvm.loop !77

477:                                              ; preds = %465, %457
  %478 = phi i32 [ 0, %457 ], [ %474, %465 ]
  br i1 %90, label %479, label %483

479:                                              ; preds = %477
  %480 = add i32 %458, 4
  %481 = add i32 %480, %478
  %482 = ashr i32 %481, 3
  br label %491

483:                                              ; preds = %477
  br i1 %88, label %484, label %487

484:                                              ; preds = %483
  %485 = add nsw i32 %458, 2
  %486 = ashr i32 %485, 2
  br label %491

487:                                              ; preds = %483
  br i1 %89, label %488, label %491

488:                                              ; preds = %487
  %489 = add nsw i32 %478, 2
  %490 = ashr i32 %489, 2
  br label %491

491:                                              ; preds = %479, %484, %487, %488
  %492 = phi i32 [ %482, %479 ], [ %486, %484 ], [ %490, %488 ], [ %74, %487 ]
  br i1 %88, label %493, label %513

493:                                              ; preds = %491
  %494 = ashr i64 %434, 48
  %495 = getelementptr inbounds ptr, ptr %25, i64 %494
  %496 = load ptr, ptr %495, align 8, !tbaa !62
  %497 = lshr i64 %434, 16
  %498 = trunc i64 %497 to i32
  %499 = ashr i32 %498, 16
  %500 = add nsw i32 %499, %118
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i16, ptr %496, i64 %501
  br label %503

503:                                              ; preds = %503, %493
  %504 = phi i32 [ 0, %493 ], [ %511, %503 ]
  %505 = phi ptr [ %502, %493 ], [ %507, %503 ]
  %506 = phi i32 [ 0, %493 ], [ %510, %503 ]
  %507 = getelementptr inbounds i16, ptr %505, i64 1
  %508 = load i16, ptr %505, align 2, !tbaa !75
  %509 = zext i16 %508 to i32
  %510 = add nuw nsw i32 %506, %509
  %511 = add nuw nsw i32 %504, 1
  %512 = icmp eq i32 %511, 4
  br i1 %512, label %513, label %503, !llvm.loop !76

513:                                              ; preds = %503, %491
  %514 = phi i32 [ 0, %491 ], [ %510, %503 ]
  br i1 %89, label %515, label %533

515:                                              ; preds = %513
  %516 = sext i16 %436 to i32
  %517 = add nsw i32 %433, %516
  %518 = sext i32 %517 to i64
  %519 = getelementptr ptr, ptr %78, i64 %518
  %520 = sext i16 %435 to i64
  br label %521

521:                                              ; preds = %521, %515
  %522 = phi i32 [ 0, %515 ], [ %531, %521 ]
  %523 = phi ptr [ %519, %515 ], [ %525, %521 ]
  %524 = phi i32 [ 0, %515 ], [ %530, %521 ]
  %525 = getelementptr inbounds ptr, ptr %523, i64 1
  %526 = load ptr, ptr %523, align 8, !tbaa !62
  %527 = getelementptr inbounds i16, ptr %526, i64 %520
  %528 = load i16, ptr %527, align 2, !tbaa !75
  %529 = zext i16 %528 to i32
  %530 = add nuw nsw i32 %524, %529
  %531 = add nuw nsw i32 %522, 1
  %532 = icmp eq i32 %531, 4
  br i1 %532, label %533, label %521, !llvm.loop !77

533:                                              ; preds = %521, %513
  %534 = phi i32 [ 0, %513 ], [ %530, %521 ]
  br i1 %90, label %535, label %539

535:                                              ; preds = %533
  %536 = add i32 %514, 4
  %537 = add i32 %536, %534
  %538 = ashr i32 %537, 3
  br label %547

539:                                              ; preds = %533
  br i1 %88, label %540, label %543

540:                                              ; preds = %539
  %541 = add nsw i32 %514, 2
  %542 = ashr i32 %541, 2
  br label %547

543:                                              ; preds = %539
  br i1 %89, label %544, label %547

544:                                              ; preds = %543
  %545 = add nsw i32 %534, 2
  %546 = ashr i32 %545, 2
  br label %547

547:                                              ; preds = %544, %543, %540, %535, %233, %232, %229, %224, %407, %410, %429, %309, %312, %331, %111
  %548 = phi i32 [ %74, %111 ], [ %385, %407 ], [ %385, %410 ], [ %385, %429 ], [ %287, %312 ], [ %287, %331 ], [ %287, %309 ], [ %181, %224 ], [ %181, %229 ], [ %181, %232 ], [ %181, %233 ], [ %492, %535 ], [ %492, %540 ], [ %492, %543 ], [ %492, %544 ]
  %549 = phi i32 [ %76, %111 ], [ %409, %407 ], [ %76, %410 ], [ %431, %429 ], [ %76, %312 ], [ %333, %331 ], [ %311, %309 ], [ %227, %224 ], [ %231, %229 ], [ %76, %232 ], [ %235, %233 ], [ %538, %535 ], [ %542, %540 ], [ %76, %543 ], [ %546, %544 ]
  %550 = add nuw nsw i32 %115, 4
  %551 = add nuw nsw i32 %118, 4
  %552 = trunc i32 %548 to i16
  %553 = trunc i32 %549 to i16
  %554 = zext i8 %117 to i64
  %555 = zext i8 %114 to i64
  %556 = zext nneg i32 %550 to i64
  %557 = zext nneg i32 %551 to i64
  br label %558

558:                                              ; preds = %547, %570
  %559 = phi i64 [ %555, %547 ], [ %571, %570 ]
  %560 = getelementptr inbounds ptr, ptr %29, i64 %559
  %561 = load ptr, ptr %560, align 8, !tbaa !62
  %562 = getelementptr inbounds ptr, ptr %31, i64 %559
  %563 = load ptr, ptr %562, align 8, !tbaa !62
  br label %564

564:                                              ; preds = %558, %564
  %565 = phi i64 [ %554, %558 ], [ %568, %564 ]
  %566 = getelementptr inbounds i16, ptr %561, i64 %565
  store i16 %552, ptr %566, align 2, !tbaa !75
  %567 = getelementptr inbounds i16, ptr %563, i64 %565
  store i16 %553, ptr %567, align 2, !tbaa !75
  %568 = add nuw nsw i64 %565, 1
  %569 = icmp eq i64 %568, %557
  br i1 %569, label %570, label %564, !llvm.loop !80

570:                                              ; preds = %564
  %571 = add nuw nsw i64 %559, 1
  %572 = icmp eq i64 %571, %556
  br i1 %572, label %573, label %558, !llvm.loop !81

573:                                              ; preds = %570
  %574 = add nuw nsw i64 %112, 1
  %575 = icmp eq i64 %574, 4
  br i1 %575, label %576, label %111, !llvm.loop !82

576:                                              ; preds = %573
  %577 = add nuw nsw i64 %110, 1
  %578 = icmp eq i64 %577, %108
  br i1 %578, label %579, label %109, !llvm.loop !83

579:                                              ; preds = %576, %65
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #5
  br label %974

580:                                              ; preds = %1
  %581 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %582 = load ptr, ptr %581, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  %583 = getelementptr inbounds %struct.video_par, ptr %582, i64 0, i32 81, i64 1
  call void @getNonAffNeighbour(ptr noundef %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %583, ptr noundef nonnull %6) #5
  %584 = getelementptr inbounds %struct.video_par, ptr %582, i64 0, i32 1
  %585 = load ptr, ptr %584, align 8, !tbaa !53
  %586 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %585, i64 0, i32 30
  %587 = load i32, ptr %586, align 4, !tbaa !54
  %588 = icmp eq i32 %587, 0
  %589 = load i32, ptr %6, align 4, !tbaa !56
  br i1 %588, label %602, label %590

590:                                              ; preds = %580
  %591 = icmp eq i32 %589, 0
  br i1 %591, label %602, label %592

592:                                              ; preds = %590
  %593 = load ptr, ptr %0, align 8, !tbaa !34
  %594 = getelementptr inbounds %struct.slice, ptr %593, i64 0, i32 128
  %595 = load ptr, ptr %594, align 8, !tbaa !58
  %596 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %597 = load i32, ptr %596, align 4, !tbaa !59
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i8, ptr %595, i64 %598
  %600 = load i8, ptr %599, align 1, !tbaa !60
  %601 = sext i8 %600 to i32
  br label %602

602:                                              ; preds = %580, %592, %590
  %603 = phi i32 [ %601, %592 ], [ 0, %590 ], [ %589, %580 ]
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %605, label %606

605:                                              ; preds = %602
  call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #5
  br label %662

606:                                              ; preds = %602
  %607 = load ptr, ptr %0, align 8, !tbaa !34
  %608 = getelementptr inbounds %struct.video_par, ptr %582, i64 0, i32 77
  %609 = load i32, ptr %608, align 4, !tbaa !46
  %610 = getelementptr inbounds %struct.video_par, ptr %582, i64 0, i32 78
  %611 = load i32, ptr %610, align 8, !tbaa !52
  %612 = getelementptr inbounds %struct.slice, ptr %607, i64 0, i32 125
  %613 = load ptr, ptr %612, align 8, !tbaa !43
  %614 = getelementptr inbounds %struct.slice, ptr %607, i64 0, i32 77
  %615 = load ptr, ptr %614, align 8, !tbaa !61
  %616 = getelementptr inbounds ptr, ptr %615, i64 1
  %617 = load ptr, ptr %616, align 8, !tbaa !62
  %618 = getelementptr inbounds ptr, ptr %615, i64 2
  %619 = load ptr, ptr %618, align 8, !tbaa !62
  %620 = getelementptr inbounds %struct.storable_picture, ptr %613, i64 0, i32 33
  %621 = load ptr, ptr %620, align 8, !tbaa !63
  %622 = load ptr, ptr %621, align 8, !tbaa !62
  %623 = getelementptr inbounds ptr, ptr %621, i64 1
  %624 = load ptr, ptr %623, align 8, !tbaa !62
  %625 = icmp sgt i32 %611, 0
  br i1 %625, label %626, label %662

626:                                              ; preds = %606
  %627 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %628 = load i16, ptr %627, align 4, !tbaa !67
  %629 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %630 = load i16, ptr %629, align 2, !tbaa !66
  %631 = sext i16 %628 to i64
  %632 = icmp sgt i32 %609, 0
  %633 = sext i16 %630 to i64
  %634 = zext nneg i32 %611 to i64
  %635 = zext nneg i32 %609 to i64
  br label %636

636:                                              ; preds = %626, %659
  %637 = phi i64 [ %633, %626 ], [ %643, %659 ]
  %638 = phi i64 [ 0, %626 ], [ %660, %659 ]
  %639 = getelementptr inbounds ptr, ptr %622, i64 %637
  %640 = load ptr, ptr %639, align 8, !tbaa !62
  %641 = getelementptr inbounds i16, ptr %640, i64 %631
  %642 = load i16, ptr %641, align 2, !tbaa !75
  %643 = add nsw i64 %637, 1
  %644 = getelementptr inbounds ptr, ptr %624, i64 %637
  %645 = load ptr, ptr %644, align 8, !tbaa !62
  %646 = getelementptr inbounds i16, ptr %645, i64 %631
  %647 = load i16, ptr %646, align 2, !tbaa !75
  br i1 %632, label %648, label %659

648:                                              ; preds = %636
  %649 = getelementptr inbounds ptr, ptr %617, i64 %638
  %650 = load ptr, ptr %649, align 8, !tbaa !62
  %651 = getelementptr inbounds ptr, ptr %619, i64 %638
  %652 = load ptr, ptr %651, align 8, !tbaa !62
  br label %653

653:                                              ; preds = %648, %653
  %654 = phi i64 [ 0, %648 ], [ %657, %653 ]
  %655 = getelementptr inbounds i16, ptr %650, i64 %654
  store i16 %642, ptr %655, align 2, !tbaa !75
  %656 = getelementptr inbounds i16, ptr %652, i64 %654
  store i16 %647, ptr %656, align 2, !tbaa !75
  %657 = add nuw nsw i64 %654, 1
  %658 = icmp eq i64 %657, %635
  br i1 %658, label %659, label %653, !llvm.loop !84

659:                                              ; preds = %653, %636
  %660 = add nuw nsw i64 %638, 1
  %661 = icmp eq i64 %660, %634
  br i1 %661, label %662, label %636, !llvm.loop !85

662:                                              ; preds = %659, %606, %605
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  br label %974

663:                                              ; preds = %1
  %664 = load ptr, ptr %0, align 8, !tbaa !34
  %665 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %666 = load ptr, ptr %665, align 8, !tbaa !42
  %667 = getelementptr inbounds %struct.slice, ptr %664, i64 0, i32 125
  %668 = load ptr, ptr %667, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %669 = getelementptr inbounds %struct.video_par, ptr %666, i64 0, i32 77
  %670 = load i32, ptr %669, align 4, !tbaa !46
  %671 = getelementptr inbounds %struct.video_par, ptr %666, i64 0, i32 78
  %672 = load i32, ptr %671, align 8, !tbaa !52
  %673 = getelementptr inbounds %struct.video_par, ptr %666, i64 0, i32 81, i64 1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %673, ptr noundef nonnull %5) #5
  %674 = getelementptr inbounds %struct.video_par, ptr %666, i64 0, i32 1
  %675 = load ptr, ptr %674, align 8, !tbaa !53
  %676 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %675, i64 0, i32 30
  %677 = load i32, ptr %676, align 4, !tbaa !54
  %678 = icmp eq i32 %677, 0
  %679 = load i32, ptr %5, align 4, !tbaa !56
  br i1 %678, label %691, label %680

680:                                              ; preds = %663
  %681 = icmp eq i32 %679, 0
  br i1 %681, label %691, label %682

682:                                              ; preds = %680
  %683 = getelementptr inbounds %struct.slice, ptr %664, i64 0, i32 128
  %684 = load ptr, ptr %683, align 8, !tbaa !58
  %685 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %686 = load i32, ptr %685, align 4, !tbaa !59
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i8, ptr %684, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !60
  %690 = sext i8 %689 to i32
  br label %691

691:                                              ; preds = %663, %682, %680
  %692 = phi i32 [ %690, %682 ], [ 0, %680 ], [ %679, %663 ]
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %695

694:                                              ; preds = %691
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #5
  br label %732

695:                                              ; preds = %691
  %696 = getelementptr inbounds %struct.slice, ptr %664, i64 0, i32 77
  %697 = load ptr, ptr %696, align 8, !tbaa !61
  %698 = getelementptr inbounds ptr, ptr %697, i64 1
  %699 = load ptr, ptr %698, align 8, !tbaa !62
  %700 = getelementptr inbounds ptr, ptr %697, i64 2
  %701 = load ptr, ptr %700, align 8, !tbaa !62
  %702 = getelementptr inbounds %struct.storable_picture, ptr %668, i64 0, i32 33
  %703 = load ptr, ptr %702, align 8, !tbaa !63
  %704 = load ptr, ptr %703, align 8, !tbaa !62
  %705 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %706 = load i16, ptr %705, align 2, !tbaa !66
  %707 = sext i16 %706 to i64
  %708 = getelementptr inbounds ptr, ptr %704, i64 %707
  %709 = load ptr, ptr %708, align 8, !tbaa !62
  %710 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %711 = load i16, ptr %710, align 4, !tbaa !67
  %712 = sext i16 %711 to i64
  %713 = getelementptr inbounds i16, ptr %709, i64 %712
  %714 = getelementptr inbounds ptr, ptr %703, i64 1
  %715 = load ptr, ptr %714, align 8, !tbaa !62
  %716 = getelementptr inbounds ptr, ptr %715, i64 %707
  %717 = load ptr, ptr %716, align 8, !tbaa !62
  %718 = getelementptr inbounds i16, ptr %717, i64 %712
  %719 = icmp sgt i32 %672, 0
  br i1 %719, label %720, label %732

720:                                              ; preds = %695
  %721 = sext i32 %670 to i64
  %722 = shl nsw i64 %721, 1
  %723 = zext nneg i32 %672 to i64
  br label %724

724:                                              ; preds = %720, %724
  %725 = phi i64 [ 0, %720 ], [ %730, %724 ]
  %726 = getelementptr inbounds ptr, ptr %699, i64 %725
  %727 = load ptr, ptr %726, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %727, ptr align 2 %713, i64 %722, i1 false)
  %728 = getelementptr inbounds ptr, ptr %701, i64 %725
  %729 = load ptr, ptr %728, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %729, ptr align 2 %718, i64 %722, i1 false)
  %730 = add nuw nsw i64 %725, 1
  %731 = icmp eq i64 %730, %723
  br i1 %731, label %732, label %724, !llvm.loop !86

732:                                              ; preds = %724, %695, %694
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  br label %974

733:                                              ; preds = %1
  %734 = load ptr, ptr %0, align 8, !tbaa !34
  %735 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %736 = load ptr, ptr %735, align 8, !tbaa !42
  %737 = getelementptr inbounds %struct.slice, ptr %734, i64 0, i32 125
  %738 = load ptr, ptr %737, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #5
  %739 = getelementptr inbounds %struct.video_par, ptr %736, i64 0, i32 81, i64 1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %739, ptr noundef nonnull %3) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %739, ptr noundef nonnull %4) #5
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %739, ptr noundef nonnull %2) #5
  %740 = getelementptr inbounds %struct.video_par, ptr %736, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !53
  %742 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %741, i64 0, i32 30
  %743 = load i32, ptr %742, align 4, !tbaa !54
  %744 = icmp eq i32 %743, 0
  %745 = load i32, ptr %2, align 4, !tbaa !56
  br i1 %744, label %746, label %749

746:                                              ; preds = %733
  %747 = load i32, ptr %4, align 4, !tbaa !56
  %748 = load i32, ptr %3, align 4, !tbaa !56
  br label %786

749:                                              ; preds = %733
  %750 = icmp eq i32 %745, 0
  br i1 %750, label %760, label %751

751:                                              ; preds = %749
  %752 = getelementptr inbounds %struct.slice, ptr %734, i64 0, i32 128
  %753 = load ptr, ptr %752, align 8, !tbaa !58
  %754 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %755 = load i32, ptr %754, align 4, !tbaa !59
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i8, ptr %753, i64 %756
  %758 = load i8, ptr %757, align 1, !tbaa !60
  %759 = sext i8 %758 to i32
  br label %760

760:                                              ; preds = %751, %749
  %761 = phi i32 [ %759, %751 ], [ 0, %749 ]
  %762 = load i32, ptr %4, align 4, !tbaa !56
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %773, label %764

764:                                              ; preds = %760
  %765 = getelementptr inbounds %struct.slice, ptr %734, i64 0, i32 128
  %766 = load ptr, ptr %765, align 8, !tbaa !58
  %767 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %768 = load i32, ptr %767, align 4, !tbaa !59
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds i8, ptr %766, i64 %769
  %771 = load i8, ptr %770, align 1, !tbaa !60
  %772 = sext i8 %771 to i32
  br label %773

773:                                              ; preds = %764, %760
  %774 = phi i32 [ %772, %764 ], [ 0, %760 ]
  %775 = load i32, ptr %3, align 4, !tbaa !56
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %786, label %777

777:                                              ; preds = %773
  %778 = getelementptr inbounds %struct.slice, ptr %734, i64 0, i32 128
  %779 = load ptr, ptr %778, align 8, !tbaa !58
  %780 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %781 = load i32, ptr %780, align 4, !tbaa !59
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds i8, ptr %779, i64 %782
  %784 = load i8, ptr %783, align 1, !tbaa !60
  %785 = sext i8 %784 to i32
  br label %786

786:                                              ; preds = %777, %773, %746
  %787 = phi i32 [ %748, %746 ], [ %785, %777 ], [ 0, %773 ]
  %788 = phi i32 [ %747, %746 ], [ %774, %777 ], [ %774, %773 ]
  %789 = phi i32 [ %745, %746 ], [ %761, %777 ], [ %761, %773 ]
  %790 = icmp ne i32 %787, 0
  %791 = icmp ne i32 %788, 0
  %792 = select i1 %790, i1 %791, i1 false
  %793 = icmp ne i32 %789, 0
  %794 = select i1 %792, i1 %793, i1 false
  br i1 %794, label %796, label %795

795:                                              ; preds = %786
  call void @error(ptr noundef nonnull @.str.3, i32 noundef -1) #5
  br label %972

796:                                              ; preds = %786
  %797 = getelementptr inbounds %struct.video_par, ptr %736, i64 0, i32 77
  %798 = load i32, ptr %797, align 4, !tbaa !46
  %799 = getelementptr inbounds %struct.video_par, ptr %736, i64 0, i32 78
  %800 = load i32, ptr %799, align 8, !tbaa !52
  %801 = ashr i32 %800, 1
  %802 = ashr i32 %798, 1
  %803 = getelementptr inbounds %struct.storable_picture, ptr %738, i64 0, i32 33
  %804 = load ptr, ptr %803, align 8, !tbaa !63
  %805 = getelementptr inbounds %struct.slice, ptr %734, i64 0, i32 77
  %806 = load ptr, ptr %805, align 8, !tbaa !61
  %807 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 5
  %808 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 4
  %809 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %810 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %811 = sext i32 %798 to i64
  %812 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %813 = add nsw i32 %802, -1
  %814 = icmp sgt i32 %802, 1
  %815 = icmp sgt i32 %801, 1
  %816 = icmp eq i32 %798, 8
  %817 = select i1 %816, i32 17, i32 5
  %818 = shl nsw i32 %798, 1
  %819 = select i1 %816, i32 5, i32 6
  %820 = icmp eq i32 %800, 8
  %821 = select i1 %820, i32 17, i32 5
  %822 = shl nsw i32 %800, 1
  %823 = select i1 %820, i32 5, i32 6
  %824 = icmp sgt i32 %800, 0
  %825 = add nsw i32 %802, -2
  %826 = icmp sgt i32 %798, 0
  %827 = sext i32 %802 to i64
  %828 = sext i32 %825 to i64
  %829 = add nsw i32 %801, -1
  %830 = zext i32 %813 to i64
  %831 = add nsw i32 %801, -2
  %832 = zext nneg i32 %800 to i64
  %833 = zext nneg i32 %798 to i64
  br label %836

834:                                              ; preds = %969, %926
  %835 = icmp eq i64 %837, 0
  br i1 %835, label %836, label %972, !llvm.loop !87

836:                                              ; preds = %796, %834
  %837 = phi i64 [ 0, %796 ], [ %840, %834 ]
  %838 = getelementptr inbounds ptr, ptr %804, i64 %837
  %839 = load ptr, ptr %838, align 8, !tbaa !62
  %840 = add nuw nsw i64 %837, 1
  %841 = getelementptr inbounds ptr, ptr %806, i64 %840
  %842 = load ptr, ptr %841, align 8, !tbaa !62
  %843 = getelementptr inbounds %struct.video_par, ptr %736, i64 0, i32 70, i64 %840
  %844 = load i32, ptr %843, align 4, !tbaa !74
  %845 = load i16, ptr %807, align 2, !tbaa !66
  %846 = sext i16 %845 to i64
  %847 = getelementptr inbounds ptr, ptr %839, i64 %846
  %848 = load ptr, ptr %847, align 8, !tbaa !62
  %849 = load i16, ptr %808, align 4, !tbaa !67
  %850 = sext i16 %849 to i64
  %851 = getelementptr inbounds i16, ptr %848, i64 %850
  %852 = load i16, ptr %809, align 4, !tbaa !67
  %853 = load i16, ptr %810, align 2, !tbaa !66
  %854 = sext i16 %853 to i32
  %855 = add nsw i32 %801, %854
  %856 = sext i32 %855 to i64
  %857 = getelementptr ptr, ptr %839, i64 %856
  %858 = getelementptr ptr, ptr %857, i64 -2
  %859 = getelementptr i16, ptr %851, i64 %811
  %860 = getelementptr i16, ptr %859, i64 -1
  %861 = load i16, ptr %860, align 2, !tbaa !75
  %862 = zext i16 %861 to i32
  %863 = load i16, ptr %812, align 2, !tbaa !66
  %864 = sext i16 %863 to i64
  %865 = getelementptr inbounds ptr, ptr %839, i64 %864
  %866 = load ptr, ptr %865, align 8, !tbaa !62
  %867 = sext i16 %852 to i64
  %868 = getelementptr inbounds i16, ptr %866, i64 %867
  %869 = load i16, ptr %868, align 2, !tbaa !75
  %870 = zext i16 %869 to i32
  %871 = sub nsw i32 %862, %870
  %872 = mul nsw i32 %871, %802
  br i1 %814, label %873, label %891

873:                                              ; preds = %836
  %874 = getelementptr i16, ptr %851, i64 %827
  br label %875

875:                                              ; preds = %873, %875
  %876 = phi i64 [ 0, %873 ], [ %878, %875 ]
  %877 = phi i32 [ %872, %873 ], [ %889, %875 ]
  %878 = add nuw nsw i64 %876, 1
  %879 = getelementptr i16, ptr %874, i64 %876
  %880 = load i16, ptr %879, align 2, !tbaa !75
  %881 = zext i16 %880 to i32
  %882 = sub nsw i64 %828, %876
  %883 = getelementptr inbounds i16, ptr %851, i64 %882
  %884 = load i16, ptr %883, align 2, !tbaa !75
  %885 = zext i16 %884 to i32
  %886 = sub nsw i32 %881, %885
  %887 = trunc i64 %878 to i32
  %888 = mul nsw i32 %886, %887
  %889 = add nsw i32 %888, %877
  %890 = icmp eq i64 %878, %830
  br i1 %890, label %891, label %875, !llvm.loop !88

891:                                              ; preds = %875, %836
  %892 = phi i32 [ %872, %836 ], [ %889, %875 ]
  %893 = add nsw i32 %800, %854
  %894 = sext i32 %893 to i64
  %895 = getelementptr ptr, ptr %839, i64 %894
  %896 = getelementptr ptr, ptr %895, i64 -1
  %897 = load ptr, ptr %896, align 8, !tbaa !62
  %898 = getelementptr inbounds i16, ptr %897, i64 %867
  %899 = load i16, ptr %898, align 2, !tbaa !75
  %900 = zext i16 %899 to i32
  %901 = sub nsw i32 %900, %870
  %902 = mul nsw i32 %901, %801
  br i1 %815, label %903, label %926

903:                                              ; preds = %891, %903
  %904 = phi i64 [ %909, %903 ], [ %856, %891 ]
  %905 = phi ptr [ %915, %903 ], [ %858, %891 ]
  %906 = phi i32 [ %908, %903 ], [ 0, %891 ]
  %907 = phi i32 [ %922, %903 ], [ %902, %891 ]
  %908 = add nuw nsw i32 %906, 1
  %909 = add nsw i64 %904, 1
  %910 = getelementptr inbounds ptr, ptr %839, i64 %904
  %911 = load ptr, ptr %910, align 8, !tbaa !62
  %912 = getelementptr inbounds i16, ptr %911, i64 %867
  %913 = load i16, ptr %912, align 2, !tbaa !75
  %914 = zext i16 %913 to i32
  %915 = getelementptr inbounds ptr, ptr %905, i64 -1
  %916 = load ptr, ptr %905, align 8, !tbaa !62
  %917 = getelementptr inbounds i16, ptr %916, i64 %867
  %918 = load i16, ptr %917, align 2, !tbaa !75
  %919 = zext i16 %918 to i32
  %920 = sub nsw i32 %914, %919
  %921 = mul nsw i32 %920, %908
  %922 = add nsw i32 %921, %907
  %923 = icmp eq i32 %906, %831
  br i1 %923, label %924, label %903, !llvm.loop !89

924:                                              ; preds = %903
  %925 = add i32 %829, %855
  br label %926

926:                                              ; preds = %924, %891
  %927 = phi i32 [ %902, %891 ], [ %922, %924 ]
  %928 = phi i32 [ %855, %891 ], [ %925, %924 ]
  %929 = mul nsw i32 %892, %817
  %930 = add nsw i32 %929, %818
  %931 = ashr i32 %930, %819
  %932 = mul nsw i32 %927, %821
  %933 = add nsw i32 %932, %822
  %934 = ashr i32 %933, %823
  br i1 %824, label %935, label %834

935:                                              ; preds = %926
  %936 = sext i32 %928 to i64
  %937 = getelementptr inbounds ptr, ptr %839, i64 %936
  %938 = load ptr, ptr %937, align 8, !tbaa !62
  %939 = getelementptr inbounds i16, ptr %938, i64 %867
  %940 = load i16, ptr %939, align 2, !tbaa !75
  %941 = zext i16 %940 to i32
  %942 = add nuw nsw i32 %941, %862
  %943 = shl nuw nsw i32 %942, 4
  %944 = add nuw nsw i32 %943, 16
  br label %945

945:                                              ; preds = %935, %969
  %946 = phi i64 [ 0, %935 ], [ %970, %969 ]
  br i1 %826, label %947, label %969

947:                                              ; preds = %945
  %948 = trunc i64 %946 to i32
  %949 = sub i32 %948, %801
  %950 = add i32 %949, 1
  %951 = mul nsw i32 %950, %934
  %952 = add i32 %944, %951
  %953 = getelementptr inbounds ptr, ptr %842, i64 %946
  %954 = load ptr, ptr %953, align 8, !tbaa !62
  br label %955

955:                                              ; preds = %947, %955
  %956 = phi i64 [ 0, %947 ], [ %967, %955 ]
  %957 = trunc i64 %956 to i32
  %958 = sub i32 %957, %802
  %959 = add i32 %958, 1
  %960 = mul i32 %959, %931
  %961 = add i32 %952, %960
  %962 = ashr i32 %961, 5
  %963 = call i32 @llvm.smax.i32(i32 %962, i32 0)
  %964 = call i32 @llvm.smin.i32(i32 %963, i32 %844)
  %965 = trunc i32 %964 to i16
  %966 = getelementptr inbounds i16, ptr %954, i64 %956
  store i16 %965, ptr %966, align 2, !tbaa !75
  %967 = add nuw nsw i64 %956, 1
  %968 = icmp eq i64 %967, %833
  br i1 %968, label %969, label %955, !llvm.loop !90

969:                                              ; preds = %955, %945
  %970 = add nuw nsw i64 %946, 1
  %971 = icmp eq i64 %970, %832
  br i1 %971, label %834, label %945, !llvm.loop !91

972:                                              ; preds = %834, %795
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  br label %974

973:                                              ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 600) #5
  br label %974

974:                                              ; preds = %973, %972, %732, %662, %579
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @intrapred_chroma_mbaff(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca [17 x %struct.pix_pos], align 16
  %4 = alloca [17 x %struct.pix_pos], align 16
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca [17 x %struct.pix_pos], align 16
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 125
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 48
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = add nsw i32 %14, -1
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  %17 = load i8, ptr %16, align 1, !tbaa !71
  switch i8 %17, label %1125 [
    i8 0, label %18
    i8 1, label %631
    i8 2, label %763
    i8 3, label %828
  ]

18:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %3) #5
  %19 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 78
  %20 = load i32, ptr %19, align 8, !tbaa !52
  %21 = ashr i32 %20, 1
  %22 = icmp slt i32 %20, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  %25 = add nuw i32 %20, 1
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %23, %27
  %28 = phi i64 [ 0, %23 ], [ %32, %27 ]
  %29 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %28
  %30 = trunc i64 %28 to i32
  %31 = add i32 %30, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %31, ptr noundef nonnull %24, ptr noundef nonnull %29) #5
  %32 = add nuw nsw i64 %28, 1
  %33 = icmp eq i64 %32, %26
  br i1 %33, label %34, label %27, !llvm.loop !92

34:                                               ; preds = %27, %18
  %35 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %35, ptr noundef nonnull %2) #5
  %36 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !53
  %38 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %37, i64 0, i32 30
  %39 = load i32, ptr %38, align 4, !tbaa !54
  %40 = icmp eq i32 %39, 0
  %41 = load i32, ptr %2, align 4, !tbaa !56
  br i1 %40, label %42, label %45

42:                                               ; preds = %34
  %43 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 1
  %44 = load i32, ptr %43, align 16, !tbaa !56
  br label %107

45:                                               ; preds = %34
  %46 = icmp eq i32 %41, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %49 = load ptr, ptr %48, align 8, !tbaa !58
  %50 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !59
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !60
  %55 = sext i8 %54 to i32
  br label %56

56:                                               ; preds = %45, %47
  %57 = phi i32 [ %55, %47 ], [ 0, %45 ]
  %58 = icmp sgt i32 %21, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %61 = zext nneg i32 %21 to i64
  br label %69

62:                                               ; preds = %84, %56
  %63 = phi i32 [ 1, %56 ], [ %86, %84 ]
  %64 = icmp slt i32 %21, %20
  br i1 %64, label %65, label %107

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %67 = sext i32 %21 to i64
  %68 = sext i32 %20 to i64
  br label %88

69:                                               ; preds = %59, %84
  %70 = phi i64 [ 0, %59 ], [ %72, %84 ]
  %71 = phi i32 [ 1, %59 ], [ %86, %84 ]
  %72 = add nuw nsw i64 %70, 1
  %73 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %72
  %74 = load i32, ptr %73, align 16, !tbaa !56
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %69
  %77 = load ptr, ptr %60, align 8, !tbaa !58
  %78 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %72, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !59
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %77, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !60
  %83 = sext i8 %82 to i32
  br label %84

84:                                               ; preds = %69, %76
  %85 = phi i32 [ %83, %76 ], [ 0, %69 ]
  %86 = and i32 %85, %71
  %87 = icmp eq i64 %72, %61
  br i1 %87, label %62, label %69, !llvm.loop !93

88:                                               ; preds = %65, %103
  %89 = phi i64 [ %67, %65 ], [ %91, %103 ]
  %90 = phi i32 [ 1, %65 ], [ %105, %103 ]
  %91 = add nsw i64 %89, 1
  %92 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %91
  %93 = load i32, ptr %92, align 16, !tbaa !56
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %88
  %96 = load ptr, ptr %66, align 8, !tbaa !58
  %97 = getelementptr inbounds [17 x %struct.pix_pos], ptr %3, i64 0, i64 %91, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !59
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !60
  %102 = sext i8 %101 to i32
  br label %103

103:                                              ; preds = %88, %95
  %104 = phi i32 [ %102, %95 ], [ 0, %88 ]
  %105 = and i32 %104, %90
  %106 = icmp eq i64 %91, %68
  br i1 %106, label %107, label %88, !llvm.loop !94

107:                                              ; preds = %103, %62, %42
  %108 = phi i32 [ %44, %42 ], [ %63, %62 ], [ %63, %103 ]
  %109 = phi i32 [ %44, %42 ], [ 1, %62 ], [ %105, %103 ]
  %110 = phi i32 [ %41, %42 ], [ %57, %62 ], [ %57, %103 ]
  %111 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 33
  %112 = load ptr, ptr %111, align 8, !tbaa !63
  %113 = load ptr, ptr %112, align 8, !tbaa !62
  %114 = getelementptr inbounds ptr, ptr %112, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !62
  %116 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %117 = load ptr, ptr %116, align 8, !tbaa !61
  %118 = getelementptr inbounds ptr, ptr %117, i64 1
  %119 = load ptr, ptr %118, align 8, !tbaa !62
  %120 = getelementptr inbounds ptr, ptr %117, i64 2
  %121 = load ptr, ptr %120, align 8, !tbaa !62
  %122 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 75
  %123 = load i32, ptr %122, align 4, !tbaa !73
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %630

125:                                              ; preds = %107
  %126 = sext i32 %15 to i64
  %127 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 69, i64 1
  %128 = load i32, ptr %127, align 4, !tbaa !74
  %129 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 69, i64 2
  %130 = load i32, ptr %129, align 4, !tbaa !74
  %131 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %132 = icmp ne i32 %110, 0
  %133 = icmp ne i32 %109, 0
  %134 = and i1 %133, %132
  %135 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %136 = icmp ne i32 %110, 0
  %137 = icmp eq i32 %109, 0
  %138 = and i1 %137, %136
  %139 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %140 = icmp eq i32 %110, 0
  %141 = icmp eq i32 %108, 0
  %142 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %143 = icmp ne i32 %110, 0
  %144 = icmp ne i32 %108, 0
  %145 = and i1 %144, %143
  %146 = zext nneg i32 %123 to i64
  br label %147

147:                                              ; preds = %125, %627
  %148 = phi i64 [ 0, %125 ], [ %628, %627 ]
  br label %149

149:                                              ; preds = %147, %624
  %150 = phi i64 [ 0, %147 ], [ %625, %624 ]
  %151 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %126, i64 %148, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !60
  %153 = zext i8 %152 to i32
  %154 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %126, i64 %148, i64 %150
  %155 = load i8, ptr %154, align 1, !tbaa !60
  %156 = zext i8 %155 to i64
  %157 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %126, i64 %148, i64 %150
  %158 = load i32, ptr %157, align 4, !tbaa !74
  switch i32 %158, label %599 [
    i32 0, label %159
    i32 1, label %278
    i32 2, label %379
    i32 3, label %480
  ]

159:                                              ; preds = %149
  %160 = add nuw nsw i32 %153, 1
  %161 = load i64, ptr %142, align 4
  br i1 %143, label %162, label %182

162:                                              ; preds = %159
  %163 = ashr i64 %161, 48
  %164 = getelementptr inbounds ptr, ptr %113, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !62
  %166 = lshr i64 %161, 16
  %167 = trunc i64 %166 to i32
  %168 = ashr i32 %167, 16
  %169 = zext i8 %155 to i64
  %170 = sext i32 %168 to i64
  %171 = getelementptr i16, ptr %165, i64 %170
  %172 = add nuw nsw i64 %169, 3
  br label %173

173:                                              ; preds = %173, %162
  %174 = phi i64 [ %169, %162 ], [ %180, %173 ]
  %175 = phi i32 [ 0, %162 ], [ %179, %173 ]
  %176 = getelementptr i16, ptr %171, i64 %174
  %177 = load i16, ptr %176, align 2, !tbaa !75
  %178 = zext i16 %177 to i32
  %179 = add nuw nsw i32 %175, %178
  %180 = add nuw nsw i64 %174, 1
  %181 = icmp eq i64 %174, %172
  br i1 %181, label %182, label %173, !llvm.loop !95

182:                                              ; preds = %173, %159
  %183 = phi i32 [ 0, %159 ], [ %179, %173 ]
  br i1 %144, label %184, label %205

184:                                              ; preds = %182
  %185 = zext nneg i32 %160 to i64
  %186 = zext i8 %152 to i64
  %187 = add nuw nsw i64 %186, 4
  br label %188

188:                                              ; preds = %188, %184
  %189 = phi i64 [ %185, %184 ], [ %203, %188 ]
  %190 = phi i32 [ 0, %184 ], [ %202, %188 ]
  %191 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %189, i32 5
  %192 = load i16, ptr %191, align 2, !tbaa !66
  %193 = sext i16 %192 to i64
  %194 = getelementptr inbounds ptr, ptr %113, i64 %193
  %195 = load ptr, ptr %194, align 8, !tbaa !62
  %196 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %189, i32 4
  %197 = load i16, ptr %196, align 4, !tbaa !67
  %198 = sext i16 %197 to i64
  %199 = getelementptr inbounds i16, ptr %195, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !75
  %201 = zext i16 %200 to i32
  %202 = add nuw nsw i32 %190, %201
  %203 = add nuw nsw i64 %189, 1
  %204 = icmp eq i64 %189, %187
  br i1 %204, label %205, label %188, !llvm.loop !96

205:                                              ; preds = %188, %182
  %206 = phi i32 [ 0, %182 ], [ %202, %188 ]
  br i1 %145, label %207, label %211

207:                                              ; preds = %205
  %208 = add i32 %183, 4
  %209 = add i32 %208, %206
  %210 = ashr i32 %209, 3
  br label %219

211:                                              ; preds = %205
  br i1 %143, label %212, label %215

212:                                              ; preds = %211
  %213 = add nsw i32 %183, 2
  %214 = ashr i32 %213, 2
  br label %219

215:                                              ; preds = %211
  br i1 %144, label %216, label %219

216:                                              ; preds = %215
  %217 = add nsw i32 %206, 2
  %218 = ashr i32 %217, 2
  br label %219

219:                                              ; preds = %207, %212, %215, %216
  %220 = phi i32 [ %210, %207 ], [ %214, %212 ], [ %218, %216 ], [ %128, %215 ]
  br i1 %143, label %221, label %241

221:                                              ; preds = %219
  %222 = ashr i64 %161, 48
  %223 = getelementptr inbounds ptr, ptr %115, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !62
  %225 = lshr i64 %161, 16
  %226 = trunc i64 %225 to i32
  %227 = ashr i32 %226, 16
  %228 = zext i8 %155 to i64
  %229 = sext i32 %227 to i64
  %230 = getelementptr i16, ptr %224, i64 %229
  %231 = add nuw nsw i64 %228, 3
  br label %232

232:                                              ; preds = %232, %221
  %233 = phi i64 [ %228, %221 ], [ %239, %232 ]
  %234 = phi i32 [ 0, %221 ], [ %238, %232 ]
  %235 = getelementptr i16, ptr %230, i64 %233
  %236 = load i16, ptr %235, align 2, !tbaa !75
  %237 = zext i16 %236 to i32
  %238 = add nuw nsw i32 %234, %237
  %239 = add nuw nsw i64 %233, 1
  %240 = icmp eq i64 %233, %231
  br i1 %240, label %241, label %232, !llvm.loop !95

241:                                              ; preds = %232, %219
  %242 = phi i32 [ 0, %219 ], [ %238, %232 ]
  br i1 %144, label %243, label %264

243:                                              ; preds = %241
  %244 = zext nneg i32 %160 to i64
  %245 = zext i8 %152 to i64
  %246 = add nuw nsw i64 %245, 4
  br label %247

247:                                              ; preds = %247, %243
  %248 = phi i64 [ %244, %243 ], [ %262, %247 ]
  %249 = phi i32 [ 0, %243 ], [ %261, %247 ]
  %250 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %248, i32 5
  %251 = load i16, ptr %250, align 2, !tbaa !66
  %252 = sext i16 %251 to i64
  %253 = getelementptr inbounds ptr, ptr %115, i64 %252
  %254 = load ptr, ptr %253, align 8, !tbaa !62
  %255 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %248, i32 4
  %256 = load i16, ptr %255, align 4, !tbaa !67
  %257 = sext i16 %256 to i64
  %258 = getelementptr inbounds i16, ptr %254, i64 %257
  %259 = load i16, ptr %258, align 2, !tbaa !75
  %260 = zext i16 %259 to i32
  %261 = add nuw nsw i32 %249, %260
  %262 = add nuw nsw i64 %248, 1
  %263 = icmp eq i64 %248, %246
  br i1 %263, label %264, label %247, !llvm.loop !96

264:                                              ; preds = %247, %241
  %265 = phi i32 [ 0, %241 ], [ %261, %247 ]
  br i1 %145, label %266, label %270

266:                                              ; preds = %264
  %267 = add i32 %242, 4
  %268 = add i32 %267, %265
  %269 = ashr i32 %268, 3
  br label %599

270:                                              ; preds = %264
  br i1 %143, label %271, label %274

271:                                              ; preds = %270
  %272 = add nsw i32 %242, 2
  %273 = ashr i32 %272, 2
  br label %599

274:                                              ; preds = %270
  br i1 %144, label %275, label %599

275:                                              ; preds = %274
  %276 = add nsw i32 %265, 2
  %277 = ashr i32 %276, 2
  br label %599

278:                                              ; preds = %149
  %279 = add nuw nsw i32 %153, 1
  %280 = load i64, ptr %139, align 4
  br i1 %140, label %304, label %281

281:                                              ; preds = %278
  %282 = ashr i64 %280, 48
  %283 = getelementptr inbounds ptr, ptr %113, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !62
  %285 = lshr i64 %280, 16
  %286 = trunc i64 %285 to i32
  %287 = ashr i32 %286, 16
  %288 = zext i8 %155 to i64
  %289 = sext i32 %287 to i64
  %290 = getelementptr i16, ptr %284, i64 %289
  %291 = add nuw nsw i64 %288, 3
  br label %292

292:                                              ; preds = %292, %281
  %293 = phi i64 [ %288, %281 ], [ %299, %292 ]
  %294 = phi i32 [ 0, %281 ], [ %298, %292 ]
  %295 = getelementptr i16, ptr %290, i64 %293
  %296 = load i16, ptr %295, align 2, !tbaa !75
  %297 = zext i16 %296 to i32
  %298 = add nuw nsw i32 %294, %297
  %299 = add nuw nsw i64 %293, 1
  %300 = icmp eq i64 %293, %291
  br i1 %300, label %301, label %292, !llvm.loop !97

301:                                              ; preds = %292
  %302 = add nuw nsw i32 %298, 2
  %303 = lshr i32 %302, 2
  br label %329

304:                                              ; preds = %278
  br i1 %141, label %329, label %305

305:                                              ; preds = %304
  %306 = zext nneg i32 %279 to i64
  %307 = zext i8 %152 to i64
  %308 = add nuw nsw i64 %307, 4
  br label %309

309:                                              ; preds = %309, %305
  %310 = phi i64 [ %306, %305 ], [ %324, %309 ]
  %311 = phi i32 [ 0, %305 ], [ %323, %309 ]
  %312 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %310, i32 5
  %313 = load i16, ptr %312, align 2, !tbaa !66
  %314 = sext i16 %313 to i64
  %315 = getelementptr inbounds ptr, ptr %113, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !62
  %317 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %310, i32 4
  %318 = load i16, ptr %317, align 4, !tbaa !67
  %319 = sext i16 %318 to i64
  %320 = getelementptr inbounds i16, ptr %316, i64 %319
  %321 = load i16, ptr %320, align 2, !tbaa !75
  %322 = zext i16 %321 to i32
  %323 = add nuw nsw i32 %311, %322
  %324 = add nuw nsw i64 %310, 1
  %325 = icmp eq i64 %310, %308
  br i1 %325, label %326, label %309, !llvm.loop !98

326:                                              ; preds = %309
  %327 = add nuw nsw i32 %323, 2
  %328 = lshr i32 %327, 2
  br label %329

329:                                              ; preds = %301, %304, %326
  %330 = phi i32 [ %303, %301 ], [ %128, %304 ], [ %328, %326 ]
  br i1 %140, label %354, label %331

331:                                              ; preds = %329
  %332 = ashr i64 %280, 48
  %333 = getelementptr inbounds ptr, ptr %115, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !62
  %335 = lshr i64 %280, 16
  %336 = trunc i64 %335 to i32
  %337 = ashr i32 %336, 16
  %338 = zext i8 %155 to i64
  %339 = sext i32 %337 to i64
  %340 = getelementptr i16, ptr %334, i64 %339
  %341 = add nuw nsw i64 %338, 3
  br label %342

342:                                              ; preds = %342, %331
  %343 = phi i64 [ %338, %331 ], [ %349, %342 ]
  %344 = phi i32 [ 0, %331 ], [ %348, %342 ]
  %345 = getelementptr i16, ptr %340, i64 %343
  %346 = load i16, ptr %345, align 2, !tbaa !75
  %347 = zext i16 %346 to i32
  %348 = add nuw nsw i32 %344, %347
  %349 = add nuw nsw i64 %343, 1
  %350 = icmp eq i64 %343, %341
  br i1 %350, label %351, label %342, !llvm.loop !97

351:                                              ; preds = %342
  %352 = add nuw nsw i32 %348, 2
  %353 = lshr i32 %352, 2
  br label %599

354:                                              ; preds = %329
  br i1 %141, label %599, label %355

355:                                              ; preds = %354
  %356 = zext nneg i32 %279 to i64
  %357 = zext i8 %152 to i64
  %358 = add nuw nsw i64 %357, 4
  br label %359

359:                                              ; preds = %359, %355
  %360 = phi i64 [ %356, %355 ], [ %374, %359 ]
  %361 = phi i32 [ 0, %355 ], [ %373, %359 ]
  %362 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %360, i32 5
  %363 = load i16, ptr %362, align 2, !tbaa !66
  %364 = sext i16 %363 to i64
  %365 = getelementptr inbounds ptr, ptr %115, i64 %364
  %366 = load ptr, ptr %365, align 8, !tbaa !62
  %367 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %360, i32 4
  %368 = load i16, ptr %367, align 4, !tbaa !67
  %369 = sext i16 %368 to i64
  %370 = getelementptr inbounds i16, ptr %366, i64 %369
  %371 = load i16, ptr %370, align 2, !tbaa !75
  %372 = zext i16 %371 to i32
  %373 = add nuw nsw i32 %361, %372
  %374 = add nuw nsw i64 %360, 1
  %375 = icmp eq i64 %360, %358
  br i1 %375, label %376, label %359, !llvm.loop !98

376:                                              ; preds = %359
  %377 = add nuw nsw i32 %373, 2
  %378 = lshr i32 %377, 2
  br label %599

379:                                              ; preds = %149
  %380 = add nuw nsw i32 %153, 1
  %381 = load i64, ptr %135, align 4
  br i1 %138, label %382, label %405

382:                                              ; preds = %379
  %383 = ashr i64 %381, 48
  %384 = getelementptr inbounds ptr, ptr %113, i64 %383
  %385 = load ptr, ptr %384, align 8, !tbaa !62
  %386 = lshr i64 %381, 16
  %387 = trunc i64 %386 to i32
  %388 = ashr i32 %387, 16
  %389 = zext i8 %155 to i64
  %390 = sext i32 %388 to i64
  %391 = getelementptr i16, ptr %385, i64 %390
  %392 = add nuw nsw i64 %389, 3
  br label %393

393:                                              ; preds = %393, %382
  %394 = phi i64 [ %389, %382 ], [ %400, %393 ]
  %395 = phi i32 [ 0, %382 ], [ %399, %393 ]
  %396 = getelementptr i16, ptr %391, i64 %394
  %397 = load i16, ptr %396, align 2, !tbaa !75
  %398 = zext i16 %397 to i32
  %399 = add nuw nsw i32 %395, %398
  %400 = add nuw nsw i64 %394, 1
  %401 = icmp eq i64 %394, %392
  br i1 %401, label %402, label %393, !llvm.loop !97

402:                                              ; preds = %393
  %403 = add nuw nsw i32 %399, 2
  %404 = lshr i32 %403, 2
  br label %430

405:                                              ; preds = %379
  br i1 %137, label %430, label %406

406:                                              ; preds = %405
  %407 = zext nneg i32 %380 to i64
  %408 = zext i8 %152 to i64
  %409 = add nuw nsw i64 %408, 4
  br label %410

410:                                              ; preds = %410, %406
  %411 = phi i64 [ %407, %406 ], [ %425, %410 ]
  %412 = phi i32 [ 0, %406 ], [ %424, %410 ]
  %413 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %411, i32 5
  %414 = load i16, ptr %413, align 2, !tbaa !66
  %415 = sext i16 %414 to i64
  %416 = getelementptr inbounds ptr, ptr %113, i64 %415
  %417 = load ptr, ptr %416, align 8, !tbaa !62
  %418 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %411, i32 4
  %419 = load i16, ptr %418, align 4, !tbaa !67
  %420 = sext i16 %419 to i64
  %421 = getelementptr inbounds i16, ptr %417, i64 %420
  %422 = load i16, ptr %421, align 2, !tbaa !75
  %423 = zext i16 %422 to i32
  %424 = add nuw nsw i32 %412, %423
  %425 = add nuw nsw i64 %411, 1
  %426 = icmp eq i64 %411, %409
  br i1 %426, label %427, label %410, !llvm.loop !98

427:                                              ; preds = %410
  %428 = add nuw nsw i32 %424, 2
  %429 = lshr i32 %428, 2
  br label %430

430:                                              ; preds = %402, %405, %427
  %431 = phi i32 [ %404, %402 ], [ %128, %405 ], [ %429, %427 ]
  br i1 %138, label %432, label %455

432:                                              ; preds = %430
  %433 = ashr i64 %381, 48
  %434 = getelementptr inbounds ptr, ptr %115, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !62
  %436 = lshr i64 %381, 16
  %437 = trunc i64 %436 to i32
  %438 = ashr i32 %437, 16
  %439 = zext i8 %155 to i64
  %440 = sext i32 %438 to i64
  %441 = getelementptr i16, ptr %435, i64 %440
  %442 = add nuw nsw i64 %439, 3
  br label %443

443:                                              ; preds = %443, %432
  %444 = phi i64 [ %439, %432 ], [ %450, %443 ]
  %445 = phi i32 [ 0, %432 ], [ %449, %443 ]
  %446 = getelementptr i16, ptr %441, i64 %444
  %447 = load i16, ptr %446, align 2, !tbaa !75
  %448 = zext i16 %447 to i32
  %449 = add nuw nsw i32 %445, %448
  %450 = add nuw nsw i64 %444, 1
  %451 = icmp eq i64 %444, %442
  br i1 %451, label %452, label %443, !llvm.loop !97

452:                                              ; preds = %443
  %453 = add nuw nsw i32 %449, 2
  %454 = lshr i32 %453, 2
  br label %599

455:                                              ; preds = %430
  br i1 %137, label %599, label %456

456:                                              ; preds = %455
  %457 = zext nneg i32 %380 to i64
  %458 = zext i8 %152 to i64
  %459 = add nuw nsw i64 %458, 4
  br label %460

460:                                              ; preds = %460, %456
  %461 = phi i64 [ %457, %456 ], [ %475, %460 ]
  %462 = phi i32 [ 0, %456 ], [ %474, %460 ]
  %463 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %461, i32 5
  %464 = load i16, ptr %463, align 2, !tbaa !66
  %465 = sext i16 %464 to i64
  %466 = getelementptr inbounds ptr, ptr %115, i64 %465
  %467 = load ptr, ptr %466, align 8, !tbaa !62
  %468 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %461, i32 4
  %469 = load i16, ptr %468, align 4, !tbaa !67
  %470 = sext i16 %469 to i64
  %471 = getelementptr inbounds i16, ptr %467, i64 %470
  %472 = load i16, ptr %471, align 2, !tbaa !75
  %473 = zext i16 %472 to i32
  %474 = add nuw nsw i32 %462, %473
  %475 = add nuw nsw i64 %461, 1
  %476 = icmp eq i64 %461, %459
  br i1 %476, label %477, label %460, !llvm.loop !98

477:                                              ; preds = %460
  %478 = add nuw nsw i32 %474, 2
  %479 = lshr i32 %478, 2
  br label %599

480:                                              ; preds = %149
  %481 = add nuw nsw i32 %153, 1
  %482 = load i64, ptr %131, align 4
  br i1 %132, label %483, label %503

483:                                              ; preds = %480
  %484 = ashr i64 %482, 48
  %485 = getelementptr inbounds ptr, ptr %113, i64 %484
  %486 = load ptr, ptr %485, align 8, !tbaa !62
  %487 = lshr i64 %482, 16
  %488 = trunc i64 %487 to i32
  %489 = ashr i32 %488, 16
  %490 = zext i8 %155 to i64
  %491 = sext i32 %489 to i64
  %492 = getelementptr i16, ptr %486, i64 %491
  %493 = add nuw nsw i64 %490, 3
  br label %494

494:                                              ; preds = %494, %483
  %495 = phi i64 [ %490, %483 ], [ %501, %494 ]
  %496 = phi i32 [ 0, %483 ], [ %500, %494 ]
  %497 = getelementptr i16, ptr %492, i64 %495
  %498 = load i16, ptr %497, align 2, !tbaa !75
  %499 = zext i16 %498 to i32
  %500 = add nuw nsw i32 %496, %499
  %501 = add nuw nsw i64 %495, 1
  %502 = icmp eq i64 %495, %493
  br i1 %502, label %503, label %494, !llvm.loop !95

503:                                              ; preds = %494, %480
  %504 = phi i32 [ 0, %480 ], [ %500, %494 ]
  br i1 %133, label %505, label %526

505:                                              ; preds = %503
  %506 = zext nneg i32 %481 to i64
  %507 = zext i8 %152 to i64
  %508 = add nuw nsw i64 %507, 4
  br label %509

509:                                              ; preds = %509, %505
  %510 = phi i64 [ %506, %505 ], [ %524, %509 ]
  %511 = phi i32 [ 0, %505 ], [ %523, %509 ]
  %512 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %510, i32 5
  %513 = load i16, ptr %512, align 2, !tbaa !66
  %514 = sext i16 %513 to i64
  %515 = getelementptr inbounds ptr, ptr %113, i64 %514
  %516 = load ptr, ptr %515, align 8, !tbaa !62
  %517 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %510, i32 4
  %518 = load i16, ptr %517, align 4, !tbaa !67
  %519 = sext i16 %518 to i64
  %520 = getelementptr inbounds i16, ptr %516, i64 %519
  %521 = load i16, ptr %520, align 2, !tbaa !75
  %522 = zext i16 %521 to i32
  %523 = add nuw nsw i32 %511, %522
  %524 = add nuw nsw i64 %510, 1
  %525 = icmp eq i64 %510, %508
  br i1 %525, label %526, label %509, !llvm.loop !96

526:                                              ; preds = %509, %503
  %527 = phi i32 [ 0, %503 ], [ %523, %509 ]
  br i1 %134, label %528, label %532

528:                                              ; preds = %526
  %529 = add i32 %504, 4
  %530 = add i32 %529, %527
  %531 = ashr i32 %530, 3
  br label %540

532:                                              ; preds = %526
  br i1 %132, label %533, label %536

533:                                              ; preds = %532
  %534 = add nsw i32 %504, 2
  %535 = ashr i32 %534, 2
  br label %540

536:                                              ; preds = %532
  br i1 %133, label %537, label %540

537:                                              ; preds = %536
  %538 = add nsw i32 %527, 2
  %539 = ashr i32 %538, 2
  br label %540

540:                                              ; preds = %528, %533, %536, %537
  %541 = phi i32 [ %531, %528 ], [ %535, %533 ], [ %539, %537 ], [ %128, %536 ]
  br i1 %132, label %542, label %562

542:                                              ; preds = %540
  %543 = ashr i64 %482, 48
  %544 = getelementptr inbounds ptr, ptr %115, i64 %543
  %545 = load ptr, ptr %544, align 8, !tbaa !62
  %546 = lshr i64 %482, 16
  %547 = trunc i64 %546 to i32
  %548 = ashr i32 %547, 16
  %549 = zext i8 %155 to i64
  %550 = sext i32 %548 to i64
  %551 = getelementptr i16, ptr %545, i64 %550
  %552 = add nuw nsw i64 %549, 3
  br label %553

553:                                              ; preds = %553, %542
  %554 = phi i64 [ %549, %542 ], [ %560, %553 ]
  %555 = phi i32 [ 0, %542 ], [ %559, %553 ]
  %556 = getelementptr i16, ptr %551, i64 %554
  %557 = load i16, ptr %556, align 2, !tbaa !75
  %558 = zext i16 %557 to i32
  %559 = add nuw nsw i32 %555, %558
  %560 = add nuw nsw i64 %554, 1
  %561 = icmp eq i64 %554, %552
  br i1 %561, label %562, label %553, !llvm.loop !95

562:                                              ; preds = %553, %540
  %563 = phi i32 [ 0, %540 ], [ %559, %553 ]
  br i1 %133, label %564, label %585

564:                                              ; preds = %562
  %565 = zext nneg i32 %481 to i64
  %566 = zext i8 %152 to i64
  %567 = add nuw nsw i64 %566, 4
  br label %568

568:                                              ; preds = %568, %564
  %569 = phi i64 [ %565, %564 ], [ %583, %568 ]
  %570 = phi i32 [ 0, %564 ], [ %582, %568 ]
  %571 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %569, i32 5
  %572 = load i16, ptr %571, align 2, !tbaa !66
  %573 = sext i16 %572 to i64
  %574 = getelementptr inbounds ptr, ptr %115, i64 %573
  %575 = load ptr, ptr %574, align 8, !tbaa !62
  %576 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 %569, i32 4
  %577 = load i16, ptr %576, align 4, !tbaa !67
  %578 = sext i16 %577 to i64
  %579 = getelementptr inbounds i16, ptr %575, i64 %578
  %580 = load i16, ptr %579, align 2, !tbaa !75
  %581 = zext i16 %580 to i32
  %582 = add nuw nsw i32 %570, %581
  %583 = add nuw nsw i64 %569, 1
  %584 = icmp eq i64 %569, %567
  br i1 %584, label %585, label %568, !llvm.loop !96

585:                                              ; preds = %568, %562
  %586 = phi i32 [ 0, %562 ], [ %582, %568 ]
  br i1 %134, label %587, label %591

587:                                              ; preds = %585
  %588 = add i32 %563, 4
  %589 = add i32 %588, %586
  %590 = ashr i32 %589, 3
  br label %599

591:                                              ; preds = %585
  br i1 %132, label %592, label %595

592:                                              ; preds = %591
  %593 = add nsw i32 %563, 2
  %594 = ashr i32 %593, 2
  br label %599

595:                                              ; preds = %591
  br i1 %133, label %596, label %599

596:                                              ; preds = %595
  %597 = add nsw i32 %586, 2
  %598 = ashr i32 %597, 2
  br label %599

599:                                              ; preds = %596, %595, %592, %587, %477, %455, %452, %376, %354, %351, %275, %274, %271, %266, %149
  %600 = phi i32 [ %128, %149 ], [ %220, %266 ], [ %220, %271 ], [ %220, %274 ], [ %220, %275 ], [ %330, %351 ], [ %330, %354 ], [ %330, %376 ], [ %431, %452 ], [ %431, %455 ], [ %431, %477 ], [ %541, %587 ], [ %541, %592 ], [ %541, %595 ], [ %541, %596 ]
  %601 = phi i32 [ %130, %149 ], [ %269, %266 ], [ %273, %271 ], [ %130, %274 ], [ %277, %275 ], [ %353, %351 ], [ %130, %354 ], [ %378, %376 ], [ %454, %452 ], [ %130, %455 ], [ %479, %477 ], [ %590, %587 ], [ %594, %592 ], [ %130, %595 ], [ %598, %596 ]
  %602 = add nuw nsw i32 %153, 4
  %603 = trunc i32 %600 to i16
  %604 = trunc i32 %601 to i16
  %605 = zext i8 %155 to i64
  %606 = zext i8 %152 to i64
  %607 = zext nneg i32 %602 to i64
  %608 = add nuw nsw i64 %156, 3
  br label %609

609:                                              ; preds = %599, %621
  %610 = phi i64 [ %606, %599 ], [ %622, %621 ]
  %611 = getelementptr inbounds ptr, ptr %119, i64 %610
  %612 = load ptr, ptr %611, align 8, !tbaa !62
  %613 = getelementptr inbounds ptr, ptr %121, i64 %610
  %614 = load ptr, ptr %613, align 8, !tbaa !62
  br label %615

615:                                              ; preds = %609, %615
  %616 = phi i64 [ %605, %609 ], [ %619, %615 ]
  %617 = getelementptr inbounds i16, ptr %612, i64 %616
  store i16 %603, ptr %617, align 2, !tbaa !75
  %618 = getelementptr inbounds i16, ptr %614, i64 %616
  store i16 %604, ptr %618, align 2, !tbaa !75
  %619 = add nuw nsw i64 %616, 1
  %620 = icmp eq i64 %616, %608
  br i1 %620, label %621, label %615, !llvm.loop !99

621:                                              ; preds = %615
  %622 = add nuw nsw i64 %610, 1
  %623 = icmp eq i64 %622, %607
  br i1 %623, label %624, label %609, !llvm.loop !100

624:                                              ; preds = %621
  %625 = add nuw nsw i64 %150, 1
  %626 = icmp eq i64 %625, 4
  br i1 %626, label %627, label %149, !llvm.loop !101

627:                                              ; preds = %624
  %628 = add nuw nsw i64 %148, 1
  %629 = icmp eq i64 %628, %146
  br i1 %629, label %630, label %147, !llvm.loop !102

630:                                              ; preds = %627, %107
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #5
  br label %1126

631:                                              ; preds = %1
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #5
  %632 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 77
  %633 = load i32, ptr %632, align 4, !tbaa !46
  %634 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 78
  %635 = load i32, ptr %634, align 8, !tbaa !52
  %636 = ashr i32 %635, 1
  %637 = icmp slt i32 %635, 0
  br i1 %637, label %649, label %638

638:                                              ; preds = %631
  %639 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  %640 = add nuw i32 %635, 1
  %641 = zext i32 %640 to i64
  br label %642

642:                                              ; preds = %638, %642
  %643 = phi i64 [ 0, %638 ], [ %647, %642 ]
  %644 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %643
  %645 = trunc i64 %643 to i32
  %646 = add i32 %645, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %646, ptr noundef nonnull %639, ptr noundef nonnull %644) #5
  %647 = add nuw nsw i64 %643, 1
  %648 = icmp eq i64 %647, %641
  br i1 %648, label %649, label %642, !llvm.loop !103

649:                                              ; preds = %642, %631
  %650 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %651 = load ptr, ptr %650, align 8, !tbaa !53
  %652 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %651, i64 0, i32 30
  %653 = load i32, ptr %652, align 4, !tbaa !54
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %660, label %655

655:                                              ; preds = %649
  %656 = icmp sgt i32 %636, 0
  br i1 %656, label %657, label %663

657:                                              ; preds = %655
  %658 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %659 = zext nneg i32 %636 to i64
  br label %670

660:                                              ; preds = %649
  %661 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 1
  %662 = load i32, ptr %661, align 16, !tbaa !56
  br label %708

663:                                              ; preds = %685, %655
  %664 = phi i32 [ 1, %655 ], [ %687, %685 ]
  %665 = icmp slt i32 %636, %635
  br i1 %665, label %666, label %708

666:                                              ; preds = %663
  %667 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %668 = sext i32 %636 to i64
  %669 = sext i32 %635 to i64
  br label %689

670:                                              ; preds = %657, %685
  %671 = phi i64 [ 0, %657 ], [ %673, %685 ]
  %672 = phi i32 [ 1, %657 ], [ %687, %685 ]
  %673 = add nuw nsw i64 %671, 1
  %674 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %673
  %675 = load i32, ptr %674, align 16, !tbaa !56
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %685, label %677

677:                                              ; preds = %670
  %678 = load ptr, ptr %658, align 8, !tbaa !58
  %679 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %673, i32 1
  %680 = load i32, ptr %679, align 4, !tbaa !59
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i8, ptr %678, i64 %681
  %683 = load i8, ptr %682, align 1, !tbaa !60
  %684 = sext i8 %683 to i32
  br label %685

685:                                              ; preds = %670, %677
  %686 = phi i32 [ %684, %677 ], [ 0, %670 ]
  %687 = and i32 %686, %672
  %688 = icmp eq i64 %673, %659
  br i1 %688, label %663, label %670, !llvm.loop !104

689:                                              ; preds = %666, %704
  %690 = phi i64 [ %668, %666 ], [ %692, %704 ]
  %691 = phi i32 [ 1, %666 ], [ %706, %704 ]
  %692 = add nsw i64 %690, 1
  %693 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %692
  %694 = load i32, ptr %693, align 16, !tbaa !56
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %704, label %696

696:                                              ; preds = %689
  %697 = load ptr, ptr %667, align 8, !tbaa !58
  %698 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %692, i32 1
  %699 = load i32, ptr %698, align 4, !tbaa !59
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, ptr %697, i64 %700
  %702 = load i8, ptr %701, align 1, !tbaa !60
  %703 = sext i8 %702 to i32
  br label %704

704:                                              ; preds = %689, %696
  %705 = phi i32 [ %703, %696 ], [ 0, %689 ]
  %706 = and i32 %705, %691
  %707 = icmp eq i64 %692, %669
  br i1 %707, label %708, label %689, !llvm.loop !105

708:                                              ; preds = %704, %663, %660
  %709 = phi i32 [ %662, %660 ], [ %664, %663 ], [ %664, %704 ]
  %710 = phi i32 [ %662, %660 ], [ 1, %663 ], [ %706, %704 ]
  %711 = icmp ne i32 %709, 0
  %712 = icmp ne i32 %710, 0
  %713 = select i1 %711, i1 %712, i1 false
  br i1 %713, label %715, label %714

714:                                              ; preds = %708
  call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #5
  br label %762

715:                                              ; preds = %708
  %716 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %717 = load ptr, ptr %716, align 8, !tbaa !61
  %718 = getelementptr inbounds ptr, ptr %717, i64 1
  %719 = load ptr, ptr %718, align 8, !tbaa !62
  %720 = getelementptr inbounds ptr, ptr %717, i64 2
  %721 = load ptr, ptr %720, align 8, !tbaa !62
  %722 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 33
  %723 = load ptr, ptr %722, align 8, !tbaa !63
  %724 = load ptr, ptr %723, align 8, !tbaa !62
  %725 = getelementptr inbounds ptr, ptr %723, i64 1
  %726 = load ptr, ptr %725, align 8, !tbaa !62
  %727 = icmp sgt i32 %635, 0
  br i1 %727, label %728, label %762

728:                                              ; preds = %715
  %729 = icmp sgt i32 %633, 0
  %730 = zext nneg i32 %635 to i64
  %731 = zext nneg i32 %633 to i64
  br label %734

732:                                              ; preds = %756, %734
  %733 = icmp eq i64 %736, %730
  br i1 %733, label %762, label %734, !llvm.loop !106

734:                                              ; preds = %728, %732
  %735 = phi i64 [ 0, %728 ], [ %736, %732 ]
  %736 = add nuw nsw i64 %735, 1
  %737 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %736, i32 5
  %738 = load i16, ptr %737, align 2, !tbaa !66
  %739 = sext i16 %738 to i64
  %740 = getelementptr inbounds ptr, ptr %724, i64 %739
  %741 = load ptr, ptr %740, align 8, !tbaa !62
  %742 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %736, i32 4
  %743 = load i16, ptr %742, align 4, !tbaa !67
  %744 = sext i16 %743 to i64
  %745 = getelementptr inbounds i16, ptr %741, i64 %744
  %746 = load i16, ptr %745, align 2, !tbaa !75
  %747 = getelementptr inbounds ptr, ptr %726, i64 %739
  %748 = load ptr, ptr %747, align 8, !tbaa !62
  %749 = getelementptr inbounds i16, ptr %748, i64 %744
  %750 = load i16, ptr %749, align 2, !tbaa !75
  br i1 %729, label %751, label %732

751:                                              ; preds = %734
  %752 = getelementptr inbounds ptr, ptr %719, i64 %735
  %753 = load ptr, ptr %752, align 8, !tbaa !62
  %754 = getelementptr inbounds ptr, ptr %721, i64 %735
  %755 = load ptr, ptr %754, align 8, !tbaa !62
  br label %756

756:                                              ; preds = %751, %756
  %757 = phi i64 [ 0, %751 ], [ %760, %756 ]
  %758 = getelementptr inbounds i16, ptr %753, i64 %757
  store i16 %746, ptr %758, align 2, !tbaa !75
  %759 = getelementptr inbounds i16, ptr %755, i64 %757
  store i16 %750, ptr %759, align 2, !tbaa !75
  %760 = add nuw nsw i64 %757, 1
  %761 = icmp eq i64 %760, %731
  br i1 %761, label %732, label %756, !llvm.loop !107

762:                                              ; preds = %732, %715, %714
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #5
  br label %1126

763:                                              ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %764 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 77
  %765 = load i32, ptr %764, align 4, !tbaa !46
  %766 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 78
  %767 = load i32, ptr %766, align 8, !tbaa !52
  %768 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %768, ptr noundef nonnull %5) #5
  %769 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %770 = load ptr, ptr %769, align 8, !tbaa !53
  %771 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %770, i64 0, i32 30
  %772 = load i32, ptr %771, align 4, !tbaa !54
  %773 = icmp eq i32 %772, 0
  %774 = load i32, ptr %5, align 4, !tbaa !56
  br i1 %773, label %786, label %775

775:                                              ; preds = %763
  %776 = icmp eq i32 %774, 0
  br i1 %776, label %786, label %777

777:                                              ; preds = %775
  %778 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %779 = load ptr, ptr %778, align 8, !tbaa !58
  %780 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %781 = load i32, ptr %780, align 4, !tbaa !59
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds i8, ptr %779, i64 %782
  %784 = load i8, ptr %783, align 1, !tbaa !60
  %785 = sext i8 %784 to i32
  br label %786

786:                                              ; preds = %763, %777, %775
  %787 = phi i32 [ %785, %777 ], [ 0, %775 ], [ %774, %763 ]
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %790

789:                                              ; preds = %786
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #5
  br label %827

790:                                              ; preds = %786
  %791 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %792 = load ptr, ptr %791, align 8, !tbaa !61
  %793 = getelementptr inbounds ptr, ptr %792, i64 1
  %794 = load ptr, ptr %793, align 8, !tbaa !62
  %795 = getelementptr inbounds ptr, ptr %792, i64 2
  %796 = load ptr, ptr %795, align 8, !tbaa !62
  %797 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 33
  %798 = load ptr, ptr %797, align 8, !tbaa !63
  %799 = load ptr, ptr %798, align 8, !tbaa !62
  %800 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %801 = load i16, ptr %800, align 2, !tbaa !66
  %802 = sext i16 %801 to i64
  %803 = getelementptr inbounds ptr, ptr %799, i64 %802
  %804 = load ptr, ptr %803, align 8, !tbaa !62
  %805 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %806 = load i16, ptr %805, align 4, !tbaa !67
  %807 = sext i16 %806 to i64
  %808 = getelementptr inbounds i16, ptr %804, i64 %807
  %809 = getelementptr inbounds ptr, ptr %798, i64 1
  %810 = load ptr, ptr %809, align 8, !tbaa !62
  %811 = getelementptr inbounds ptr, ptr %810, i64 %802
  %812 = load ptr, ptr %811, align 8, !tbaa !62
  %813 = getelementptr inbounds i16, ptr %812, i64 %807
  %814 = icmp sgt i32 %767, 0
  br i1 %814, label %815, label %827

815:                                              ; preds = %790
  %816 = sext i32 %765 to i64
  %817 = shl nsw i64 %816, 1
  %818 = zext nneg i32 %767 to i64
  br label %819

819:                                              ; preds = %815, %819
  %820 = phi i64 [ 0, %815 ], [ %825, %819 ]
  %821 = getelementptr inbounds ptr, ptr %794, i64 %820
  %822 = load ptr, ptr %821, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %822, ptr align 2 %808, i64 %817, i1 false)
  %823 = getelementptr inbounds ptr, ptr %796, i64 %820
  %824 = load ptr, ptr %823, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %824, ptr align 2 %813, i64 %817, i1 false)
  %825 = add nuw nsw i64 %820, 1
  %826 = icmp eq i64 %825, %818
  br i1 %826, label %827, label %819, !llvm.loop !108

827:                                              ; preds = %819, %790, %789
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  br label %1126

828:                                              ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %7) #5
  %829 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 77
  %830 = load i32, ptr %829, align 4, !tbaa !46
  %831 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 78
  %832 = load i32, ptr %831, align 8, !tbaa !52
  %833 = ashr i32 %832, 1
  %834 = ashr i32 %830, 1
  %835 = icmp slt i32 %832, 0
  br i1 %835, label %849, label %836

836:                                              ; preds = %828
  %837 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 160
  %838 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  %839 = add nuw i32 %832, 1
  %840 = zext i32 %839 to i64
  br label %841

841:                                              ; preds = %836, %841
  %842 = phi i64 [ 0, %836 ], [ %847, %841 ]
  %843 = load ptr, ptr %837, align 8, !tbaa !109
  %844 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %842
  %845 = trunc i64 %842 to i32
  %846 = add i32 %845, -1
  call void %843(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %846, ptr noundef nonnull %838, ptr noundef nonnull %844) #5
  %847 = add nuw nsw i64 %842, 1
  %848 = icmp eq i64 %847, %840
  br i1 %848, label %849, label %841, !llvm.loop !110

849:                                              ; preds = %841, %828
  %850 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 160
  %851 = load ptr, ptr %850, align 8, !tbaa !109
  %852 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 81, i64 1
  call void %851(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %852, ptr noundef nonnull %6) #5
  %853 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 1
  %854 = load ptr, ptr %853, align 8, !tbaa !53
  %855 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %854, i64 0, i32 30
  %856 = load i32, ptr %855, align 4, !tbaa !54
  %857 = icmp eq i32 %856, 0
  %858 = load i32, ptr %6, align 4, !tbaa !56
  br i1 %857, label %859, label %863

859:                                              ; preds = %849
  %860 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 1
  %861 = load i32, ptr %860, align 16, !tbaa !56
  %862 = load i32, ptr %7, align 16, !tbaa !56
  br label %938

863:                                              ; preds = %849
  %864 = icmp eq i32 %858, 0
  br i1 %864, label %874, label %865

865:                                              ; preds = %863
  %866 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %867 = load ptr, ptr %866, align 8, !tbaa !58
  %868 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %869 = load i32, ptr %868, align 4, !tbaa !59
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds i8, ptr %867, i64 %870
  %872 = load i8, ptr %871, align 1, !tbaa !60
  %873 = sext i8 %872 to i32
  br label %874

874:                                              ; preds = %863, %865
  %875 = phi i32 [ %873, %865 ], [ 0, %863 ]
  %876 = icmp sgt i32 %833, 0
  br i1 %876, label %877, label %880

877:                                              ; preds = %874
  %878 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %879 = zext nneg i32 %833 to i64
  br label %887

880:                                              ; preds = %902, %874
  %881 = phi i32 [ 1, %874 ], [ %904, %902 ]
  %882 = icmp slt i32 %833, %832
  br i1 %882, label %883, label %925

883:                                              ; preds = %880
  %884 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %885 = sext i32 %833 to i64
  %886 = sext i32 %832 to i64
  br label %906

887:                                              ; preds = %877, %902
  %888 = phi i64 [ 0, %877 ], [ %890, %902 ]
  %889 = phi i32 [ 1, %877 ], [ %904, %902 ]
  %890 = add nuw nsw i64 %888, 1
  %891 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %890
  %892 = load i32, ptr %891, align 16, !tbaa !56
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %902, label %894

894:                                              ; preds = %887
  %895 = load ptr, ptr %878, align 8, !tbaa !58
  %896 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %890, i32 1
  %897 = load i32, ptr %896, align 4, !tbaa !59
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds i8, ptr %895, i64 %898
  %900 = load i8, ptr %899, align 1, !tbaa !60
  %901 = sext i8 %900 to i32
  br label %902

902:                                              ; preds = %887, %894
  %903 = phi i32 [ %901, %894 ], [ 0, %887 ]
  %904 = and i32 %903, %889
  %905 = icmp eq i64 %890, %879
  br i1 %905, label %880, label %887, !llvm.loop !111

906:                                              ; preds = %883, %921
  %907 = phi i64 [ %885, %883 ], [ %909, %921 ]
  %908 = phi i32 [ 1, %883 ], [ %923, %921 ]
  %909 = add nsw i64 %907, 1
  %910 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %909
  %911 = load i32, ptr %910, align 16, !tbaa !56
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %921, label %913

913:                                              ; preds = %906
  %914 = load ptr, ptr %884, align 8, !tbaa !58
  %915 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %909, i32 1
  %916 = load i32, ptr %915, align 4, !tbaa !59
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds i8, ptr %914, i64 %917
  %919 = load i8, ptr %918, align 1, !tbaa !60
  %920 = sext i8 %919 to i32
  br label %921

921:                                              ; preds = %906, %913
  %922 = phi i32 [ %920, %913 ], [ 0, %906 ]
  %923 = and i32 %922, %908
  %924 = icmp eq i64 %909, %886
  br i1 %924, label %925, label %906, !llvm.loop !112

925:                                              ; preds = %921, %880
  %926 = phi i32 [ 1, %880 ], [ %923, %921 ]
  %927 = load i32, ptr %7, align 16, !tbaa !56
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %938, label %929

929:                                              ; preds = %925
  %930 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 128
  %931 = load ptr, ptr %930, align 8, !tbaa !58
  %932 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %933 = load i32, ptr %932, align 4, !tbaa !59
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds i8, ptr %931, i64 %934
  %936 = load i8, ptr %935, align 1, !tbaa !60
  %937 = sext i8 %936 to i32
  br label %938

938:                                              ; preds = %929, %925, %859
  %939 = phi i32 [ %858, %859 ], [ %875, %925 ], [ %875, %929 ]
  %940 = phi i32 [ %861, %859 ], [ %926, %925 ], [ %926, %929 ]
  %941 = phi i32 [ %861, %859 ], [ %881, %925 ], [ %881, %929 ]
  %942 = phi i32 [ %862, %859 ], [ 0, %925 ], [ %937, %929 ]
  %943 = icmp ne i32 %942, 0
  %944 = icmp ne i32 %941, 0
  %945 = select i1 %943, i1 %944, i1 false
  %946 = icmp ne i32 %940, 0
  %947 = select i1 %945, i1 %946, i1 false
  %948 = icmp ne i32 %939, 0
  %949 = select i1 %947, i1 %948, i1 false
  br i1 %949, label %950, label %987

950:                                              ; preds = %938
  %951 = getelementptr inbounds %struct.storable_picture, ptr %12, i64 0, i32 33
  %952 = load ptr, ptr %951, align 8, !tbaa !63
  %953 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 77
  %954 = load ptr, ptr %953, align 8, !tbaa !61
  %955 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 5
  %956 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 4
  %957 = sext i32 %830 to i64
  %958 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %959 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %960 = add nsw i32 %834, -1
  %961 = icmp sgt i32 %834, 1
  %962 = sext i32 %832 to i64
  %963 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %962, i32 5
  %964 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %962, i32 4
  %965 = add nsw i32 %833, -1
  %966 = icmp sgt i32 %833, 1
  %967 = icmp eq i32 %830, 8
  %968 = select i1 %967, i32 17, i32 5
  %969 = shl nsw i32 %830, 1
  %970 = select i1 %967, i32 5, i32 6
  %971 = icmp eq i32 %832, 8
  %972 = select i1 %971, i32 17, i32 5
  %973 = shl nsw i32 %832, 1
  %974 = select i1 %971, i32 5, i32 6
  %975 = icmp sgt i32 %832, 0
  %976 = add nsw i32 %834, -2
  %977 = add nsw i32 %833, 1
  %978 = icmp sgt i32 %830, 0
  %979 = sext i32 %834 to i64
  %980 = sext i32 %976 to i64
  %981 = sext i32 %977 to i64
  %982 = sext i32 %965 to i64
  %983 = zext i32 %960 to i64
  %984 = zext i32 %965 to i64
  %985 = zext nneg i32 %832 to i64
  %986 = zext nneg i32 %830 to i64
  br label %990

987:                                              ; preds = %938
  call void @error(ptr noundef nonnull @.str.3, i32 noundef -1) #5
  br label %1124

988:                                              ; preds = %1121, %1085
  %989 = icmp eq i64 %991, 0
  br i1 %989, label %990, label %1124, !llvm.loop !113

990:                                              ; preds = %950, %988
  %991 = phi i64 [ 0, %950 ], [ %994, %988 ]
  %992 = getelementptr inbounds ptr, ptr %952, i64 %991
  %993 = load ptr, ptr %992, align 8, !tbaa !62
  %994 = add nuw nsw i64 %991, 1
  %995 = getelementptr inbounds ptr, ptr %954, i64 %994
  %996 = load ptr, ptr %995, align 8, !tbaa !62
  %997 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 70, i64 %994
  %998 = load i32, ptr %997, align 4, !tbaa !74
  %999 = load i16, ptr %955, align 2, !tbaa !66
  %1000 = sext i16 %999 to i64
  %1001 = getelementptr inbounds ptr, ptr %993, i64 %1000
  %1002 = load ptr, ptr %1001, align 8, !tbaa !62
  %1003 = load i16, ptr %956, align 4, !tbaa !67
  %1004 = sext i16 %1003 to i64
  %1005 = getelementptr inbounds i16, ptr %1002, i64 %1004
  %1006 = getelementptr i16, ptr %1005, i64 %957
  %1007 = getelementptr i16, ptr %1006, i64 -1
  %1008 = load i16, ptr %1007, align 2, !tbaa !75
  %1009 = zext i16 %1008 to i32
  %1010 = load i16, ptr %958, align 2, !tbaa !66
  %1011 = sext i16 %1010 to i64
  %1012 = getelementptr inbounds ptr, ptr %993, i64 %1011
  %1013 = load ptr, ptr %1012, align 8, !tbaa !62
  %1014 = load i16, ptr %959, align 4, !tbaa !67
  %1015 = sext i16 %1014 to i64
  %1016 = getelementptr inbounds i16, ptr %1013, i64 %1015
  %1017 = load i16, ptr %1016, align 2, !tbaa !75
  %1018 = zext i16 %1017 to i32
  %1019 = sub nsw i32 %1009, %1018
  %1020 = mul nsw i32 %1019, %834
  br i1 %961, label %1021, label %1039

1021:                                             ; preds = %990
  %1022 = getelementptr i16, ptr %1005, i64 %979
  br label %1023

1023:                                             ; preds = %1021, %1023
  %1024 = phi i64 [ 0, %1021 ], [ %1026, %1023 ]
  %1025 = phi i32 [ %1020, %1021 ], [ %1037, %1023 ]
  %1026 = add nuw nsw i64 %1024, 1
  %1027 = getelementptr i16, ptr %1022, i64 %1024
  %1028 = load i16, ptr %1027, align 2, !tbaa !75
  %1029 = zext i16 %1028 to i32
  %1030 = sub nsw i64 %980, %1024
  %1031 = getelementptr inbounds i16, ptr %1005, i64 %1030
  %1032 = load i16, ptr %1031, align 2, !tbaa !75
  %1033 = zext i16 %1032 to i32
  %1034 = sub nsw i32 %1029, %1033
  %1035 = trunc i64 %1026 to i32
  %1036 = mul nsw i32 %1034, %1035
  %1037 = add nsw i32 %1036, %1025
  %1038 = icmp eq i64 %1026, %983
  br i1 %1038, label %1039, label %1023, !llvm.loop !114

1039:                                             ; preds = %1023, %990
  %1040 = phi i32 [ %1020, %990 ], [ %1037, %1023 ]
  %1041 = load i16, ptr %963, align 2, !tbaa !66
  %1042 = sext i16 %1041 to i64
  %1043 = getelementptr inbounds ptr, ptr %993, i64 %1042
  %1044 = load ptr, ptr %1043, align 8, !tbaa !62
  %1045 = load i16, ptr %964, align 4, !tbaa !67
  %1046 = sext i16 %1045 to i64
  %1047 = getelementptr inbounds i16, ptr %1044, i64 %1046
  %1048 = load i16, ptr %1047, align 2, !tbaa !75
  %1049 = zext i16 %1048 to i32
  %1050 = sub nsw i32 %1049, %1018
  %1051 = mul nsw i32 %1050, %833
  br i1 %966, label %1052, label %1085

1052:                                             ; preds = %1039, %1052
  %1053 = phi i64 [ %1055, %1052 ], [ 0, %1039 ]
  %1054 = phi i32 [ %1083, %1052 ], [ %1051, %1039 ]
  %1055 = add nuw nsw i64 %1053, 1
  %1056 = add nuw nsw i64 %1053, %981
  %1057 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %1056, i32 5
  %1058 = load i16, ptr %1057, align 2, !tbaa !66
  %1059 = sext i16 %1058 to i64
  %1060 = getelementptr inbounds ptr, ptr %993, i64 %1059
  %1061 = load ptr, ptr %1060, align 8, !tbaa !62
  %1062 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %1056, i32 4
  %1063 = load i16, ptr %1062, align 4, !tbaa !67
  %1064 = sext i16 %1063 to i64
  %1065 = getelementptr inbounds i16, ptr %1061, i64 %1064
  %1066 = load i16, ptr %1065, align 2, !tbaa !75
  %1067 = zext i16 %1066 to i32
  %1068 = sub nsw i64 %982, %1053
  %1069 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %1068, i32 5
  %1070 = load i16, ptr %1069, align 2, !tbaa !66
  %1071 = sext i16 %1070 to i64
  %1072 = getelementptr inbounds ptr, ptr %993, i64 %1071
  %1073 = load ptr, ptr %1072, align 8, !tbaa !62
  %1074 = getelementptr inbounds [17 x %struct.pix_pos], ptr %7, i64 0, i64 %1068, i32 4
  %1075 = load i16, ptr %1074, align 4, !tbaa !67
  %1076 = sext i16 %1075 to i64
  %1077 = getelementptr inbounds i16, ptr %1073, i64 %1076
  %1078 = load i16, ptr %1077, align 2, !tbaa !75
  %1079 = zext i16 %1078 to i32
  %1080 = sub nsw i32 %1067, %1079
  %1081 = trunc i64 %1055 to i32
  %1082 = mul nsw i32 %1080, %1081
  %1083 = add nsw i32 %1082, %1054
  %1084 = icmp eq i64 %1055, %984
  br i1 %1084, label %1085, label %1052, !llvm.loop !115

1085:                                             ; preds = %1052, %1039
  %1086 = phi i32 [ %1051, %1039 ], [ %1083, %1052 ]
  %1087 = mul nsw i32 %1040, %968
  %1088 = add nsw i32 %1087, %969
  %1089 = ashr i32 %1088, %970
  %1090 = mul nsw i32 %1086, %972
  %1091 = add nsw i32 %1090, %973
  %1092 = ashr i32 %1091, %974
  br i1 %975, label %1093, label %988

1093:                                             ; preds = %1085
  %1094 = add nuw nsw i32 %1049, %1009
  %1095 = shl nuw nsw i32 %1094, 4
  %1096 = add nuw nsw i32 %1095, 16
  br label %1097

1097:                                             ; preds = %1093, %1121
  %1098 = phi i64 [ 0, %1093 ], [ %1122, %1121 ]
  br i1 %978, label %1099, label %1121

1099:                                             ; preds = %1097
  %1100 = trunc i64 %1098 to i32
  %1101 = sub i32 %1100, %833
  %1102 = add i32 %1101, 1
  %1103 = mul nsw i32 %1102, %1092
  %1104 = add i32 %1096, %1103
  %1105 = getelementptr inbounds ptr, ptr %996, i64 %1098
  %1106 = load ptr, ptr %1105, align 8, !tbaa !62
  br label %1107

1107:                                             ; preds = %1099, %1107
  %1108 = phi i64 [ 0, %1099 ], [ %1119, %1107 ]
  %1109 = trunc i64 %1108 to i32
  %1110 = sub i32 %1109, %834
  %1111 = add i32 %1110, 1
  %1112 = mul nsw i32 %1111, %1089
  %1113 = add i32 %1104, %1112
  %1114 = ashr i32 %1113, 5
  %1115 = call i32 @llvm.smax.i32(i32 %1114, i32 0)
  %1116 = call i32 @llvm.smin.i32(i32 %1115, i32 %998)
  %1117 = trunc i32 %1116 to i16
  %1118 = getelementptr inbounds i16, ptr %1106, i64 %1108
  store i16 %1117, ptr %1118, align 2, !tbaa !75
  %1119 = add nuw nsw i64 %1108, 1
  %1120 = icmp eq i64 %1119, %986
  br i1 %1120, label %1121, label %1107, !llvm.loop !116

1121:                                             ; preds = %1107, %1097
  %1122 = add nuw nsw i64 %1098, 1
  %1123 = icmp eq i64 %1122, %985
  br i1 %1123, label %988, label %1097, !llvm.loop !117

1124:                                             ; preds = %988, %987
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #5
  br label %1126

1125:                                             ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 600) #5
  br label %1126

1126:                                             ; preds = %1125, %1124, %827, %762, %630
  ret void
}

declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!44, !36, i64 13520}
!44 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !45, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!45 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!46 = !{!47, !39, i64 849108}
!47 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !48, i64 849304, !48, i64 849624, !48, i64 849944, !48, i64 850264, !48, i64 850584, !48, i64 850904, !48, i64 851224, !48, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !51, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!48 = !{!"image_data", !49, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!49 = !{!"frame_format", !39, i64 0, !39, i64 4, !50, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!50 = !{!"double", !37, i64 0}
!51 = !{!"long", !37, i64 0}
!52 = !{!47, !39, i64 849112}
!53 = !{!47, !36, i64 8}
!54 = !{!55, !39, i64 2204}
!55 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!56 = !{!57, !39, i64 0}
!57 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!58 = !{!44, !36, i64 13544}
!59 = !{!57, !39, i64 4}
!60 = !{!37, !37, i64 0}
!61 = !{!44, !36, i64 1248}
!62 = !{!36, !36, i64 0}
!63 = !{!64, !36, i64 136}
!64 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !65, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!65 = !{!"pic_motion_params_old", !36, i64 0}
!66 = !{!57, !41, i64 14}
!67 = !{!57, !41, i64 12}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!35, !37, i64 373}
!72 = !{!64, !39, i64 268}
!73 = !{!47, !39, i64 849100}
!74 = !{!39, !39, i64 0}
!75 = !{!41, !41, i64 0}
!76 = distinct !{!76, !69, !70}
!77 = distinct !{!77, !69, !70}
!78 = distinct !{!78, !69, !70}
!79 = distinct !{!79, !69, !70}
!80 = distinct !{!80, !69, !70}
!81 = distinct !{!81, !69, !70}
!82 = distinct !{!82, !69, !70}
!83 = distinct !{!83, !69, !70}
!84 = distinct !{!84, !69, !70}
!85 = distinct !{!85, !69, !70}
!86 = distinct !{!86, !69, !70}
!87 = distinct !{!87, !69, !70}
!88 = distinct !{!88, !69, !70}
!89 = distinct !{!89, !69, !70}
!90 = distinct !{!90, !69, !70}
!91 = distinct !{!91, !69, !70}
!92 = distinct !{!92, !69, !70}
!93 = distinct !{!93, !69, !70}
!94 = distinct !{!94, !69, !70}
!95 = distinct !{!95, !69, !70}
!96 = distinct !{!96, !69, !70}
!97 = distinct !{!97, !69, !70}
!98 = distinct !{!98, !69, !70}
!99 = distinct !{!99, !69, !70}
!100 = distinct !{!100, !69, !70}
!101 = distinct !{!101, !69, !70}
!102 = distinct !{!102, !69, !70}
!103 = distinct !{!103, !69, !70}
!104 = distinct !{!104, !69, !70}
!105 = distinct !{!105, !69, !70}
!106 = distinct !{!106, !69, !70}
!107 = distinct !{!107, !69, !70}
!108 = distinct !{!108, !69, !70}
!109 = !{!47, !36, i64 856744}
!110 = distinct !{!110, !69, !70}
!111 = distinct !{!111, !69, !70}
!112 = distinct !{!112, !69, !70}
!113 = distinct !{!113, !69, !70}
!114 = distinct !{!114, !69, !70}
!115 = distinct !{!115, !69, !70}
!116 = distinct !{!116, !69, !70}
!117 = distinct !{!117, !69, !70}
