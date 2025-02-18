; ModuleID = 'ldecod_src/mbuffer_mvc.c'
source_filename = "ldecod_src/mbuffer_mvc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.decoded_picture_buffer = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, [1024 x i32], i32, i32, ptr }
%struct.frame_store = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, [2 x i32], [2 x i32] }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"init_lists: fs_list0\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"init_lists: fs_listlt\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"init_lists: fs_listinterview0\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"init_lists: fs_list1\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"init_lists: fs_listinterview1\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Invalid remapping_of_pic_nums_idc command\00", align 1
@.str.7 = private unnamed_addr constant [98 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@.str.9 = private unnamed_addr constant [98 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture', invalid bitstream\00", align 1
@str = private unnamed_addr constant [79 x i8] c"RefPicList0[ num_ref_idx_l0_active_minus1 ] is equal to 'no reference picture'\00", align 1
@str.10 = private unnamed_addr constant [79 x i8] c"RefPicList1[ num_ref_idx_l1_active_minus1 ] is equal to 'no reference picture'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @reorder_short_term(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = tail call ptr @get_short_term_pic(ptr noundef %11, i32 noundef %3) #10
  %13 = load i32, ptr %4, align 4, !tbaa !43
  %14 = icmp sgt i32 %13, %2
  br i1 %14, label %26, label %15

15:                                               ; preds = %6
  %16 = add i32 %2, 1
  %17 = sext i32 %16 to i64
  %18 = sext i32 %13 to i64
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ %17, %15 ], [ %24, %19 ]
  %21 = getelementptr ptr, ptr %9, i64 %20
  %22 = getelementptr ptr, ptr %21, i64 -1
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  store ptr %23, ptr %21, align 8, !tbaa !34
  %24 = add nsw i64 %20, -1
  %25 = icmp sgt i64 %24, %18
  br i1 %25, label %19, label %26, !llvm.loop !44

26:                                               ; preds = %19, %6
  %27 = add i32 %13, 1
  store i32 %27, ptr %4, align 4, !tbaa !43
  %28 = sext i32 %13 to i64
  %29 = getelementptr inbounds ptr, ptr %9, i64 %28
  store ptr %12, ptr %29, align 8, !tbaa !34
  %30 = icmp sgt i32 %13, %2
  br i1 %30, label %62, label %31

31:                                               ; preds = %26
  %32 = icmp eq i32 %5, -1
  %33 = sext i32 %27 to i64
  %34 = sext i32 %2 to i64
  br label %35

35:                                               ; preds = %31, %58
  %36 = phi i64 [ %33, %31 ], [ %60, %58 ]
  %37 = phi i32 [ %27, %31 ], [ %59, %58 ]
  %38 = getelementptr inbounds ptr, ptr %9, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !34
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.storable_picture, ptr %39, i64 0, i32 10
  %43 = load i8, ptr %42, align 8, !tbaa !47
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.storable_picture, ptr %39, i64 0, i32 7
  %47 = load i32, ptr %46, align 4, !tbaa !50
  %48 = icmp eq i32 %47, %3
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  br i1 %32, label %58, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.storable_picture, ptr %39, i64 0, i32 64
  %52 = load i32, ptr %51, align 8, !tbaa !51
  %53 = icmp eq i32 %52, %5
  br i1 %53, label %58, label %54

54:                                               ; preds = %50, %45, %41
  %55 = add nsw i32 %37, 1
  %56 = sext i32 %37 to i64
  %57 = getelementptr inbounds ptr, ptr %9, i64 %56
  store ptr %39, ptr %57, align 8, !tbaa !34
  br label %58

58:                                               ; preds = %35, %54, %50, %49
  %59 = phi i32 [ %55, %54 ], [ %37, %50 ], [ %37, %49 ], [ %37, %35 ]
  %60 = add nsw i64 %36, 1
  %61 = icmp sgt i64 %36, %34
  br i1 %61, label %62, label %35, !llvm.loop !52

62:                                               ; preds = %58, %26
  ret void
}

declare ptr @get_short_term_pic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @reorder_long_term(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = tail call ptr @get_long_term_pic(ptr noundef %8, i32 noundef %3) #10
  %10 = load i32, ptr %4, align 4, !tbaa !43
  %11 = icmp sgt i32 %10, %2
  br i1 %11, label %23, label %12

12:                                               ; preds = %6
  %13 = add i32 %2, 1
  %14 = sext i32 %13 to i64
  %15 = sext i32 %10 to i64
  br label %16

16:                                               ; preds = %12, %16
  %17 = phi i64 [ %14, %12 ], [ %21, %16 ]
  %18 = getelementptr ptr, ptr %1, i64 %17
  %19 = getelementptr ptr, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  store ptr %20, ptr %18, align 8, !tbaa !34
  %21 = add nsw i64 %17, -1
  %22 = icmp sgt i64 %21, %15
  br i1 %22, label %16, label %23, !llvm.loop !53

23:                                               ; preds = %16, %6
  %24 = add i32 %10, 1
  store i32 %24, ptr %4, align 4, !tbaa !43
  %25 = sext i32 %10 to i64
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  store ptr %9, ptr %26, align 8, !tbaa !34
  %27 = icmp sgt i32 %10, %2
  br i1 %27, label %59, label %28

28:                                               ; preds = %23
  %29 = icmp eq i32 %5, -1
  %30 = sext i32 %24 to i64
  %31 = sext i32 %2 to i64
  br label %32

32:                                               ; preds = %28, %55
  %33 = phi i64 [ %30, %28 ], [ %57, %55 ]
  %34 = phi i32 [ %24, %28 ], [ %56, %55 ]
  %35 = getelementptr inbounds ptr, ptr %1, i64 %33
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.storable_picture, ptr %36, i64 0, i32 10
  %40 = load i8, ptr %39, align 8, !tbaa !47
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.storable_picture, ptr %36, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !54
  %45 = icmp eq i32 %44, %3
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  br i1 %29, label %55, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.storable_picture, ptr %36, i64 0, i32 64
  %49 = load i32, ptr %48, align 8, !tbaa !51
  %50 = icmp eq i32 %49, %5
  br i1 %50, label %55, label %51

51:                                               ; preds = %47, %42, %38
  %52 = add nsw i32 %34, 1
  %53 = sext i32 %34 to i64
  %54 = getelementptr inbounds ptr, ptr %1, i64 %53
  store ptr %36, ptr %54, align 8, !tbaa !34
  br label %55

55:                                               ; preds = %32, %51, %47, %46
  %56 = phi i32 [ %52, %51 ], [ %34, %47 ], [ %34, %46 ], [ %34, %32 ]
  %57 = add nsw i64 %33, 1
  %58 = icmp sgt i64 %33, %31
  br i1 %58, label %59, label %32, !llvm.loop !55

59:                                               ; preds = %55, %23
  ret void
}

declare ptr @get_long_term_pic(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @init_lists_i_slice_mvc(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %2, align 4, !tbaa !56
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %5, align 1, !tbaa !58
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_p_slice_mvc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %105

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %23 = zext i32 %18 to i64
  br label %24

24:                                               ; preds = %20, %51
  %25 = phi i64 [ 0, %20 ], [ %53, %51 ]
  %26 = phi i32 [ 0, %20 ], [ %52, %51 ]
  %27 = load ptr, ptr %21, align 8, !tbaa !66
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = load i32, ptr %29, align 8, !tbaa !67
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !69
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !70
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 10
  %40 = load i8, ptr %39, align 8, !tbaa !47
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 64
  %44 = load i32, ptr %43, align 8, !tbaa !51
  %45 = icmp eq i32 %44, %8
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr %22, align 8, !tbaa !34
  %48 = add nsw i32 %26, 1
  %49 = sext i32 %26 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  store ptr %34, ptr %50, align 8, !tbaa !34
  br label %51

51:                                               ; preds = %24, %46, %42, %38, %32
  %52 = phi i32 [ %26, %38 ], [ %48, %46 ], [ %26, %42 ], [ %26, %32 ], [ %26, %24 ]
  %53 = add nuw nsw i64 %25, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %55, label %24, !llvm.loop !71

55:                                               ; preds = %51, %16
  %56 = phi i32 [ 0, %16 ], [ %52, %51 ]
  %57 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = sext i32 %56 to i64
  tail call void @qsort(ptr noundef %58, i64 noundef %59, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #10
  %60 = trunc i32 %56 to i8
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %60, ptr %61, align 8, !tbaa !58
  %62 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %63 = load i32, ptr %62, align 4, !tbaa !72
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %95, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %67 = zext i32 %63 to i64
  br label %68

68:                                               ; preds = %65, %91
  %69 = phi i64 [ 0, %65 ], [ %93, %91 ]
  %70 = phi i32 [ %56, %65 ], [ %92, %91 ]
  %71 = load ptr, ptr %66, align 8, !tbaa !73
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !34
  %74 = load i32, ptr %73, align 8, !tbaa !67
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !69
  %79 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 10
  %80 = load i8, ptr %79, align 8, !tbaa !47
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 64
  %84 = load i32, ptr %83, align 8, !tbaa !51
  %85 = icmp eq i32 %84, %8
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load ptr, ptr %57, align 8, !tbaa !34
  %88 = add nsw i32 %70, 1
  %89 = sext i32 %70 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  store ptr %78, ptr %90, align 8, !tbaa !34
  br label %91

91:                                               ; preds = %68, %86, %82, %76
  %92 = phi i32 [ %88, %86 ], [ %70, %82 ], [ %70, %76 ], [ %70, %68 ]
  %93 = add nuw nsw i64 %69, 1
  %94 = icmp eq i64 %93, %67
  br i1 %94, label %95, label %68, !llvm.loop !74

95:                                               ; preds = %91, %55
  %96 = phi i32 [ %56, %55 ], [ %92, %91 ]
  %97 = load ptr, ptr %57, align 8, !tbaa !34
  %98 = load i8, ptr %61, align 8, !tbaa !58
  %99 = sext i8 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %97, i64 %99
  %101 = sext i8 %98 to i32
  %102 = sub nsw i32 %96, %101
  %103 = sext i32 %102 to i64
  tail call void @qsort(ptr noundef %100, i64 noundef %103, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  %104 = trunc i32 %96 to i8
  store i8 %104, ptr %61, align 8, !tbaa !58
  br label %181

105:                                              ; preds = %1
  %106 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %107 = load i32, ptr %106, align 8, !tbaa !75
  %108 = zext i32 %107 to i64
  %109 = tail call noalias ptr @calloc(i64 noundef %108, i64 noundef 8) #11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  br label %112

112:                                              ; preds = %111, %105
  %113 = load i32, ptr %106, align 8, !tbaa !75
  %114 = zext i32 %113 to i64
  %115 = tail call noalias ptr @calloc(i64 noundef %114, i64 noundef 8) #11
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %118

118:                                              ; preds = %117, %112
  %119 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %120 = load i32, ptr %119, align 8, !tbaa !64
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %146, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %124 = zext i32 %120 to i64
  br label %125

125:                                              ; preds = %122, %142
  %126 = phi i64 [ 0, %122 ], [ %144, %142 ]
  %127 = phi i32 [ 0, %122 ], [ %143, %142 ]
  %128 = load ptr, ptr %123, align 8, !tbaa !66
  %129 = getelementptr inbounds ptr, ptr %128, i64 %126
  %130 = load ptr, ptr %129, align 8, !tbaa !34
  %131 = getelementptr inbounds %struct.frame_store, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !76
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.frame_store, ptr %130, i64 0, i32 15
  %136 = load i32, ptr %135, align 8, !tbaa !77
  %137 = icmp eq i32 %136, %8
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = add nsw i32 %127, 1
  %140 = sext i32 %127 to i64
  %141 = getelementptr inbounds ptr, ptr %109, i64 %140
  store ptr %130, ptr %141, align 8, !tbaa !34
  br label %142

142:                                              ; preds = %125, %134, %138
  %143 = phi i32 [ %139, %138 ], [ %127, %134 ], [ %127, %125 ]
  %144 = add nuw nsw i64 %126, 1
  %145 = icmp eq i64 %144, %124
  br i1 %145, label %146, label %125, !llvm.loop !78

146:                                              ; preds = %142, %118
  %147 = phi i32 [ 0, %118 ], [ %143, %142 ]
  %148 = sext i32 %147 to i64
  tail call void @qsort(ptr noundef %109, i64 noundef %148, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #10
  %149 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %149, align 8, !tbaa !58
  %150 = load i32, ptr %13, align 8, !tbaa !63
  %151 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %152 = load ptr, ptr %151, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %150, ptr noundef %109, i32 noundef %147, ptr noundef %152, ptr noundef nonnull %149, i32 noundef 0) #10
  %153 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %154 = load i32, ptr %153, align 4, !tbaa !72
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %176, label %156

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %158 = zext i32 %154 to i64
  br label %159

159:                                              ; preds = %156, %172
  %160 = phi i64 [ 0, %156 ], [ %174, %172 ]
  %161 = phi i32 [ 0, %156 ], [ %173, %172 ]
  %162 = load ptr, ptr %157, align 8, !tbaa !73
  %163 = getelementptr inbounds ptr, ptr %162, i64 %160
  %164 = load ptr, ptr %163, align 8, !tbaa !34
  %165 = getelementptr inbounds %struct.frame_store, ptr %164, i64 0, i32 15
  %166 = load i32, ptr %165, align 8, !tbaa !77
  %167 = icmp eq i32 %166, %8
  br i1 %167, label %168, label %172

168:                                              ; preds = %159
  %169 = add nsw i32 %161, 1
  %170 = sext i32 %161 to i64
  %171 = getelementptr inbounds ptr, ptr %115, i64 %170
  store ptr %164, ptr %171, align 8, !tbaa !34
  br label %172

172:                                              ; preds = %159, %168
  %173 = phi i32 [ %169, %168 ], [ %161, %159 ]
  %174 = add nuw nsw i64 %160, 1
  %175 = icmp eq i64 %174, %158
  br i1 %175, label %176, label %159, !llvm.loop !79

176:                                              ; preds = %172, %146
  %177 = phi i32 [ 0, %146 ], [ %173, %172 ]
  %178 = sext i32 %177 to i64
  tail call void @qsort(ptr noundef %115, i64 noundef %178, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #10
  %179 = load i32, ptr %13, align 8, !tbaa !63
  %180 = load ptr, ptr %151, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %179, ptr noundef %115, i32 noundef %177, ptr noundef %180, ptr noundef nonnull %149, i32 noundef 1) #10
  tail call void @free(ptr noundef %109) #10
  tail call void @free(ptr noundef %115) #10
  br label %181

181:                                              ; preds = %176, %95
  %182 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %183 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %183, align 1, !tbaa !58
  %184 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %185 = load i32, ptr %184, align 8, !tbaa !80
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %269

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %189 = load i32, ptr %188, align 8, !tbaa !75
  %190 = zext i32 %189 to i64
  %191 = tail call noalias ptr @calloc(i64 noundef %190, i64 noundef 8) #11
  %192 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %191, ptr %192, align 8, !tbaa !81
  %193 = icmp eq ptr %191, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #10
  br label %195

195:                                              ; preds = %194, %187
  %196 = load i32, ptr %13, align 8, !tbaa !63
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %224

198:                                              ; preds = %195
  %199 = load i8, ptr %182, align 8, !tbaa !58
  %200 = load ptr, ptr %192, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %200, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %201 = load i32, ptr %11, align 4, !tbaa !56
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %222, label %203

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %205 = sext i8 %199 to i64
  %206 = zext i32 %201 to i64
  br label %207

207:                                              ; preds = %203, %207
  %208 = phi i64 [ %205, %203 ], [ %216, %207 ]
  %209 = phi i64 [ 0, %203 ], [ %218, %207 ]
  %210 = load ptr, ptr %192, align 8, !tbaa !81
  %211 = getelementptr inbounds ptr, ptr %210, i64 %209
  %212 = load ptr, ptr %211, align 8, !tbaa !34
  %213 = getelementptr inbounds %struct.frame_store, ptr %212, i64 0, i32 12
  %214 = load ptr, ptr %213, align 8, !tbaa !69
  %215 = load ptr, ptr %204, align 8, !tbaa !34
  %216 = add nsw i64 %208, 1
  %217 = getelementptr inbounds ptr, ptr %215, i64 %208
  store ptr %214, ptr %217, align 8, !tbaa !34
  %218 = add nuw nsw i64 %209, 1
  %219 = icmp eq i64 %218, %206
  br i1 %219, label %220, label %207, !llvm.loop !82

220:                                              ; preds = %207
  %221 = trunc i64 %216 to i8
  br label %222

222:                                              ; preds = %220, %198
  %223 = phi i8 [ %199, %198 ], [ %221, %220 ]
  store i8 %223, ptr %182, align 8, !tbaa !58
  br label %269

224:                                              ; preds = %195
  %225 = load ptr, ptr %192, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %196, i32 noundef 0, ptr noundef %225, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %226 = load i32, ptr %13, align 8, !tbaa !63
  %227 = load ptr, ptr %192, align 8, !tbaa !81
  %228 = load i32, ptr %11, align 4, !tbaa !56
  %229 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %230 = load ptr, ptr %229, align 8, !tbaa !34
  switch i32 %226, label %269 [
    i32 1, label %231
    i32 2, label %251
  ]

231:                                              ; preds = %224
  %232 = icmp sgt i32 %228, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %231
  %234 = zext nneg i32 %228 to i64
  br label %235

235:                                              ; preds = %235, %233
  %236 = phi i64 [ 0, %233 ], [ %246, %235 ]
  %237 = getelementptr inbounds ptr, ptr %227, i64 %236
  %238 = load ptr, ptr %237, align 8, !tbaa !34
  %239 = getelementptr inbounds %struct.frame_store, ptr %238, i64 0, i32 13
  %240 = load ptr, ptr %239, align 8, !tbaa !83
  %241 = load i8, ptr %182, align 1, !tbaa !58
  %242 = sext i8 %241 to i64
  %243 = getelementptr inbounds ptr, ptr %230, i64 %242
  store ptr %240, ptr %243, align 8, !tbaa !34
  %244 = load i8, ptr %182, align 1, !tbaa !58
  %245 = add i8 %244, 1
  store i8 %245, ptr %182, align 1, !tbaa !58
  %246 = add nuw nsw i64 %236, 1
  %247 = icmp eq i64 %246, %234
  br i1 %247, label %248, label %235, !llvm.loop !84

248:                                              ; preds = %235, %231
  %249 = icmp eq i32 %226, 2
  %250 = and i1 %249, %232
  br i1 %250, label %253, label %269

251:                                              ; preds = %224
  %252 = icmp sgt i32 %228, 0
  br i1 %252, label %253, label %269

253:                                              ; preds = %251, %248
  %254 = tail call i32 @llvm.smax.i32(i32 %228, i32 1)
  %255 = zext nneg i32 %254 to i64
  br label %256

256:                                              ; preds = %256, %253
  %257 = phi i64 [ 0, %253 ], [ %267, %256 ]
  %258 = getelementptr inbounds ptr, ptr %227, i64 %257
  %259 = load ptr, ptr %258, align 8, !tbaa !34
  %260 = getelementptr inbounds %struct.frame_store, ptr %259, i64 0, i32 14
  %261 = load ptr, ptr %260, align 8, !tbaa !85
  %262 = load i8, ptr %182, align 1, !tbaa !58
  %263 = sext i8 %262 to i64
  %264 = getelementptr inbounds ptr, ptr %230, i64 %263
  store ptr %261, ptr %264, align 8, !tbaa !34
  %265 = load i8, ptr %182, align 1, !tbaa !58
  %266 = add i8 %265, 1
  store i8 %266, ptr %182, align 1, !tbaa !58
  %267 = add nuw nsw i64 %257, 1
  %268 = icmp eq i64 %267, %255
  br i1 %268, label %269, label %256, !llvm.loop !86

269:                                              ; preds = %256, %251, %248, %224, %222, %181
  %270 = load i8, ptr %182, align 8, !tbaa !58
  %271 = sext i8 %270 to i32
  %272 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %273 = load i32, ptr %272, align 8, !tbaa !43
  %274 = tail call i32 @llvm.smin.i32(i32 %271, i32 %273)
  %275 = trunc i32 %274 to i8
  store i8 %275, ptr %182, align 8, !tbaa !58
  %276 = load i8, ptr %183, align 1, !tbaa !58
  %277 = sext i8 %276 to i32
  %278 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %279 = load i32, ptr %278, align 4, !tbaa !43
  %280 = tail call i32 @llvm.smin.i32(i32 %277, i32 %279)
  %281 = trunc i32 %280 to i8
  store i8 %281, ptr %183, align 1, !tbaa !58
  %282 = shl i32 %274, 24
  %283 = ashr exact i32 %282, 24
  %284 = icmp ult i32 %283, 33
  br i1 %284, label %285, label %297

285:                                              ; preds = %269
  %286 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %287 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %288 = zext nneg i32 %283 to i64
  br label %289

289:                                              ; preds = %285, %289
  %290 = phi i64 [ %288, %285 ], [ %294, %289 ]
  %291 = load ptr, ptr %286, align 8, !tbaa !87
  %292 = load ptr, ptr %287, align 8, !tbaa !34
  %293 = getelementptr inbounds ptr, ptr %292, i64 %290
  store ptr %291, ptr %293, align 8, !tbaa !34
  %294 = add nuw nsw i64 %290, 1
  %295 = and i64 %294, 4294967295
  %296 = icmp eq i64 %295, 33
  br i1 %296, label %297, label %289, !llvm.loop !93

297:                                              ; preds = %289, %269
  %298 = load i8, ptr %183, align 1, !tbaa !58
  %299 = icmp ult i8 %298, 33
  br i1 %299, label %300, label %312

300:                                              ; preds = %297
  %301 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %302 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %303 = zext nneg i8 %298 to i64
  br label %304

304:                                              ; preds = %300, %304
  %305 = phi i64 [ %303, %300 ], [ %309, %304 ]
  %306 = load ptr, ptr %301, align 8, !tbaa !87
  %307 = load ptr, ptr %302, align 8, !tbaa !34
  %308 = getelementptr inbounds ptr, ptr %307, i64 %305
  store ptr %306, ptr %308, align 8, !tbaa !34
  %309 = add nuw nsw i64 %305, 1
  %310 = and i64 %309, 4294967295
  %311 = icmp eq i64 %310, 33
  br i1 %311, label %312, label %304, !llvm.loop !94

312:                                              ; preds = %304, %297
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !50
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_frame_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !95
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !95
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

declare void @gen_pic_list_from_frame_list(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_lt_pic_idx_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !96
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !96
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

declare void @append_interview_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_b_slice_mvc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !63
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %210

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %22 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %23 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %24 = zext i32 %18 to i64
  br label %25

25:                                               ; preds = %20, %57
  %26 = phi i64 [ 0, %20 ], [ %59, %57 ]
  %27 = phi i32 [ 0, %20 ], [ %58, %57 ]
  %28 = load ptr, ptr %21, align 8, !tbaa !66
  %29 = getelementptr inbounds ptr, ptr %28, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = load i32, ptr %30, align 8, !tbaa !67
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.frame_store, ptr %30, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !70
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 10
  %41 = load i8, ptr %40, align 8, !tbaa !47
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 64
  %45 = load i32, ptr %44, align 8, !tbaa !51
  %46 = icmp eq i32 %45, %8
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, ptr %22, align 4, !tbaa !97
  %49 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !98
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %23, align 8, !tbaa !34
  %54 = add nsw i32 %27, 1
  %55 = sext i32 %27 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  store ptr %35, ptr %56, align 8, !tbaa !34
  br label %57

57:                                               ; preds = %25, %47, %52, %43, %39, %33
  %58 = phi i32 [ %27, %39 ], [ %54, %52 ], [ %27, %47 ], [ %27, %43 ], [ %27, %33 ], [ %27, %25 ]
  %59 = add nuw nsw i64 %26, 1
  %60 = icmp eq i64 %59, %24
  br i1 %60, label %61, label %25, !llvm.loop !99

61:                                               ; preds = %57, %16
  %62 = phi i32 [ 0, %16 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %64 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %65 = load ptr, ptr %64, align 8, !tbaa !34
  %66 = sext i32 %62 to i64
  tail call void @qsort(ptr noundef %65, i64 noundef %66, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #10
  %67 = load i32, ptr %63, align 8, !tbaa !64
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %109, label %69

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %71 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %72 = zext i32 %67 to i64
  br label %73

73:                                               ; preds = %69, %105
  %74 = phi i64 [ 0, %69 ], [ %107, %105 ]
  %75 = phi i32 [ %62, %69 ], [ %106, %105 ]
  %76 = load ptr, ptr %70, align 8, !tbaa !66
  %77 = getelementptr inbounds ptr, ptr %76, i64 %74
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  %79 = load i32, ptr %78, align 8, !tbaa !67
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %105

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.frame_store, ptr %78, i64 0, i32 12
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  %84 = getelementptr inbounds %struct.storable_picture, ptr %83, i64 0, i32 11
  %85 = load i32, ptr %84, align 4, !tbaa !70
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %105, label %87

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.storable_picture, ptr %83, i64 0, i32 10
  %89 = load i8, ptr %88, align 8, !tbaa !47
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.storable_picture, ptr %83, i64 0, i32 64
  %93 = load i32, ptr %92, align 8, !tbaa !51
  %94 = icmp eq i32 %93, %8
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load i32, ptr %71, align 4, !tbaa !97
  %97 = getelementptr inbounds %struct.storable_picture, ptr %83, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !98
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load ptr, ptr %64, align 8, !tbaa !34
  %102 = add nsw i32 %75, 1
  %103 = sext i32 %75 to i64
  %104 = getelementptr inbounds ptr, ptr %101, i64 %103
  store ptr %83, ptr %104, align 8, !tbaa !34
  br label %105

105:                                              ; preds = %73, %95, %100, %91, %87, %81
  %106 = phi i32 [ %75, %87 ], [ %102, %100 ], [ %75, %95 ], [ %75, %91 ], [ %75, %81 ], [ %75, %73 ]
  %107 = add nuw nsw i64 %74, 1
  %108 = icmp eq i64 %107, %72
  br i1 %108, label %109, label %73, !llvm.loop !100

109:                                              ; preds = %105, %61
  %110 = phi i32 [ %62, %61 ], [ %106, %105 ]
  %111 = load ptr, ptr %64, align 8, !tbaa !34
  %112 = getelementptr inbounds ptr, ptr %111, i64 %66
  %113 = sub nsw i32 %110, %62
  %114 = sext i32 %113 to i64
  tail call void @qsort(ptr noundef %112, i64 noundef %114, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #10
  %115 = icmp sgt i32 %62, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %118 = sext i32 %113 to i64
  %119 = zext nneg i32 %62 to i64
  br label %127

120:                                              ; preds = %127, %109
  %121 = icmp slt i32 %62, %110
  br i1 %121, label %122, label %147

122:                                              ; preds = %120
  %123 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %124 = sext i32 %62 to i64
  %125 = sext i32 %62 to i64
  %126 = sext i32 %110 to i64
  br label %137

127:                                              ; preds = %116, %127
  %128 = phi i64 [ 0, %116 ], [ %135, %127 ]
  %129 = load ptr, ptr %64, align 8, !tbaa !34
  %130 = getelementptr inbounds ptr, ptr %129, i64 %128
  %131 = load ptr, ptr %130, align 8, !tbaa !34
  %132 = load ptr, ptr %117, align 8, !tbaa !34
  %133 = getelementptr ptr, ptr %132, i64 %128
  %134 = getelementptr ptr, ptr %133, i64 %118
  store ptr %131, ptr %134, align 8, !tbaa !34
  %135 = add nuw nsw i64 %128, 1
  %136 = icmp eq i64 %135, %119
  br i1 %136, label %120, label %127, !llvm.loop !101

137:                                              ; preds = %122, %137
  %138 = phi i64 [ %124, %122 ], [ %145, %137 ]
  %139 = load ptr, ptr %64, align 8, !tbaa !34
  %140 = getelementptr inbounds ptr, ptr %139, i64 %138
  %141 = load ptr, ptr %140, align 8, !tbaa !34
  %142 = load ptr, ptr %123, align 8, !tbaa !34
  %143 = sub nsw i64 %138, %125
  %144 = getelementptr inbounds ptr, ptr %142, i64 %143
  store ptr %141, ptr %144, align 8, !tbaa !34
  %145 = add nsw i64 %138, 1
  %146 = icmp eq i64 %145, %126
  br i1 %146, label %147, label %137, !llvm.loop !102

147:                                              ; preds = %137, %120
  %148 = trunc i32 %110 to i8
  %149 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %150 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %148, ptr %150, align 1, !tbaa !58
  store i8 %148, ptr %149, align 8, !tbaa !58
  %151 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %152 = load i32, ptr %151, align 4, !tbaa !72
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %192, label %154

154:                                              ; preds = %147
  %155 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %156 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %157 = zext i32 %152 to i64
  br label %158

158:                                              ; preds = %154, %188
  %159 = phi i64 [ 0, %154 ], [ %190, %188 ]
  %160 = phi i32 [ %110, %154 ], [ %189, %188 ]
  %161 = load ptr, ptr %155, align 8, !tbaa !73
  %162 = getelementptr inbounds ptr, ptr %161, i64 %159
  %163 = load ptr, ptr %162, align 8, !tbaa !34
  %164 = load i32, ptr %163, align 8, !tbaa !67
  %165 = icmp eq i32 %164, 3
  br i1 %165, label %166, label %188

166:                                              ; preds = %158
  %167 = getelementptr inbounds %struct.frame_store, ptr %163, i64 0, i32 12
  %168 = load ptr, ptr %167, align 8, !tbaa !69
  %169 = getelementptr inbounds %struct.storable_picture, ptr %168, i64 0, i32 10
  %170 = load i8, ptr %169, align 8, !tbaa !47
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %188, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.storable_picture, ptr %168, i64 0, i32 64
  %174 = load i32, ptr %173, align 8, !tbaa !51
  %175 = icmp eq i32 %174, %8
  br i1 %175, label %176, label %188

176:                                              ; preds = %172
  %177 = load ptr, ptr %64, align 8, !tbaa !34
  %178 = sext i32 %160 to i64
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178
  store ptr %168, ptr %179, align 8, !tbaa !34
  %180 = load ptr, ptr %155, align 8, !tbaa !73
  %181 = getelementptr inbounds ptr, ptr %180, i64 %159
  %182 = load ptr, ptr %181, align 8, !tbaa !34
  %183 = getelementptr inbounds %struct.frame_store, ptr %182, i64 0, i32 12
  %184 = load ptr, ptr %183, align 8, !tbaa !69
  %185 = load ptr, ptr %156, align 8, !tbaa !34
  %186 = add nsw i32 %160, 1
  %187 = getelementptr inbounds ptr, ptr %185, i64 %178
  store ptr %184, ptr %187, align 8, !tbaa !34
  br label %188

188:                                              ; preds = %158, %176, %172, %166
  %189 = phi i32 [ %186, %176 ], [ %160, %172 ], [ %160, %166 ], [ %160, %158 ]
  %190 = add nuw nsw i64 %159, 1
  %191 = icmp eq i64 %190, %157
  br i1 %191, label %192, label %158, !llvm.loop !103

192:                                              ; preds = %188, %147
  %193 = phi i32 [ %110, %147 ], [ %189, %188 ]
  %194 = load ptr, ptr %64, align 8, !tbaa !34
  %195 = load i8, ptr %149, align 8, !tbaa !58
  %196 = sext i8 %195 to i64
  %197 = getelementptr inbounds ptr, ptr %194, i64 %196
  %198 = sext i8 %195 to i32
  %199 = sub nsw i32 %193, %198
  %200 = sext i32 %199 to i64
  tail call void @qsort(ptr noundef %197, i64 noundef %200, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  %201 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !34
  %203 = load i8, ptr %149, align 8, !tbaa !58
  %204 = sext i8 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %202, i64 %204
  %206 = sext i8 %203 to i32
  %207 = sub nsw i32 %193, %206
  %208 = sext i32 %207 to i64
  tail call void @qsort(ptr noundef %205, i64 noundef %208, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  %209 = trunc i32 %193 to i8
  store i8 %209, ptr %150, align 1, !tbaa !58
  store i8 %209, ptr %149, align 8, !tbaa !58
  br label %362

210:                                              ; preds = %1
  %211 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %212 = load i32, ptr %211, align 8, !tbaa !75
  %213 = zext i32 %212 to i64
  %214 = tail call noalias ptr @calloc(i64 noundef %213, i64 noundef 8) #11
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %210
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  br label %217

217:                                              ; preds = %216, %210
  %218 = load i32, ptr %211, align 8, !tbaa !75
  %219 = zext i32 %218 to i64
  %220 = tail call noalias ptr @calloc(i64 noundef %219, i64 noundef 8) #11
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #10
  br label %223

223:                                              ; preds = %222, %217
  %224 = load i32, ptr %211, align 8, !tbaa !75
  %225 = zext i32 %224 to i64
  %226 = tail call noalias ptr @calloc(i64 noundef %225, i64 noundef 8) #11
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %223
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %229

229:                                              ; preds = %228, %223
  %230 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %230, align 8, !tbaa !58
  %231 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 1, ptr %231, align 1, !tbaa !58
  %232 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %233 = load i32, ptr %232, align 8, !tbaa !64
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %263, label %235

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %237 = zext i32 %233 to i64
  br label %238

238:                                              ; preds = %235, %259
  %239 = phi i64 [ 0, %235 ], [ %261, %259 ]
  %240 = phi i32 [ 0, %235 ], [ %260, %259 ]
  %241 = load ptr, ptr %236, align 8, !tbaa !66
  %242 = getelementptr inbounds ptr, ptr %241, i64 %239
  %243 = load ptr, ptr %242, align 8, !tbaa !34
  %244 = load i32, ptr %243, align 8, !tbaa !67
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %259, label %246

246:                                              ; preds = %238
  %247 = load i32, ptr %5, align 8, !tbaa !60
  %248 = getelementptr inbounds %struct.frame_store, ptr %243, i64 0, i32 10
  %249 = load i32, ptr %248, align 8, !tbaa !104
  %250 = icmp slt i32 %247, %249
  br i1 %250, label %259, label %251

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.frame_store, ptr %243, i64 0, i32 15
  %253 = load i32, ptr %252, align 8, !tbaa !77
  %254 = icmp eq i32 %253, %8
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = add nsw i32 %240, 1
  %257 = sext i32 %240 to i64
  %258 = getelementptr inbounds ptr, ptr %214, i64 %257
  store ptr %243, ptr %258, align 8, !tbaa !34
  br label %259

259:                                              ; preds = %238, %255, %251, %246
  %260 = phi i32 [ %256, %255 ], [ %240, %251 ], [ %240, %246 ], [ %240, %238 ]
  %261 = add nuw nsw i64 %239, 1
  %262 = icmp eq i64 %261, %237
  br i1 %262, label %263, label %238, !llvm.loop !105

263:                                              ; preds = %259, %229
  %264 = phi i32 [ 0, %229 ], [ %260, %259 ]
  %265 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %266 = sext i32 %264 to i64
  tail call void @qsort(ptr noundef %214, i64 noundef %266, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #10
  %267 = load i32, ptr %265, align 8, !tbaa !64
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %297, label %269

269:                                              ; preds = %263
  %270 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %271 = zext i32 %267 to i64
  br label %272

272:                                              ; preds = %269, %293
  %273 = phi i64 [ 0, %269 ], [ %295, %293 ]
  %274 = phi i32 [ %264, %269 ], [ %294, %293 ]
  %275 = load ptr, ptr %270, align 8, !tbaa !66
  %276 = getelementptr inbounds ptr, ptr %275, i64 %273
  %277 = load ptr, ptr %276, align 8, !tbaa !34
  %278 = load i32, ptr %277, align 8, !tbaa !67
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %272
  %281 = load i32, ptr %5, align 8, !tbaa !60
  %282 = getelementptr inbounds %struct.frame_store, ptr %277, i64 0, i32 10
  %283 = load i32, ptr %282, align 8, !tbaa !104
  %284 = icmp slt i32 %281, %283
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.frame_store, ptr %277, i64 0, i32 15
  %287 = load i32, ptr %286, align 8, !tbaa !77
  %288 = icmp eq i32 %287, %8
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = add nsw i32 %274, 1
  %291 = sext i32 %274 to i64
  %292 = getelementptr inbounds ptr, ptr %214, i64 %291
  store ptr %277, ptr %292, align 8, !tbaa !34
  br label %293

293:                                              ; preds = %272, %289, %285, %280
  %294 = phi i32 [ %290, %289 ], [ %274, %285 ], [ %274, %280 ], [ %274, %272 ]
  %295 = add nuw nsw i64 %273, 1
  %296 = icmp eq i64 %295, %271
  br i1 %296, label %297, label %272, !llvm.loop !106

297:                                              ; preds = %293, %263
  %298 = phi i32 [ %264, %263 ], [ %294, %293 ]
  %299 = getelementptr inbounds ptr, ptr %214, i64 %266
  %300 = sub nsw i32 %298, %264
  %301 = sext i32 %300 to i64
  tail call void @qsort(ptr noundef %299, i64 noundef %301, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #10
  %302 = icmp sgt i32 %264, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %297
  %304 = sext i32 %300 to i64
  %305 = zext nneg i32 %264 to i64
  %306 = getelementptr ptr, ptr %220, i64 %304
  br label %318

307:                                              ; preds = %318, %297
  %308 = icmp slt i32 %264, %298
  br i1 %308, label %309, label %325

309:                                              ; preds = %307
  %310 = sext i32 %264 to i64
  %311 = shl nsw i64 %310, 3
  %312 = getelementptr i8, ptr %214, i64 %311
  %313 = xor i32 %264, -1
  %314 = add i32 %298, %313
  %315 = zext i32 %314 to i64
  %316 = shl nuw nsw i64 %315, 3
  %317 = add nuw nsw i64 %316, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %220, ptr noundef nonnull align 8 dereferenceable(1) %312, i64 %317, i1 false), !tbaa !34
  br label %325

318:                                              ; preds = %303, %318
  %319 = phi i64 [ 0, %303 ], [ %323, %318 ]
  %320 = getelementptr inbounds ptr, ptr %214, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !34
  %322 = getelementptr ptr, ptr %306, i64 %319
  store ptr %321, ptr %322, align 8, !tbaa !34
  %323 = add nuw nsw i64 %319, 1
  %324 = icmp eq i64 %323, %305
  br i1 %324, label %307, label %318, !llvm.loop !107

325:                                              ; preds = %309, %307
  store i8 0, ptr %230, align 8, !tbaa !58
  store i8 0, ptr %231, align 1, !tbaa !58
  %326 = load i32, ptr %13, align 8, !tbaa !63
  %327 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %328 = load ptr, ptr %327, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %326, ptr noundef %214, i32 noundef %298, ptr noundef %328, ptr noundef nonnull %230, i32 noundef 0) #10
  %329 = load i32, ptr %13, align 8, !tbaa !63
  %330 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %329, ptr noundef %220, i32 noundef %298, ptr noundef %331, ptr noundef nonnull %231, i32 noundef 0) #10
  %332 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %333 = load i32, ptr %332, align 4, !tbaa !72
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %355, label %335

335:                                              ; preds = %325
  %336 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %337 = zext i32 %333 to i64
  br label %338

338:                                              ; preds = %335, %351
  %339 = phi i64 [ 0, %335 ], [ %353, %351 ]
  %340 = phi i32 [ 0, %335 ], [ %352, %351 ]
  %341 = load ptr, ptr %336, align 8, !tbaa !73
  %342 = getelementptr inbounds ptr, ptr %341, i64 %339
  %343 = load ptr, ptr %342, align 8, !tbaa !34
  %344 = getelementptr inbounds %struct.frame_store, ptr %343, i64 0, i32 15
  %345 = load i32, ptr %344, align 8, !tbaa !77
  %346 = icmp eq i32 %345, %8
  br i1 %346, label %347, label %351

347:                                              ; preds = %338
  %348 = add nsw i32 %340, 1
  %349 = sext i32 %340 to i64
  %350 = getelementptr inbounds ptr, ptr %226, i64 %349
  store ptr %343, ptr %350, align 8, !tbaa !34
  br label %351

351:                                              ; preds = %338, %347
  %352 = phi i32 [ %348, %347 ], [ %340, %338 ]
  %353 = add nuw nsw i64 %339, 1
  %354 = icmp eq i64 %353, %337
  br i1 %354, label %355, label %338, !llvm.loop !108

355:                                              ; preds = %351, %325
  %356 = phi i32 [ 0, %325 ], [ %352, %351 ]
  %357 = sext i32 %356 to i64
  tail call void @qsort(ptr noundef %226, i64 noundef %357, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #10
  %358 = load i32, ptr %13, align 8, !tbaa !63
  %359 = load ptr, ptr %327, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %358, ptr noundef %226, i32 noundef %356, ptr noundef %359, ptr noundef nonnull %230, i32 noundef 1) #10
  %360 = load i32, ptr %13, align 8, !tbaa !63
  %361 = load ptr, ptr %330, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %360, ptr noundef %226, i32 noundef %356, ptr noundef %361, ptr noundef nonnull %231, i32 noundef 1) #10
  tail call void @free(ptr noundef %214) #10
  tail call void @free(ptr noundef %220) #10
  tail call void @free(ptr noundef %226) #10
  br label %362

362:                                              ; preds = %355, %192
  %363 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %364 = load i8, ptr %363, align 8, !tbaa !58
  %365 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  %366 = load i8, ptr %365, align 1, !tbaa !58
  %367 = icmp eq i8 %364, %366
  %368 = icmp sgt i8 %364, 1
  %369 = and i1 %368, %367
  br i1 %369, label %370, label %395

370:                                              ; preds = %362
  %371 = sext i8 %364 to i64
  %372 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %373 = load ptr, ptr %372, align 8, !tbaa !34
  %374 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !34
  %376 = and i64 %371, 4294967295
  br label %380

377:                                              ; preds = %380
  %378 = add nuw nsw i64 %381, 1
  %379 = icmp eq i64 %378, %376
  br i1 %379, label %387, label %380, !llvm.loop !109

380:                                              ; preds = %370, %377
  %381 = phi i64 [ 0, %370 ], [ %378, %377 ]
  %382 = getelementptr inbounds ptr, ptr %373, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !34
  %384 = getelementptr inbounds ptr, ptr %375, i64 %381
  %385 = load ptr, ptr %384, align 8, !tbaa !34
  %386 = icmp eq ptr %383, %385
  br i1 %386, label %377, label %395

387:                                              ; preds = %377
  %388 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !34
  %390 = load ptr, ptr %389, align 8, !tbaa !34
  %391 = getelementptr inbounds ptr, ptr %389, i64 1
  %392 = load ptr, ptr %391, align 8, !tbaa !34
  store ptr %392, ptr %389, align 8, !tbaa !34
  %393 = load ptr, ptr %388, align 8, !tbaa !34
  %394 = getelementptr inbounds ptr, ptr %393, i64 1
  store ptr %390, ptr %394, align 8, !tbaa !34
  br label %395

395:                                              ; preds = %380, %387, %362
  %396 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %397 = load i32, ptr %396, align 8, !tbaa !80
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %558

399:                                              ; preds = %395
  %400 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %401 = load i32, ptr %400, align 8, !tbaa !75
  %402 = zext i32 %401 to i64
  %403 = tail call noalias ptr @calloc(i64 noundef %402, i64 noundef 8) #11
  %404 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %403, ptr %404, align 8, !tbaa !81
  %405 = icmp eq ptr %403, null
  br i1 %405, label %406, label %407

406:                                              ; preds = %399
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #10
  br label %407

407:                                              ; preds = %406, %399
  %408 = load i32, ptr %400, align 8, !tbaa !75
  %409 = zext i32 %408 to i64
  %410 = tail call noalias ptr @calloc(i64 noundef %409, i64 noundef 8) #11
  %411 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  store ptr %410, ptr %411, align 8, !tbaa !110
  %412 = icmp eq ptr %410, null
  br i1 %412, label %413, label %414

413:                                              ; preds = %407
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #10
  br label %414

414:                                              ; preds = %413, %407
  %415 = load i32, ptr %13, align 8, !tbaa !63
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %468

417:                                              ; preds = %414
  %418 = load i8, ptr %363, align 8, !tbaa !58
  %419 = load ptr, ptr %404, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %419, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %420 = load ptr, ptr %411, align 8, !tbaa !110
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 1, ptr noundef %420, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %421 = load i32, ptr %11, align 4, !tbaa !56
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %442, label %423

423:                                              ; preds = %417
  %424 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %425 = sext i8 %418 to i64
  %426 = zext i32 %421 to i64
  br label %427

427:                                              ; preds = %423, %427
  %428 = phi i64 [ %425, %423 ], [ %436, %427 ]
  %429 = phi i64 [ 0, %423 ], [ %438, %427 ]
  %430 = load ptr, ptr %404, align 8, !tbaa !81
  %431 = getelementptr inbounds ptr, ptr %430, i64 %429
  %432 = load ptr, ptr %431, align 8, !tbaa !34
  %433 = getelementptr inbounds %struct.frame_store, ptr %432, i64 0, i32 12
  %434 = load ptr, ptr %433, align 8, !tbaa !69
  %435 = load ptr, ptr %424, align 8, !tbaa !34
  %436 = add nsw i64 %428, 1
  %437 = getelementptr inbounds ptr, ptr %435, i64 %428
  store ptr %434, ptr %437, align 8, !tbaa !34
  %438 = add nuw nsw i64 %429, 1
  %439 = icmp eq i64 %438, %426
  br i1 %439, label %440, label %427, !llvm.loop !111

440:                                              ; preds = %427
  %441 = trunc i64 %436 to i8
  br label %442

442:                                              ; preds = %440, %417
  %443 = phi i8 [ %418, %417 ], [ %441, %440 ]
  store i8 %443, ptr %363, align 8, !tbaa !58
  %444 = load i8, ptr %365, align 1, !tbaa !58
  %445 = load i32, ptr %12, align 8, !tbaa !57
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %466, label %447

447:                                              ; preds = %442
  %448 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %449 = sext i8 %444 to i64
  %450 = zext i32 %445 to i64
  br label %451

451:                                              ; preds = %447, %451
  %452 = phi i64 [ %449, %447 ], [ %460, %451 ]
  %453 = phi i64 [ 0, %447 ], [ %462, %451 ]
  %454 = load ptr, ptr %411, align 8, !tbaa !110
  %455 = getelementptr inbounds ptr, ptr %454, i64 %453
  %456 = load ptr, ptr %455, align 8, !tbaa !34
  %457 = getelementptr inbounds %struct.frame_store, ptr %456, i64 0, i32 12
  %458 = load ptr, ptr %457, align 8, !tbaa !69
  %459 = load ptr, ptr %448, align 8, !tbaa !34
  %460 = add nsw i64 %452, 1
  %461 = getelementptr inbounds ptr, ptr %459, i64 %452
  store ptr %458, ptr %461, align 8, !tbaa !34
  %462 = add nuw nsw i64 %453, 1
  %463 = icmp eq i64 %462, %450
  br i1 %463, label %464, label %451, !llvm.loop !112

464:                                              ; preds = %451
  %465 = trunc i64 %460 to i8
  br label %466

466:                                              ; preds = %464, %442
  %467 = phi i8 [ %444, %442 ], [ %465, %464 ]
  store i8 %467, ptr %365, align 1, !tbaa !58
  br label %558

468:                                              ; preds = %414
  %469 = load ptr, ptr %404, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %415, i32 noundef 0, ptr noundef %469, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %470 = load i32, ptr %13, align 8, !tbaa !63
  %471 = load ptr, ptr %404, align 8, !tbaa !81
  %472 = load i32, ptr %11, align 4, !tbaa !56
  %473 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %474 = load ptr, ptr %473, align 8, !tbaa !34
  switch i32 %470, label %513 [
    i32 1, label %475
    i32 2, label %495
  ]

475:                                              ; preds = %468
  %476 = icmp sgt i32 %472, 0
  br i1 %476, label %477, label %492

477:                                              ; preds = %475
  %478 = zext nneg i32 %472 to i64
  br label %479

479:                                              ; preds = %479, %477
  %480 = phi i64 [ 0, %477 ], [ %490, %479 ]
  %481 = getelementptr inbounds ptr, ptr %471, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !34
  %483 = getelementptr inbounds %struct.frame_store, ptr %482, i64 0, i32 13
  %484 = load ptr, ptr %483, align 8, !tbaa !83
  %485 = load i8, ptr %363, align 1, !tbaa !58
  %486 = sext i8 %485 to i64
  %487 = getelementptr inbounds ptr, ptr %474, i64 %486
  store ptr %484, ptr %487, align 8, !tbaa !34
  %488 = load i8, ptr %363, align 1, !tbaa !58
  %489 = add i8 %488, 1
  store i8 %489, ptr %363, align 1, !tbaa !58
  %490 = add nuw nsw i64 %480, 1
  %491 = icmp eq i64 %490, %478
  br i1 %491, label %492, label %479, !llvm.loop !84

492:                                              ; preds = %479, %475
  %493 = icmp eq i32 %470, 2
  %494 = and i1 %493, %476
  br i1 %494, label %497, label %513

495:                                              ; preds = %468
  %496 = icmp sgt i32 %472, 0
  br i1 %496, label %497, label %513

497:                                              ; preds = %495, %492
  %498 = tail call i32 @llvm.smax.i32(i32 %472, i32 1)
  %499 = zext nneg i32 %498 to i64
  br label %500

500:                                              ; preds = %500, %497
  %501 = phi i64 [ 0, %497 ], [ %511, %500 ]
  %502 = getelementptr inbounds ptr, ptr %471, i64 %501
  %503 = load ptr, ptr %502, align 8, !tbaa !34
  %504 = getelementptr inbounds %struct.frame_store, ptr %503, i64 0, i32 14
  %505 = load ptr, ptr %504, align 8, !tbaa !85
  %506 = load i8, ptr %363, align 1, !tbaa !58
  %507 = sext i8 %506 to i64
  %508 = getelementptr inbounds ptr, ptr %474, i64 %507
  store ptr %505, ptr %508, align 8, !tbaa !34
  %509 = load i8, ptr %363, align 1, !tbaa !58
  %510 = add i8 %509, 1
  store i8 %510, ptr %363, align 1, !tbaa !58
  %511 = add nuw nsw i64 %501, 1
  %512 = icmp eq i64 %511, %499
  br i1 %512, label %513, label %500, !llvm.loop !86

513:                                              ; preds = %500, %468, %492, %495
  %514 = load ptr, ptr %411, align 8, !tbaa !110
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %470, i32 noundef 1, ptr noundef %514, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %515 = load i32, ptr %13, align 8, !tbaa !63
  %516 = load ptr, ptr %411, align 8, !tbaa !110
  %517 = load i32, ptr %12, align 8, !tbaa !57
  %518 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %519 = load ptr, ptr %518, align 8, !tbaa !34
  switch i32 %515, label %558 [
    i32 1, label %520
    i32 2, label %540
  ]

520:                                              ; preds = %513
  %521 = icmp sgt i32 %517, 0
  br i1 %521, label %522, label %537

522:                                              ; preds = %520
  %523 = zext nneg i32 %517 to i64
  br label %524

524:                                              ; preds = %524, %522
  %525 = phi i64 [ 0, %522 ], [ %535, %524 ]
  %526 = getelementptr inbounds ptr, ptr %516, i64 %525
  %527 = load ptr, ptr %526, align 8, !tbaa !34
  %528 = getelementptr inbounds %struct.frame_store, ptr %527, i64 0, i32 13
  %529 = load ptr, ptr %528, align 8, !tbaa !83
  %530 = load i8, ptr %365, align 1, !tbaa !58
  %531 = sext i8 %530 to i64
  %532 = getelementptr inbounds ptr, ptr %519, i64 %531
  store ptr %529, ptr %532, align 8, !tbaa !34
  %533 = load i8, ptr %365, align 1, !tbaa !58
  %534 = add i8 %533, 1
  store i8 %534, ptr %365, align 1, !tbaa !58
  %535 = add nuw nsw i64 %525, 1
  %536 = icmp eq i64 %535, %523
  br i1 %536, label %537, label %524, !llvm.loop !84

537:                                              ; preds = %524, %520
  %538 = icmp eq i32 %515, 2
  %539 = and i1 %538, %521
  br i1 %539, label %542, label %558

540:                                              ; preds = %513
  %541 = icmp sgt i32 %517, 0
  br i1 %541, label %542, label %558

542:                                              ; preds = %540, %537
  %543 = tail call i32 @llvm.smax.i32(i32 %517, i32 1)
  %544 = zext nneg i32 %543 to i64
  br label %545

545:                                              ; preds = %545, %542
  %546 = phi i64 [ 0, %542 ], [ %556, %545 ]
  %547 = getelementptr inbounds ptr, ptr %516, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !34
  %549 = getelementptr inbounds %struct.frame_store, ptr %548, i64 0, i32 14
  %550 = load ptr, ptr %549, align 8, !tbaa !85
  %551 = load i8, ptr %365, align 1, !tbaa !58
  %552 = sext i8 %551 to i64
  %553 = getelementptr inbounds ptr, ptr %519, i64 %552
  store ptr %550, ptr %553, align 8, !tbaa !34
  %554 = load i8, ptr %365, align 1, !tbaa !58
  %555 = add i8 %554, 1
  store i8 %555, ptr %365, align 1, !tbaa !58
  %556 = add nuw nsw i64 %546, 1
  %557 = icmp eq i64 %556, %544
  br i1 %557, label %558, label %545, !llvm.loop !86

558:                                              ; preds = %545, %540, %537, %513, %466, %395
  %559 = load i8, ptr %363, align 8, !tbaa !58
  %560 = sext i8 %559 to i32
  %561 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %562 = load i32, ptr %561, align 8, !tbaa !43
  %563 = tail call i32 @llvm.smin.i32(i32 %560, i32 %562)
  %564 = trunc i32 %563 to i8
  store i8 %564, ptr %363, align 8, !tbaa !58
  %565 = load i8, ptr %365, align 1, !tbaa !58
  %566 = sext i8 %565 to i32
  %567 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %568 = load i32, ptr %567, align 4, !tbaa !43
  %569 = tail call i32 @llvm.smin.i32(i32 %566, i32 %568)
  %570 = trunc i32 %569 to i8
  store i8 %570, ptr %365, align 1, !tbaa !58
  %571 = shl i32 %563, 24
  %572 = ashr exact i32 %571, 24
  %573 = icmp ult i32 %572, 33
  br i1 %573, label %574, label %586

574:                                              ; preds = %558
  %575 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %576 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %577 = zext nneg i32 %572 to i64
  br label %578

578:                                              ; preds = %574, %578
  %579 = phi i64 [ %577, %574 ], [ %583, %578 ]
  %580 = load ptr, ptr %575, align 8, !tbaa !87
  %581 = load ptr, ptr %576, align 8, !tbaa !34
  %582 = getelementptr inbounds ptr, ptr %581, i64 %579
  store ptr %580, ptr %582, align 8, !tbaa !34
  %583 = add nuw nsw i64 %579, 1
  %584 = and i64 %583, 4294967295
  %585 = icmp eq i64 %584, 33
  br i1 %585, label %586, label %578, !llvm.loop !113

586:                                              ; preds = %578, %558
  %587 = load i8, ptr %365, align 1, !tbaa !58
  %588 = icmp ult i8 %587, 33
  br i1 %588, label %589, label %601

589:                                              ; preds = %586
  %590 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %591 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %592 = zext nneg i8 %587 to i64
  br label %593

593:                                              ; preds = %589, %593
  %594 = phi i64 [ %592, %589 ], [ %598, %593 ]
  %595 = load ptr, ptr %590, align 8, !tbaa !87
  %596 = load ptr, ptr %591, align 8, !tbaa !34
  %597 = getelementptr inbounds ptr, ptr %596, i64 %594
  store ptr %595, ptr %597, align 8, !tbaa !34
  %598 = add nuw nsw i64 %594, 1
  %599 = and i64 %598, 4294967295
  %600 = icmp eq i64 %599, 33
  br i1 %600, label %601, label %593, !llvm.loop !114

601:                                              ; preds = %593, %586
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !98
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !98
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !98
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !98
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !104
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = load ptr, ptr %1, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !104
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local void @init_lists_mvc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !59
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !56
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !115
  switch i32 %14, label %189 [
    i32 2, label %15
    i32 4, label %15
    i32 0, label %18
    i32 3, label %18
  ]

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %16, align 8, !tbaa !58
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %17, align 1, !tbaa !58
  br label %867

18:                                               ; preds = %1, %1
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %20 = load i32, ptr %19, align 8, !tbaa !63
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %111

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !64
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %61, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %29 = zext i32 %24 to i64
  br label %30

30:                                               ; preds = %26, %57
  %31 = phi i64 [ 0, %26 ], [ %59, %57 ]
  %32 = phi i32 [ 0, %26 ], [ %58, %57 ]
  %33 = load ptr, ptr %27, align 8, !tbaa !66
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !34
  %36 = load i32, ptr %35, align 8, !tbaa !67
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  %41 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !70
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 10
  %46 = load i8, ptr %45, align 8, !tbaa !47
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 64
  %50 = load i32, ptr %49, align 8, !tbaa !51
  %51 = icmp eq i32 %50, %8
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %28, align 8, !tbaa !34
  %54 = add nsw i32 %32, 1
  %55 = sext i32 %32 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  store ptr %40, ptr %56, align 8, !tbaa !34
  br label %57

57:                                               ; preds = %30, %52, %48, %44, %38
  %58 = phi i32 [ %32, %44 ], [ %54, %52 ], [ %32, %48 ], [ %32, %38 ], [ %32, %30 ]
  %59 = add nuw nsw i64 %31, 1
  %60 = icmp eq i64 %59, %29
  br i1 %60, label %61, label %30, !llvm.loop !116

61:                                               ; preds = %57, %22
  %62 = phi i32 [ 0, %22 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  %65 = sext i32 %62 to i64
  tail call void @qsort(ptr noundef %64, i64 noundef %65, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #10
  %66 = trunc i32 %62 to i8
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %66, ptr %67, align 8, !tbaa !58
  %68 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !72
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %101, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %73 = zext i32 %69 to i64
  br label %74

74:                                               ; preds = %71, %97
  %75 = phi i64 [ 0, %71 ], [ %99, %97 ]
  %76 = phi i32 [ %62, %71 ], [ %98, %97 ]
  %77 = load ptr, ptr %72, align 8, !tbaa !73
  %78 = getelementptr inbounds ptr, ptr %77, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !34
  %80 = load i32, ptr %79, align 8, !tbaa !67
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !69
  %85 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 10
  %86 = load i8, ptr %85, align 8, !tbaa !47
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 64
  %90 = load i32, ptr %89, align 8, !tbaa !51
  %91 = icmp eq i32 %90, %8
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load ptr, ptr %63, align 8, !tbaa !34
  %94 = add nsw i32 %76, 1
  %95 = sext i32 %76 to i64
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95
  store ptr %84, ptr %96, align 8, !tbaa !34
  br label %97

97:                                               ; preds = %74, %92, %88, %82
  %98 = phi i32 [ %94, %92 ], [ %76, %88 ], [ %76, %82 ], [ %76, %74 ]
  %99 = add nuw nsw i64 %75, 1
  %100 = icmp eq i64 %99, %73
  br i1 %100, label %101, label %74, !llvm.loop !117

101:                                              ; preds = %97, %61
  %102 = phi i32 [ %62, %61 ], [ %98, %97 ]
  %103 = load ptr, ptr %63, align 8, !tbaa !34
  %104 = load i8, ptr %67, align 8, !tbaa !58
  %105 = sext i8 %104 to i64
  %106 = getelementptr inbounds ptr, ptr %103, i64 %105
  %107 = sext i8 %104 to i32
  %108 = sub nsw i32 %102, %107
  %109 = sext i32 %108 to i64
  tail call void @qsort(ptr noundef %106, i64 noundef %109, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  %110 = trunc i32 %102 to i8
  store i8 %110, ptr %67, align 8, !tbaa !58
  br label %187

111:                                              ; preds = %18
  %112 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %113 = load i32, ptr %112, align 8, !tbaa !75
  %114 = zext i32 %113 to i64
  %115 = tail call noalias ptr @calloc(i64 noundef %114, i64 noundef 8) #11
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  br label %118

118:                                              ; preds = %117, %111
  %119 = load i32, ptr %112, align 8, !tbaa !75
  %120 = zext i32 %119 to i64
  %121 = tail call noalias ptr @calloc(i64 noundef %120, i64 noundef 8) #11
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %124

124:                                              ; preds = %123, %118
  %125 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %126 = load i32, ptr %125, align 8, !tbaa !64
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %152, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %130 = zext i32 %126 to i64
  br label %131

131:                                              ; preds = %128, %148
  %132 = phi i64 [ 0, %128 ], [ %150, %148 ]
  %133 = phi i32 [ 0, %128 ], [ %149, %148 ]
  %134 = load ptr, ptr %129, align 8, !tbaa !66
  %135 = getelementptr inbounds ptr, ptr %134, i64 %132
  %136 = load ptr, ptr %135, align 8, !tbaa !34
  %137 = getelementptr inbounds %struct.frame_store, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !76
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %131
  %141 = getelementptr inbounds %struct.frame_store, ptr %136, i64 0, i32 15
  %142 = load i32, ptr %141, align 8, !tbaa !77
  %143 = icmp eq i32 %142, %8
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = add nsw i32 %133, 1
  %146 = sext i32 %133 to i64
  %147 = getelementptr inbounds ptr, ptr %115, i64 %146
  store ptr %136, ptr %147, align 8, !tbaa !34
  br label %148

148:                                              ; preds = %131, %140, %144
  %149 = phi i32 [ %145, %144 ], [ %133, %140 ], [ %133, %131 ]
  %150 = add nuw nsw i64 %132, 1
  %151 = icmp eq i64 %150, %130
  br i1 %151, label %152, label %131, !llvm.loop !118

152:                                              ; preds = %148, %124
  %153 = phi i32 [ 0, %124 ], [ %149, %148 ]
  %154 = sext i32 %153 to i64
  tail call void @qsort(ptr noundef %115, i64 noundef %154, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #10
  %155 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %155, align 8, !tbaa !58
  %156 = load i32, ptr %19, align 8, !tbaa !63
  %157 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %158 = load ptr, ptr %157, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %156, ptr noundef %115, i32 noundef %153, ptr noundef %158, ptr noundef nonnull %155, i32 noundef 0) #10
  %159 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %160 = load i32, ptr %159, align 4, !tbaa !72
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %182, label %162

162:                                              ; preds = %152
  %163 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %164 = zext i32 %160 to i64
  br label %165

165:                                              ; preds = %162, %178
  %166 = phi i64 [ 0, %162 ], [ %180, %178 ]
  %167 = phi i32 [ 0, %162 ], [ %179, %178 ]
  %168 = load ptr, ptr %163, align 8, !tbaa !73
  %169 = getelementptr inbounds ptr, ptr %168, i64 %166
  %170 = load ptr, ptr %169, align 8, !tbaa !34
  %171 = getelementptr inbounds %struct.frame_store, ptr %170, i64 0, i32 15
  %172 = load i32, ptr %171, align 8, !tbaa !77
  %173 = icmp eq i32 %172, %8
  br i1 %173, label %174, label %178

174:                                              ; preds = %165
  %175 = add nsw i32 %167, 1
  %176 = sext i32 %167 to i64
  %177 = getelementptr inbounds ptr, ptr %121, i64 %176
  store ptr %170, ptr %177, align 8, !tbaa !34
  br label %178

178:                                              ; preds = %165, %174
  %179 = phi i32 [ %175, %174 ], [ %167, %165 ]
  %180 = add nuw nsw i64 %166, 1
  %181 = icmp eq i64 %180, %164
  br i1 %181, label %182, label %165, !llvm.loop !119

182:                                              ; preds = %178, %152
  %183 = phi i32 [ 0, %152 ], [ %179, %178 ]
  %184 = sext i32 %183 to i64
  tail call void @qsort(ptr noundef %121, i64 noundef %184, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #10
  %185 = load i32, ptr %19, align 8, !tbaa !63
  %186 = load ptr, ptr %157, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %185, ptr noundef %121, i32 noundef %183, ptr noundef %186, ptr noundef nonnull %155, i32 noundef 1) #10
  tail call void @free(ptr noundef %115) #10
  tail call void @free(ptr noundef %121) #10
  br label %187

187:                                              ; preds = %182, %101
  %188 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %188, align 1, !tbaa !58
  br label %539

189:                                              ; preds = %1
  %190 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %191 = load i32, ptr %190, align 8, !tbaa !63
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %387

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %195 = load i32, ptr %194, align 8, !tbaa !64
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %238, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %199 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %200 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %201 = zext i32 %195 to i64
  br label %202

202:                                              ; preds = %197, %234
  %203 = phi i64 [ 0, %197 ], [ %236, %234 ]
  %204 = phi i32 [ 0, %197 ], [ %235, %234 ]
  %205 = load ptr, ptr %198, align 8, !tbaa !66
  %206 = getelementptr inbounds ptr, ptr %205, i64 %203
  %207 = load ptr, ptr %206, align 8, !tbaa !34
  %208 = load i32, ptr %207, align 8, !tbaa !67
  %209 = icmp eq i32 %208, 3
  br i1 %209, label %210, label %234

210:                                              ; preds = %202
  %211 = getelementptr inbounds %struct.frame_store, ptr %207, i64 0, i32 12
  %212 = load ptr, ptr %211, align 8, !tbaa !69
  %213 = getelementptr inbounds %struct.storable_picture, ptr %212, i64 0, i32 11
  %214 = load i32, ptr %213, align 4, !tbaa !70
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %234, label %216

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.storable_picture, ptr %212, i64 0, i32 10
  %218 = load i8, ptr %217, align 8, !tbaa !47
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.storable_picture, ptr %212, i64 0, i32 64
  %222 = load i32, ptr %221, align 8, !tbaa !51
  %223 = icmp eq i32 %222, %8
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = load i32, ptr %199, align 4, !tbaa !97
  %226 = getelementptr inbounds %struct.storable_picture, ptr %212, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !98
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  %230 = load ptr, ptr %200, align 8, !tbaa !34
  %231 = add nsw i32 %204, 1
  %232 = sext i32 %204 to i64
  %233 = getelementptr inbounds ptr, ptr %230, i64 %232
  store ptr %212, ptr %233, align 8, !tbaa !34
  br label %234

234:                                              ; preds = %202, %224, %229, %220, %216, %210
  %235 = phi i32 [ %204, %216 ], [ %231, %229 ], [ %204, %224 ], [ %204, %220 ], [ %204, %210 ], [ %204, %202 ]
  %236 = add nuw nsw i64 %203, 1
  %237 = icmp eq i64 %236, %201
  br i1 %237, label %238, label %202, !llvm.loop !120

238:                                              ; preds = %234, %193
  %239 = phi i32 [ 0, %193 ], [ %235, %234 ]
  %240 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %241 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %242 = load ptr, ptr %241, align 8, !tbaa !34
  %243 = sext i32 %239 to i64
  tail call void @qsort(ptr noundef %242, i64 noundef %243, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #10
  %244 = load i32, ptr %240, align 8, !tbaa !64
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %286, label %246

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %248 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %249 = zext i32 %244 to i64
  br label %250

250:                                              ; preds = %246, %282
  %251 = phi i64 [ 0, %246 ], [ %284, %282 ]
  %252 = phi i32 [ %239, %246 ], [ %283, %282 ]
  %253 = load ptr, ptr %247, align 8, !tbaa !66
  %254 = getelementptr inbounds ptr, ptr %253, i64 %251
  %255 = load ptr, ptr %254, align 8, !tbaa !34
  %256 = load i32, ptr %255, align 8, !tbaa !67
  %257 = icmp eq i32 %256, 3
  br i1 %257, label %258, label %282

258:                                              ; preds = %250
  %259 = getelementptr inbounds %struct.frame_store, ptr %255, i64 0, i32 12
  %260 = load ptr, ptr %259, align 8, !tbaa !69
  %261 = getelementptr inbounds %struct.storable_picture, ptr %260, i64 0, i32 11
  %262 = load i32, ptr %261, align 4, !tbaa !70
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %282, label %264

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.storable_picture, ptr %260, i64 0, i32 10
  %266 = load i8, ptr %265, align 8, !tbaa !47
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.storable_picture, ptr %260, i64 0, i32 64
  %270 = load i32, ptr %269, align 8, !tbaa !51
  %271 = icmp eq i32 %270, %8
  br i1 %271, label %272, label %282

272:                                              ; preds = %268
  %273 = load i32, ptr %248, align 4, !tbaa !97
  %274 = getelementptr inbounds %struct.storable_picture, ptr %260, i64 0, i32 1
  %275 = load i32, ptr %274, align 4, !tbaa !98
  %276 = icmp slt i32 %273, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = load ptr, ptr %241, align 8, !tbaa !34
  %279 = add nsw i32 %252, 1
  %280 = sext i32 %252 to i64
  %281 = getelementptr inbounds ptr, ptr %278, i64 %280
  store ptr %260, ptr %281, align 8, !tbaa !34
  br label %282

282:                                              ; preds = %250, %272, %277, %268, %264, %258
  %283 = phi i32 [ %252, %264 ], [ %279, %277 ], [ %252, %272 ], [ %252, %268 ], [ %252, %258 ], [ %252, %250 ]
  %284 = add nuw nsw i64 %251, 1
  %285 = icmp eq i64 %284, %249
  br i1 %285, label %286, label %250, !llvm.loop !121

286:                                              ; preds = %282, %238
  %287 = phi i32 [ %239, %238 ], [ %283, %282 ]
  %288 = load ptr, ptr %241, align 8, !tbaa !34
  %289 = getelementptr inbounds ptr, ptr %288, i64 %243
  %290 = sub nsw i32 %287, %239
  %291 = sext i32 %290 to i64
  tail call void @qsort(ptr noundef %289, i64 noundef %291, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #10
  %292 = icmp sgt i32 %239, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %295 = sext i32 %290 to i64
  %296 = zext nneg i32 %239 to i64
  br label %304

297:                                              ; preds = %304, %286
  %298 = icmp slt i32 %239, %287
  br i1 %298, label %299, label %324

299:                                              ; preds = %297
  %300 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %301 = sext i32 %239 to i64
  %302 = sext i32 %239 to i64
  %303 = sext i32 %287 to i64
  br label %314

304:                                              ; preds = %293, %304
  %305 = phi i64 [ 0, %293 ], [ %312, %304 ]
  %306 = load ptr, ptr %241, align 8, !tbaa !34
  %307 = getelementptr inbounds ptr, ptr %306, i64 %305
  %308 = load ptr, ptr %307, align 8, !tbaa !34
  %309 = load ptr, ptr %294, align 8, !tbaa !34
  %310 = getelementptr ptr, ptr %309, i64 %305
  %311 = getelementptr ptr, ptr %310, i64 %295
  store ptr %308, ptr %311, align 8, !tbaa !34
  %312 = add nuw nsw i64 %305, 1
  %313 = icmp eq i64 %312, %296
  br i1 %313, label %297, label %304, !llvm.loop !122

314:                                              ; preds = %299, %314
  %315 = phi i64 [ %301, %299 ], [ %322, %314 ]
  %316 = load ptr, ptr %241, align 8, !tbaa !34
  %317 = getelementptr inbounds ptr, ptr %316, i64 %315
  %318 = load ptr, ptr %317, align 8, !tbaa !34
  %319 = load ptr, ptr %300, align 8, !tbaa !34
  %320 = sub nsw i64 %315, %302
  %321 = getelementptr inbounds ptr, ptr %319, i64 %320
  store ptr %318, ptr %321, align 8, !tbaa !34
  %322 = add nsw i64 %315, 1
  %323 = icmp eq i64 %322, %303
  br i1 %323, label %324, label %314, !llvm.loop !123

324:                                              ; preds = %314, %297
  %325 = trunc i32 %287 to i8
  %326 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %327 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %325, ptr %327, align 1, !tbaa !58
  store i8 %325, ptr %326, align 8, !tbaa !58
  %328 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %329 = load i32, ptr %328, align 4, !tbaa !72
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %369, label %331

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %333 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %334 = zext i32 %329 to i64
  br label %335

335:                                              ; preds = %331, %365
  %336 = phi i64 [ 0, %331 ], [ %367, %365 ]
  %337 = phi i32 [ %287, %331 ], [ %366, %365 ]
  %338 = load ptr, ptr %332, align 8, !tbaa !73
  %339 = getelementptr inbounds ptr, ptr %338, i64 %336
  %340 = load ptr, ptr %339, align 8, !tbaa !34
  %341 = load i32, ptr %340, align 8, !tbaa !67
  %342 = icmp eq i32 %341, 3
  br i1 %342, label %343, label %365

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.frame_store, ptr %340, i64 0, i32 12
  %345 = load ptr, ptr %344, align 8, !tbaa !69
  %346 = getelementptr inbounds %struct.storable_picture, ptr %345, i64 0, i32 10
  %347 = load i8, ptr %346, align 8, !tbaa !47
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %365, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.storable_picture, ptr %345, i64 0, i32 64
  %351 = load i32, ptr %350, align 8, !tbaa !51
  %352 = icmp eq i32 %351, %8
  br i1 %352, label %353, label %365

353:                                              ; preds = %349
  %354 = load ptr, ptr %241, align 8, !tbaa !34
  %355 = sext i32 %337 to i64
  %356 = getelementptr inbounds ptr, ptr %354, i64 %355
  store ptr %345, ptr %356, align 8, !tbaa !34
  %357 = load ptr, ptr %332, align 8, !tbaa !73
  %358 = getelementptr inbounds ptr, ptr %357, i64 %336
  %359 = load ptr, ptr %358, align 8, !tbaa !34
  %360 = getelementptr inbounds %struct.frame_store, ptr %359, i64 0, i32 12
  %361 = load ptr, ptr %360, align 8, !tbaa !69
  %362 = load ptr, ptr %333, align 8, !tbaa !34
  %363 = add nsw i32 %337, 1
  %364 = getelementptr inbounds ptr, ptr %362, i64 %355
  store ptr %361, ptr %364, align 8, !tbaa !34
  br label %365

365:                                              ; preds = %335, %353, %349, %343
  %366 = phi i32 [ %363, %353 ], [ %337, %349 ], [ %337, %343 ], [ %337, %335 ]
  %367 = add nuw nsw i64 %336, 1
  %368 = icmp eq i64 %367, %334
  br i1 %368, label %369, label %335, !llvm.loop !124

369:                                              ; preds = %365, %324
  %370 = phi i32 [ %287, %324 ], [ %366, %365 ]
  %371 = load ptr, ptr %241, align 8, !tbaa !34
  %372 = load i8, ptr %326, align 8, !tbaa !58
  %373 = sext i8 %372 to i64
  %374 = getelementptr inbounds ptr, ptr %371, i64 %373
  %375 = sext i8 %372 to i32
  %376 = sub nsw i32 %370, %375
  %377 = sext i32 %376 to i64
  tail call void @qsort(ptr noundef %374, i64 noundef %377, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  %378 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %379 = load ptr, ptr %378, align 8, !tbaa !34
  %380 = load i8, ptr %326, align 8, !tbaa !58
  %381 = sext i8 %380 to i64
  %382 = getelementptr inbounds ptr, ptr %379, i64 %381
  %383 = sext i8 %380 to i32
  %384 = sub nsw i32 %370, %383
  %385 = sext i32 %384 to i64
  tail call void @qsort(ptr noundef %382, i64 noundef %385, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #10
  %386 = trunc i32 %370 to i8
  store i8 %386, ptr %327, align 1, !tbaa !58
  store i8 %386, ptr %326, align 8, !tbaa !58
  br label %539

387:                                              ; preds = %189
  %388 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %389 = load i32, ptr %388, align 8, !tbaa !75
  %390 = zext i32 %389 to i64
  %391 = tail call noalias ptr @calloc(i64 noundef %390, i64 noundef 8) #11
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %394

393:                                              ; preds = %387
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #10
  br label %394

394:                                              ; preds = %393, %387
  %395 = load i32, ptr %388, align 8, !tbaa !75
  %396 = zext i32 %395 to i64
  %397 = tail call noalias ptr @calloc(i64 noundef %396, i64 noundef 8) #11
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %400

399:                                              ; preds = %394
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #10
  br label %400

400:                                              ; preds = %399, %394
  %401 = load i32, ptr %388, align 8, !tbaa !75
  %402 = zext i32 %401 to i64
  %403 = tail call noalias ptr @calloc(i64 noundef %402, i64 noundef 8) #11
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %406

405:                                              ; preds = %400
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #10
  br label %406

406:                                              ; preds = %405, %400
  %407 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %407, align 8, !tbaa !58
  %408 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 1, ptr %408, align 1, !tbaa !58
  %409 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %410 = load i32, ptr %409, align 8, !tbaa !64
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %440, label %412

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %414 = zext i32 %410 to i64
  br label %415

415:                                              ; preds = %412, %436
  %416 = phi i64 [ 0, %412 ], [ %438, %436 ]
  %417 = phi i32 [ 0, %412 ], [ %437, %436 ]
  %418 = load ptr, ptr %413, align 8, !tbaa !66
  %419 = getelementptr inbounds ptr, ptr %418, i64 %416
  %420 = load ptr, ptr %419, align 8, !tbaa !34
  %421 = load i32, ptr %420, align 8, !tbaa !67
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %436, label %423

423:                                              ; preds = %415
  %424 = load i32, ptr %5, align 8, !tbaa !60
  %425 = getelementptr inbounds %struct.frame_store, ptr %420, i64 0, i32 10
  %426 = load i32, ptr %425, align 8, !tbaa !104
  %427 = icmp slt i32 %424, %426
  br i1 %427, label %436, label %428

428:                                              ; preds = %423
  %429 = getelementptr inbounds %struct.frame_store, ptr %420, i64 0, i32 15
  %430 = load i32, ptr %429, align 8, !tbaa !77
  %431 = icmp eq i32 %430, %8
  br i1 %431, label %432, label %436

432:                                              ; preds = %428
  %433 = add nsw i32 %417, 1
  %434 = sext i32 %417 to i64
  %435 = getelementptr inbounds ptr, ptr %391, i64 %434
  store ptr %420, ptr %435, align 8, !tbaa !34
  br label %436

436:                                              ; preds = %415, %432, %428, %423
  %437 = phi i32 [ %433, %432 ], [ %417, %428 ], [ %417, %423 ], [ %417, %415 ]
  %438 = add nuw nsw i64 %416, 1
  %439 = icmp eq i64 %438, %414
  br i1 %439, label %440, label %415, !llvm.loop !125

440:                                              ; preds = %436, %406
  %441 = phi i32 [ 0, %406 ], [ %437, %436 ]
  %442 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %443 = sext i32 %441 to i64
  tail call void @qsort(ptr noundef %391, i64 noundef %443, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #10
  %444 = load i32, ptr %442, align 8, !tbaa !64
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %474, label %446

446:                                              ; preds = %440
  %447 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %448 = zext i32 %444 to i64
  br label %449

449:                                              ; preds = %446, %470
  %450 = phi i64 [ 0, %446 ], [ %472, %470 ]
  %451 = phi i32 [ %441, %446 ], [ %471, %470 ]
  %452 = load ptr, ptr %447, align 8, !tbaa !66
  %453 = getelementptr inbounds ptr, ptr %452, i64 %450
  %454 = load ptr, ptr %453, align 8, !tbaa !34
  %455 = load i32, ptr %454, align 8, !tbaa !67
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %470, label %457

457:                                              ; preds = %449
  %458 = load i32, ptr %5, align 8, !tbaa !60
  %459 = getelementptr inbounds %struct.frame_store, ptr %454, i64 0, i32 10
  %460 = load i32, ptr %459, align 8, !tbaa !104
  %461 = icmp slt i32 %458, %460
  br i1 %461, label %462, label %470

462:                                              ; preds = %457
  %463 = getelementptr inbounds %struct.frame_store, ptr %454, i64 0, i32 15
  %464 = load i32, ptr %463, align 8, !tbaa !77
  %465 = icmp eq i32 %464, %8
  br i1 %465, label %466, label %470

466:                                              ; preds = %462
  %467 = add nsw i32 %451, 1
  %468 = sext i32 %451 to i64
  %469 = getelementptr inbounds ptr, ptr %391, i64 %468
  store ptr %454, ptr %469, align 8, !tbaa !34
  br label %470

470:                                              ; preds = %449, %466, %462, %457
  %471 = phi i32 [ %467, %466 ], [ %451, %462 ], [ %451, %457 ], [ %451, %449 ]
  %472 = add nuw nsw i64 %450, 1
  %473 = icmp eq i64 %472, %448
  br i1 %473, label %474, label %449, !llvm.loop !126

474:                                              ; preds = %470, %440
  %475 = phi i32 [ %441, %440 ], [ %471, %470 ]
  %476 = getelementptr inbounds ptr, ptr %391, i64 %443
  %477 = sub nsw i32 %475, %441
  %478 = sext i32 %477 to i64
  tail call void @qsort(ptr noundef %476, i64 noundef %478, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #10
  %479 = icmp sgt i32 %441, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %474
  %481 = sext i32 %477 to i64
  %482 = zext nneg i32 %441 to i64
  %483 = getelementptr ptr, ptr %397, i64 %481
  br label %495

484:                                              ; preds = %495, %474
  %485 = icmp slt i32 %441, %475
  br i1 %485, label %486, label %502

486:                                              ; preds = %484
  %487 = sext i32 %441 to i64
  %488 = shl nsw i64 %487, 3
  %489 = getelementptr i8, ptr %391, i64 %488
  %490 = xor i32 %441, -1
  %491 = add i32 %475, %490
  %492 = zext i32 %491 to i64
  %493 = shl nuw nsw i64 %492, 3
  %494 = add nuw nsw i64 %493, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %397, ptr noundef nonnull align 8 dereferenceable(1) %489, i64 %494, i1 false), !tbaa !34
  br label %502

495:                                              ; preds = %480, %495
  %496 = phi i64 [ 0, %480 ], [ %500, %495 ]
  %497 = getelementptr inbounds ptr, ptr %391, i64 %496
  %498 = load ptr, ptr %497, align 8, !tbaa !34
  %499 = getelementptr ptr, ptr %483, i64 %496
  store ptr %498, ptr %499, align 8, !tbaa !34
  %500 = add nuw nsw i64 %496, 1
  %501 = icmp eq i64 %500, %482
  br i1 %501, label %484, label %495, !llvm.loop !127

502:                                              ; preds = %486, %484
  store i8 0, ptr %407, align 8, !tbaa !58
  store i8 0, ptr %408, align 1, !tbaa !58
  %503 = load i32, ptr %190, align 8, !tbaa !63
  %504 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %505 = load ptr, ptr %504, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %503, ptr noundef %391, i32 noundef %475, ptr noundef %505, ptr noundef nonnull %407, i32 noundef 0) #10
  %506 = load i32, ptr %190, align 8, !tbaa !63
  %507 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %508 = load ptr, ptr %507, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %506, ptr noundef %397, i32 noundef %475, ptr noundef %508, ptr noundef nonnull %408, i32 noundef 0) #10
  %509 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %510 = load i32, ptr %509, align 4, !tbaa !72
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %532, label %512

512:                                              ; preds = %502
  %513 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %514 = zext i32 %510 to i64
  br label %515

515:                                              ; preds = %512, %528
  %516 = phi i64 [ 0, %512 ], [ %530, %528 ]
  %517 = phi i32 [ 0, %512 ], [ %529, %528 ]
  %518 = load ptr, ptr %513, align 8, !tbaa !73
  %519 = getelementptr inbounds ptr, ptr %518, i64 %516
  %520 = load ptr, ptr %519, align 8, !tbaa !34
  %521 = getelementptr inbounds %struct.frame_store, ptr %520, i64 0, i32 15
  %522 = load i32, ptr %521, align 8, !tbaa !77
  %523 = icmp eq i32 %522, %8
  br i1 %523, label %524, label %528

524:                                              ; preds = %515
  %525 = add nsw i32 %517, 1
  %526 = sext i32 %517 to i64
  %527 = getelementptr inbounds ptr, ptr %403, i64 %526
  store ptr %520, ptr %527, align 8, !tbaa !34
  br label %528

528:                                              ; preds = %515, %524
  %529 = phi i32 [ %525, %524 ], [ %517, %515 ]
  %530 = add nuw nsw i64 %516, 1
  %531 = icmp eq i64 %530, %514
  br i1 %531, label %532, label %515, !llvm.loop !128

532:                                              ; preds = %528, %502
  %533 = phi i32 [ 0, %502 ], [ %529, %528 ]
  %534 = sext i32 %533 to i64
  tail call void @qsort(ptr noundef %403, i64 noundef %534, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #10
  %535 = load i32, ptr %190, align 8, !tbaa !63
  %536 = load ptr, ptr %504, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %535, ptr noundef %403, i32 noundef %533, ptr noundef %536, ptr noundef nonnull %407, i32 noundef 1) #10
  %537 = load i32, ptr %190, align 8, !tbaa !63
  %538 = load ptr, ptr %507, align 8, !tbaa !34
  tail call void @gen_pic_list_from_frame_list(i32 noundef %537, ptr noundef %403, i32 noundef %533, ptr noundef %538, ptr noundef nonnull %408, i32 noundef 1) #10
  tail call void @free(ptr noundef %391) #10
  tail call void @free(ptr noundef %397) #10
  tail call void @free(ptr noundef %403) #10
  br label %539

539:                                              ; preds = %369, %532, %187
  %540 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %541 = load i8, ptr %540, align 8, !tbaa !58
  %542 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  %543 = load i8, ptr %542, align 1, !tbaa !58
  %544 = icmp eq i8 %541, %543
  %545 = icmp sgt i8 %541, 1
  %546 = and i1 %545, %544
  br i1 %546, label %547, label %575

547:                                              ; preds = %539
  %548 = sext i8 %541 to i64
  %549 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %550 = load ptr, ptr %549, align 8, !tbaa !34
  %551 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %552 = load ptr, ptr %551, align 8, !tbaa !34
  %553 = and i64 %548, 4294967295
  br label %554

554:                                              ; preds = %547, %554
  %555 = phi i64 [ 0, %547 ], [ %563, %554 ]
  %556 = phi i32 [ 0, %547 ], [ %562, %554 ]
  %557 = getelementptr inbounds ptr, ptr %550, i64 %555
  %558 = load ptr, ptr %557, align 8, !tbaa !34
  %559 = getelementptr inbounds ptr, ptr %552, i64 %555
  %560 = load ptr, ptr %559, align 8, !tbaa !34
  %561 = icmp eq ptr %558, %560
  %562 = select i1 %561, i32 %556, i32 1
  %563 = add nuw nsw i64 %555, 1
  %564 = icmp eq i64 %563, %553
  br i1 %564, label %565, label %554, !llvm.loop !129

565:                                              ; preds = %554
  %566 = icmp eq i32 %562, 0
  br i1 %566, label %567, label %575

567:                                              ; preds = %565
  %568 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %569 = load ptr, ptr %568, align 8, !tbaa !34
  %570 = load ptr, ptr %569, align 8, !tbaa !34
  %571 = getelementptr inbounds ptr, ptr %569, i64 1
  %572 = load ptr, ptr %571, align 8, !tbaa !34
  store ptr %572, ptr %569, align 8, !tbaa !34
  %573 = load ptr, ptr %568, align 8, !tbaa !34
  %574 = getelementptr inbounds ptr, ptr %573, i64 1
  store ptr %570, ptr %574, align 8, !tbaa !34
  br label %575

575:                                              ; preds = %565, %567, %539
  %576 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %577 = load i32, ptr %576, align 8, !tbaa !80
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %579, label %824

579:                                              ; preds = %575
  %580 = load i32, ptr %13, align 4, !tbaa !115
  switch i32 %580, label %664 [
    i32 0, label %581
    i32 3, label %581
  ]

581:                                              ; preds = %579, %579
  %582 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %583 = load i32, ptr %582, align 8, !tbaa !75
  %584 = zext i32 %583 to i64
  %585 = tail call noalias ptr @calloc(i64 noundef %584, i64 noundef 8) #11
  %586 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %585, ptr %586, align 8, !tbaa !81
  %587 = icmp eq ptr %585, null
  br i1 %587, label %588, label %589

588:                                              ; preds = %581
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #10
  br label %589

589:                                              ; preds = %588, %581
  %590 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %591 = load i32, ptr %590, align 8, !tbaa !63
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %619

593:                                              ; preds = %589
  %594 = load i8, ptr %540, align 8, !tbaa !58
  %595 = load ptr, ptr %586, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %595, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %596 = load i32, ptr %11, align 4, !tbaa !56
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %617, label %598

598:                                              ; preds = %593
  %599 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %600 = sext i8 %594 to i64
  %601 = zext i32 %596 to i64
  br label %602

602:                                              ; preds = %598, %602
  %603 = phi i64 [ %600, %598 ], [ %611, %602 ]
  %604 = phi i64 [ 0, %598 ], [ %613, %602 ]
  %605 = load ptr, ptr %586, align 8, !tbaa !81
  %606 = getelementptr inbounds ptr, ptr %605, i64 %604
  %607 = load ptr, ptr %606, align 8, !tbaa !34
  %608 = getelementptr inbounds %struct.frame_store, ptr %607, i64 0, i32 12
  %609 = load ptr, ptr %608, align 8, !tbaa !69
  %610 = load ptr, ptr %599, align 8, !tbaa !34
  %611 = add nsw i64 %603, 1
  %612 = getelementptr inbounds ptr, ptr %610, i64 %603
  store ptr %609, ptr %612, align 8, !tbaa !34
  %613 = add nuw nsw i64 %604, 1
  %614 = icmp eq i64 %613, %601
  br i1 %614, label %615, label %602, !llvm.loop !130

615:                                              ; preds = %602
  %616 = trunc i64 %611 to i8
  br label %617

617:                                              ; preds = %615, %593
  %618 = phi i8 [ %594, %593 ], [ %616, %615 ]
  store i8 %618, ptr %540, align 8, !tbaa !58
  br label %824

619:                                              ; preds = %589
  %620 = load ptr, ptr %586, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %591, i32 noundef 0, ptr noundef %620, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %621 = load i32, ptr %590, align 8, !tbaa !63
  %622 = load ptr, ptr %586, align 8, !tbaa !81
  %623 = load i32, ptr %11, align 4, !tbaa !56
  %624 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %625 = load ptr, ptr %624, align 8, !tbaa !34
  switch i32 %621, label %824 [
    i32 1, label %626
    i32 2, label %646
  ]

626:                                              ; preds = %619
  %627 = icmp sgt i32 %623, 0
  br i1 %627, label %628, label %643

628:                                              ; preds = %626
  %629 = zext nneg i32 %623 to i64
  br label %630

630:                                              ; preds = %630, %628
  %631 = phi i64 [ 0, %628 ], [ %641, %630 ]
  %632 = getelementptr inbounds ptr, ptr %622, i64 %631
  %633 = load ptr, ptr %632, align 8, !tbaa !34
  %634 = getelementptr inbounds %struct.frame_store, ptr %633, i64 0, i32 13
  %635 = load ptr, ptr %634, align 8, !tbaa !83
  %636 = load i8, ptr %540, align 1, !tbaa !58
  %637 = sext i8 %636 to i64
  %638 = getelementptr inbounds ptr, ptr %625, i64 %637
  store ptr %635, ptr %638, align 8, !tbaa !34
  %639 = load i8, ptr %540, align 1, !tbaa !58
  %640 = add i8 %639, 1
  store i8 %640, ptr %540, align 1, !tbaa !58
  %641 = add nuw nsw i64 %631, 1
  %642 = icmp eq i64 %641, %629
  br i1 %642, label %643, label %630, !llvm.loop !84

643:                                              ; preds = %630, %626
  %644 = icmp eq i32 %621, 2
  %645 = and i1 %644, %627
  br i1 %645, label %648, label %824

646:                                              ; preds = %619
  %647 = icmp sgt i32 %623, 0
  br i1 %647, label %648, label %824

648:                                              ; preds = %646, %643
  %649 = tail call i32 @llvm.smax.i32(i32 %623, i32 1)
  %650 = zext nneg i32 %649 to i64
  br label %651

651:                                              ; preds = %651, %648
  %652 = phi i64 [ 0, %648 ], [ %662, %651 ]
  %653 = getelementptr inbounds ptr, ptr %622, i64 %652
  %654 = load ptr, ptr %653, align 8, !tbaa !34
  %655 = getelementptr inbounds %struct.frame_store, ptr %654, i64 0, i32 14
  %656 = load ptr, ptr %655, align 8, !tbaa !85
  %657 = load i8, ptr %540, align 1, !tbaa !58
  %658 = sext i8 %657 to i64
  %659 = getelementptr inbounds ptr, ptr %625, i64 %658
  store ptr %656, ptr %659, align 8, !tbaa !34
  %660 = load i8, ptr %540, align 1, !tbaa !58
  %661 = add i8 %660, 1
  store i8 %661, ptr %540, align 1, !tbaa !58
  %662 = add nuw nsw i64 %652, 1
  %663 = icmp eq i64 %662, %650
  br i1 %663, label %824, label %651, !llvm.loop !86

664:                                              ; preds = %579
  %665 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %666 = load i32, ptr %665, align 8, !tbaa !75
  %667 = zext i32 %666 to i64
  %668 = tail call noalias ptr @calloc(i64 noundef %667, i64 noundef 8) #11
  %669 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %668, ptr %669, align 8, !tbaa !81
  %670 = icmp eq ptr %668, null
  br i1 %670, label %671, label %672

671:                                              ; preds = %664
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #10
  br label %672

672:                                              ; preds = %671, %664
  %673 = load i32, ptr %665, align 8, !tbaa !75
  %674 = zext i32 %673 to i64
  %675 = tail call noalias ptr @calloc(i64 noundef %674, i64 noundef 8) #11
  %676 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  store ptr %675, ptr %676, align 8, !tbaa !110
  %677 = icmp eq ptr %675, null
  br i1 %677, label %678, label %679

678:                                              ; preds = %672
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #10
  br label %679

679:                                              ; preds = %678, %672
  %680 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %681 = load i32, ptr %680, align 8, !tbaa !63
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %683, label %734

683:                                              ; preds = %679
  %684 = load i8, ptr %540, align 8, !tbaa !58
  %685 = load ptr, ptr %669, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %685, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %686 = load ptr, ptr %676, align 8, !tbaa !110
  tail call void @append_interview_list(ptr noundef %4, i32 noundef 0, i32 noundef 1, ptr noundef %686, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %687 = load i32, ptr %11, align 4, !tbaa !56
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %708, label %689

689:                                              ; preds = %683
  %690 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %691 = sext i8 %684 to i64
  %692 = zext i32 %687 to i64
  br label %693

693:                                              ; preds = %689, %693
  %694 = phi i64 [ %691, %689 ], [ %702, %693 ]
  %695 = phi i64 [ 0, %689 ], [ %704, %693 ]
  %696 = load ptr, ptr %669, align 8, !tbaa !81
  %697 = getelementptr inbounds ptr, ptr %696, i64 %695
  %698 = load ptr, ptr %697, align 8, !tbaa !34
  %699 = getelementptr inbounds %struct.frame_store, ptr %698, i64 0, i32 12
  %700 = load ptr, ptr %699, align 8, !tbaa !69
  %701 = load ptr, ptr %690, align 8, !tbaa !34
  %702 = add nsw i64 %694, 1
  %703 = getelementptr inbounds ptr, ptr %701, i64 %694
  store ptr %700, ptr %703, align 8, !tbaa !34
  %704 = add nuw nsw i64 %695, 1
  %705 = icmp eq i64 %704, %692
  br i1 %705, label %706, label %693, !llvm.loop !131

706:                                              ; preds = %693
  %707 = trunc i64 %702 to i8
  br label %708

708:                                              ; preds = %706, %683
  %709 = phi i8 [ %684, %683 ], [ %707, %706 ]
  store i8 %709, ptr %540, align 8, !tbaa !58
  %710 = load i8, ptr %542, align 1, !tbaa !58
  %711 = load i32, ptr %12, align 8, !tbaa !57
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %732, label %713

713:                                              ; preds = %708
  %714 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %715 = sext i8 %710 to i64
  %716 = zext i32 %711 to i64
  br label %717

717:                                              ; preds = %713, %717
  %718 = phi i64 [ %715, %713 ], [ %726, %717 ]
  %719 = phi i64 [ 0, %713 ], [ %728, %717 ]
  %720 = load ptr, ptr %676, align 8, !tbaa !110
  %721 = getelementptr inbounds ptr, ptr %720, i64 %719
  %722 = load ptr, ptr %721, align 8, !tbaa !34
  %723 = getelementptr inbounds %struct.frame_store, ptr %722, i64 0, i32 12
  %724 = load ptr, ptr %723, align 8, !tbaa !69
  %725 = load ptr, ptr %714, align 8, !tbaa !34
  %726 = add nsw i64 %718, 1
  %727 = getelementptr inbounds ptr, ptr %725, i64 %718
  store ptr %724, ptr %727, align 8, !tbaa !34
  %728 = add nuw nsw i64 %719, 1
  %729 = icmp eq i64 %728, %716
  br i1 %729, label %730, label %717, !llvm.loop !132

730:                                              ; preds = %717
  %731 = trunc i64 %726 to i8
  br label %732

732:                                              ; preds = %730, %708
  %733 = phi i8 [ %710, %708 ], [ %731, %730 ]
  store i8 %733, ptr %542, align 1, !tbaa !58
  br label %824

734:                                              ; preds = %679
  %735 = load ptr, ptr %669, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %681, i32 noundef 0, ptr noundef %735, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %736 = load i32, ptr %680, align 8, !tbaa !63
  %737 = load ptr, ptr %669, align 8, !tbaa !81
  %738 = load i32, ptr %11, align 4, !tbaa !56
  %739 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %740 = load ptr, ptr %739, align 8, !tbaa !34
  switch i32 %736, label %779 [
    i32 1, label %741
    i32 2, label %761
  ]

741:                                              ; preds = %734
  %742 = icmp sgt i32 %738, 0
  br i1 %742, label %743, label %758

743:                                              ; preds = %741
  %744 = zext nneg i32 %738 to i64
  br label %745

745:                                              ; preds = %745, %743
  %746 = phi i64 [ 0, %743 ], [ %756, %745 ]
  %747 = getelementptr inbounds ptr, ptr %737, i64 %746
  %748 = load ptr, ptr %747, align 8, !tbaa !34
  %749 = getelementptr inbounds %struct.frame_store, ptr %748, i64 0, i32 13
  %750 = load ptr, ptr %749, align 8, !tbaa !83
  %751 = load i8, ptr %540, align 1, !tbaa !58
  %752 = sext i8 %751 to i64
  %753 = getelementptr inbounds ptr, ptr %740, i64 %752
  store ptr %750, ptr %753, align 8, !tbaa !34
  %754 = load i8, ptr %540, align 1, !tbaa !58
  %755 = add i8 %754, 1
  store i8 %755, ptr %540, align 1, !tbaa !58
  %756 = add nuw nsw i64 %746, 1
  %757 = icmp eq i64 %756, %744
  br i1 %757, label %758, label %745, !llvm.loop !84

758:                                              ; preds = %745, %741
  %759 = icmp eq i32 %736, 2
  %760 = and i1 %759, %742
  br i1 %760, label %763, label %779

761:                                              ; preds = %734
  %762 = icmp sgt i32 %738, 0
  br i1 %762, label %763, label %779

763:                                              ; preds = %761, %758
  %764 = tail call i32 @llvm.smax.i32(i32 %738, i32 1)
  %765 = zext nneg i32 %764 to i64
  br label %766

766:                                              ; preds = %766, %763
  %767 = phi i64 [ 0, %763 ], [ %777, %766 ]
  %768 = getelementptr inbounds ptr, ptr %737, i64 %767
  %769 = load ptr, ptr %768, align 8, !tbaa !34
  %770 = getelementptr inbounds %struct.frame_store, ptr %769, i64 0, i32 14
  %771 = load ptr, ptr %770, align 8, !tbaa !85
  %772 = load i8, ptr %540, align 1, !tbaa !58
  %773 = sext i8 %772 to i64
  %774 = getelementptr inbounds ptr, ptr %740, i64 %773
  store ptr %771, ptr %774, align 8, !tbaa !34
  %775 = load i8, ptr %540, align 1, !tbaa !58
  %776 = add i8 %775, 1
  store i8 %776, ptr %540, align 1, !tbaa !58
  %777 = add nuw nsw i64 %767, 1
  %778 = icmp eq i64 %777, %765
  br i1 %778, label %779, label %766, !llvm.loop !86

779:                                              ; preds = %766, %734, %758, %761
  %780 = load ptr, ptr %676, align 8, !tbaa !110
  tail call void @append_interview_list(ptr noundef %4, i32 noundef %736, i32 noundef 1, ptr noundef %780, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #10
  %781 = load i32, ptr %680, align 8, !tbaa !63
  %782 = load ptr, ptr %676, align 8, !tbaa !110
  %783 = load i32, ptr %12, align 8, !tbaa !57
  %784 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %785 = load ptr, ptr %784, align 8, !tbaa !34
  switch i32 %781, label %824 [
    i32 1, label %786
    i32 2, label %806
  ]

786:                                              ; preds = %779
  %787 = icmp sgt i32 %783, 0
  br i1 %787, label %788, label %803

788:                                              ; preds = %786
  %789 = zext nneg i32 %783 to i64
  br label %790

790:                                              ; preds = %790, %788
  %791 = phi i64 [ 0, %788 ], [ %801, %790 ]
  %792 = getelementptr inbounds ptr, ptr %782, i64 %791
  %793 = load ptr, ptr %792, align 8, !tbaa !34
  %794 = getelementptr inbounds %struct.frame_store, ptr %793, i64 0, i32 13
  %795 = load ptr, ptr %794, align 8, !tbaa !83
  %796 = load i8, ptr %542, align 1, !tbaa !58
  %797 = sext i8 %796 to i64
  %798 = getelementptr inbounds ptr, ptr %785, i64 %797
  store ptr %795, ptr %798, align 8, !tbaa !34
  %799 = load i8, ptr %542, align 1, !tbaa !58
  %800 = add i8 %799, 1
  store i8 %800, ptr %542, align 1, !tbaa !58
  %801 = add nuw nsw i64 %791, 1
  %802 = icmp eq i64 %801, %789
  br i1 %802, label %803, label %790, !llvm.loop !84

803:                                              ; preds = %790, %786
  %804 = icmp eq i32 %781, 2
  %805 = and i1 %804, %787
  br i1 %805, label %808, label %824

806:                                              ; preds = %779
  %807 = icmp sgt i32 %783, 0
  br i1 %807, label %808, label %824

808:                                              ; preds = %806, %803
  %809 = tail call i32 @llvm.smax.i32(i32 %783, i32 1)
  %810 = zext nneg i32 %809 to i64
  br label %811

811:                                              ; preds = %811, %808
  %812 = phi i64 [ 0, %808 ], [ %822, %811 ]
  %813 = getelementptr inbounds ptr, ptr %782, i64 %812
  %814 = load ptr, ptr %813, align 8, !tbaa !34
  %815 = getelementptr inbounds %struct.frame_store, ptr %814, i64 0, i32 14
  %816 = load ptr, ptr %815, align 8, !tbaa !85
  %817 = load i8, ptr %542, align 1, !tbaa !58
  %818 = sext i8 %817 to i64
  %819 = getelementptr inbounds ptr, ptr %785, i64 %818
  store ptr %816, ptr %819, align 8, !tbaa !34
  %820 = load i8, ptr %542, align 1, !tbaa !58
  %821 = add i8 %820, 1
  store i8 %821, ptr %542, align 1, !tbaa !58
  %822 = add nuw nsw i64 %812, 1
  %823 = icmp eq i64 %822, %810
  br i1 %823, label %824, label %811, !llvm.loop !86

824:                                              ; preds = %651, %811, %806, %803, %779, %646, %643, %619, %617, %732, %575
  %825 = load i8, ptr %540, align 8, !tbaa !58
  %826 = sext i8 %825 to i32
  %827 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %828 = load i32, ptr %827, align 8, !tbaa !43
  %829 = tail call i32 @llvm.smin.i32(i32 %826, i32 %828)
  %830 = trunc i32 %829 to i8
  store i8 %830, ptr %540, align 8, !tbaa !58
  %831 = load i8, ptr %542, align 1, !tbaa !58
  %832 = sext i8 %831 to i32
  %833 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %834 = load i32, ptr %833, align 4, !tbaa !43
  %835 = tail call i32 @llvm.smin.i32(i32 %832, i32 %834)
  %836 = trunc i32 %835 to i8
  store i8 %836, ptr %542, align 1, !tbaa !58
  %837 = shl i32 %829, 24
  %838 = ashr exact i32 %837, 24
  %839 = icmp ult i32 %838, 33
  br i1 %839, label %840, label %852

840:                                              ; preds = %824
  %841 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %842 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %843 = zext nneg i32 %838 to i64
  br label %844

844:                                              ; preds = %840, %844
  %845 = phi i64 [ %843, %840 ], [ %849, %844 ]
  %846 = load ptr, ptr %841, align 8, !tbaa !87
  %847 = load ptr, ptr %842, align 8, !tbaa !34
  %848 = getelementptr inbounds ptr, ptr %847, i64 %845
  store ptr %846, ptr %848, align 8, !tbaa !34
  %849 = add nuw nsw i64 %845, 1
  %850 = and i64 %849, 4294967295
  %851 = icmp eq i64 %850, 33
  br i1 %851, label %852, label %844, !llvm.loop !133

852:                                              ; preds = %844, %824
  %853 = load i8, ptr %542, align 1, !tbaa !58
  %854 = icmp ult i8 %853, 33
  br i1 %854, label %855, label %867

855:                                              ; preds = %852
  %856 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %857 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %858 = zext nneg i8 %853 to i64
  br label %859

859:                                              ; preds = %855, %859
  %860 = phi i64 [ %858, %855 ], [ %864, %859 ]
  %861 = load ptr, ptr %856, align 8, !tbaa !87
  %862 = load ptr, ptr %857, align 8, !tbaa !34
  %863 = getelementptr inbounds ptr, ptr %862, i64 %860
  store ptr %861, ptr %863, align 8, !tbaa !34
  %864 = add nuw nsw i64 %860, 1
  %865 = and i64 %864, 4294967295
  %866 = icmp eq i64 %865, 33
  br i1 %866, label %867, label %859, !llvm.loop !134

867:                                              ; preds = %859, %852, %15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @reorder_ref_pic_list_mvc(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = load ptr, ptr %0, align 8, !tbaa !59
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 %10
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = add nsw i32 %18, -1
  %20 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 %10
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 33
  %23 = load i32, ptr %22, align 4, !tbaa !135
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.video_par, ptr %9, i64 0, i32 52
  %26 = load i32, ptr %25, align 8, !tbaa !136
  br i1 %24, label %27, label %30

27:                                               ; preds = %8
  %28 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %29 = load i32, ptr %28, align 4, !tbaa !137
  br label %36

30:                                               ; preds = %8
  %31 = shl nsw i32 %26, 1
  %32 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %33 = load i32, ptr %32, align 4, !tbaa !137
  %34 = shl i32 %33, 1
  %35 = or disjoint i32 %34, 1
  br label %36

36:                                               ; preds = %30, %27
  %37 = phi i32 [ %26, %27 ], [ %31, %30 ]
  %38 = phi i32 [ %29, %27 ], [ %35, %30 ]
  %39 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !80
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = tail call i32 @GetVOIdx(ptr noundef %9, i32 noundef %4) #10
  %44 = tail call i32 @get_maxViewIdx(ptr noundef %9, i32 noundef %4, i32 noundef %5, i32 noundef 0) #10
  %45 = sext i32 %43 to i64
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i32 [ %44, %42 ], [ 0, %36 ]
  %48 = phi i64 [ %45, %42 ], [ -1, %36 ]
  %49 = load i32, ptr %12, align 4, !tbaa !43
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %315, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %10
  %53 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %54 = sext i32 %18 to i64
  %55 = icmp eq i32 %4, -1
  %56 = sext i32 %19 to i64
  %57 = icmp eq i32 %5, 0
  %58 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %10
  %59 = icmp eq i32 %7, 0
  %60 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  %62 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  %64 = select i1 %59, ptr %61, ptr %63
  %65 = select i1 %59, ptr %60, ptr %62
  %66 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %10
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %68 = sext i32 %18 to i64
  %69 = icmp eq i32 %4, -1
  %70 = sext i32 %19 to i64
  %71 = add i32 %18, 1
  %72 = select i1 %57, ptr %3, ptr %2
  %73 = getelementptr inbounds ptr, ptr %72, i64 %48
  br label %74

74:                                               ; preds = %51, %307
  %75 = phi i64 [ 0, %51 ], [ %311, %307 ]
  %76 = phi i32 [ %49, %51 ], [ %313, %307 ]
  %77 = phi ptr [ %12, %51 ], [ %312, %307 ]
  %78 = phi i32 [ -1, %51 ], [ %310, %307 ]
  %79 = phi i32 [ %38, %51 ], [ %309, %307 ]
  %80 = phi i32 [ 0, %51 ], [ %308, %307 ]
  %81 = icmp sgt i32 %76, 5
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 500) #10
  br label %83

83:                                               ; preds = %82, %74
  %84 = load i32, ptr %77, align 4, !tbaa !43
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %153

86:                                               ; preds = %83
  %87 = icmp eq i32 %84, 0
  %88 = getelementptr inbounds i32, ptr %14, i64 %75
  %89 = load i32, ptr %88, align 4, !tbaa !43
  br i1 %87, label %90, label %96

90:                                               ; preds = %86
  %91 = xor i32 %89, -1
  %92 = add i32 %79, %91
  %93 = icmp slt i32 %92, 0
  %94 = select i1 %93, i32 %37, i32 0
  %95 = add nsw i32 %94, %92
  br label %102

96:                                               ; preds = %86
  %97 = add i32 %79, 1
  %98 = add i32 %97, %89
  %99 = icmp slt i32 %98, %37
  %100 = select i1 %99, i32 0, i32 %37
  %101 = sub nsw i32 %98, %100
  br label %102

102:                                              ; preds = %96, %90
  %103 = phi i32 [ %95, %90 ], [ %101, %96 ]
  %104 = icmp sgt i32 %103, %38
  %105 = select i1 %104, i32 %37, i32 0
  %106 = sub nsw i32 %103, %105
  %107 = load ptr, ptr %66, align 8, !tbaa !34
  %108 = load ptr, ptr %67, align 8, !tbaa !38
  %109 = tail call ptr @get_short_term_pic(ptr noundef %108, i32 noundef %106) #10
  %110 = icmp slt i32 %80, %18
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = sext i32 %80 to i64
  br label %113

113:                                              ; preds = %113, %111
  %114 = phi i64 [ %68, %111 ], [ %118, %113 ]
  %115 = getelementptr ptr, ptr %107, i64 %114
  %116 = getelementptr ptr, ptr %115, i64 -1
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  store ptr %117, ptr %115, align 8, !tbaa !34
  %118 = add nsw i64 %114, -1
  %119 = icmp sgt i64 %118, %112
  br i1 %119, label %113, label %120, !llvm.loop !44

120:                                              ; preds = %113, %102
  %121 = add i32 %80, 1
  %122 = sext i32 %80 to i64
  %123 = getelementptr inbounds ptr, ptr %107, i64 %122
  store ptr %109, ptr %123, align 8, !tbaa !34
  br i1 %110, label %124, label %307

124:                                              ; preds = %120
  %125 = sext i32 %121 to i64
  br label %126

126:                                              ; preds = %149, %124
  %127 = phi i64 [ %125, %124 ], [ %151, %149 ]
  %128 = phi i32 [ %121, %124 ], [ %150, %149 ]
  %129 = getelementptr inbounds ptr, ptr %107, i64 %127
  %130 = load ptr, ptr %129, align 8, !tbaa !34
  %131 = icmp eq ptr %130, null
  br i1 %131, label %149, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.storable_picture, ptr %130, i64 0, i32 10
  %134 = load i8, ptr %133, align 8, !tbaa !47
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.storable_picture, ptr %130, i64 0, i32 7
  %138 = load i32, ptr %137, align 4, !tbaa !50
  %139 = icmp eq i32 %138, %106
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  br i1 %69, label %149, label %141

141:                                              ; preds = %140
  %142 = getelementptr inbounds %struct.storable_picture, ptr %130, i64 0, i32 64
  %143 = load i32, ptr %142, align 8, !tbaa !51
  %144 = icmp eq i32 %143, %4
  br i1 %144, label %149, label %145

145:                                              ; preds = %141, %136, %132
  %146 = add nsw i32 %128, 1
  %147 = sext i32 %128 to i64
  %148 = getelementptr inbounds ptr, ptr %107, i64 %147
  store ptr %130, ptr %148, align 8, !tbaa !34
  br label %149

149:                                              ; preds = %145, %141, %140, %126
  %150 = phi i32 [ %146, %145 ], [ %128, %141 ], [ %128, %140 ], [ %128, %126 ]
  %151 = add nsw i64 %127, 1
  %152 = icmp sgt i64 %127, %70
  br i1 %152, label %307, label %126, !llvm.loop !52

153:                                              ; preds = %83
  switch i32 %84, label %211 [
    i32 2, label %154
    i32 4, label %203
  ]

154:                                              ; preds = %153
  %155 = load ptr, ptr %52, align 8, !tbaa !34
  %156 = getelementptr inbounds i32, ptr %16, i64 %75
  %157 = load i32, ptr %156, align 4, !tbaa !43
  %158 = load ptr, ptr %53, align 8, !tbaa !38
  %159 = tail call ptr @get_long_term_pic(ptr noundef %158, i32 noundef %157) #10
  %160 = icmp slt i32 %80, %18
  br i1 %160, label %161, label %170

161:                                              ; preds = %154
  %162 = sext i32 %80 to i64
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi i64 [ %54, %161 ], [ %168, %163 ]
  %165 = getelementptr ptr, ptr %155, i64 %164
  %166 = getelementptr ptr, ptr %165, i64 -1
  %167 = load ptr, ptr %166, align 8, !tbaa !34
  store ptr %167, ptr %165, align 8, !tbaa !34
  %168 = add nsw i64 %164, -1
  %169 = icmp sgt i64 %168, %162
  br i1 %169, label %163, label %170, !llvm.loop !53

170:                                              ; preds = %163, %154
  %171 = add i32 %80, 1
  %172 = sext i32 %80 to i64
  %173 = getelementptr inbounds ptr, ptr %155, i64 %172
  store ptr %159, ptr %173, align 8, !tbaa !34
  br i1 %160, label %174, label %307

174:                                              ; preds = %170
  %175 = sext i32 %171 to i64
  br label %176

176:                                              ; preds = %199, %174
  %177 = phi i64 [ %175, %174 ], [ %201, %199 ]
  %178 = phi i32 [ %171, %174 ], [ %200, %199 ]
  %179 = getelementptr inbounds ptr, ptr %155, i64 %177
  %180 = load ptr, ptr %179, align 8, !tbaa !34
  %181 = icmp eq ptr %180, null
  br i1 %181, label %199, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.storable_picture, ptr %180, i64 0, i32 10
  %184 = load i8, ptr %183, align 8, !tbaa !47
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.storable_picture, ptr %180, i64 0, i32 8
  %188 = load i32, ptr %187, align 8, !tbaa !54
  %189 = icmp eq i32 %188, %157
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  br i1 %55, label %199, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.storable_picture, ptr %180, i64 0, i32 64
  %193 = load i32, ptr %192, align 8, !tbaa !51
  %194 = icmp eq i32 %193, %4
  br i1 %194, label %199, label %195

195:                                              ; preds = %191, %186, %182
  %196 = add nsw i32 %178, 1
  %197 = sext i32 %178 to i64
  %198 = getelementptr inbounds ptr, ptr %155, i64 %197
  store ptr %180, ptr %198, align 8, !tbaa !34
  br label %199

199:                                              ; preds = %195, %191, %190, %176
  %200 = phi i32 [ %196, %195 ], [ %178, %191 ], [ %178, %190 ], [ %178, %176 ]
  %201 = add nsw i64 %177, 1
  %202 = icmp sgt i64 %177, %56
  br i1 %202, label %307, label %176, !llvm.loop !55

203:                                              ; preds = %153
  %204 = getelementptr inbounds i32, ptr %21, i64 %75
  %205 = load i32, ptr %204, align 4, !tbaa !43
  %206 = xor i32 %205, -1
  %207 = add i32 %78, %206
  %208 = icmp slt i32 %207, 0
  %209 = select i1 %208, i32 %47, i32 0
  %210 = add nsw i32 %209, %207
  br label %219

211:                                              ; preds = %153
  %212 = getelementptr inbounds i32, ptr %21, i64 %75
  %213 = load i32, ptr %212, align 4, !tbaa !43
  %214 = add i32 %78, 1
  %215 = add i32 %214, %213
  %216 = icmp slt i32 %215, %47
  %217 = select i1 %216, i32 0, i32 %47
  %218 = sub nsw i32 %215, %217
  br label %219

219:                                              ; preds = %211, %203
  %220 = phi i32 [ %210, %203 ], [ %218, %211 ]
  %221 = sext i32 %220 to i64
  %222 = load ptr, ptr %73, align 8, !tbaa !34
  %223 = getelementptr inbounds i32, ptr %222, i64 %221
  %224 = load i32, ptr %223, align 4, !tbaa !43
  %225 = load ptr, ptr %58, align 8, !tbaa !34
  %226 = load ptr, ptr %65, align 8, !tbaa !34
  %227 = load i32, ptr %64, align 4, !tbaa !43
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %264, label %229

229:                                              ; preds = %219
  %230 = zext i32 %227 to i64
  br label %231

231:                                              ; preds = %229, %261
  %232 = phi i64 [ 0, %229 ], [ %262, %261 ]
  %233 = getelementptr inbounds ptr, ptr %226, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !34
  %235 = getelementptr inbounds %struct.frame_store, ptr %234, i64 0, i32 15
  %236 = load i32, ptr %235, align 8, !tbaa !77
  %237 = icmp eq i32 %236, %224
  br i1 %237, label %238, label %261

238:                                              ; preds = %231
  %239 = load i32, ptr %22, align 4, !tbaa !135
  switch i32 %239, label %261 [
    i32 0, label %240
    i32 1, label %247
    i32 2, label %255
  ]

240:                                              ; preds = %238
  %241 = getelementptr inbounds %struct.frame_store, ptr %234, i64 0, i32 12
  %242 = load ptr, ptr %241, align 8, !tbaa !69
  %243 = getelementptr inbounds %struct.storable_picture, ptr %242, i64 0, i32 1
  %244 = load i32, ptr %243, align 4, !tbaa !98
  %245 = icmp eq i32 %244, %6
  br i1 %245, label %264, label %246

246:                                              ; preds = %240
  switch i32 %239, label %261 [
    i32 1, label %247
    i32 2, label %255
  ]

247:                                              ; preds = %238, %246
  %248 = getelementptr inbounds %struct.frame_store, ptr %234, i64 0, i32 13
  %249 = load ptr, ptr %248, align 8, !tbaa !83
  %250 = getelementptr inbounds %struct.storable_picture, ptr %249, i64 0, i32 1
  %251 = load i32, ptr %250, align 4, !tbaa !98
  %252 = icmp eq i32 %251, %6
  br i1 %252, label %264, label %253

253:                                              ; preds = %247
  %254 = icmp eq i32 %239, 2
  br i1 %254, label %255, label %261

255:                                              ; preds = %238, %246, %253
  %256 = getelementptr inbounds %struct.frame_store, ptr %234, i64 0, i32 14
  %257 = load ptr, ptr %256, align 8, !tbaa !85
  %258 = getelementptr inbounds %struct.storable_picture, ptr %257, i64 0, i32 1
  %259 = load i32, ptr %258, align 4, !tbaa !98
  %260 = icmp eq i32 %259, %6
  br i1 %260, label %264, label %261

261:                                              ; preds = %238, %246, %255, %253, %231
  %262 = add nuw nsw i64 %232, 1
  %263 = icmp eq i64 %262, %230
  br i1 %263, label %264, label %231, !llvm.loop !138

264:                                              ; preds = %261, %240, %247, %255, %219
  %265 = phi ptr [ null, %219 ], [ null, %261 ], [ %242, %240 ], [ %249, %247 ], [ %257, %255 ]
  %266 = icmp eq ptr %265, null
  br i1 %266, label %307, label %267

267:                                              ; preds = %264
  %268 = icmp sgt i32 %18, %80
  br i1 %268, label %269, label %278

269:                                              ; preds = %267
  %270 = sext i32 %80 to i64
  br label %271

271:                                              ; preds = %269, %271
  %272 = phi i64 [ %54, %269 ], [ %276, %271 ]
  %273 = getelementptr ptr, ptr %225, i64 %272
  %274 = getelementptr ptr, ptr %273, i64 -1
  %275 = load ptr, ptr %274, align 8, !tbaa !34
  store ptr %275, ptr %273, align 8, !tbaa !34
  %276 = add nsw i64 %272, -1
  %277 = icmp sgt i64 %276, %270
  br i1 %277, label %271, label %278, !llvm.loop !139

278:                                              ; preds = %271, %267
  %279 = add nsw i32 %80, 1
  %280 = sext i32 %80 to i64
  %281 = getelementptr inbounds ptr, ptr %225, i64 %280
  store ptr %265, ptr %281, align 8, !tbaa !34
  %282 = icmp slt i32 %80, %18
  br i1 %282, label %283, label %307

283:                                              ; preds = %278
  %284 = sext i32 %80 to i64
  %285 = add nsw i64 %284, 1
  br label %286

286:                                              ; preds = %283, %302
  %287 = phi i64 [ %285, %283 ], [ %304, %302 ]
  %288 = phi i32 [ %279, %283 ], [ %303, %302 ]
  %289 = getelementptr inbounds ptr, ptr %225, i64 %287
  %290 = load ptr, ptr %289, align 8, !tbaa !34
  %291 = getelementptr inbounds %struct.storable_picture, ptr %290, i64 0, i32 64
  %292 = load i32, ptr %291, align 8, !tbaa !51
  %293 = icmp eq i32 %292, %224
  br i1 %293, label %294, label %298

294:                                              ; preds = %286
  %295 = getelementptr inbounds %struct.storable_picture, ptr %290, i64 0, i32 1
  %296 = load i32, ptr %295, align 4, !tbaa !98
  %297 = icmp eq i32 %296, %6
  br i1 %297, label %302, label %298

298:                                              ; preds = %294, %286
  %299 = add nsw i32 %288, 1
  %300 = sext i32 %288 to i64
  %301 = getelementptr inbounds ptr, ptr %225, i64 %300
  store ptr %290, ptr %301, align 8, !tbaa !34
  br label %302

302:                                              ; preds = %298, %294
  %303 = phi i32 [ %299, %298 ], [ %288, %294 ]
  %304 = add nsw i64 %287, 1
  %305 = trunc i64 %304 to i32
  %306 = icmp eq i32 %71, %305
  br i1 %306, label %307, label %286, !llvm.loop !140

307:                                              ; preds = %199, %302, %149, %278, %170, %120, %264
  %308 = phi i32 [ %80, %264 ], [ %121, %120 ], [ %171, %170 ], [ %279, %278 ], [ %121, %149 ], [ %279, %302 ], [ %171, %199 ]
  %309 = phi i32 [ %79, %264 ], [ %103, %120 ], [ %79, %170 ], [ %79, %278 ], [ %103, %149 ], [ %79, %302 ], [ %79, %199 ]
  %310 = phi i32 [ %220, %264 ], [ %78, %120 ], [ %78, %170 ], [ %220, %278 ], [ %78, %149 ], [ %220, %302 ], [ %78, %199 ]
  %311 = add nuw i64 %75, 1
  %312 = getelementptr inbounds i32, ptr %12, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !43
  %314 = icmp eq i32 %313, 3
  br i1 %314, label %315, label %74, !llvm.loop !141

315:                                              ; preds = %307, %46
  %316 = trunc i32 %18 to i8
  %317 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 %10
  store i8 %316, ptr %317, align 1, !tbaa !58
  ret void
}

declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @get_maxViewIdx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @reorder_lists_mvc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !59
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %5 = load i32, ptr %4, align 4, !tbaa !115
  switch i32 %5, label %6 [
    i32 2, label %44
    i32 4, label %44
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  %8 = load i32, ptr %7, align 8, !tbaa !43
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !142
  %13 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !143
  %15 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %12, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !149
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %18 = load i32, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %20 = load i32, ptr %19, align 8, !tbaa !62
  tail call void @reorder_ref_pic_list_mvc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %1, i32 noundef 0)
  br label %21

21:                                               ; preds = %10, %6
  %22 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 138
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %27 = load i32, ptr %26, align 8, !tbaa !43
  %28 = sext i32 %27 to i64
  %29 = getelementptr ptr, ptr %25, i64 %28
  %30 = getelementptr ptr, ptr %29, i64 -1
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = icmp eq ptr %23, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 41
  %35 = load i32, ptr %34, align 4, !tbaa !150
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %40

39:                                               ; preds = %33
  tail call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #10
  br label %40

40:                                               ; preds = %37, %39, %21
  %41 = load i32, ptr %26, align 8, !tbaa !43
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %42, ptr %43, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %2, %2, %40
  %45 = load i32, ptr %4, align 4, !tbaa !115
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %85

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !43
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !142
  %54 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %53, i64 0, i32 7
  %55 = load ptr, ptr %54, align 8, !tbaa !151
  %56 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %53, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !152
  %58 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %59 = load i32, ptr %58, align 8, !tbaa !61
  %60 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %61 = load i32, ptr %60, align 8, !tbaa !62
  tail call void @reorder_ref_pic_list_mvc(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %55, ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %1, i32 noundef 1)
  br label %62

62:                                               ; preds = %51, %47
  %63 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 138
  %64 = load ptr, ptr %63, align 8, !tbaa !87
  %65 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %68 = load i32, ptr %67, align 4, !tbaa !43
  %69 = sext i32 %68 to i64
  %70 = getelementptr ptr, ptr %66, i64 %69
  %71 = getelementptr ptr, ptr %70, i64 -1
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = icmp eq ptr %64, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 41
  %76 = load i32, ptr %75, align 4, !tbaa !150
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %81

80:                                               ; preds = %74
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 500) #10
  br label %81

81:                                               ; preds = %78, %80, %62
  %82 = load i32, ptr %67, align 4, !tbaa !43
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %83, ptr %84, align 1, !tbaa !58
  br label %85

85:                                               ; preds = %81, %44
  tail call void @free_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #10
  ret void
}

declare void @free_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 40}
!39 = !{!"slice", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !35, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !36, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !41, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !36, i64 136, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !36, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !35, i64 248, !36, i64 256, !36, i64 264, !35, i64 312, !35, i64 320, !35, i64 328, !36, i64 336, !36, i64 1104, !36, i64 1112, !36, i64 1128, !36, i64 1144, !36, i64 1160, !40, i64 1176, !40, i64 1180, !40, i64 1184, !42, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !40, i64 1228, !40, i64 1232, !40, i64 1236, !40, i64 1240, !35, i64 1248, !35, i64 1256, !35, i64 1264, !35, i64 1272, !35, i64 1280, !36, i64 1288, !35, i64 1352, !35, i64 1360, !35, i64 1368, !35, i64 1376, !35, i64 1384, !36, i64 1392, !36, i64 2544, !36, i64 3696, !36, i64 8304, !36, i64 12912, !36, i64 13008, !40, i64 13264, !40, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !35, i64 13280, !35, i64 13288, !35, i64 13296, !41, i64 13304, !41, i64 13306, !40, i64 13308, !40, i64 13312, !35, i64 13320, !35, i64 13328, !40, i64 13336, !36, i64 13340, !35, i64 13408, !35, i64 13416, !35, i64 13424, !35, i64 13432, !35, i64 13440, !35, i64 13448, !35, i64 13456, !35, i64 13464, !35, i64 13472, !35, i64 13480, !35, i64 13488, !35, i64 13496, !40, i64 13504, !35, i64 13512, !35, i64 13520, !35, i64 13528, !35, i64 13536, !35, i64 13544, !36, i64 13552}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"nalunitheadermvcext_tag", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!43 = !{!40, !40, i64 0}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!48, !36, i64 40}
!48 = !{!"storable_picture", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !36, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !41, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !36, i64 160, !49, i64 184, !36, i64 192, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !36, i64 300, !40, i64 308, !35, i64 312, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !35, i64 336, !40, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !35, i64 376, !40, i64 384, !40, i64 388, !36, i64 392, !36, i64 400}
!49 = !{!"pic_motion_params_old", !35, i64 0}
!50 = !{!48, !40, i64 28}
!51 = !{!48, !40, i64 344}
!52 = distinct !{!52, !45, !46}
!53 = distinct !{!53, !45, !46}
!54 = !{!48, !40, i64 32}
!55 = distinct !{!55, !45, !46}
!56 = !{!39, !40, i64 13308}
!57 = !{!39, !40, i64 13312}
!58 = !{!36, !36, i64 0}
!59 = !{!39, !35, i64 0}
!60 = !{!39, !40, i64 104}
!61 = !{!39, !40, i64 1176}
!62 = !{!39, !40, i64 1184}
!63 = !{!39, !40, i64 184}
!64 = !{!65, !40, i64 48}
!65 = !{!"decoded_picture_buffer", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !36, i64 64, !40, i64 4160, !40, i64 4164, !35, i64 4168}
!66 = !{!65, !35, i64 24}
!67 = !{!68, !40, i64 0}
!68 = !{!"frame_store", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !35, i64 48, !35, i64 56, !35, i64 64, !40, i64 72, !36, i64 76, !36, i64 84}
!69 = !{!68, !35, i64 48}
!70 = !{!48, !40, i64 44}
!71 = distinct !{!71, !45, !46}
!72 = !{!65, !40, i64 52}
!73 = !{!65, !35, i64 32}
!74 = distinct !{!74, !45, !46}
!75 = !{!65, !40, i64 40}
!76 = !{!68, !40, i64 4}
!77 = !{!68, !40, i64 72}
!78 = distinct !{!78, !45, !46}
!79 = distinct !{!79, !45, !46}
!80 = !{!39, !40, i64 32}
!81 = !{!39, !35, i64 13320}
!82 = distinct !{!82, !45, !46}
!83 = !{!68, !35, i64 56}
!84 = distinct !{!84, !45, !46}
!85 = !{!68, !35, i64 64}
!86 = distinct !{!86, !45, !46}
!87 = !{!88, !35, i64 856488}
!88 = !{!"video_par", !35, i64 0, !35, i64 8, !35, i64 16, !36, i64 24, !36, i64 132120, !35, i64 699416, !36, i64 699424, !40, i64 848672, !40, i64 848676, !40, i64 848680, !40, i64 848684, !35, i64 848688, !35, i64 848696, !35, i64 848704, !40, i64 848712, !40, i64 848716, !40, i64 848720, !40, i64 848724, !40, i64 848728, !35, i64 848736, !35, i64 848744, !36, i64 848752, !40, i64 848776, !40, i64 848780, !40, i64 848784, !40, i64 848788, !40, i64 848792, !35, i64 848800, !36, i64 848808, !35, i64 848832, !35, i64 848840, !36, i64 848848, !40, i64 848872, !40, i64 848876, !35, i64 848880, !35, i64 848888, !36, i64 848896, !40, i64 848920, !35, i64 848928, !35, i64 848936, !40, i64 848944, !40, i64 848948, !40, i64 848952, !40, i64 848956, !40, i64 848960, !40, i64 848964, !40, i64 848968, !40, i64 848972, !40, i64 848976, !40, i64 848980, !40, i64 848984, !40, i64 848988, !40, i64 848992, !40, i64 848996, !40, i64 849000, !40, i64 849004, !40, i64 849008, !40, i64 849012, !40, i64 849016, !40, i64 849020, !40, i64 849024, !40, i64 849028, !40, i64 849032, !40, i64 849036, !41, i64 849040, !41, i64 849042, !36, i64 849044, !40, i64 849052, !40, i64 849056, !36, i64 849060, !36, i64 849072, !40, i64 849084, !40, i64 849088, !40, i64 849092, !40, i64 849096, !40, i64 849100, !40, i64 849104, !40, i64 849108, !40, i64 849112, !40, i64 849116, !40, i64 849120, !36, i64 849124, !36, i64 849148, !36, i64 849172, !40, i64 849196, !40, i64 849200, !40, i64 849204, !40, i64 849208, !40, i64 849212, !40, i64 849216, !40, i64 849220, !40, i64 849224, !40, i64 849228, !40, i64 849232, !40, i64 849236, !40, i64 849240, !40, i64 849244, !40, i64 849248, !40, i64 849252, !40, i64 849256, !40, i64 849260, !40, i64 849264, !40, i64 849268, !40, i64 849272, !40, i64 849276, !40, i64 849280, !40, i64 849284, !35, i64 849288, !35, i64 849296, !89, i64 849304, !89, i64 849624, !89, i64 849944, !89, i64 850264, !89, i64 850584, !89, i64 850904, !89, i64 851224, !89, i64 851544, !40, i64 851864, !40, i64 851868, !40, i64 851872, !92, i64 851880, !40, i64 851888, !36, i64 851892, !40, i64 855988, !40, i64 855992, !40, i64 855996, !40, i64 856000, !40, i64 856004, !40, i64 856008, !40, i64 856012, !35, i64 856016, !35, i64 856024, !35, i64 856032, !35, i64 856040, !35, i64 856048, !36, i64 856056, !35, i64 856456, !36, i64 856464, !35, i64 856488, !35, i64 856496, !35, i64 856504, !40, i64 856512, !35, i64 856520, !36, i64 856528, !35, i64 856608, !35, i64 856616, !35, i64 856624, !35, i64 856632, !40, i64 856640, !40, i64 856644, !40, i64 856648, !35, i64 856656, !35, i64 856664, !36, i64 856672, !36, i64 856688, !35, i64 856704, !35, i64 856712, !40, i64 856720, !35, i64 856728, !35, i64 856736, !35, i64 856744, !35, i64 856752, !35, i64 856760, !35, i64 856768, !35, i64 856776, !35, i64 856784, !35, i64 856792, !35, i64 856800, !35, i64 856808, !35, i64 856816, !40, i64 856824, !35, i64 856832, !40, i64 856840, !40, i64 856844, !40, i64 856848, !40, i64 856852, !40, i64 856856, !40, i64 856860, !40, i64 856864, !35, i64 856872}
!89 = !{!"image_data", !90, i64 0, !36, i64 136, !36, i64 160, !36, i64 184, !36, i64 208, !36, i64 232, !36, i64 256, !36, i64 280, !36, i64 292, !36, i64 304}
!90 = !{!"frame_format", !40, i64 0, !40, i64 4, !91, i64 8, !36, i64 16, !36, i64 28, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !36, i64 72, !40, i64 84, !36, i64 88, !36, i64 100, !36, i64 112, !40, i64 124, !40, i64 128}
!91 = !{!"double", !36, i64 0}
!92 = !{!"long", !36, i64 0}
!93 = distinct !{!93, !45, !46}
!94 = distinct !{!94, !45, !46}
!95 = !{!68, !40, i64 28}
!96 = !{!68, !40, i64 32}
!97 = !{!39, !40, i64 76}
!98 = !{!48, !40, i64 4}
!99 = distinct !{!99, !45, !46}
!100 = distinct !{!100, !45, !46}
!101 = distinct !{!101, !45, !46}
!102 = distinct !{!102, !45, !46}
!103 = distinct !{!103, !45, !46}
!104 = !{!68, !40, i64 40}
!105 = distinct !{!105, !45, !46}
!106 = distinct !{!106, !45, !46}
!107 = distinct !{!107, !45, !46}
!108 = distinct !{!108, !45, !46}
!109 = distinct !{!109, !45, !46}
!110 = !{!39, !35, i64 13328}
!111 = distinct !{!111, !45, !46}
!112 = distinct !{!112, !45, !46}
!113 = distinct !{!113, !45, !46}
!114 = distinct !{!114, !45, !46}
!115 = !{!39, !40, i64 164}
!116 = distinct !{!116, !45, !46}
!117 = distinct !{!117, !45, !46}
!118 = distinct !{!118, !45, !46}
!119 = distinct !{!119, !45, !46}
!120 = distinct !{!120, !45, !46}
!121 = distinct !{!121, !45, !46}
!122 = distinct !{!122, !45, !46}
!123 = distinct !{!123, !45, !46}
!124 = distinct !{!124, !45, !46}
!125 = distinct !{!125, !45, !46}
!126 = distinct !{!126, !45, !46}
!127 = distinct !{!127, !45, !46}
!128 = distinct !{!128, !45, !46}
!129 = distinct !{!129, !45, !46}
!130 = distinct !{!130, !45, !46}
!131 = distinct !{!131, !45, !46}
!132 = distinct !{!132, !45, !46}
!133 = distinct !{!133, !45, !46}
!134 = distinct !{!134, !45, !46}
!135 = !{!88, !40, i64 848876}
!136 = !{!88, !40, i64 848992}
!137 = !{!39, !40, i64 172}
!138 = distinct !{!138, !45, !46}
!139 = distinct !{!139, !45, !46}
!140 = distinct !{!140, !45, !46}
!141 = distinct !{!141, !45, !46}
!142 = !{!88, !35, i64 699416}
!143 = !{!144, !35, i64 4152}
!144 = !{!"", !145, i64 0, !40, i64 4128, !40, i64 4132, !35, i64 4136, !35, i64 4144, !35, i64 4152, !35, i64 4160, !35, i64 4168, !35, i64 4176, !35, i64 4184, !35, i64 4192, !35, i64 4200, !40, i64 4208, !35, i64 4216, !35, i64 4224, !35, i64 4232, !35, i64 4240, !35, i64 4248, !35, i64 4256, !40, i64 4264, !40, i64 4268, !148, i64 4272}
!145 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !36, i64 44, !36, i64 92, !36, i64 476, !36, i64 2012, !36, i64 2036, !40, i64 2060, !40, i64 2064, !40, i64 2068, !40, i64 2072, !40, i64 2076, !40, i64 2080, !40, i64 2084, !40, i64 2088, !40, i64 2092, !36, i64 2096, !40, i64 3120, !40, i64 3124, !40, i64 3128, !40, i64 3132, !40, i64 3136, !40, i64 3140, !40, i64 3144, !40, i64 3148, !40, i64 3152, !40, i64 3156, !40, i64 3160, !40, i64 3164, !40, i64 3168, !146, i64 3172, !40, i64 4120, !40, i64 4124}
!146 = !{!"", !40, i64 0, !40, i64 4, !41, i64 8, !41, i64 10, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !147, i64 80, !40, i64 492, !147, i64 496, !40, i64 908, !40, i64 912, !40, i64 916, !40, i64 920, !40, i64 924, !40, i64 928, !40, i64 932, !40, i64 936, !40, i64 940, !40, i64 944}
!147 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !36, i64 12, !36, i64 140, !36, i64 268, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408}
!148 = !{!"mvcvui_tag", !40, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !36, i64 96, !36, i64 97, !36, i64 98, !36, i64 100, !36, i64 228, !36, i64 356, !36, i64 388, !36, i64 389, !36, i64 390, !36, i64 391}
!149 = !{!144, !35, i64 4184}
!150 = !{!88, !40, i64 848948}
!151 = !{!144, !35, i64 4168}
!152 = !{!144, !35, i64 4200}
