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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @intrapred_chroma_ver_mbaff(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %8 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 77
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 78
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 81, i64 1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %12, ptr noundef nonnull %2) #8
  %13 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %14, i64 0, i32 30
  %16 = load i32, ptr %15, align 4, !tbaa !25
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %2, align 4, !tbaa !27
  br i1 %17, label %30, label %19

19:                                               ; preds = %1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 128
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !30
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !31
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %1, %21
  %31 = phi i32 [ %29, %21 ], [ %18, %1 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19, %30
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #8
  br label %71

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 77
  %36 = load ptr, ptr %35, align 8, !tbaa !32
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !33
  %39 = getelementptr inbounds ptr, ptr %36, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !33
  %41 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 33
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = load ptr, ptr %42, align 8, !tbaa !33
  %44 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 5
  %45 = load i16, ptr %44, align 2, !tbaa !37
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !33
  %49 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 4
  %50 = load i16, ptr %49, align 4, !tbaa !38
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds i16, ptr %48, i64 %51
  %53 = getelementptr inbounds ptr, ptr %42, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !33
  %55 = getelementptr inbounds ptr, ptr %54, i64 %46
  %56 = load ptr, ptr %55, align 8, !tbaa !33
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
  %66 = load ptr, ptr %65, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %66, ptr align 2 %52, i64 %61, i1 false)
  %67 = getelementptr inbounds ptr, ptr %40, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %68, ptr align 2 %57, i64 %61, i1 false)
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, %62
  br i1 %70, label %71, label %63, !llvm.loop !39

71:                                               ; preds = %63, %34, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @getAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @intrapred_chroma(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  %3 = load i8, ptr %2, align 1, !tbaa !41
  switch i8 %3, label %8 [
    i8 0, label %4
    i8 1, label %5
    i8 2, label %6
    i8 3, label %7
  ]

4:                                                ; preds = %1
  tail call fastcc void @intrapred_chroma_dc(ptr noundef nonnull %0) #9
  br label %9

5:                                                ; preds = %1
  tail call fastcc void @intrapred_chroma_hor(ptr noundef nonnull %0) #9
  br label %9

6:                                                ; preds = %1
  tail call fastcc void @intrapred_chroma_ver(ptr noundef nonnull %0) #9
  br label %9

7:                                                ; preds = %1
  tail call fastcc void @intrapred_chroma_plane(ptr noundef nonnull %0) #9
  br label %9

8:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 600) #8
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intrapred_chroma_dc(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pix_pos, align 8
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 48
  %13 = load i32, ptr %12, align 4, !tbaa !42
  %14 = add nsw i32 %13, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  %15 = getelementptr inbounds %struct.storable_picture, ptr %11, i64 0, i32 33
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = getelementptr inbounds ptr, ptr %16, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 77
  %21 = load ptr, ptr %20, align 8, !tbaa !32
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !33
  %24 = getelementptr inbounds ptr, ptr %21, i64 2
  %25 = load ptr, ptr %24, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 81, i64 1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %26, ptr noundef nonnull %5) #8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %26, ptr noundef nonnull %6) #8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %26, ptr noundef nonnull %4) #8
  %27 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %28, i64 0, i32 30
  %30 = load i32, ptr %29, align 4, !tbaa !25
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %4, align 8, !tbaa !27
  br i1 %31, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, ptr %6, align 8, !tbaa !27
  br label %59

35:                                               ; preds = %1
  %36 = icmp eq i32 %32, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %39 = load ptr, ptr %38, align 8, !tbaa !29
  %40 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !30
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !31
  %45 = sext i8 %44 to i32
  br label %46

46:                                               ; preds = %35, %37
  %47 = phi i32 [ %45, %37 ], [ 0, %35 ]
  %48 = load i32, ptr %6, align 8, !tbaa !27
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 128
  %52 = load ptr, ptr %51, align 8, !tbaa !29
  %53 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !30
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %52, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !31
  %58 = sext i8 %57 to i32
  br label %59

59:                                               ; preds = %50, %46, %33
  %60 = phi i32 [ %32, %33 ], [ %47, %46 ], [ %47, %50 ]
  %61 = phi i32 [ %34, %33 ], [ 0, %46 ], [ %58, %50 ]
  %62 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 75
  %63 = load i32, ptr %62, align 4, !tbaa !43
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %129

65:                                               ; preds = %59
  %66 = sext i32 %14 to i64
  %67 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 69, i64 1
  %68 = load i32, ptr %67, align 4, !tbaa !44
  %69 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 69, i64 2
  %70 = load i32, ptr %69, align 4, !tbaa !44
  %71 = getelementptr inbounds { i64, i64 }, ptr %4, i64 0, i32 1
  %72 = zext nneg i32 %63 to i64
  br label %73

73:                                               ; preds = %65, %126
  %74 = phi i64 [ 0, %65 ], [ %127, %126 ]
  br label %75

75:                                               ; preds = %73, %123
  %76 = phi i64 [ 0, %73 ], [ %124, %123 ]
  %77 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %66, i64 %74, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !31
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %66, i64 %74, i64 %76
  %81 = load i8, ptr %80, align 1, !tbaa !31
  %82 = zext i8 %81 to i32
  store i32 %68, ptr %2, align 4, !tbaa !44
  store i32 %70, ptr %3, align 4, !tbaa !44
  %83 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %66, i64 %74, i64 %76
  %84 = load i32, ptr %83, align 4, !tbaa !44
  switch i32 %84, label %97 [
    i32 0, label %85
    i32 1, label %88
    i32 2, label %91
    i32 3, label %94
  ]

85:                                               ; preds = %75
  %86 = add nuw nsw i32 %79, 1
  %87 = load i64, ptr %71, align 8
  call fastcc void @intra_chroma_DC_all(ptr noundef %17, i32 noundef %60, i32 noundef %61, i64 %87, ptr noundef nonnull byval(%struct.pix_pos) align 8 %6, i32 noundef %82, i32 noundef %86, ptr noundef nonnull %2) #9
  call fastcc void @intra_chroma_DC_all(ptr noundef %19, i32 noundef %60, i32 noundef %61, i64 %87, ptr noundef nonnull byval(%struct.pix_pos) align 8 %6, i32 noundef %82, i32 noundef %86, ptr noundef nonnull %3) #9
  br label %97

88:                                               ; preds = %75
  %89 = add nuw nsw i32 %79, 1
  %90 = load i64, ptr %71, align 8
  call fastcc void @intra_chroma_DC_single(ptr noundef %17, i32 noundef %60, i32 noundef %61, i64 %90, ptr noundef nonnull byval(%struct.pix_pos) align 8 %6, i32 noundef %82, i32 noundef %89, ptr noundef nonnull %2, i32 noundef 1) #9
  call fastcc void @intra_chroma_DC_single(ptr noundef %19, i32 noundef %60, i32 noundef %61, i64 %90, ptr noundef nonnull byval(%struct.pix_pos) align 8 %6, i32 noundef %82, i32 noundef %89, ptr noundef nonnull %3, i32 noundef 1) #9
  br label %97

91:                                               ; preds = %75
  %92 = add nuw nsw i32 %79, 1
  %93 = load i64, ptr %71, align 8
  call fastcc void @intra_chroma_DC_single(ptr noundef %17, i32 noundef %60, i32 noundef %61, i64 %93, ptr noundef nonnull byval(%struct.pix_pos) align 8 %6, i32 noundef %82, i32 noundef %92, ptr noundef nonnull %2, i32 noundef 0) #9
  call fastcc void @intra_chroma_DC_single(ptr noundef %19, i32 noundef %60, i32 noundef %61, i64 %93, ptr noundef nonnull byval(%struct.pix_pos) align 8 %6, i32 noundef %82, i32 noundef %92, ptr noundef nonnull %3, i32 noundef 0) #9
  br label %97

94:                                               ; preds = %75
  %95 = add nuw nsw i32 %79, 1
  %96 = load i64, ptr %71, align 8
  call fastcc void @intra_chroma_DC_all(ptr noundef %17, i32 noundef %60, i32 noundef %61, i64 %96, ptr noundef nonnull byval(%struct.pix_pos) align 8 %6, i32 noundef %82, i32 noundef %95, ptr noundef nonnull %2) #9
  call fastcc void @intra_chroma_DC_all(ptr noundef %19, i32 noundef %60, i32 noundef %61, i64 %96, ptr noundef nonnull byval(%struct.pix_pos) align 8 %6, i32 noundef %82, i32 noundef %95, ptr noundef nonnull %3) #9
  br label %97

97:                                               ; preds = %75, %94, %91, %88, %85
  %98 = add nuw nsw i32 %79, 4
  %99 = add nuw nsw i32 %82, 4
  %100 = load i32, ptr %2, align 4, !tbaa !44
  %101 = trunc i32 %100 to i16
  %102 = load i32, ptr %3, align 4, !tbaa !44
  %103 = trunc i32 %102 to i16
  %104 = zext i8 %81 to i64
  %105 = zext i8 %78 to i64
  %106 = zext nneg i32 %98 to i64
  %107 = zext nneg i32 %99 to i64
  br label %108

108:                                              ; preds = %97, %120
  %109 = phi i64 [ %105, %97 ], [ %121, %120 ]
  %110 = getelementptr inbounds ptr, ptr %23, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !33
  %112 = getelementptr inbounds ptr, ptr %25, i64 %109
  %113 = load ptr, ptr %112, align 8, !tbaa !33
  br label %114

114:                                              ; preds = %108, %114
  %115 = phi i64 [ %104, %108 ], [ %118, %114 ]
  %116 = getelementptr inbounds i16, ptr %111, i64 %115
  store i16 %101, ptr %116, align 2, !tbaa !45
  %117 = getelementptr inbounds i16, ptr %113, i64 %115
  store i16 %103, ptr %117, align 2, !tbaa !45
  %118 = add nuw nsw i64 %115, 1
  %119 = icmp eq i64 %118, %107
  br i1 %119, label %120, label %114, !llvm.loop !46

120:                                              ; preds = %114
  %121 = add nuw nsw i64 %109, 1
  %122 = icmp eq i64 %121, %106
  br i1 %122, label %123, label %108, !llvm.loop !47

123:                                              ; preds = %120
  %124 = add nuw nsw i64 %76, 1
  %125 = icmp eq i64 %124, 4
  br i1 %125, label %126, label %75, !llvm.loop !48

126:                                              ; preds = %123
  %127 = add nuw nsw i64 %74, 1
  %128 = icmp eq i64 %127, %72
  br i1 %128, label %129, label %73, !llvm.loop !49

129:                                              ; preds = %126, %59
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intrapred_chroma_hor(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %5 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 81, i64 1
  call void @getNonAffNeighbour(ptr noundef %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %2) #8
  %6 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %7, i64 0, i32 30
  %9 = load i32, ptr %8, align 4, !tbaa !25
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr %2, align 4, !tbaa !27
  br i1 %10, label %24, label %12

12:                                               ; preds = %1
  %13 = icmp eq i32 %11, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.slice, ptr %15, i64 0, i32 128
  %17 = load ptr, ptr %16, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !30
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %17, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !31
  %23 = sext i8 %22 to i32
  br label %24

24:                                               ; preds = %1, %14
  %25 = phi i32 [ %23, %14 ], [ %11, %1 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12, %24
  call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #8
  br label %84

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 8, !tbaa !5
  %30 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %31 = load i32, ptr %30, align 8, !tbaa !23
  %32 = getelementptr inbounds %struct.slice, ptr %29, i64 0, i32 125
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.slice, ptr %29, i64 0, i32 77
  %35 = load ptr, ptr %34, align 8, !tbaa !32
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !33
  %38 = getelementptr inbounds ptr, ptr %35, i64 2
  %39 = load ptr, ptr %38, align 8, !tbaa !33
  %40 = getelementptr inbounds %struct.storable_picture, ptr %33, i64 0, i32 33
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = load ptr, ptr %41, align 8, !tbaa !33
  %43 = getelementptr inbounds ptr, ptr %41, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !33
  %45 = icmp sgt i32 %31, 0
  br i1 %45, label %46, label %84

46:                                               ; preds = %28
  %47 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %48 = load i32, ptr %47, align 4, !tbaa !17
  %49 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 4
  %50 = load i16, ptr %49, align 4, !tbaa !38
  %51 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 5
  %52 = load i16, ptr %51, align 2, !tbaa !37
  %53 = sext i16 %50 to i64
  %54 = icmp sgt i32 %48, 0
  %55 = sext i16 %52 to i64
  %56 = zext nneg i32 %31 to i64
  %57 = zext nneg i32 %48 to i64
  br label %58

58:                                               ; preds = %46, %81
  %59 = phi i64 [ %55, %46 ], [ %65, %81 ]
  %60 = phi i64 [ 0, %46 ], [ %82, %81 ]
  %61 = getelementptr inbounds ptr, ptr %42, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !33
  %63 = getelementptr inbounds i16, ptr %62, i64 %53
  %64 = load i16, ptr %63, align 2, !tbaa !45
  %65 = add nsw i64 %59, 1
  %66 = getelementptr inbounds ptr, ptr %44, i64 %59
  %67 = load ptr, ptr %66, align 8, !tbaa !33
  %68 = getelementptr inbounds i16, ptr %67, i64 %53
  %69 = load i16, ptr %68, align 2, !tbaa !45
  br i1 %54, label %70, label %81

70:                                               ; preds = %58
  %71 = getelementptr inbounds ptr, ptr %37, i64 %60
  %72 = load ptr, ptr %71, align 8, !tbaa !33
  %73 = getelementptr inbounds ptr, ptr %39, i64 %60
  %74 = load ptr, ptr %73, align 8, !tbaa !33
  br label %75

75:                                               ; preds = %70, %75
  %76 = phi i64 [ 0, %70 ], [ %79, %75 ]
  %77 = getelementptr inbounds i16, ptr %72, i64 %76
  store i16 %64, ptr %77, align 2, !tbaa !45
  %78 = getelementptr inbounds i16, ptr %74, i64 %76
  store i16 %69, ptr %78, align 2, !tbaa !45
  %79 = add nuw nsw i64 %76, 1
  %80 = icmp eq i64 %79, %57
  br i1 %80, label %81, label %75, !llvm.loop !50

81:                                               ; preds = %75, %58
  %82 = add nuw nsw i64 %60, 1
  %83 = icmp eq i64 %82, %56
  br i1 %83, label %84, label %58, !llvm.loop !51

84:                                               ; preds = %81, %28, %27
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intrapred_chroma_ver(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = load ptr, ptr %0, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 125
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  %8 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 77
  %9 = load i32, ptr %8, align 4, !tbaa !17
  %10 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 78
  %11 = load i32, ptr %10, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 81, i64 1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %12, ptr noundef nonnull %2) #8
  %13 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %14, i64 0, i32 30
  %16 = load i32, ptr %15, align 4, !tbaa !25
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %2, align 4, !tbaa !27
  br i1 %17, label %30, label %19

19:                                               ; preds = %1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 128
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !30
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !31
  %29 = sext i8 %28 to i32
  br label %30

30:                                               ; preds = %1, %21
  %31 = phi i32 [ %29, %21 ], [ %18, %1 ]
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19, %30
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #8
  br label %71

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.slice, ptr %3, i64 0, i32 77
  %36 = load ptr, ptr %35, align 8, !tbaa !32
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !33
  %39 = getelementptr inbounds ptr, ptr %36, i64 2
  %40 = load ptr, ptr %39, align 8, !tbaa !33
  %41 = getelementptr inbounds %struct.storable_picture, ptr %7, i64 0, i32 33
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  %43 = load ptr, ptr %42, align 8, !tbaa !33
  %44 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 5
  %45 = load i16, ptr %44, align 2, !tbaa !37
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %43, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !33
  %49 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 4
  %50 = load i16, ptr %49, align 4, !tbaa !38
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds i16, ptr %48, i64 %51
  %53 = getelementptr inbounds ptr, ptr %42, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !33
  %55 = getelementptr inbounds ptr, ptr %54, i64 %46
  %56 = load ptr, ptr %55, align 8, !tbaa !33
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
  %66 = load ptr, ptr %65, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %66, ptr align 2 %52, i64 %61, i1 false)
  %67 = getelementptr inbounds ptr, ptr %40, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %68, ptr align 2 %57, i64 %61, i1 false)
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, %62
  br i1 %70, label %71, label %63, !llvm.loop !52

71:                                               ; preds = %63, %34, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intrapred_chroma_plane(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = alloca %struct.pix_pos, align 4
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %10 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81, i64 1
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef -1, ptr noundef nonnull %10, ptr noundef nonnull %3) #8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %4) #8
  call void @getNonAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %10, ptr noundef nonnull %2) #8
  %11 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %12, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !25
  %15 = icmp eq i32 %14, 0
  %16 = load i32, ptr %2, align 4, !tbaa !27
  br i1 %15, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, ptr %4, align 4, !tbaa !27
  %19 = load i32, ptr %3, align 4, !tbaa !27
  br label %57

20:                                               ; preds = %1
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !30
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !31
  %30 = sext i8 %29 to i32
  br label %31

31:                                               ; preds = %20, %22
  %32 = phi i32 [ %30, %22 ], [ 0, %20 ]
  %33 = load i32, ptr %4, align 4, !tbaa !27
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !30
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !31
  %43 = sext i8 %42 to i32
  br label %44

44:                                               ; preds = %31, %35
  %45 = phi i32 [ %43, %35 ], [ 0, %31 ]
  %46 = load i32, ptr %3, align 4, !tbaa !27
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 128
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !30
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !31
  %56 = sext i8 %55 to i32
  br label %57

57:                                               ; preds = %48, %17
  %58 = phi i32 [ %19, %17 ], [ %56, %48 ]
  %59 = phi i32 [ %18, %17 ], [ %45, %48 ]
  %60 = phi i32 [ %16, %17 ], [ %32, %48 ]
  %61 = icmp ne i32 %58, 0
  %62 = icmp ne i32 %59, 0
  %63 = select i1 %61, i1 %62, i1 false
  %64 = icmp ne i32 %60, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %67, label %66

66:                                               ; preds = %44, %57
  call void @error(ptr noundef nonnull @.str.3, i32 noundef -1) #8
  br label %242

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 77
  %69 = load i32, ptr %68, align 4, !tbaa !17
  %70 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 78
  %71 = load i32, ptr %70, align 8, !tbaa !23
  %72 = ashr i32 %71, 1
  %73 = ashr i32 %69, 1
  %74 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 33
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 77
  %77 = load ptr, ptr %76, align 8, !tbaa !32
  %78 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 5
  %79 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 4
  %80 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 4
  %81 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %82 = sext i32 %69 to i64
  %83 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 5
  %84 = add nsw i32 %73, -1
  %85 = icmp sgt i32 %73, 1
  %86 = icmp sgt i32 %72, 1
  %87 = icmp eq i32 %69, 8
  %88 = select i1 %87, i32 17, i32 5
  %89 = shl nsw i32 %69, 1
  %90 = select i1 %87, i32 5, i32 6
  %91 = icmp eq i32 %71, 8
  %92 = select i1 %91, i32 17, i32 5
  %93 = shl nsw i32 %71, 1
  %94 = select i1 %91, i32 5, i32 6
  %95 = icmp sgt i32 %71, 0
  %96 = add nsw i32 %73, -2
  %97 = icmp sgt i32 %69, 0
  %98 = sext i32 %73 to i64
  %99 = sext i32 %96 to i64
  %100 = add nsw i32 %72, -1
  %101 = zext nneg i32 %84 to i64
  %102 = add nsw i32 %72, -2
  %103 = zext nneg i32 %71 to i64
  %104 = zext nneg i32 %69 to i64
  br label %106

105:                                              ; preds = %239, %197
  br i1 %107, label %106, label %242, !llvm.loop !53

106:                                              ; preds = %67, %105
  %107 = phi i1 [ true, %67 ], [ false, %105 ]
  %108 = phi i64 [ 0, %67 ], [ 1, %105 ]
  %109 = getelementptr inbounds ptr, ptr %75, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !33
  %111 = add nuw nsw i64 %108, 1
  %112 = getelementptr inbounds ptr, ptr %77, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !33
  %114 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 70, i64 %111
  %115 = load i32, ptr %114, align 4, !tbaa !44
  %116 = load i16, ptr %78, align 2, !tbaa !37
  %117 = sext i16 %116 to i64
  %118 = getelementptr inbounds ptr, ptr %110, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !33
  %120 = load i16, ptr %79, align 4, !tbaa !38
  %121 = sext i16 %120 to i64
  %122 = getelementptr inbounds i16, ptr %119, i64 %121
  %123 = load i16, ptr %80, align 4, !tbaa !38
  %124 = load i16, ptr %81, align 2, !tbaa !37
  %125 = sext i16 %124 to i32
  %126 = add nsw i32 %72, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr ptr, ptr %110, i64 %127
  %129 = getelementptr ptr, ptr %128, i64 -2
  %130 = getelementptr i16, ptr %122, i64 %82
  %131 = getelementptr i16, ptr %130, i64 -1
  %132 = load i16, ptr %131, align 2, !tbaa !45
  %133 = zext i16 %132 to i32
  %134 = load i16, ptr %83, align 2, !tbaa !37
  %135 = sext i16 %134 to i64
  %136 = getelementptr inbounds ptr, ptr %110, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !33
  %138 = sext i16 %123 to i64
  %139 = getelementptr inbounds i16, ptr %137, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !45
  %141 = zext i16 %140 to i32
  %142 = sub nsw i32 %133, %141
  %143 = mul nsw i32 %142, %73
  br i1 %85, label %144, label %162

144:                                              ; preds = %106
  %145 = getelementptr i16, ptr %122, i64 %98
  br label %146

146:                                              ; preds = %144, %146
  %147 = phi i64 [ 0, %144 ], [ %149, %146 ]
  %148 = phi i32 [ %143, %144 ], [ %160, %146 ]
  %149 = add nuw nsw i64 %147, 1
  %150 = getelementptr i16, ptr %145, i64 %147
  %151 = load i16, ptr %150, align 2, !tbaa !45
  %152 = zext i16 %151 to i32
  %153 = sub nsw i64 %99, %147
  %154 = getelementptr inbounds i16, ptr %122, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !45
  %156 = zext i16 %155 to i32
  %157 = sub nsw i32 %152, %156
  %158 = trunc i64 %149 to i32
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %159, %148
  %161 = icmp eq i64 %149, %101
  br i1 %161, label %162, label %146, !llvm.loop !54

162:                                              ; preds = %146, %106
  %163 = phi i32 [ %143, %106 ], [ %160, %146 ]
  %164 = add nsw i32 %71, %125
  %165 = sext i32 %164 to i64
  %166 = getelementptr ptr, ptr %110, i64 %165
  %167 = getelementptr ptr, ptr %166, i64 -1
  %168 = load ptr, ptr %167, align 8, !tbaa !33
  %169 = getelementptr inbounds i16, ptr %168, i64 %138
  %170 = load i16, ptr %169, align 2, !tbaa !45
  %171 = zext i16 %170 to i32
  %172 = sub nsw i32 %171, %141
  %173 = mul nsw i32 %172, %72
  br i1 %86, label %174, label %197

174:                                              ; preds = %162, %174
  %175 = phi i64 [ %180, %174 ], [ %127, %162 ]
  %176 = phi ptr [ %186, %174 ], [ %129, %162 ]
  %177 = phi i32 [ %179, %174 ], [ 0, %162 ]
  %178 = phi i32 [ %193, %174 ], [ %173, %162 ]
  %179 = add nuw nsw i32 %177, 1
  %180 = add nsw i64 %175, 1
  %181 = getelementptr inbounds ptr, ptr %110, i64 %175
  %182 = load ptr, ptr %181, align 8, !tbaa !33
  %183 = getelementptr inbounds i16, ptr %182, i64 %138
  %184 = load i16, ptr %183, align 2, !tbaa !45
  %185 = zext i16 %184 to i32
  %186 = getelementptr inbounds ptr, ptr %176, i64 -1
  %187 = load ptr, ptr %176, align 8, !tbaa !33
  %188 = getelementptr inbounds i16, ptr %187, i64 %138
  %189 = load i16, ptr %188, align 2, !tbaa !45
  %190 = zext i16 %189 to i32
  %191 = sub nsw i32 %185, %190
  %192 = mul nsw i32 %191, %179
  %193 = add nsw i32 %192, %178
  %194 = icmp eq i32 %177, %102
  br i1 %194, label %195, label %174, !llvm.loop !55

195:                                              ; preds = %174
  %196 = add i32 %100, %126
  br label %197

197:                                              ; preds = %195, %162
  %198 = phi i32 [ %173, %162 ], [ %193, %195 ]
  %199 = phi i32 [ %126, %162 ], [ %196, %195 ]
  %200 = mul nsw i32 %163, %88
  %201 = add nsw i32 %200, %89
  %202 = ashr i32 %201, %90
  %203 = mul nsw i32 %198, %92
  %204 = add nsw i32 %203, %93
  %205 = ashr i32 %204, %94
  br i1 %95, label %206, label %105

206:                                              ; preds = %197
  %207 = sext i32 %199 to i64
  %208 = getelementptr inbounds ptr, ptr %110, i64 %207
  %209 = load ptr, ptr %208, align 8, !tbaa !33
  %210 = getelementptr inbounds i16, ptr %209, i64 %138
  %211 = load i16, ptr %210, align 2, !tbaa !45
  %212 = zext i16 %211 to i32
  %213 = add nuw nsw i32 %212, %133
  %214 = shl nuw nsw i32 %213, 4
  %215 = add nuw nsw i32 %214, 16
  br label %216

216:                                              ; preds = %206, %239
  %217 = phi i64 [ 0, %206 ], [ %240, %239 ]
  br i1 %97, label %218, label %239

218:                                              ; preds = %216
  %219 = trunc i64 %217 to i32
  %220 = sub i32 %219, %72
  %221 = add i32 %220, 1
  %222 = mul nsw i32 %221, %205
  %223 = add i32 %215, %222
  %224 = getelementptr inbounds ptr, ptr %113, i64 %217
  %225 = load ptr, ptr %224, align 8, !tbaa !33
  br label %226

226:                                              ; preds = %218, %226
  %227 = phi i64 [ 0, %218 ], [ %237, %226 ]
  %228 = trunc i64 %227 to i32
  %229 = sub i32 %228, %73
  %230 = add i32 %229, 1
  %231 = mul i32 %230, %202
  %232 = add i32 %223, %231
  %233 = ashr i32 %232, 5
  %234 = call fastcc i32 @iClip1(i32 noundef %115, i32 noundef %233) #9
  %235 = trunc i32 %234 to i16
  %236 = getelementptr inbounds i16, ptr %225, i64 %227
  store i16 %235, ptr %236, align 2, !tbaa !45
  %237 = add nuw nsw i64 %227, 1
  %238 = icmp eq i64 %237, %104
  br i1 %238, label %239, label %226, !llvm.loop !56

239:                                              ; preds = %226, %216
  %240 = add nuw nsw i64 %217, 1
  %241 = icmp eq i64 %240, %103
  br i1 %241, label %105, label %216, !llvm.loop !57

242:                                              ; preds = %105, %66
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @intrapred_chroma_mbaff(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pix_pos, align 8
  %4 = alloca [17 x %struct.pix_pos], align 16
  %5 = alloca i32, align 4
  %6 = alloca [17 x %struct.pix_pos], align 16
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca [17 x %struct.pix_pos], align 16
  %10 = load ptr, ptr %0, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 125
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 48
  %16 = load i32, ptr %15, align 4, !tbaa !42
  %17 = add nsw i32 %16, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 40
  %19 = load i8, ptr %18, align 1, !tbaa !41
  switch i8 %19, label %685 [
    i8 0, label %20
    i8 1, label %192
    i8 2, label %324
    i8 3, label %389
  ]

20:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #7
  %21 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 78
  %22 = load i32, ptr %21, align 8, !tbaa !23
  %23 = ashr i32 %22, 1
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81, i64 1
  %27 = add nuw i32 %22, 1
  %28 = zext i32 %27 to i64
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi i64 [ 0, %25 ], [ %34, %29 ]
  %31 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %30
  %32 = trunc i64 %30 to i32
  %33 = add i32 %32, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %33, ptr noundef nonnull %26, ptr noundef nonnull %31) #8
  %34 = add nuw nsw i64 %30, 1
  %35 = icmp eq i64 %34, %28
  br i1 %35, label %36, label %29, !llvm.loop !58

36:                                               ; preds = %29, %20
  %37 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81, i64 1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %37, ptr noundef nonnull %3) #8
  %38 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !24
  %40 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %39, i64 0, i32 30
  %41 = load i32, ptr %40, align 4, !tbaa !25
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr %3, align 8, !tbaa !27
  br i1 %42, label %44, label %47

44:                                               ; preds = %36
  %45 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 1
  %46 = load i32, ptr %45, align 16, !tbaa !27
  br label %109

47:                                               ; preds = %36
  %48 = icmp eq i32 %43, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %51 = load ptr, ptr %50, align 8, !tbaa !29
  %52 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !30
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %51, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !31
  %57 = sext i8 %56 to i32
  br label %58

58:                                               ; preds = %47, %49
  %59 = phi i32 [ %57, %49 ], [ 0, %47 ]
  %60 = icmp sgt i32 %23, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %63 = zext nneg i32 %23 to i64
  br label %71

64:                                               ; preds = %86, %58
  %65 = phi i32 [ 1, %58 ], [ %88, %86 ]
  %66 = icmp slt i32 %23, %22
  br i1 %66, label %67, label %109

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %69 = sext i32 %23 to i64
  %70 = sext i32 %22 to i64
  br label %90

71:                                               ; preds = %61, %86
  %72 = phi i64 [ 0, %61 ], [ %74, %86 ]
  %73 = phi i32 [ 1, %61 ], [ %88, %86 ]
  %74 = add nuw nsw i64 %72, 1
  %75 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %74
  %76 = load i32, ptr %75, align 16, !tbaa !27
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %62, align 8, !tbaa !29
  %80 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %74, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !30
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !31
  %85 = sext i8 %84 to i32
  br label %86

86:                                               ; preds = %71, %78
  %87 = phi i32 [ %85, %78 ], [ 0, %71 ]
  %88 = and i32 %87, %73
  %89 = icmp eq i64 %74, %63
  br i1 %89, label %64, label %71, !llvm.loop !59

90:                                               ; preds = %67, %105
  %91 = phi i64 [ %69, %67 ], [ %93, %105 ]
  %92 = phi i32 [ 1, %67 ], [ %107, %105 ]
  %93 = add nsw i64 %91, 1
  %94 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %93
  %95 = load i32, ptr %94, align 16, !tbaa !27
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %90
  %98 = load ptr, ptr %68, align 8, !tbaa !29
  %99 = getelementptr inbounds [17 x %struct.pix_pos], ptr %4, i64 0, i64 %93, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !30
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %98, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !31
  %104 = sext i8 %103 to i32
  br label %105

105:                                              ; preds = %90, %97
  %106 = phi i32 [ %104, %97 ], [ 0, %90 ]
  %107 = and i32 %106, %92
  %108 = icmp eq i64 %93, %70
  br i1 %108, label %109, label %90, !llvm.loop !60

109:                                              ; preds = %105, %64, %44
  %110 = phi i32 [ %46, %44 ], [ %65, %64 ], [ %65, %105 ]
  %111 = phi i32 [ %46, %44 ], [ 1, %64 ], [ %107, %105 ]
  %112 = phi i32 [ %43, %44 ], [ %59, %64 ], [ %59, %105 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %113 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 33
  %114 = load ptr, ptr %113, align 8, !tbaa !34
  %115 = load ptr, ptr %114, align 8, !tbaa !33
  %116 = getelementptr inbounds ptr, ptr %114, i64 1
  %117 = load ptr, ptr %116, align 8, !tbaa !33
  %118 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %119 = load ptr, ptr %118, align 8, !tbaa !32
  %120 = getelementptr inbounds ptr, ptr %119, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !33
  %122 = getelementptr inbounds ptr, ptr %119, i64 2
  %123 = load ptr, ptr %122, align 8, !tbaa !33
  %124 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 75
  %125 = load i32, ptr %124, align 4, !tbaa !43
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %191

127:                                              ; preds = %109
  %128 = sext i32 %17 to i64
  %129 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 1
  %130 = load i32, ptr %129, align 4, !tbaa !44
  %131 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 69, i64 2
  %132 = load i32, ptr %131, align 4, !tbaa !44
  %133 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %134 = zext nneg i32 %125 to i64
  br label %135

135:                                              ; preds = %127, %188
  %136 = phi i64 [ 0, %127 ], [ %189, %188 ]
  br label %137

137:                                              ; preds = %135, %185
  %138 = phi i64 [ 0, %135 ], [ %186, %185 ]
  %139 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_y, i64 0, i64 %128, i64 %136, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !31
  %141 = zext i8 %140 to i32
  %142 = getelementptr inbounds [3 x [8 x [4 x i8]]], ptr @subblk_offset_x, i64 0, i64 %128, i64 %136, i64 %138
  %143 = load i8, ptr %142, align 1, !tbaa !31
  %144 = zext i8 %143 to i32
  store i32 %130, ptr %2, align 4, !tbaa !44
  store i32 %132, ptr %5, align 4, !tbaa !44
  %145 = getelementptr inbounds [3 x [4 x [4 x i32]]], ptr @intrapred_chroma_dc.block_pos, i64 0, i64 %128, i64 %136, i64 %138
  %146 = load i32, ptr %145, align 4, !tbaa !44
  switch i32 %146, label %159 [
    i32 0, label %147
    i32 1, label %150
    i32 2, label %153
    i32 3, label %156
  ]

147:                                              ; preds = %137
  %148 = add nuw nsw i32 %141, 1
  %149 = load i64, ptr %133, align 8
  call fastcc void @intra_chroma_DC_all_mbaff(ptr noundef %115, i32 noundef %112, i32 noundef %110, i64 %149, ptr noundef nonnull %4, i32 noundef %144, i32 noundef %148, ptr noundef nonnull %2) #9
  call fastcc void @intra_chroma_DC_all_mbaff(ptr noundef %117, i32 noundef %112, i32 noundef %110, i64 %149, ptr noundef nonnull %4, i32 noundef %144, i32 noundef %148, ptr noundef nonnull %5) #9
  br label %159

150:                                              ; preds = %137
  %151 = add nuw nsw i32 %141, 1
  %152 = load i64, ptr %133, align 8
  call fastcc void @intra_chroma_DC_single_mbaff(ptr noundef %115, i32 noundef %112, i32 noundef %110, i64 %152, ptr noundef nonnull %4, i32 noundef %144, i32 noundef %151, ptr noundef nonnull %2, i32 noundef 1) #9
  call fastcc void @intra_chroma_DC_single_mbaff(ptr noundef %117, i32 noundef %112, i32 noundef %110, i64 %152, ptr noundef nonnull %4, i32 noundef %144, i32 noundef %151, ptr noundef nonnull %5, i32 noundef 1) #9
  br label %159

153:                                              ; preds = %137
  %154 = add nuw nsw i32 %141, 1
  %155 = load i64, ptr %133, align 8
  call fastcc void @intra_chroma_DC_single_mbaff(ptr noundef %115, i32 noundef %112, i32 noundef %111, i64 %155, ptr noundef nonnull %4, i32 noundef %144, i32 noundef %154, ptr noundef nonnull %2, i32 noundef 0) #9
  call fastcc void @intra_chroma_DC_single_mbaff(ptr noundef %117, i32 noundef %112, i32 noundef %111, i64 %155, ptr noundef nonnull %4, i32 noundef %144, i32 noundef %154, ptr noundef nonnull %5, i32 noundef 0) #9
  br label %159

156:                                              ; preds = %137
  %157 = add nuw nsw i32 %141, 1
  %158 = load i64, ptr %133, align 8
  call fastcc void @intra_chroma_DC_all_mbaff(ptr noundef %115, i32 noundef %112, i32 noundef %111, i64 %158, ptr noundef nonnull %4, i32 noundef %144, i32 noundef %157, ptr noundef nonnull %2) #9
  call fastcc void @intra_chroma_DC_all_mbaff(ptr noundef %117, i32 noundef %112, i32 noundef %111, i64 %158, ptr noundef nonnull %4, i32 noundef %144, i32 noundef %157, ptr noundef nonnull %5) #9
  br label %159

159:                                              ; preds = %137, %156, %153, %150, %147
  %160 = add nuw nsw i32 %141, 4
  %161 = add nuw nsw i32 %144, 4
  %162 = load i32, ptr %2, align 4, !tbaa !44
  %163 = trunc i32 %162 to i16
  %164 = load i32, ptr %5, align 4, !tbaa !44
  %165 = trunc i32 %164 to i16
  %166 = zext i8 %143 to i64
  %167 = zext i8 %140 to i64
  %168 = zext nneg i32 %160 to i64
  %169 = zext nneg i32 %161 to i64
  br label %170

170:                                              ; preds = %159, %182
  %171 = phi i64 [ %167, %159 ], [ %183, %182 ]
  %172 = getelementptr inbounds ptr, ptr %121, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !33
  %174 = getelementptr inbounds ptr, ptr %123, i64 %171
  %175 = load ptr, ptr %174, align 8, !tbaa !33
  br label %176

176:                                              ; preds = %170, %176
  %177 = phi i64 [ %166, %170 ], [ %180, %176 ]
  %178 = getelementptr inbounds i16, ptr %173, i64 %177
  store i16 %163, ptr %178, align 2, !tbaa !45
  %179 = getelementptr inbounds i16, ptr %175, i64 %177
  store i16 %165, ptr %179, align 2, !tbaa !45
  %180 = add nuw nsw i64 %177, 1
  %181 = icmp eq i64 %180, %169
  br i1 %181, label %182, label %176, !llvm.loop !61

182:                                              ; preds = %176
  %183 = add nuw nsw i64 %171, 1
  %184 = icmp eq i64 %183, %168
  br i1 %184, label %185, label %170, !llvm.loop !62

185:                                              ; preds = %182
  %186 = add nuw nsw i64 %138, 1
  %187 = icmp eq i64 %186, 4
  br i1 %187, label %188, label %137, !llvm.loop !63

188:                                              ; preds = %185
  %189 = add nuw nsw i64 %136, 1
  %190 = icmp eq i64 %189, %134
  br i1 %190, label %191, label %135, !llvm.loop !64

191:                                              ; preds = %188, %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %686

192:                                              ; preds = %1
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %6) #7
  %193 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 77
  %194 = load i32, ptr %193, align 4, !tbaa !17
  %195 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 78
  %196 = load i32, ptr %195, align 8, !tbaa !23
  %197 = ashr i32 %196, 1
  %198 = icmp slt i32 %196, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81, i64 1
  %201 = add nuw i32 %196, 1
  %202 = zext i32 %201 to i64
  br label %203

203:                                              ; preds = %199, %203
  %204 = phi i64 [ 0, %199 ], [ %208, %203 ]
  %205 = getelementptr inbounds [17 x %struct.pix_pos], ptr %6, i64 0, i64 %204
  %206 = trunc i64 %204 to i32
  %207 = add i32 %206, -1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %207, ptr noundef nonnull %200, ptr noundef nonnull %205) #8
  %208 = add nuw nsw i64 %204, 1
  %209 = icmp eq i64 %208, %202
  br i1 %209, label %210, label %203, !llvm.loop !65

210:                                              ; preds = %203, %192
  %211 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !24
  %213 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %212, i64 0, i32 30
  %214 = load i32, ptr %213, align 4, !tbaa !25
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %210
  %217 = icmp sgt i32 %197, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %220 = zext nneg i32 %197 to i64
  br label %231

221:                                              ; preds = %210
  %222 = getelementptr inbounds [17 x %struct.pix_pos], ptr %6, i64 0, i64 1
  %223 = load i32, ptr %222, align 16, !tbaa !27
  br label %269

224:                                              ; preds = %246, %216
  %225 = phi i32 [ 1, %216 ], [ %248, %246 ]
  %226 = icmp slt i32 %197, %196
  br i1 %226, label %227, label %269

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %229 = sext i32 %197 to i64
  %230 = sext i32 %196 to i64
  br label %250

231:                                              ; preds = %218, %246
  %232 = phi i64 [ 0, %218 ], [ %234, %246 ]
  %233 = phi i32 [ 1, %218 ], [ %248, %246 ]
  %234 = add nuw nsw i64 %232, 1
  %235 = getelementptr inbounds [17 x %struct.pix_pos], ptr %6, i64 0, i64 %234
  %236 = load i32, ptr %235, align 16, !tbaa !27
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %231
  %239 = load ptr, ptr %219, align 8, !tbaa !29
  %240 = getelementptr inbounds [17 x %struct.pix_pos], ptr %6, i64 0, i64 %234, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !30
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, ptr %239, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !31
  %245 = sext i8 %244 to i32
  br label %246

246:                                              ; preds = %231, %238
  %247 = phi i32 [ %245, %238 ], [ 0, %231 ]
  %248 = and i32 %247, %233
  %249 = icmp eq i64 %234, %220
  br i1 %249, label %224, label %231, !llvm.loop !66

250:                                              ; preds = %227, %265
  %251 = phi i64 [ %229, %227 ], [ %253, %265 ]
  %252 = phi i32 [ 1, %227 ], [ %267, %265 ]
  %253 = add nsw i64 %251, 1
  %254 = getelementptr inbounds [17 x %struct.pix_pos], ptr %6, i64 0, i64 %253
  %255 = load i32, ptr %254, align 16, !tbaa !27
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %250
  %258 = load ptr, ptr %228, align 8, !tbaa !29
  %259 = getelementptr inbounds [17 x %struct.pix_pos], ptr %6, i64 0, i64 %253, i32 1
  %260 = load i32, ptr %259, align 4, !tbaa !30
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, ptr %258, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !31
  %264 = sext i8 %263 to i32
  br label %265

265:                                              ; preds = %250, %257
  %266 = phi i32 [ %264, %257 ], [ 0, %250 ]
  %267 = and i32 %266, %252
  %268 = icmp eq i64 %253, %230
  br i1 %268, label %269, label %250, !llvm.loop !67

269:                                              ; preds = %265, %224, %221
  %270 = phi i32 [ %223, %221 ], [ %225, %224 ], [ %225, %265 ]
  %271 = phi i32 [ %223, %221 ], [ 1, %224 ], [ %267, %265 ]
  %272 = icmp ne i32 %270, 0
  %273 = icmp ne i32 %271, 0
  %274 = select i1 %272, i1 %273, i1 false
  br i1 %274, label %276, label %275

275:                                              ; preds = %269
  call void @error(ptr noundef nonnull @.str.2, i32 noundef -1) #8
  br label %323

276:                                              ; preds = %269
  %277 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %278 = load ptr, ptr %277, align 8, !tbaa !32
  %279 = getelementptr inbounds ptr, ptr %278, i64 1
  %280 = load ptr, ptr %279, align 8, !tbaa !33
  %281 = getelementptr inbounds ptr, ptr %278, i64 2
  %282 = load ptr, ptr %281, align 8, !tbaa !33
  %283 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 33
  %284 = load ptr, ptr %283, align 8, !tbaa !34
  %285 = load ptr, ptr %284, align 8, !tbaa !33
  %286 = getelementptr inbounds ptr, ptr %284, i64 1
  %287 = load ptr, ptr %286, align 8, !tbaa !33
  %288 = icmp sgt i32 %196, 0
  br i1 %288, label %289, label %323

289:                                              ; preds = %276
  %290 = icmp sgt i32 %194, 0
  %291 = zext nneg i32 %196 to i64
  %292 = zext nneg i32 %194 to i64
  br label %295

293:                                              ; preds = %317, %295
  %294 = icmp eq i64 %297, %291
  br i1 %294, label %323, label %295, !llvm.loop !68

295:                                              ; preds = %289, %293
  %296 = phi i64 [ 0, %289 ], [ %297, %293 ]
  %297 = add nuw nsw i64 %296, 1
  %298 = getelementptr inbounds [17 x %struct.pix_pos], ptr %6, i64 0, i64 %297, i32 5
  %299 = load i16, ptr %298, align 2, !tbaa !37
  %300 = sext i16 %299 to i64
  %301 = getelementptr inbounds ptr, ptr %285, i64 %300
  %302 = load ptr, ptr %301, align 8, !tbaa !33
  %303 = getelementptr inbounds [17 x %struct.pix_pos], ptr %6, i64 0, i64 %297, i32 4
  %304 = load i16, ptr %303, align 4, !tbaa !38
  %305 = sext i16 %304 to i64
  %306 = getelementptr inbounds i16, ptr %302, i64 %305
  %307 = load i16, ptr %306, align 2, !tbaa !45
  %308 = getelementptr inbounds ptr, ptr %287, i64 %300
  %309 = load ptr, ptr %308, align 8, !tbaa !33
  %310 = getelementptr inbounds i16, ptr %309, i64 %305
  %311 = load i16, ptr %310, align 2, !tbaa !45
  br i1 %290, label %312, label %293

312:                                              ; preds = %295
  %313 = getelementptr inbounds ptr, ptr %280, i64 %296
  %314 = load ptr, ptr %313, align 8, !tbaa !33
  %315 = getelementptr inbounds ptr, ptr %282, i64 %296
  %316 = load ptr, ptr %315, align 8, !tbaa !33
  br label %317

317:                                              ; preds = %312, %317
  %318 = phi i64 [ 0, %312 ], [ %321, %317 ]
  %319 = getelementptr inbounds i16, ptr %314, i64 %318
  store i16 %307, ptr %319, align 2, !tbaa !45
  %320 = getelementptr inbounds i16, ptr %316, i64 %318
  store i16 %311, ptr %320, align 2, !tbaa !45
  %321 = add nuw nsw i64 %318, 1
  %322 = icmp eq i64 %321, %292
  br i1 %322, label %293, label %317, !llvm.loop !69

323:                                              ; preds = %293, %276, %275
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %6) #7
  br label %686

324:                                              ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %325 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 77
  %326 = load i32, ptr %325, align 4, !tbaa !17
  %327 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 78
  %328 = load i32, ptr %327, align 8, !tbaa !23
  %329 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81, i64 1
  call void @getAffNeighbour(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %329, ptr noundef nonnull %7) #8
  %330 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %331 = load ptr, ptr %330, align 8, !tbaa !24
  %332 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %331, i64 0, i32 30
  %333 = load i32, ptr %332, align 4, !tbaa !25
  %334 = icmp eq i32 %333, 0
  %335 = load i32, ptr %7, align 4, !tbaa !27
  br i1 %334, label %347, label %336

336:                                              ; preds = %324
  %337 = icmp eq i32 %335, 0
  br i1 %337, label %350, label %338

338:                                              ; preds = %336
  %339 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %340 = load ptr, ptr %339, align 8, !tbaa !29
  %341 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %342 = load i32, ptr %341, align 4, !tbaa !30
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, ptr %340, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !31
  %346 = sext i8 %345 to i32
  br label %347

347:                                              ; preds = %324, %338
  %348 = phi i32 [ %346, %338 ], [ %335, %324 ]
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %336, %347
  call void @error(ptr noundef nonnull @.str, i32 noundef -1) #8
  br label %388

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %353 = load ptr, ptr %352, align 8, !tbaa !32
  %354 = getelementptr inbounds ptr, ptr %353, i64 1
  %355 = load ptr, ptr %354, align 8, !tbaa !33
  %356 = getelementptr inbounds ptr, ptr %353, i64 2
  %357 = load ptr, ptr %356, align 8, !tbaa !33
  %358 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 33
  %359 = load ptr, ptr %358, align 8, !tbaa !34
  %360 = load ptr, ptr %359, align 8, !tbaa !33
  %361 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 5
  %362 = load i16, ptr %361, align 2, !tbaa !37
  %363 = sext i16 %362 to i64
  %364 = getelementptr inbounds ptr, ptr %360, i64 %363
  %365 = load ptr, ptr %364, align 8, !tbaa !33
  %366 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 4
  %367 = load i16, ptr %366, align 4, !tbaa !38
  %368 = sext i16 %367 to i64
  %369 = getelementptr inbounds i16, ptr %365, i64 %368
  %370 = getelementptr inbounds ptr, ptr %359, i64 1
  %371 = load ptr, ptr %370, align 8, !tbaa !33
  %372 = getelementptr inbounds ptr, ptr %371, i64 %363
  %373 = load ptr, ptr %372, align 8, !tbaa !33
  %374 = getelementptr inbounds i16, ptr %373, i64 %368
  %375 = icmp sgt i32 %328, 0
  br i1 %375, label %376, label %388

376:                                              ; preds = %351
  %377 = sext i32 %326 to i64
  %378 = shl nsw i64 %377, 1
  %379 = zext nneg i32 %328 to i64
  br label %380

380:                                              ; preds = %376, %380
  %381 = phi i64 [ 0, %376 ], [ %386, %380 ]
  %382 = getelementptr inbounds ptr, ptr %355, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %383, ptr align 2 %369, i64 %378, i1 false)
  %384 = getelementptr inbounds ptr, ptr %357, i64 %381
  %385 = load ptr, ptr %384, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %385, ptr align 2 %374, i64 %378, i1 false)
  %386 = add nuw nsw i64 %381, 1
  %387 = icmp eq i64 %386, %379
  br i1 %387, label %388, label %380, !llvm.loop !70

388:                                              ; preds = %380, %351, %350
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  br label %686

389:                                              ; preds = %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %9) #7
  %390 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 77
  %391 = load i32, ptr %390, align 4, !tbaa !17
  %392 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 78
  %393 = load i32, ptr %392, align 8, !tbaa !23
  %394 = ashr i32 %393, 1
  %395 = ashr i32 %391, 1
  %396 = icmp slt i32 %393, 0
  br i1 %396, label %410, label %397

397:                                              ; preds = %389
  %398 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 160
  %399 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81, i64 1
  %400 = add nuw i32 %393, 1
  %401 = zext i32 %400 to i64
  br label %402

402:                                              ; preds = %397, %402
  %403 = phi i64 [ 0, %397 ], [ %408, %402 ]
  %404 = load ptr, ptr %398, align 8, !tbaa !71
  %405 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %403
  %406 = trunc i64 %403 to i32
  %407 = add i32 %406, -1
  call void %404(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %407, ptr noundef nonnull %399, ptr noundef nonnull %405) #8
  %408 = add nuw nsw i64 %403, 1
  %409 = icmp eq i64 %408, %401
  br i1 %409, label %410, label %402, !llvm.loop !72

410:                                              ; preds = %402, %389
  %411 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 160
  %412 = load ptr, ptr %411, align 8, !tbaa !71
  %413 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 81, i64 1
  call void %412(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %413, ptr noundef nonnull %8) #8
  %414 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !24
  %416 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %415, i64 0, i32 30
  %417 = load i32, ptr %416, align 4, !tbaa !25
  %418 = icmp eq i32 %417, 0
  %419 = load i32, ptr %8, align 4, !tbaa !27
  br i1 %418, label %420, label %424

420:                                              ; preds = %410
  %421 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 1
  %422 = load i32, ptr %421, align 16, !tbaa !27
  %423 = load i32, ptr %9, align 16, !tbaa !27
  br label %499

424:                                              ; preds = %410
  %425 = icmp eq i32 %419, 0
  br i1 %425, label %435, label %426

426:                                              ; preds = %424
  %427 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %428 = load ptr, ptr %427, align 8, !tbaa !29
  %429 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %430 = load i32, ptr %429, align 4, !tbaa !30
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i8, ptr %428, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !31
  %434 = sext i8 %433 to i32
  br label %435

435:                                              ; preds = %424, %426
  %436 = phi i32 [ %434, %426 ], [ 0, %424 ]
  %437 = icmp sgt i32 %394, 0
  br i1 %437, label %438, label %441

438:                                              ; preds = %435
  %439 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %440 = zext nneg i32 %394 to i64
  br label %448

441:                                              ; preds = %463, %435
  %442 = phi i32 [ 1, %435 ], [ %465, %463 ]
  %443 = icmp slt i32 %394, %393
  br i1 %443, label %444, label %486

444:                                              ; preds = %441
  %445 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %446 = sext i32 %394 to i64
  %447 = sext i32 %393 to i64
  br label %467

448:                                              ; preds = %438, %463
  %449 = phi i64 [ 0, %438 ], [ %451, %463 ]
  %450 = phi i32 [ 1, %438 ], [ %465, %463 ]
  %451 = add nuw nsw i64 %449, 1
  %452 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %451
  %453 = load i32, ptr %452, align 16, !tbaa !27
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %463, label %455

455:                                              ; preds = %448
  %456 = load ptr, ptr %439, align 8, !tbaa !29
  %457 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %451, i32 1
  %458 = load i32, ptr %457, align 4, !tbaa !30
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i8, ptr %456, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !31
  %462 = sext i8 %461 to i32
  br label %463

463:                                              ; preds = %448, %455
  %464 = phi i32 [ %462, %455 ], [ 0, %448 ]
  %465 = and i32 %464, %450
  %466 = icmp eq i64 %451, %440
  br i1 %466, label %441, label %448, !llvm.loop !73

467:                                              ; preds = %444, %482
  %468 = phi i64 [ %446, %444 ], [ %470, %482 ]
  %469 = phi i32 [ 1, %444 ], [ %484, %482 ]
  %470 = add nsw i64 %468, 1
  %471 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %470
  %472 = load i32, ptr %471, align 16, !tbaa !27
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %482, label %474

474:                                              ; preds = %467
  %475 = load ptr, ptr %445, align 8, !tbaa !29
  %476 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %470, i32 1
  %477 = load i32, ptr %476, align 4, !tbaa !30
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, ptr %475, i64 %478
  %480 = load i8, ptr %479, align 1, !tbaa !31
  %481 = sext i8 %480 to i32
  br label %482

482:                                              ; preds = %467, %474
  %483 = phi i32 [ %481, %474 ], [ 0, %467 ]
  %484 = and i32 %483, %469
  %485 = icmp eq i64 %470, %447
  br i1 %485, label %486, label %467, !llvm.loop !74

486:                                              ; preds = %482, %441
  %487 = phi i32 [ 1, %441 ], [ %484, %482 ]
  %488 = load i32, ptr %9, align 16, !tbaa !27
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %499, label %490

490:                                              ; preds = %486
  %491 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 128
  %492 = load ptr, ptr %491, align 8, !tbaa !29
  %493 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %494 = load i32, ptr %493, align 4, !tbaa !30
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, ptr %492, i64 %495
  %497 = load i8, ptr %496, align 1, !tbaa !31
  %498 = sext i8 %497 to i32
  br label %499

499:                                              ; preds = %490, %486, %420
  %500 = phi i32 [ %419, %420 ], [ %436, %486 ], [ %436, %490 ]
  %501 = phi i32 [ %422, %420 ], [ %487, %486 ], [ %487, %490 ]
  %502 = phi i32 [ %422, %420 ], [ %442, %486 ], [ %442, %490 ]
  %503 = phi i32 [ %423, %420 ], [ 0, %486 ], [ %498, %490 ]
  %504 = icmp ne i32 %503, 0
  %505 = icmp ne i32 %502, 0
  %506 = select i1 %504, i1 %505, i1 false
  %507 = icmp ne i32 %501, 0
  %508 = select i1 %506, i1 %507, i1 false
  %509 = icmp ne i32 %500, 0
  %510 = select i1 %508, i1 %509, i1 false
  br i1 %510, label %511, label %548

511:                                              ; preds = %499
  %512 = getelementptr inbounds %struct.storable_picture, ptr %14, i64 0, i32 33
  %513 = load ptr, ptr %512, align 8, !tbaa !34
  %514 = getelementptr inbounds %struct.slice, ptr %10, i64 0, i32 77
  %515 = load ptr, ptr %514, align 8, !tbaa !32
  %516 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 5
  %517 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 4
  %518 = sext i32 %391 to i64
  %519 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 5
  %520 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 4
  %521 = add nsw i32 %395, -1
  %522 = icmp sgt i32 %395, 1
  %523 = sext i32 %393 to i64
  %524 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %523, i32 5
  %525 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %523, i32 4
  %526 = add nsw i32 %394, -1
  %527 = icmp sgt i32 %394, 1
  %528 = icmp eq i32 %391, 8
  %529 = select i1 %528, i32 17, i32 5
  %530 = shl nsw i32 %391, 1
  %531 = select i1 %528, i32 5, i32 6
  %532 = icmp eq i32 %393, 8
  %533 = select i1 %532, i32 17, i32 5
  %534 = shl nsw i32 %393, 1
  %535 = select i1 %532, i32 5, i32 6
  %536 = icmp sgt i32 %393, 0
  %537 = add nsw i32 %395, -2
  %538 = add nsw i32 %394, 1
  %539 = icmp sgt i32 %391, 0
  %540 = sext i32 %395 to i64
  %541 = sext i32 %537 to i64
  %542 = sext i32 %538 to i64
  %543 = sext i32 %526 to i64
  %544 = zext nneg i32 %521 to i64
  %545 = zext nneg i32 %526 to i64
  %546 = zext nneg i32 %393 to i64
  %547 = zext nneg i32 %391 to i64
  br label %550

548:                                              ; preds = %499
  call void @error(ptr noundef nonnull @.str.3, i32 noundef -1) #8
  br label %684

549:                                              ; preds = %681, %646
  br i1 %551, label %550, label %684, !llvm.loop !75

550:                                              ; preds = %511, %549
  %551 = phi i1 [ true, %511 ], [ false, %549 ]
  %552 = phi i64 [ 0, %511 ], [ 1, %549 ]
  %553 = getelementptr inbounds ptr, ptr %513, i64 %552
  %554 = load ptr, ptr %553, align 8, !tbaa !33
  %555 = add nuw nsw i64 %552, 1
  %556 = getelementptr inbounds ptr, ptr %515, i64 %555
  %557 = load ptr, ptr %556, align 8, !tbaa !33
  %558 = getelementptr inbounds %struct.video_par, ptr %12, i64 0, i32 70, i64 %555
  %559 = load i32, ptr %558, align 4, !tbaa !44
  %560 = load i16, ptr %516, align 2, !tbaa !37
  %561 = sext i16 %560 to i64
  %562 = getelementptr inbounds ptr, ptr %554, i64 %561
  %563 = load ptr, ptr %562, align 8, !tbaa !33
  %564 = load i16, ptr %517, align 4, !tbaa !38
  %565 = sext i16 %564 to i64
  %566 = getelementptr inbounds i16, ptr %563, i64 %565
  %567 = getelementptr i16, ptr %566, i64 %518
  %568 = getelementptr i16, ptr %567, i64 -1
  %569 = load i16, ptr %568, align 2, !tbaa !45
  %570 = zext i16 %569 to i32
  %571 = load i16, ptr %519, align 2, !tbaa !37
  %572 = sext i16 %571 to i64
  %573 = getelementptr inbounds ptr, ptr %554, i64 %572
  %574 = load ptr, ptr %573, align 8, !tbaa !33
  %575 = load i16, ptr %520, align 4, !tbaa !38
  %576 = sext i16 %575 to i64
  %577 = getelementptr inbounds i16, ptr %574, i64 %576
  %578 = load i16, ptr %577, align 2, !tbaa !45
  %579 = zext i16 %578 to i32
  %580 = sub nsw i32 %570, %579
  %581 = mul nsw i32 %580, %395
  br i1 %522, label %582, label %600

582:                                              ; preds = %550
  %583 = getelementptr i16, ptr %566, i64 %540
  br label %584

584:                                              ; preds = %582, %584
  %585 = phi i64 [ 0, %582 ], [ %587, %584 ]
  %586 = phi i32 [ %581, %582 ], [ %598, %584 ]
  %587 = add nuw nsw i64 %585, 1
  %588 = getelementptr i16, ptr %583, i64 %585
  %589 = load i16, ptr %588, align 2, !tbaa !45
  %590 = zext i16 %589 to i32
  %591 = sub nsw i64 %541, %585
  %592 = getelementptr inbounds i16, ptr %566, i64 %591
  %593 = load i16, ptr %592, align 2, !tbaa !45
  %594 = zext i16 %593 to i32
  %595 = sub nsw i32 %590, %594
  %596 = trunc i64 %587 to i32
  %597 = mul nsw i32 %595, %596
  %598 = add nsw i32 %597, %586
  %599 = icmp eq i64 %587, %544
  br i1 %599, label %600, label %584, !llvm.loop !76

600:                                              ; preds = %584, %550
  %601 = phi i32 [ %581, %550 ], [ %598, %584 ]
  %602 = load i16, ptr %524, align 2, !tbaa !37
  %603 = sext i16 %602 to i64
  %604 = getelementptr inbounds ptr, ptr %554, i64 %603
  %605 = load ptr, ptr %604, align 8, !tbaa !33
  %606 = load i16, ptr %525, align 4, !tbaa !38
  %607 = sext i16 %606 to i64
  %608 = getelementptr inbounds i16, ptr %605, i64 %607
  %609 = load i16, ptr %608, align 2, !tbaa !45
  %610 = zext i16 %609 to i32
  %611 = sub nsw i32 %610, %579
  %612 = mul nsw i32 %611, %394
  br i1 %527, label %613, label %646

613:                                              ; preds = %600, %613
  %614 = phi i64 [ %616, %613 ], [ 0, %600 ]
  %615 = phi i32 [ %644, %613 ], [ %612, %600 ]
  %616 = add nuw nsw i64 %614, 1
  %617 = add nuw nsw i64 %614, %542
  %618 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %617, i32 5
  %619 = load i16, ptr %618, align 2, !tbaa !37
  %620 = sext i16 %619 to i64
  %621 = getelementptr inbounds ptr, ptr %554, i64 %620
  %622 = load ptr, ptr %621, align 8, !tbaa !33
  %623 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %617, i32 4
  %624 = load i16, ptr %623, align 4, !tbaa !38
  %625 = sext i16 %624 to i64
  %626 = getelementptr inbounds i16, ptr %622, i64 %625
  %627 = load i16, ptr %626, align 2, !tbaa !45
  %628 = zext i16 %627 to i32
  %629 = sub nsw i64 %543, %614
  %630 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %629, i32 5
  %631 = load i16, ptr %630, align 2, !tbaa !37
  %632 = sext i16 %631 to i64
  %633 = getelementptr inbounds ptr, ptr %554, i64 %632
  %634 = load ptr, ptr %633, align 8, !tbaa !33
  %635 = getelementptr inbounds [17 x %struct.pix_pos], ptr %9, i64 0, i64 %629, i32 4
  %636 = load i16, ptr %635, align 4, !tbaa !38
  %637 = sext i16 %636 to i64
  %638 = getelementptr inbounds i16, ptr %634, i64 %637
  %639 = load i16, ptr %638, align 2, !tbaa !45
  %640 = zext i16 %639 to i32
  %641 = sub nsw i32 %628, %640
  %642 = trunc i64 %616 to i32
  %643 = mul nsw i32 %641, %642
  %644 = add nsw i32 %643, %615
  %645 = icmp eq i64 %616, %545
  br i1 %645, label %646, label %613, !llvm.loop !77

646:                                              ; preds = %613, %600
  %647 = phi i32 [ %612, %600 ], [ %644, %613 ]
  %648 = mul nsw i32 %601, %529
  %649 = add nsw i32 %648, %530
  %650 = ashr i32 %649, %531
  %651 = mul nsw i32 %647, %533
  %652 = add nsw i32 %651, %534
  %653 = ashr i32 %652, %535
  br i1 %536, label %654, label %549

654:                                              ; preds = %646
  %655 = add nuw nsw i32 %610, %570
  %656 = shl nuw nsw i32 %655, 4
  %657 = add nuw nsw i32 %656, 16
  br label %658

658:                                              ; preds = %654, %681
  %659 = phi i64 [ 0, %654 ], [ %682, %681 ]
  br i1 %539, label %660, label %681

660:                                              ; preds = %658
  %661 = trunc i64 %659 to i32
  %662 = sub i32 %661, %394
  %663 = add i32 %662, 1
  %664 = mul nsw i32 %663, %653
  %665 = add i32 %657, %664
  %666 = getelementptr inbounds ptr, ptr %557, i64 %659
  %667 = load ptr, ptr %666, align 8, !tbaa !33
  br label %668

668:                                              ; preds = %660, %668
  %669 = phi i64 [ 0, %660 ], [ %679, %668 ]
  %670 = trunc i64 %669 to i32
  %671 = sub i32 %670, %395
  %672 = add i32 %671, 1
  %673 = mul nsw i32 %672, %650
  %674 = add i32 %665, %673
  %675 = ashr i32 %674, 5
  %676 = call fastcc i32 @iClip1(i32 noundef %559, i32 noundef %675) #9
  %677 = trunc i32 %676 to i16
  %678 = getelementptr inbounds i16, ptr %667, i64 %669
  store i16 %677, ptr %678, align 2, !tbaa !45
  %679 = add nuw nsw i64 %669, 1
  %680 = icmp eq i64 %679, %547
  br i1 %680, label %681, label %668, !llvm.loop !78

681:                                              ; preds = %668, %658
  %682 = add nuw nsw i64 %659, 1
  %683 = icmp eq i64 %682, %546
  br i1 %683, label %549, label %658, !llvm.loop !79

684:                                              ; preds = %549, %548
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %686

685:                                              ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.1, i32 noundef 600) #8
  br label %686

686:                                              ; preds = %685, %684, %388, %323, %191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @intra_chroma_DC_all_mbaff(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7) unnamed_addr #4 {
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %8
  %11 = ashr i64 %3, 48
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = lshr i64 %3, 16
  %15 = trunc i64 %14 to i32
  %16 = ashr i32 %15, 16
  %17 = sext i32 %5 to i64
  %18 = sext i32 %16 to i64
  %19 = getelementptr i16, ptr %13, i64 %18
  %20 = add nuw nsw i32 %5, 3
  %21 = sext i32 %20 to i64
  br label %22

22:                                               ; preds = %10, %22
  %23 = phi i64 [ %17, %10 ], [ %29, %22 ]
  %24 = phi i32 [ 0, %10 ], [ %28, %22 ]
  %25 = getelementptr i16, ptr %19, i64 %23
  %26 = load i16, ptr %25, align 2, !tbaa !45
  %27 = zext i16 %26 to i32
  %28 = add nuw nsw i32 %24, %27
  %29 = add nsw i64 %23, 1
  %30 = icmp slt i64 %23, %21
  br i1 %30, label %22, label %31, !llvm.loop !80

31:                                               ; preds = %22
  %32 = icmp eq i32 %2, 0
  br i1 %32, label %62, label %35

33:                                               ; preds = %8
  %34 = icmp eq i32 %2, 0
  br i1 %34, label %70, label %35

35:                                               ; preds = %31, %33
  %36 = phi i32 [ 0, %33 ], [ %28, %31 ]
  %37 = sext i32 %6 to i64
  %38 = add nuw nsw i32 %6, 3
  %39 = sext i32 %38 to i64
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ %37, %35 ], [ %55, %40 ]
  %42 = phi i32 [ 0, %35 ], [ %54, %40 ]
  %43 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 %41, i32 5
  %44 = load i16, ptr %43, align 2, !tbaa !37
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !33
  %48 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 %41, i32 4
  %49 = load i16, ptr %48, align 4, !tbaa !38
  %50 = sext i16 %49 to i64
  %51 = getelementptr inbounds i16, ptr %47, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !45
  %53 = zext i16 %52 to i32
  %54 = add nuw nsw i32 %42, %53
  %55 = add nsw i64 %41, 1
  %56 = icmp slt i64 %41, %39
  br i1 %56, label %40, label %57, !llvm.loop !81

57:                                               ; preds = %40
  br i1 %9, label %65, label %58

58:                                               ; preds = %57
  %59 = add i32 %36, 4
  %60 = add i32 %59, %54
  %61 = ashr i32 %60, 3
  br label %68

62:                                               ; preds = %31
  %63 = add nuw nsw i32 %28, 2
  %64 = lshr i32 %63, 2
  br label %68

65:                                               ; preds = %57
  %66 = add nuw nsw i32 %54, 2
  %67 = lshr i32 %66, 2
  br label %68

68:                                               ; preds = %58, %65, %62
  %69 = phi i32 [ %64, %62 ], [ %67, %65 ], [ %61, %58 ]
  store i32 %69, ptr %7, align 4, !tbaa !44
  br label %70

70:                                               ; preds = %68, %33
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @intra_chroma_DC_single_mbaff(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, i32 noundef %8) unnamed_addr #4 {
  %10 = icmp ne i32 %8, 0
  %11 = icmp ne i32 %1, 0
  %12 = icmp eq i32 %2, 0
  %13 = or i1 %12, %10
  %14 = and i1 %11, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %9
  %16 = ashr i64 %3, 48
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = lshr i64 %3, 16
  %20 = trunc i64 %19 to i32
  %21 = ashr i32 %20, 16
  %22 = sext i32 %5 to i64
  %23 = sext i32 %21 to i64
  %24 = getelementptr i16, ptr %18, i64 %23
  %25 = add nuw nsw i32 %5, 3
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %15, %27
  %28 = phi i64 [ %22, %15 ], [ %34, %27 ]
  %29 = phi i32 [ 0, %15 ], [ %33, %27 ]
  %30 = getelementptr i16, ptr %24, i64 %28
  %31 = load i16, ptr %30, align 2, !tbaa !45
  %32 = zext i16 %31 to i32
  %33 = add nuw nsw i32 %29, %32
  %34 = add nsw i64 %28, 1
  %35 = icmp slt i64 %28, %26
  br i1 %35, label %27, label %58, !llvm.loop !82

36:                                               ; preds = %9
  br i1 %12, label %62, label %37

37:                                               ; preds = %36
  %38 = sext i32 %6 to i64
  %39 = add nuw nsw i32 %6, 3
  %40 = sext i32 %39 to i64
  br label %41

41:                                               ; preds = %37, %41
  %42 = phi i64 [ %38, %37 ], [ %56, %41 ]
  %43 = phi i32 [ 0, %37 ], [ %55, %41 ]
  %44 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 %42, i32 5
  %45 = load i16, ptr %44, align 2, !tbaa !37
  %46 = sext i16 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !33
  %49 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 %42, i32 4
  %50 = load i16, ptr %49, align 4, !tbaa !38
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds i16, ptr %48, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !45
  %54 = zext i16 %53 to i32
  %55 = add nuw nsw i32 %43, %54
  %56 = add nsw i64 %42, 1
  %57 = icmp slt i64 %42, %40
  br i1 %57, label %41, label %58, !llvm.loop !83

58:                                               ; preds = %41, %27
  %59 = phi i32 [ %33, %27 ], [ %55, %41 ]
  %60 = add nuw nsw i32 %59, 2
  %61 = lshr i32 %60, 2
  store i32 %61, ptr %7, align 4, !tbaa !44
  br label %62

62:                                               ; preds = %58, %36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #9
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #9
  ret i32 %4
}

; Function Attrs: optsize
declare void @getNonAffNeighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @intra_chroma_DC_all(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr nocapture noundef readonly byval(%struct.pix_pos) align 8 %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7) unnamed_addr #4 {
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %8
  %11 = ashr i64 %3, 48
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  %14 = lshr i64 %3, 16
  %15 = trunc i64 %14 to i32
  %16 = ashr i32 %15, 16
  %17 = add nsw i32 %16, %5
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i16, ptr %13, i64 %18
  %20 = load <4 x i16>, ptr %19, align 2, !tbaa !45
  %21 = zext <4 x i16> %20 to <4 x i32>
  %22 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %21)
  %23 = icmp eq i32 %2, 0
  br i1 %23, label %55, label %26

24:                                               ; preds = %8
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %63, label %26

26:                                               ; preds = %24, %10
  %27 = phi i32 [ 0, %24 ], [ %22, %10 ]
  %28 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %29 = load i16, ptr %28, align 2, !tbaa !37
  %30 = sext i16 %29 to i32
  %31 = add nsw i32 %30, %6
  %32 = sext i32 %31 to i64
  %33 = getelementptr ptr, ptr %0, i64 %32
  %34 = getelementptr ptr, ptr %33, i64 -1
  %35 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %36 = load i16, ptr %35, align 4, !tbaa !38
  %37 = sext i16 %36 to i64
  br label %38

38:                                               ; preds = %26, %38
  %39 = phi i32 [ 0, %26 ], [ %48, %38 ]
  %40 = phi ptr [ %34, %26 ], [ %42, %38 ]
  %41 = phi i32 [ 0, %26 ], [ %47, %38 ]
  %42 = getelementptr inbounds ptr, ptr %40, i64 1
  %43 = load ptr, ptr %40, align 8, !tbaa !33
  %44 = getelementptr inbounds i16, ptr %43, i64 %37
  %45 = load i16, ptr %44, align 2, !tbaa !45
  %46 = zext i16 %45 to i32
  %47 = add nuw nsw i32 %41, %46
  %48 = add nuw nsw i32 %39, 1
  %49 = icmp eq i32 %48, 4
  br i1 %49, label %50, label %38, !llvm.loop !84

50:                                               ; preds = %38
  br i1 %9, label %58, label %51

51:                                               ; preds = %50
  %52 = add i32 %27, 4
  %53 = add i32 %52, %47
  %54 = ashr i32 %53, 3
  br label %61

55:                                               ; preds = %10
  %56 = add nuw nsw i32 %22, 2
  %57 = lshr i32 %56, 2
  br label %61

58:                                               ; preds = %50
  %59 = add nuw nsw i32 %47, 2
  %60 = lshr i32 %59, 2
  br label %61

61:                                               ; preds = %51, %58, %55
  %62 = phi i32 [ %57, %55 ], [ %60, %58 ], [ %54, %51 ]
  store i32 %62, ptr %7, align 4, !tbaa !44
  br label %63

63:                                               ; preds = %61, %24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @intra_chroma_DC_single(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr nocapture noundef readonly byval(%struct.pix_pos) align 8 %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, i32 noundef %8) unnamed_addr #4 {
  %10 = icmp ne i32 %8, 0
  %11 = icmp ne i32 %1, 0
  %12 = icmp eq i32 %2, 0
  %13 = or i1 %12, %10
  %14 = and i1 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = ashr i64 %3, 48
  %17 = getelementptr inbounds ptr, ptr %0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = lshr i64 %3, 16
  %20 = trunc i64 %19 to i32
  %21 = ashr i32 %20, 16
  %22 = add nsw i32 %21, %5
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, ptr %18, i64 %23
  %25 = load <4 x i16>, ptr %24, align 2, !tbaa !45
  %26 = zext <4 x i16> %25 to <4 x i32>
  %27 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %26)
  br label %52

28:                                               ; preds = %9
  br i1 %12, label %56, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %31 = load i16, ptr %30, align 2, !tbaa !37
  %32 = sext i16 %31 to i32
  %33 = add nsw i32 %32, %6
  %34 = sext i32 %33 to i64
  %35 = getelementptr ptr, ptr %0, i64 %34
  %36 = getelementptr ptr, ptr %35, i64 -1
  %37 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !38
  %39 = sext i16 %38 to i64
  br label %40

40:                                               ; preds = %29, %40
  %41 = phi i32 [ 0, %29 ], [ %50, %40 ]
  %42 = phi ptr [ %36, %29 ], [ %44, %40 ]
  %43 = phi i32 [ 0, %29 ], [ %49, %40 ]
  %44 = getelementptr inbounds ptr, ptr %42, i64 1
  %45 = load ptr, ptr %42, align 8, !tbaa !33
  %46 = getelementptr inbounds i16, ptr %45, i64 %39
  %47 = load i16, ptr %46, align 2, !tbaa !45
  %48 = zext i16 %47 to i32
  %49 = add nuw nsw i32 %43, %48
  %50 = add nuw nsw i32 %41, 1
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %40, !llvm.loop !85

52:                                               ; preds = %40, %15
  %53 = phi i32 [ %27, %15 ], [ %49, %40 ]
  %54 = add nuw nsw i32 %53, 2
  %55 = lshr i32 %54, 2
  store i32 %55, ptr %7, align 4, !tbaa !44
  br label %56

56:                                               ; preds = %52, %28
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"macroblock", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !8, i64 72, !8, i64 80, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !12, i64 108, !8, i64 110, !8, i64 111, !12, i64 112, !12, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !12, i64 152, !8, i64 154, !10, i64 284, !8, i64 288, !8, i64 312, !8, i64 336, !10, i64 360, !8, i64 364, !8, i64 368, !8, i64 372, !8, i64 373, !8, i64 374, !12, i64 376, !12, i64 378, !12, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !10, i64 420, !10, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !8, i64 472}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 8}
!14 = !{!15, !7, i64 13520}
!15 = !{!"slice", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !7, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !8, i64 88, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !12, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !8, i64 136, !10, i64 144, !10, i64 148, !10, i64 152, !10, i64 156, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !8, i64 180, !10, i64 184, !10, i64 188, !10, i64 192, !10, i64 196, !10, i64 200, !10, i64 204, !10, i64 208, !10, i64 212, !10, i64 216, !10, i64 220, !10, i64 224, !10, i64 228, !10, i64 232, !10, i64 236, !10, i64 240, !10, i64 244, !7, i64 248, !8, i64 256, !8, i64 264, !7, i64 312, !7, i64 320, !7, i64 328, !8, i64 336, !8, i64 1104, !8, i64 1112, !8, i64 1128, !8, i64 1144, !8, i64 1160, !10, i64 1176, !10, i64 1180, !10, i64 1184, !16, i64 1188, !12, i64 1220, !12, i64 1222, !12, i64 1224, !10, i64 1228, !10, i64 1232, !10, i64 1236, !10, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !8, i64 1288, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !8, i64 1392, !8, i64 2544, !8, i64 3696, !8, i64 8304, !8, i64 12912, !8, i64 13008, !10, i64 13264, !10, i64 13268, !12, i64 13272, !12, i64 13274, !12, i64 13276, !12, i64 13278, !7, i64 13280, !7, i64 13288, !7, i64 13296, !12, i64 13304, !12, i64 13306, !10, i64 13308, !10, i64 13312, !7, i64 13320, !7, i64 13328, !10, i64 13336, !8, i64 13340, !7, i64 13408, !7, i64 13416, !7, i64 13424, !7, i64 13432, !7, i64 13440, !7, i64 13448, !7, i64 13456, !7, i64 13464, !7, i64 13472, !7, i64 13480, !7, i64 13488, !7, i64 13496, !10, i64 13504, !7, i64 13512, !7, i64 13520, !7, i64 13528, !7, i64 13536, !7, i64 13544, !8, i64 13552}
!16 = !{!"nalunitheadermvcext_tag", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28}
!17 = !{!18, !10, i64 849108}
!18 = !{!"video_par", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 132120, !7, i64 699416, !8, i64 699424, !10, i64 848672, !10, i64 848676, !10, i64 848680, !10, i64 848684, !7, i64 848688, !7, i64 848696, !7, i64 848704, !10, i64 848712, !10, i64 848716, !10, i64 848720, !10, i64 848724, !10, i64 848728, !7, i64 848736, !7, i64 848744, !8, i64 848752, !10, i64 848776, !10, i64 848780, !10, i64 848784, !10, i64 848788, !10, i64 848792, !7, i64 848800, !8, i64 848808, !7, i64 848832, !7, i64 848840, !8, i64 848848, !10, i64 848872, !10, i64 848876, !7, i64 848880, !7, i64 848888, !8, i64 848896, !10, i64 848920, !7, i64 848928, !7, i64 848936, !10, i64 848944, !10, i64 848948, !10, i64 848952, !10, i64 848956, !10, i64 848960, !10, i64 848964, !10, i64 848968, !10, i64 848972, !10, i64 848976, !10, i64 848980, !10, i64 848984, !10, i64 848988, !10, i64 848992, !10, i64 848996, !10, i64 849000, !10, i64 849004, !10, i64 849008, !10, i64 849012, !10, i64 849016, !10, i64 849020, !10, i64 849024, !10, i64 849028, !10, i64 849032, !10, i64 849036, !12, i64 849040, !12, i64 849042, !8, i64 849044, !10, i64 849052, !10, i64 849056, !8, i64 849060, !8, i64 849072, !10, i64 849084, !10, i64 849088, !10, i64 849092, !10, i64 849096, !10, i64 849100, !10, i64 849104, !10, i64 849108, !10, i64 849112, !10, i64 849116, !10, i64 849120, !8, i64 849124, !8, i64 849148, !8, i64 849172, !10, i64 849196, !10, i64 849200, !10, i64 849204, !10, i64 849208, !10, i64 849212, !10, i64 849216, !10, i64 849220, !10, i64 849224, !10, i64 849228, !10, i64 849232, !10, i64 849236, !10, i64 849240, !10, i64 849244, !10, i64 849248, !10, i64 849252, !10, i64 849256, !10, i64 849260, !10, i64 849264, !10, i64 849268, !10, i64 849272, !10, i64 849276, !10, i64 849280, !10, i64 849284, !7, i64 849288, !7, i64 849296, !19, i64 849304, !19, i64 849624, !19, i64 849944, !19, i64 850264, !19, i64 850584, !19, i64 850904, !19, i64 851224, !19, i64 851544, !10, i64 851864, !10, i64 851868, !10, i64 851872, !22, i64 851880, !10, i64 851888, !8, i64 851892, !10, i64 855988, !10, i64 855992, !10, i64 855996, !10, i64 856000, !10, i64 856004, !10, i64 856008, !10, i64 856012, !7, i64 856016, !7, i64 856024, !7, i64 856032, !7, i64 856040, !7, i64 856048, !8, i64 856056, !7, i64 856456, !8, i64 856464, !7, i64 856488, !7, i64 856496, !7, i64 856504, !10, i64 856512, !7, i64 856520, !8, i64 856528, !7, i64 856608, !7, i64 856616, !7, i64 856624, !7, i64 856632, !10, i64 856640, !10, i64 856644, !10, i64 856648, !7, i64 856656, !7, i64 856664, !8, i64 856672, !8, i64 856688, !7, i64 856704, !7, i64 856712, !10, i64 856720, !7, i64 856728, !7, i64 856736, !7, i64 856744, !7, i64 856752, !7, i64 856760, !7, i64 856768, !7, i64 856776, !7, i64 856784, !7, i64 856792, !7, i64 856800, !7, i64 856808, !7, i64 856816, !10, i64 856824, !7, i64 856832, !10, i64 856840, !10, i64 856844, !10, i64 856848, !10, i64 856852, !10, i64 856856, !10, i64 856860, !10, i64 856864, !7, i64 856872}
!19 = !{!"image_data", !20, i64 0, !8, i64 136, !8, i64 160, !8, i64 184, !8, i64 208, !8, i64 232, !8, i64 256, !8, i64 280, !8, i64 292, !8, i64 304}
!20 = !{!"frame_format", !10, i64 0, !10, i64 4, !21, i64 8, !8, i64 16, !8, i64 28, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !8, i64 72, !10, i64 84, !8, i64 88, !8, i64 100, !8, i64 112, !10, i64 124, !10, i64 128}
!21 = !{!"double", !8, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!18, !10, i64 849112}
!24 = !{!18, !7, i64 8}
!25 = !{!26, !10, i64 2204}
!26 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !8, i64 24, !8, i64 72, !8, i64 456, !8, i64 1992, !8, i64 2016, !10, i64 2040, !10, i64 2044, !10, i64 2048, !8, i64 2052, !8, i64 2084, !8, i64 2116, !10, i64 2148, !10, i64 2152, !10, i64 2156, !7, i64 2160, !10, i64 2168, !10, i64 2172, !10, i64 2176, !10, i64 2180, !10, i64 2184, !10, i64 2188, !10, i64 2192, !10, i64 2196, !10, i64 2200, !10, i64 2204, !10, i64 2208}
!27 = !{!28, !10, i64 0}
!28 = !{!"pix_pos", !10, i64 0, !10, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!29 = !{!15, !7, i64 13544}
!30 = !{!28, !10, i64 4}
!31 = !{!8, !8, i64 0}
!32 = !{!15, !7, i64 1248}
!33 = !{!7, !7, i64 0}
!34 = !{!35, !7, i64 136}
!35 = !{!"storable_picture", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !8, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !12, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !8, i64 160, !36, i64 184, !8, i64 192, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !8, i64 300, !10, i64 308, !7, i64 312, !10, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !7, i64 336, !10, i64 344, !10, i64 348, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !10, i64 368, !7, i64 376, !10, i64 384, !10, i64 388, !8, i64 392, !8, i64 400}
!36 = !{!"pic_motion_params_old", !7, i64 0}
!37 = !{!28, !12, i64 14}
!38 = !{!28, !12, i64 12}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!6, !8, i64 373}
!42 = !{!35, !10, i64 268}
!43 = !{!18, !10, i64 849100}
!44 = !{!10, !10, i64 0}
!45 = !{!12, !12, i64 0}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = distinct !{!48, !40}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = distinct !{!52, !40}
!53 = distinct !{!53, !40}
!54 = distinct !{!54, !40}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !40}
!59 = distinct !{!59, !40}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = distinct !{!67, !40}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40}
!71 = !{!18, !7, i64 856744}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !40}
!75 = distinct !{!75, !40}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !40}
!79 = distinct !{!79, !40}
!80 = distinct !{!80, !40}
!81 = distinct !{!81, !40}
!82 = distinct !{!82, !40}
!83 = distinct !{!83, !40}
!84 = distinct !{!84, !40}
!85 = distinct !{!85, !40}
