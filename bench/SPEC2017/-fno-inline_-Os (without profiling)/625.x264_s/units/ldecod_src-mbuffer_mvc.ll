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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_short_term(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = tail call ptr @get_short_term_pic(ptr noundef %11, i32 noundef %3) #14
  %13 = load i32, ptr %4, align 4, !tbaa !15
  %14 = icmp sgt i32 %13, %2
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = sext i32 %13 to i64
  %17 = add i32 %13, 1
  store i32 %17, ptr %4, align 4, !tbaa !15
  %18 = getelementptr inbounds ptr, ptr %9, i64 %16
  store ptr %12, ptr %18, align 8, !tbaa !6
  br label %64

19:                                               ; preds = %6
  %20 = add i32 %2, 1
  %21 = sext i32 %20 to i64
  %22 = sext i32 %13 to i64
  br label %23

23:                                               ; preds = %19, %23
  %24 = phi i64 [ %21, %19 ], [ %28, %23 ]
  %25 = getelementptr ptr, ptr %9, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  store ptr %27, ptr %25, align 8, !tbaa !6
  %28 = add nsw i64 %24, -1
  %29 = icmp sgt i64 %28, %22
  br i1 %29, label %23, label %30, !llvm.loop !16

30:                                               ; preds = %23
  %31 = add i32 %13, 1
  store i32 %31, ptr %4, align 4, !tbaa !15
  %32 = getelementptr inbounds ptr, ptr %9, i64 %22
  store ptr %12, ptr %32, align 8, !tbaa !6
  br i1 %14, label %64, label %33

33:                                               ; preds = %30
  %34 = icmp eq i32 %5, -1
  %35 = sext i32 %31 to i64
  %36 = sext i32 %2 to i64
  br label %37

37:                                               ; preds = %33, %60
  %38 = phi i64 [ %35, %33 ], [ %62, %60 ]
  %39 = phi i32 [ %31, %33 ], [ %61, %60 ]
  %40 = getelementptr inbounds ptr, ptr %9, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.storable_picture, ptr %41, i64 0, i32 10
  %45 = load i8, ptr %44, align 8, !tbaa !18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.storable_picture, ptr %41, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !21
  %50 = icmp eq i32 %49, %3
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  br i1 %34, label %60, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.storable_picture, ptr %41, i64 0, i32 64
  %54 = load i32, ptr %53, align 8, !tbaa !22
  %55 = icmp eq i32 %54, %5
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %47, %43
  %57 = add nsw i32 %39, 1
  %58 = sext i32 %39 to i64
  %59 = getelementptr inbounds ptr, ptr %9, i64 %58
  store ptr %41, ptr %59, align 8, !tbaa !6
  br label %60

60:                                               ; preds = %37, %56, %52, %51
  %61 = phi i32 [ %57, %56 ], [ %39, %52 ], [ %39, %51 ], [ %39, %37 ]
  %62 = add nsw i64 %38, 1
  %63 = icmp sgt i64 %38, %36
  br i1 %63, label %64, label %37, !llvm.loop !23

64:                                               ; preds = %60, %15, %30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @get_short_term_pic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_long_term(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = tail call ptr @get_long_term_pic(ptr noundef %8, i32 noundef %3) #14
  %10 = load i32, ptr %4, align 4, !tbaa !15
  %11 = icmp sgt i32 %10, %2
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = sext i32 %10 to i64
  %14 = add i32 %10, 1
  store i32 %14, ptr %4, align 4, !tbaa !15
  %15 = getelementptr inbounds ptr, ptr %1, i64 %13
  store ptr %9, ptr %15, align 8, !tbaa !6
  br label %61

16:                                               ; preds = %6
  %17 = add i32 %2, 1
  %18 = sext i32 %17 to i64
  %19 = sext i32 %10 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ %18, %16 ], [ %25, %20 ]
  %22 = getelementptr ptr, ptr %1, i64 %21
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  store ptr %24, ptr %22, align 8, !tbaa !6
  %25 = add nsw i64 %21, -1
  %26 = icmp sgt i64 %25, %19
  br i1 %26, label %20, label %27, !llvm.loop !24

27:                                               ; preds = %20
  %28 = add i32 %10, 1
  store i32 %28, ptr %4, align 4, !tbaa !15
  %29 = getelementptr inbounds ptr, ptr %1, i64 %19
  store ptr %9, ptr %29, align 8, !tbaa !6
  br i1 %11, label %61, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %5, -1
  %32 = sext i32 %28 to i64
  %33 = sext i32 %2 to i64
  br label %34

34:                                               ; preds = %30, %57
  %35 = phi i64 [ %32, %30 ], [ %59, %57 ]
  %36 = phi i32 [ %28, %30 ], [ %58, %57 ]
  %37 = getelementptr inbounds ptr, ptr %1, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 10
  %42 = load i8, ptr %41, align 8, !tbaa !18
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 8
  %46 = load i32, ptr %45, align 8, !tbaa !25
  %47 = icmp eq i32 %46, %3
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  br i1 %31, label %57, label %49

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.storable_picture, ptr %38, i64 0, i32 64
  %51 = load i32, ptr %50, align 8, !tbaa !22
  %52 = icmp eq i32 %51, %5
  br i1 %52, label %57, label %53

53:                                               ; preds = %49, %44, %40
  %54 = add nsw i32 %36, 1
  %55 = sext i32 %36 to i64
  %56 = getelementptr inbounds ptr, ptr %1, i64 %55
  store ptr %38, ptr %56, align 8, !tbaa !6
  br label %57

57:                                               ; preds = %34, %53, %49, %48
  %58 = phi i32 [ %54, %53 ], [ %36, %49 ], [ %36, %48 ], [ %36, %34 ]
  %59 = add nsw i64 %35, 1
  %60 = icmp sgt i64 %35, %33
  br i1 %60, label %61, label %34, !llvm.loop !26

61:                                               ; preds = %57, %12, %27
  ret void
}

; Function Attrs: optsize
declare ptr @get_long_term_pic(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @init_lists_i_slice_mvc(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %2, align 4, !tbaa !27
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %3, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %4, align 8, !tbaa !29
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %5, align 1, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_lists_p_slice_mvc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !33
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !27
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %108

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !35
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
  %27 = load ptr, ptr %21, align 8, !tbaa !37
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = load i32, ptr %29, align 8, !tbaa !38
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = getelementptr inbounds %struct.frame_store, ptr %29, i64 0, i32 12
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !41
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 10
  %40 = load i8, ptr %39, align 8, !tbaa !18
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.storable_picture, ptr %34, i64 0, i32 64
  %44 = load i32, ptr %43, align 8, !tbaa !22
  %45 = icmp eq i32 %44, %8
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load ptr, ptr %22, align 8, !tbaa !6
  %48 = add nsw i32 %26, 1
  %49 = sext i32 %26 to i64
  %50 = getelementptr inbounds ptr, ptr %47, i64 %49
  store ptr %34, ptr %50, align 8, !tbaa !6
  br label %51

51:                                               ; preds = %24, %46, %42, %38, %32
  %52 = phi i32 [ %26, %38 ], [ %48, %46 ], [ %26, %42 ], [ %26, %32 ], [ %26, %24 ]
  %53 = add nuw nsw i64 %25, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %55, label %24, !llvm.loop !42

55:                                               ; preds = %51, %16
  %56 = phi i32 [ 0, %16 ], [ %52, %51 ]
  %57 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = sext i32 %56 to i64
  tail call void @qsort(ptr noundef %58, i64 noundef %59, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #14
  %60 = trunc i32 %56 to i8
  %61 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %60, ptr %61, align 8, !tbaa !29
  %62 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %63 = load i32, ptr %62, align 4, !tbaa !43
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %67 = zext i32 %63 to i64
  br label %68

68:                                               ; preds = %65, %91
  %69 = phi i64 [ 0, %65 ], [ %93, %91 ]
  %70 = phi i32 [ %56, %65 ], [ %92, %91 ]
  %71 = load ptr, ptr %66, align 8, !tbaa !44
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = load i32, ptr %73, align 8, !tbaa !38
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.frame_store, ptr %73, i64 0, i32 12
  %78 = load ptr, ptr %77, align 8, !tbaa !40
  %79 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 10
  %80 = load i8, ptr %79, align 8, !tbaa !18
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.storable_picture, ptr %78, i64 0, i32 64
  %84 = load i32, ptr %83, align 8, !tbaa !22
  %85 = icmp eq i32 %84, %8
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load ptr, ptr %57, align 8, !tbaa !6
  %88 = add nsw i32 %70, 1
  %89 = sext i32 %70 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  store ptr %78, ptr %90, align 8, !tbaa !6
  br label %91

91:                                               ; preds = %68, %86, %82, %76
  %92 = phi i32 [ %88, %86 ], [ %70, %82 ], [ %70, %76 ], [ %70, %68 ]
  %93 = add nuw nsw i64 %69, 1
  %94 = icmp eq i64 %93, %67
  br i1 %94, label %95, label %68, !llvm.loop !45

95:                                               ; preds = %91
  %96 = load i8, ptr %61, align 8, !tbaa !29
  %97 = trunc i32 %92 to i8
  br label %98

98:                                               ; preds = %95, %55
  %99 = phi i8 [ %97, %95 ], [ %60, %55 ]
  %100 = phi i8 [ %96, %95 ], [ %60, %55 ]
  %101 = phi i32 [ %92, %95 ], [ %56, %55 ]
  %102 = load ptr, ptr %57, align 8, !tbaa !6
  %103 = sext i8 %100 to i64
  %104 = getelementptr inbounds ptr, ptr %102, i64 %103
  %105 = sext i8 %100 to i32
  %106 = sub nsw i32 %101, %105
  %107 = sext i32 %106 to i64
  tail call void @qsort(ptr noundef %104, i64 noundef %107, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #14
  store i8 %99, ptr %61, align 8, !tbaa !29
  br label %185

108:                                              ; preds = %1
  %109 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %110 = load i32, ptr %109, align 8, !tbaa !46
  %111 = zext i32 %110 to i64
  %112 = tail call noalias ptr @calloc(i64 noundef %111, i64 noundef 8) #15
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #14
  %115 = load i32, ptr %109, align 8, !tbaa !46
  %116 = zext i32 %115 to i64
  br label %117

117:                                              ; preds = %114, %108
  %118 = phi i64 [ %116, %114 ], [ %111, %108 ]
  %119 = tail call noalias ptr @calloc(i64 noundef %118, i64 noundef 8) #15
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #14
  br label %122

122:                                              ; preds = %121, %117
  %123 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !35
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %150, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %128 = zext i32 %124 to i64
  %129 = load ptr, ptr %127, align 8, !tbaa !37
  br label %130

130:                                              ; preds = %126, %146
  %131 = phi i64 [ 0, %126 ], [ %148, %146 ]
  %132 = phi i32 [ 0, %126 ], [ %147, %146 ]
  %133 = getelementptr inbounds ptr, ptr %129, i64 %131
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = getelementptr inbounds %struct.frame_store, ptr %134, i64 0, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !47
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.frame_store, ptr %134, i64 0, i32 15
  %140 = load i32, ptr %139, align 8, !tbaa !48
  %141 = icmp eq i32 %140, %8
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = add nsw i32 %132, 1
  %144 = sext i32 %132 to i64
  %145 = getelementptr inbounds ptr, ptr %112, i64 %144
  store ptr %134, ptr %145, align 8, !tbaa !6
  br label %146

146:                                              ; preds = %130, %138, %142
  %147 = phi i32 [ %143, %142 ], [ %132, %138 ], [ %132, %130 ]
  %148 = add nuw nsw i64 %131, 1
  %149 = icmp eq i64 %148, %128
  br i1 %149, label %150, label %130, !llvm.loop !49

150:                                              ; preds = %146, %122
  %151 = phi i32 [ 0, %122 ], [ %147, %146 ]
  %152 = sext i32 %151 to i64
  tail call void @qsort(ptr noundef %112, i64 noundef %152, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #14
  %153 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %153, align 8, !tbaa !29
  %154 = load i32, ptr %13, align 8, !tbaa !34
  %155 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %156 = load ptr, ptr %155, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %154, ptr noundef %112, i32 noundef %151, ptr noundef %156, ptr noundef nonnull %153, i32 noundef 0) #14
  %157 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %158 = load i32, ptr %157, align 4, !tbaa !43
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %180, label %160

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %162 = zext i32 %158 to i64
  %163 = load ptr, ptr %161, align 8, !tbaa !44
  br label %164

164:                                              ; preds = %160, %176
  %165 = phi i64 [ 0, %160 ], [ %178, %176 ]
  %166 = phi i32 [ 0, %160 ], [ %177, %176 ]
  %167 = getelementptr inbounds ptr, ptr %163, i64 %165
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = getelementptr inbounds %struct.frame_store, ptr %168, i64 0, i32 15
  %170 = load i32, ptr %169, align 8, !tbaa !48
  %171 = icmp eq i32 %170, %8
  br i1 %171, label %172, label %176

172:                                              ; preds = %164
  %173 = add nsw i32 %166, 1
  %174 = sext i32 %166 to i64
  %175 = getelementptr inbounds ptr, ptr %119, i64 %174
  store ptr %168, ptr %175, align 8, !tbaa !6
  br label %176

176:                                              ; preds = %164, %172
  %177 = phi i32 [ %173, %172 ], [ %166, %164 ]
  %178 = add nuw nsw i64 %165, 1
  %179 = icmp eq i64 %178, %162
  br i1 %179, label %180, label %164, !llvm.loop !50

180:                                              ; preds = %176, %150
  %181 = phi i32 [ 0, %150 ], [ %177, %176 ]
  %182 = sext i32 %181 to i64
  tail call void @qsort(ptr noundef %119, i64 noundef %182, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #14
  %183 = load i32, ptr %13, align 8, !tbaa !34
  %184 = load ptr, ptr %155, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %183, ptr noundef %119, i32 noundef %181, ptr noundef %184, ptr noundef nonnull %153, i32 noundef 1) #14
  tail call void @free(ptr noundef %112) #14
  tail call void @free(ptr noundef %119) #14
  br label %185

185:                                              ; preds = %180, %98
  %186 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %187 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %187, align 1, !tbaa !29
  %188 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %189 = load i32, ptr %188, align 8, !tbaa !51
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %235

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %193 = load i32, ptr %192, align 8, !tbaa !46
  %194 = zext i32 %193 to i64
  %195 = tail call noalias ptr @calloc(i64 noundef %194, i64 noundef 8) #15
  %196 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %195, ptr %196, align 8, !tbaa !52
  %197 = icmp eq ptr %195, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %191
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #14
  br label %199

199:                                              ; preds = %198, %191
  %200 = load i32, ptr %13, align 8, !tbaa !34
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  %203 = load i8, ptr %186, align 8, !tbaa !29
  %204 = load ptr, ptr %196, align 8, !tbaa !52
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef %204, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %205 = load i32, ptr %11, align 4, !tbaa !27
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %226, label %207

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %209 = sext i8 %203 to i64
  %210 = zext i32 %205 to i64
  br label %211

211:                                              ; preds = %207, %211
  %212 = phi i64 [ %209, %207 ], [ %220, %211 ]
  %213 = phi i64 [ 0, %207 ], [ %222, %211 ]
  %214 = load ptr, ptr %196, align 8, !tbaa !52
  %215 = getelementptr inbounds ptr, ptr %214, i64 %213
  %216 = load ptr, ptr %215, align 8, !tbaa !6
  %217 = getelementptr inbounds %struct.frame_store, ptr %216, i64 0, i32 12
  %218 = load ptr, ptr %217, align 8, !tbaa !40
  %219 = load ptr, ptr %208, align 8, !tbaa !6
  %220 = add nsw i64 %212, 1
  %221 = getelementptr inbounds ptr, ptr %219, i64 %212
  store ptr %218, ptr %221, align 8, !tbaa !6
  %222 = add nuw nsw i64 %213, 1
  %223 = icmp eq i64 %222, %210
  br i1 %223, label %224, label %211, !llvm.loop !53

224:                                              ; preds = %211
  %225 = trunc i64 %220 to i8
  br label %226

226:                                              ; preds = %224, %202
  %227 = phi i8 [ %203, %202 ], [ %225, %224 ]
  store i8 %227, ptr %186, align 8, !tbaa !29
  br label %235

228:                                              ; preds = %199
  %229 = load ptr, ptr %196, align 8, !tbaa !52
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %200, i32 noundef 0, ptr noundef %229, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %230 = load i32, ptr %13, align 8, !tbaa !34
  %231 = load ptr, ptr %196, align 8, !tbaa !52
  %232 = load i32, ptr %11, align 4, !tbaa !27
  %233 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %234 = load ptr, ptr %233, align 8, !tbaa !6
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %230, ptr noundef %231, i32 noundef %232, ptr noundef %234, ptr noundef nonnull %186) #16
  br label %235

235:                                              ; preds = %226, %228, %185
  %236 = load i8, ptr %186, align 8, !tbaa !29
  %237 = sext i8 %236 to i32
  %238 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %239 = load i32, ptr %238, align 8, !tbaa !15
  %240 = tail call fastcc i32 @imin(i32 noundef %237, i32 noundef %239) #16
  %241 = trunc i32 %240 to i8
  store i8 %241, ptr %186, align 8, !tbaa !29
  %242 = load i8, ptr %187, align 1, !tbaa !29
  %243 = sext i8 %242 to i32
  %244 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %245 = load i32, ptr %244, align 4, !tbaa !15
  %246 = tail call fastcc i32 @imin(i32 noundef %243, i32 noundef %245) #16
  %247 = trunc i32 %246 to i8
  store i8 %247, ptr %187, align 1, !tbaa !29
  %248 = shl i32 %240, 24
  %249 = ashr exact i32 %248, 24
  %250 = icmp ult i32 %249, 33
  br i1 %250, label %251, label %265

251:                                              ; preds = %235
  %252 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %253 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %254 = zext nneg i32 %249 to i64
  %255 = load ptr, ptr %252, align 8, !tbaa !54
  br label %256

256:                                              ; preds = %251, %256
  %257 = phi i64 [ %254, %251 ], [ %260, %256 ]
  %258 = load ptr, ptr %253, align 8, !tbaa !6
  %259 = getelementptr inbounds ptr, ptr %258, i64 %257
  store ptr %255, ptr %259, align 8, !tbaa !6
  %260 = add nuw nsw i64 %257, 1
  %261 = and i64 %260, 4294967295
  %262 = icmp eq i64 %261, 33
  br i1 %262, label %263, label %256, !llvm.loop !60

263:                                              ; preds = %256
  %264 = load i8, ptr %187, align 1, !tbaa !29
  br label %265

265:                                              ; preds = %263, %235
  %266 = phi i8 [ %264, %263 ], [ %247, %235 ]
  %267 = icmp ult i8 %266, 33
  br i1 %267, label %268, label %280

268:                                              ; preds = %265
  %269 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %270 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %271 = zext nneg i8 %266 to i64
  %272 = load ptr, ptr %269, align 8, !tbaa !54
  br label %273

273:                                              ; preds = %268, %273
  %274 = phi i64 [ %271, %268 ], [ %277, %273 ]
  %275 = load ptr, ptr %270, align 8, !tbaa !6
  %276 = getelementptr inbounds ptr, ptr %275, i64 %274
  store ptr %272, ptr %276, align 8, !tbaa !6
  %277 = add nuw nsw i64 %274, 1
  %278 = and i64 %277, 4294967295
  %279 = icmp eq i64 %278, 33
  br i1 %279, label %280, label %273, !llvm.loop !61

280:                                              ; preds = %273, %265
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_pic_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !21
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !21
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_lt_pic_num_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !25
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !25
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_frame_num_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !62
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !62
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: optsize
declare void @gen_pic_list_from_frame_list(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_lt_pic_idx_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @append_interview_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #8 {
  switch i32 %0, label %42 [
    i32 1, label %6
    i32 2, label %24
  ]

6:                                                ; preds = %5
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %6
  %9 = zext nneg i32 %2 to i64
  %10 = load i8, ptr %4, align 1, !tbaa !29
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i8 [ %10, %8 ], [ %21, %11 ]
  %13 = phi i64 [ 0, %8 ], [ %22, %11 ]
  %14 = getelementptr inbounds ptr, ptr %1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.frame_store, ptr %15, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = sext i8 %12 to i64
  %19 = getelementptr inbounds ptr, ptr %3, i64 %18
  store ptr %17, ptr %19, align 8, !tbaa !6
  %20 = load i8, ptr %4, align 1, !tbaa !29
  %21 = add i8 %20, 1
  store i8 %21, ptr %4, align 1, !tbaa !29
  %22 = add nuw nsw i64 %13, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %42, label %11, !llvm.loop !65

24:                                               ; preds = %5
  %25 = icmp sgt i32 %2, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %24
  %27 = zext nneg i32 %2 to i64
  %28 = load i8, ptr %4, align 1, !tbaa !29
  br label %29

29:                                               ; preds = %26, %29
  %30 = phi i8 [ %28, %26 ], [ %39, %29 ]
  %31 = phi i64 [ 0, %26 ], [ %40, %29 ]
  %32 = getelementptr inbounds ptr, ptr %1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.frame_store, ptr %33, i64 0, i32 14
  %35 = load ptr, ptr %34, align 8, !tbaa !66
  %36 = sext i8 %30 to i64
  %37 = getelementptr inbounds ptr, ptr %3, i64 %36
  store ptr %35, ptr %37, align 8, !tbaa !6
  %38 = load i8, ptr %4, align 1, !tbaa !29
  %39 = add i8 %38, 1
  store i8 %39, ptr %4, align 1, !tbaa !29
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, %27
  br i1 %41, label %42, label %29, !llvm.loop !67

42:                                               ; preds = %29, %11, %24, %6, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_lists_b_slice_mvc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !33
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !27
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %209

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !35
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
  %28 = load ptr, ptr %21, align 8, !tbaa !37
  %29 = getelementptr inbounds ptr, ptr %28, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load i32, ptr %30, align 8, !tbaa !38
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %57

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.frame_store, ptr %30, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !41
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 10
  %41 = load i8, ptr %40, align 8, !tbaa !18
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 64
  %45 = load i32, ptr %44, align 8, !tbaa !22
  %46 = icmp eq i32 %45, %8
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, ptr %22, align 4, !tbaa !68
  %49 = getelementptr inbounds %struct.storable_picture, ptr %35, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !69
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load ptr, ptr %23, align 8, !tbaa !6
  %54 = add nsw i32 %27, 1
  %55 = sext i32 %27 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  store ptr %35, ptr %56, align 8, !tbaa !6
  br label %57

57:                                               ; preds = %25, %47, %52, %43, %39, %33
  %58 = phi i32 [ %27, %39 ], [ %54, %52 ], [ %27, %47 ], [ %27, %43 ], [ %27, %33 ], [ %27, %25 ]
  %59 = add nuw nsw i64 %26, 1
  %60 = icmp eq i64 %59, %24
  br i1 %60, label %61, label %25, !llvm.loop !70

61:                                               ; preds = %57, %16
  %62 = phi i32 [ 0, %16 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = sext i32 %62 to i64
  tail call void @qsort(ptr noundef %64, i64 noundef %65, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #14
  %66 = load i32, ptr %17, align 8, !tbaa !35
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %70 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %71 = zext i32 %66 to i64
  br label %72

72:                                               ; preds = %68, %104
  %73 = phi i64 [ 0, %68 ], [ %106, %104 ]
  %74 = phi i32 [ %62, %68 ], [ %105, %104 ]
  %75 = load ptr, ptr %69, align 8, !tbaa !37
  %76 = getelementptr inbounds ptr, ptr %75, i64 %73
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = load i32, ptr %77, align 8, !tbaa !38
  %79 = icmp eq i32 %78, 3
  br i1 %79, label %80, label %104

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.frame_store, ptr %77, i64 0, i32 12
  %82 = load ptr, ptr %81, align 8, !tbaa !40
  %83 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 11
  %84 = load i32, ptr %83, align 4, !tbaa !41
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %104, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 10
  %88 = load i8, ptr %87, align 8, !tbaa !18
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 64
  %92 = load i32, ptr %91, align 8, !tbaa !22
  %93 = icmp eq i32 %92, %8
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load i32, ptr %70, align 4, !tbaa !68
  %96 = getelementptr inbounds %struct.storable_picture, ptr %82, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !69
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %94
  %100 = load ptr, ptr %63, align 8, !tbaa !6
  %101 = add nsw i32 %74, 1
  %102 = sext i32 %74 to i64
  %103 = getelementptr inbounds ptr, ptr %100, i64 %102
  store ptr %82, ptr %103, align 8, !tbaa !6
  br label %104

104:                                              ; preds = %72, %94, %99, %90, %86, %80
  %105 = phi i32 [ %74, %86 ], [ %101, %99 ], [ %74, %94 ], [ %74, %90 ], [ %74, %80 ], [ %74, %72 ]
  %106 = add nuw nsw i64 %73, 1
  %107 = icmp eq i64 %106, %71
  br i1 %107, label %108, label %72, !llvm.loop !71

108:                                              ; preds = %104, %61
  %109 = phi i32 [ %62, %61 ], [ %105, %104 ]
  %110 = load ptr, ptr %63, align 8, !tbaa !6
  %111 = getelementptr inbounds ptr, ptr %110, i64 %65
  %112 = sub nsw i32 %109, %62
  %113 = sext i32 %112 to i64
  tail call void @qsort(ptr noundef %111, i64 noundef %113, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #14
  %114 = icmp sgt i32 %62, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %117 = zext nneg i32 %62 to i64
  br label %123

118:                                              ; preds = %123, %108
  %119 = icmp slt i32 %62, %109
  br i1 %119, label %120, label %143

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %122 = sext i32 %109 to i64
  br label %133

123:                                              ; preds = %115, %123
  %124 = phi i64 [ 0, %115 ], [ %131, %123 ]
  %125 = load ptr, ptr %63, align 8, !tbaa !6
  %126 = getelementptr inbounds ptr, ptr %125, i64 %124
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  %128 = load ptr, ptr %116, align 8, !tbaa !6
  %129 = getelementptr ptr, ptr %128, i64 %124
  %130 = getelementptr ptr, ptr %129, i64 %113
  store ptr %127, ptr %130, align 8, !tbaa !6
  %131 = add nuw nsw i64 %124, 1
  %132 = icmp eq i64 %131, %117
  br i1 %132, label %118, label %123, !llvm.loop !72

133:                                              ; preds = %120, %133
  %134 = phi i64 [ %65, %120 ], [ %141, %133 ]
  %135 = load ptr, ptr %63, align 8, !tbaa !6
  %136 = getelementptr inbounds ptr, ptr %135, i64 %134
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = load ptr, ptr %121, align 8, !tbaa !6
  %139 = sub nsw i64 %134, %65
  %140 = getelementptr inbounds ptr, ptr %138, i64 %139
  store ptr %137, ptr %140, align 8, !tbaa !6
  %141 = add nsw i64 %134, 1
  %142 = icmp eq i64 %141, %122
  br i1 %142, label %143, label %133, !llvm.loop !73

143:                                              ; preds = %133, %118
  %144 = trunc i32 %109 to i8
  %145 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %146 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %144, ptr %146, align 1, !tbaa !29
  store i8 %144, ptr %145, align 8, !tbaa !29
  %147 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %148 = load i32, ptr %147, align 4, !tbaa !43
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %191, label %150

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %152 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %153 = zext i32 %148 to i64
  br label %154

154:                                              ; preds = %150, %184
  %155 = phi i64 [ 0, %150 ], [ %186, %184 ]
  %156 = phi i32 [ %109, %150 ], [ %185, %184 ]
  %157 = load ptr, ptr %151, align 8, !tbaa !44
  %158 = getelementptr inbounds ptr, ptr %157, i64 %155
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = load i32, ptr %159, align 8, !tbaa !38
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %184

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.frame_store, ptr %159, i64 0, i32 12
  %164 = load ptr, ptr %163, align 8, !tbaa !40
  %165 = getelementptr inbounds %struct.storable_picture, ptr %164, i64 0, i32 10
  %166 = load i8, ptr %165, align 8, !tbaa !18
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.storable_picture, ptr %164, i64 0, i32 64
  %170 = load i32, ptr %169, align 8, !tbaa !22
  %171 = icmp eq i32 %170, %8
  br i1 %171, label %172, label %184

172:                                              ; preds = %168
  %173 = load ptr, ptr %63, align 8, !tbaa !6
  %174 = sext i32 %156 to i64
  %175 = getelementptr inbounds ptr, ptr %173, i64 %174
  store ptr %164, ptr %175, align 8, !tbaa !6
  %176 = load ptr, ptr %151, align 8, !tbaa !44
  %177 = getelementptr inbounds ptr, ptr %176, i64 %155
  %178 = load ptr, ptr %177, align 8, !tbaa !6
  %179 = getelementptr inbounds %struct.frame_store, ptr %178, i64 0, i32 12
  %180 = load ptr, ptr %179, align 8, !tbaa !40
  %181 = load ptr, ptr %152, align 8, !tbaa !6
  %182 = add nsw i32 %156, 1
  %183 = getelementptr inbounds ptr, ptr %181, i64 %174
  store ptr %180, ptr %183, align 8, !tbaa !6
  br label %184

184:                                              ; preds = %154, %172, %168, %162
  %185 = phi i32 [ %182, %172 ], [ %156, %168 ], [ %156, %162 ], [ %156, %154 ]
  %186 = add nuw nsw i64 %155, 1
  %187 = icmp eq i64 %186, %153
  br i1 %187, label %188, label %154, !llvm.loop !74

188:                                              ; preds = %184
  %189 = load i8, ptr %145, align 8, !tbaa !29
  %190 = trunc i32 %185 to i8
  br label %191

191:                                              ; preds = %188, %143
  %192 = phi i8 [ %190, %188 ], [ %144, %143 ]
  %193 = phi i8 [ %189, %188 ], [ %144, %143 ]
  %194 = phi i32 [ %185, %188 ], [ %109, %143 ]
  %195 = load ptr, ptr %63, align 8, !tbaa !6
  %196 = sext i8 %193 to i64
  %197 = getelementptr inbounds ptr, ptr %195, i64 %196
  %198 = sext i8 %193 to i32
  %199 = sub nsw i32 %194, %198
  %200 = sext i32 %199 to i64
  tail call void @qsort(ptr noundef %197, i64 noundef %200, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #14
  %201 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !6
  %203 = load i8, ptr %145, align 8, !tbaa !29
  %204 = sext i8 %203 to i64
  %205 = getelementptr inbounds ptr, ptr %202, i64 %204
  %206 = sext i8 %203 to i32
  %207 = sub nsw i32 %194, %206
  %208 = sext i32 %207 to i64
  tail call void @qsort(ptr noundef %205, i64 noundef %208, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #14
  store i8 %192, ptr %146, align 1, !tbaa !29
  store i8 %192, ptr %145, align 8, !tbaa !29
  br label %362

209:                                              ; preds = %1
  %210 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %211 = load i32, ptr %210, align 8, !tbaa !46
  %212 = zext i32 %211 to i64
  %213 = tail call noalias ptr @calloc(i64 noundef %212, i64 noundef 8) #15
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #14
  %216 = load i32, ptr %210, align 8, !tbaa !46
  %217 = zext i32 %216 to i64
  br label %218

218:                                              ; preds = %215, %209
  %219 = phi i64 [ %217, %215 ], [ %212, %209 ]
  %220 = tail call noalias ptr @calloc(i64 noundef %219, i64 noundef 8) #15
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %218
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #14
  %223 = load i32, ptr %210, align 8, !tbaa !46
  %224 = zext i32 %223 to i64
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi i64 [ %224, %222 ], [ %219, %218 ]
  %227 = tail call noalias ptr @calloc(i64 noundef %226, i64 noundef 8) #15
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %230

229:                                              ; preds = %225
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #14
  br label %230

230:                                              ; preds = %229, %225
  %231 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %231, align 8, !tbaa !29
  %232 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 1, ptr %232, align 1, !tbaa !29
  %233 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %234 = load i32, ptr %233, align 8, !tbaa !35
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %264, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %238 = zext i32 %234 to i64
  %239 = load ptr, ptr %237, align 8, !tbaa !37
  br label %240

240:                                              ; preds = %236, %260
  %241 = phi i64 [ 0, %236 ], [ %262, %260 ]
  %242 = phi i32 [ 0, %236 ], [ %261, %260 ]
  %243 = getelementptr inbounds ptr, ptr %239, i64 %241
  %244 = load ptr, ptr %243, align 8, !tbaa !6
  %245 = load i32, ptr %244, align 8, !tbaa !38
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %260, label %247

247:                                              ; preds = %240
  %248 = load i32, ptr %5, align 8, !tbaa !31
  %249 = getelementptr inbounds %struct.frame_store, ptr %244, i64 0, i32 10
  %250 = load i32, ptr %249, align 8, !tbaa !75
  %251 = icmp slt i32 %248, %250
  br i1 %251, label %260, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.frame_store, ptr %244, i64 0, i32 15
  %254 = load i32, ptr %253, align 8, !tbaa !48
  %255 = icmp eq i32 %254, %8
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = add nsw i32 %242, 1
  %258 = sext i32 %242 to i64
  %259 = getelementptr inbounds ptr, ptr %213, i64 %258
  store ptr %244, ptr %259, align 8, !tbaa !6
  br label %260

260:                                              ; preds = %240, %256, %252, %247
  %261 = phi i32 [ %257, %256 ], [ %242, %252 ], [ %242, %247 ], [ %242, %240 ]
  %262 = add nuw nsw i64 %241, 1
  %263 = icmp eq i64 %262, %238
  br i1 %263, label %264, label %240, !llvm.loop !76

264:                                              ; preds = %260, %230
  %265 = phi i32 [ 0, %230 ], [ %261, %260 ]
  %266 = sext i32 %265 to i64
  tail call void @qsort(ptr noundef %213, i64 noundef %266, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #14
  %267 = load i32, ptr %233, align 8, !tbaa !35
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %297, label %269

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %271 = zext i32 %267 to i64
  %272 = load ptr, ptr %270, align 8, !tbaa !37
  br label %273

273:                                              ; preds = %269, %293
  %274 = phi i64 [ 0, %269 ], [ %295, %293 ]
  %275 = phi i32 [ %265, %269 ], [ %294, %293 ]
  %276 = getelementptr inbounds ptr, ptr %272, i64 %274
  %277 = load ptr, ptr %276, align 8, !tbaa !6
  %278 = load i32, ptr %277, align 8, !tbaa !38
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %293, label %280

280:                                              ; preds = %273
  %281 = load i32, ptr %5, align 8, !tbaa !31
  %282 = getelementptr inbounds %struct.frame_store, ptr %277, i64 0, i32 10
  %283 = load i32, ptr %282, align 8, !tbaa !75
  %284 = icmp slt i32 %281, %283
  br i1 %284, label %285, label %293

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.frame_store, ptr %277, i64 0, i32 15
  %287 = load i32, ptr %286, align 8, !tbaa !48
  %288 = icmp eq i32 %287, %8
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = add nsw i32 %275, 1
  %291 = sext i32 %275 to i64
  %292 = getelementptr inbounds ptr, ptr %213, i64 %291
  store ptr %277, ptr %292, align 8, !tbaa !6
  br label %293

293:                                              ; preds = %273, %289, %285, %280
  %294 = phi i32 [ %290, %289 ], [ %275, %285 ], [ %275, %280 ], [ %275, %273 ]
  %295 = add nuw nsw i64 %274, 1
  %296 = icmp eq i64 %295, %271
  br i1 %296, label %297, label %273, !llvm.loop !77

297:                                              ; preds = %293, %264
  %298 = phi i32 [ %265, %264 ], [ %294, %293 ]
  %299 = getelementptr inbounds ptr, ptr %213, i64 %266
  %300 = sub nsw i32 %298, %265
  %301 = sext i32 %300 to i64
  tail call void @qsort(ptr noundef %299, i64 noundef %301, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #14
  %302 = icmp sgt i32 %265, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %297
  %304 = zext nneg i32 %265 to i64
  %305 = getelementptr ptr, ptr %220, i64 %301
  br label %316

306:                                              ; preds = %316, %297
  %307 = icmp slt i32 %265, %298
  br i1 %307, label %308, label %323

308:                                              ; preds = %306
  %309 = shl nsw i64 %266, 3
  %310 = getelementptr i8, ptr %213, i64 %309
  %311 = xor i32 %265, -1
  %312 = add i32 %298, %311
  %313 = zext i32 %312 to i64
  %314 = shl nuw nsw i64 %313, 3
  %315 = add nuw nsw i64 %314, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %220, ptr noundef nonnull align 8 dereferenceable(1) %310, i64 %315, i1 false), !tbaa !6
  br label %323

316:                                              ; preds = %303, %316
  %317 = phi i64 [ 0, %303 ], [ %321, %316 ]
  %318 = getelementptr inbounds ptr, ptr %213, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !6
  %320 = getelementptr ptr, ptr %305, i64 %317
  store ptr %319, ptr %320, align 8, !tbaa !6
  %321 = add nuw nsw i64 %317, 1
  %322 = icmp eq i64 %321, %304
  br i1 %322, label %306, label %316, !llvm.loop !78

323:                                              ; preds = %308, %306
  store i8 0, ptr %231, align 8, !tbaa !29
  store i8 0, ptr %232, align 1, !tbaa !29
  %324 = load i32, ptr %13, align 8, !tbaa !34
  %325 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %326 = load ptr, ptr %325, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %324, ptr noundef %213, i32 noundef %298, ptr noundef %326, ptr noundef nonnull %231, i32 noundef 0) #14
  %327 = load i32, ptr %13, align 8, !tbaa !34
  %328 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %329 = load ptr, ptr %328, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %327, ptr noundef %220, i32 noundef %298, ptr noundef %329, ptr noundef nonnull %232, i32 noundef 0) #14
  %330 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %331 = load i32, ptr %330, align 4, !tbaa !43
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %353, label %333

333:                                              ; preds = %323
  %334 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %335 = zext i32 %331 to i64
  %336 = load ptr, ptr %334, align 8, !tbaa !44
  br label %337

337:                                              ; preds = %333, %349
  %338 = phi i64 [ 0, %333 ], [ %351, %349 ]
  %339 = phi i32 [ 0, %333 ], [ %350, %349 ]
  %340 = getelementptr inbounds ptr, ptr %336, i64 %338
  %341 = load ptr, ptr %340, align 8, !tbaa !6
  %342 = getelementptr inbounds %struct.frame_store, ptr %341, i64 0, i32 15
  %343 = load i32, ptr %342, align 8, !tbaa !48
  %344 = icmp eq i32 %343, %8
  br i1 %344, label %345, label %349

345:                                              ; preds = %337
  %346 = add nsw i32 %339, 1
  %347 = sext i32 %339 to i64
  %348 = getelementptr inbounds ptr, ptr %227, i64 %347
  store ptr %341, ptr %348, align 8, !tbaa !6
  br label %349

349:                                              ; preds = %337, %345
  %350 = phi i32 [ %346, %345 ], [ %339, %337 ]
  %351 = add nuw nsw i64 %338, 1
  %352 = icmp eq i64 %351, %335
  br i1 %352, label %353, label %337, !llvm.loop !79

353:                                              ; preds = %349, %323
  %354 = phi i32 [ 0, %323 ], [ %350, %349 ]
  %355 = sext i32 %354 to i64
  tail call void @qsort(ptr noundef %227, i64 noundef %355, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #14
  %356 = load i32, ptr %13, align 8, !tbaa !34
  %357 = load ptr, ptr %325, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %356, ptr noundef %227, i32 noundef %354, ptr noundef %357, ptr noundef nonnull %231, i32 noundef 1) #14
  %358 = load i32, ptr %13, align 8, !tbaa !34
  %359 = load ptr, ptr %328, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %358, ptr noundef %227, i32 noundef %354, ptr noundef %359, ptr noundef nonnull %232, i32 noundef 1) #14
  tail call void @free(ptr noundef %213) #14
  tail call void @free(ptr noundef %220) #14
  tail call void @free(ptr noundef %227) #14
  %360 = load i8, ptr %231, align 8, !tbaa !29
  %361 = load i8, ptr %232, align 1, !tbaa !29
  br label %362

362:                                              ; preds = %353, %191
  %363 = phi i8 [ %361, %353 ], [ %192, %191 ]
  %364 = phi i8 [ %360, %353 ], [ %192, %191 ]
  %365 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %366 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  %367 = icmp eq i8 %364, %363
  %368 = icmp sgt i8 %364, 1
  %369 = and i1 %368, %367
  br i1 %369, label %370, label %393

370:                                              ; preds = %362
  %371 = sext i8 %363 to i64
  %372 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %373 = load ptr, ptr %372, align 8, !tbaa !6
  %374 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !6
  %376 = and i64 %371, 4294967295
  br label %380

377:                                              ; preds = %380
  %378 = add nuw nsw i64 %381, 1
  %379 = icmp eq i64 %378, %376
  br i1 %379, label %387, label %380, !llvm.loop !80

380:                                              ; preds = %370, %377
  %381 = phi i64 [ 0, %370 ], [ %378, %377 ]
  %382 = getelementptr inbounds ptr, ptr %373, i64 %381
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  %384 = getelementptr inbounds ptr, ptr %375, i64 %381
  %385 = load ptr, ptr %384, align 8, !tbaa !6
  %386 = icmp eq ptr %383, %385
  br i1 %386, label %377, label %393

387:                                              ; preds = %377
  %388 = load ptr, ptr %375, align 8, !tbaa !6
  %389 = getelementptr inbounds ptr, ptr %375, i64 1
  %390 = load ptr, ptr %389, align 8, !tbaa !6
  store ptr %390, ptr %375, align 8, !tbaa !6
  %391 = load ptr, ptr %374, align 8, !tbaa !6
  %392 = getelementptr inbounds ptr, ptr %391, i64 1
  store ptr %388, ptr %392, align 8, !tbaa !6
  br label %393

393:                                              ; preds = %380, %387, %362
  %394 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %395 = load i32, ptr %394, align 8, !tbaa !51
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %481

397:                                              ; preds = %393
  %398 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %399 = load i32, ptr %398, align 8, !tbaa !46
  %400 = zext i32 %399 to i64
  %401 = tail call noalias ptr @calloc(i64 noundef %400, i64 noundef 8) #15
  %402 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %401, ptr %402, align 8, !tbaa !52
  %403 = icmp eq ptr %401, null
  br i1 %403, label %404, label %407

404:                                              ; preds = %397
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #14
  %405 = load i32, ptr %398, align 8, !tbaa !46
  %406 = zext i32 %405 to i64
  br label %407

407:                                              ; preds = %404, %397
  %408 = phi i64 [ %406, %404 ], [ %400, %397 ]
  %409 = tail call noalias ptr @calloc(i64 noundef %408, i64 noundef 8) #15
  %410 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  store ptr %409, ptr %410, align 8, !tbaa !81
  %411 = icmp eq ptr %409, null
  br i1 %411, label %412, label %413

412:                                              ; preds = %407
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #14
  br label %413

413:                                              ; preds = %412, %407
  %414 = load i32, ptr %13, align 8, !tbaa !34
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %467

416:                                              ; preds = %413
  %417 = load i8, ptr %365, align 8, !tbaa !29
  %418 = load ptr, ptr %402, align 8, !tbaa !52
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef %418, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %419 = load ptr, ptr %410, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, ptr noundef %419, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %420 = load i32, ptr %11, align 4, !tbaa !27
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %441, label %422

422:                                              ; preds = %416
  %423 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %424 = sext i8 %417 to i64
  %425 = zext i32 %420 to i64
  br label %426

426:                                              ; preds = %422, %426
  %427 = phi i64 [ %424, %422 ], [ %435, %426 ]
  %428 = phi i64 [ 0, %422 ], [ %437, %426 ]
  %429 = load ptr, ptr %402, align 8, !tbaa !52
  %430 = getelementptr inbounds ptr, ptr %429, i64 %428
  %431 = load ptr, ptr %430, align 8, !tbaa !6
  %432 = getelementptr inbounds %struct.frame_store, ptr %431, i64 0, i32 12
  %433 = load ptr, ptr %432, align 8, !tbaa !40
  %434 = load ptr, ptr %423, align 8, !tbaa !6
  %435 = add nsw i64 %427, 1
  %436 = getelementptr inbounds ptr, ptr %434, i64 %427
  store ptr %433, ptr %436, align 8, !tbaa !6
  %437 = add nuw nsw i64 %428, 1
  %438 = icmp eq i64 %437, %425
  br i1 %438, label %439, label %426, !llvm.loop !82

439:                                              ; preds = %426
  %440 = trunc i64 %435 to i8
  br label %441

441:                                              ; preds = %439, %416
  %442 = phi i8 [ %417, %416 ], [ %440, %439 ]
  store i8 %442, ptr %365, align 8, !tbaa !29
  %443 = load i8, ptr %366, align 1, !tbaa !29
  %444 = load i32, ptr %12, align 8, !tbaa !28
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %465, label %446

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %448 = sext i8 %443 to i64
  %449 = zext i32 %444 to i64
  br label %450

450:                                              ; preds = %446, %450
  %451 = phi i64 [ %448, %446 ], [ %459, %450 ]
  %452 = phi i64 [ 0, %446 ], [ %461, %450 ]
  %453 = load ptr, ptr %410, align 8, !tbaa !81
  %454 = getelementptr inbounds ptr, ptr %453, i64 %452
  %455 = load ptr, ptr %454, align 8, !tbaa !6
  %456 = getelementptr inbounds %struct.frame_store, ptr %455, i64 0, i32 12
  %457 = load ptr, ptr %456, align 8, !tbaa !40
  %458 = load ptr, ptr %447, align 8, !tbaa !6
  %459 = add nsw i64 %451, 1
  %460 = getelementptr inbounds ptr, ptr %458, i64 %451
  store ptr %457, ptr %460, align 8, !tbaa !6
  %461 = add nuw nsw i64 %452, 1
  %462 = icmp eq i64 %461, %449
  br i1 %462, label %463, label %450, !llvm.loop !83

463:                                              ; preds = %450
  %464 = trunc i64 %459 to i8
  br label %465

465:                                              ; preds = %463, %441
  %466 = phi i8 [ %443, %441 ], [ %464, %463 ]
  store i8 %466, ptr %366, align 1, !tbaa !29
  br label %481

467:                                              ; preds = %413
  %468 = load ptr, ptr %402, align 8, !tbaa !52
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %414, i32 noundef 0, ptr noundef %468, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %469 = load i32, ptr %13, align 8, !tbaa !34
  %470 = load ptr, ptr %402, align 8, !tbaa !52
  %471 = load i32, ptr %11, align 4, !tbaa !27
  %472 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %473 = load ptr, ptr %472, align 8, !tbaa !6
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %469, ptr noundef %470, i32 noundef %471, ptr noundef %473, ptr noundef nonnull %365) #16
  %474 = load i32, ptr %13, align 8, !tbaa !34
  %475 = load ptr, ptr %410, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %474, i32 noundef 1, ptr noundef %475, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %476 = load i32, ptr %13, align 8, !tbaa !34
  %477 = load ptr, ptr %410, align 8, !tbaa !81
  %478 = load i32, ptr %12, align 8, !tbaa !28
  %479 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %480 = load ptr, ptr %479, align 8, !tbaa !6
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %476, ptr noundef %477, i32 noundef %478, ptr noundef %480, ptr noundef nonnull %366) #16
  br label %481

481:                                              ; preds = %465, %467, %393
  %482 = load i8, ptr %365, align 8, !tbaa !29
  %483 = sext i8 %482 to i32
  %484 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %485 = load i32, ptr %484, align 8, !tbaa !15
  %486 = tail call fastcc i32 @imin(i32 noundef %483, i32 noundef %485) #16
  %487 = trunc i32 %486 to i8
  store i8 %487, ptr %365, align 8, !tbaa !29
  %488 = load i8, ptr %366, align 1, !tbaa !29
  %489 = sext i8 %488 to i32
  %490 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %491 = load i32, ptr %490, align 4, !tbaa !15
  %492 = tail call fastcc i32 @imin(i32 noundef %489, i32 noundef %491) #16
  %493 = trunc i32 %492 to i8
  store i8 %493, ptr %366, align 1, !tbaa !29
  %494 = shl i32 %486, 24
  %495 = ashr exact i32 %494, 24
  %496 = icmp ult i32 %495, 33
  br i1 %496, label %497, label %511

497:                                              ; preds = %481
  %498 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %499 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %500 = zext nneg i32 %495 to i64
  %501 = load ptr, ptr %498, align 8, !tbaa !54
  br label %502

502:                                              ; preds = %497, %502
  %503 = phi i64 [ %500, %497 ], [ %506, %502 ]
  %504 = load ptr, ptr %499, align 8, !tbaa !6
  %505 = getelementptr inbounds ptr, ptr %504, i64 %503
  store ptr %501, ptr %505, align 8, !tbaa !6
  %506 = add nuw nsw i64 %503, 1
  %507 = and i64 %506, 4294967295
  %508 = icmp eq i64 %507, 33
  br i1 %508, label %509, label %502, !llvm.loop !84

509:                                              ; preds = %502
  %510 = load i8, ptr %366, align 1, !tbaa !29
  br label %511

511:                                              ; preds = %509, %481
  %512 = phi i8 [ %510, %509 ], [ %493, %481 ]
  %513 = icmp ult i8 %512, 33
  br i1 %513, label %514, label %526

514:                                              ; preds = %511
  %515 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %516 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %517 = zext nneg i8 %512 to i64
  %518 = load ptr, ptr %515, align 8, !tbaa !54
  br label %519

519:                                              ; preds = %514, %519
  %520 = phi i64 [ %517, %514 ], [ %523, %519 ]
  %521 = load ptr, ptr %516, align 8, !tbaa !6
  %522 = getelementptr inbounds ptr, ptr %521, i64 %520
  store ptr %518, ptr %522, align 8, !tbaa !6
  %523 = add nuw nsw i64 %520, 1
  %524 = and i64 %523, 4294967295
  %525 = icmp eq i64 %524, 33
  br i1 %525, label %526, label %519, !llvm.loop !85

526:                                              ; preds = %519, %511
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_pic_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.storable_picture, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !69
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_poc_desc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !75
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = sext i1 %10 to i32
  %12 = select i1 %9, i32 1, i32 %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare_fs_by_poc_asc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.frame_store, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = load ptr, ptr %1, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.frame_store, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !75
  %9 = icmp slt i32 %5, %8
  %10 = icmp sgt i32 %5, %8
  %11 = zext i1 %10 to i32
  %12 = select i1 %9, i32 -1, i32 %11
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_lists_mvc(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 19
  %6 = load i32, ptr %5, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %8 = load i32, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %10 = load i32, ptr %9, align 8, !tbaa !33
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 105
  store i32 0, ptr %11, align 4, !tbaa !27
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 106
  store i32 0, ptr %12, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %14 = load i32, ptr %13, align 4, !tbaa !86
  switch i32 %14, label %193 [
    i32 2, label %15
    i32 4, label %15
    i32 0, label %18
    i32 3, label %18
  ]

15:                                               ; preds = %1, %1
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %16, align 8, !tbaa !29
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %17, align 1, !tbaa !29
  br label %757

18:                                               ; preds = %1, %1
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !35
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
  %33 = load ptr, ptr %27, align 8, !tbaa !37
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load i32, ptr %35, align 8, !tbaa !38
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %57

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.frame_store, ptr %35, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 11
  %42 = load i32, ptr %41, align 4, !tbaa !41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 10
  %46 = load i8, ptr %45, align 8, !tbaa !18
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.storable_picture, ptr %40, i64 0, i32 64
  %50 = load i32, ptr %49, align 8, !tbaa !22
  %51 = icmp eq i32 %50, %8
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %28, align 8, !tbaa !6
  %54 = add nsw i32 %32, 1
  %55 = sext i32 %32 to i64
  %56 = getelementptr inbounds ptr, ptr %53, i64 %55
  store ptr %40, ptr %56, align 8, !tbaa !6
  br label %57

57:                                               ; preds = %30, %52, %48, %44, %38
  %58 = phi i32 [ %32, %44 ], [ %54, %52 ], [ %32, %48 ], [ %32, %38 ], [ %32, %30 ]
  %59 = add nuw nsw i64 %31, 1
  %60 = icmp eq i64 %59, %29
  br i1 %60, label %61, label %30, !llvm.loop !87

61:                                               ; preds = %57, %22
  %62 = phi i32 [ 0, %22 ], [ %58, %57 ]
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = sext i32 %62 to i64
  tail call void @qsort(ptr noundef %64, i64 noundef %65, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #14
  %66 = trunc i32 %62 to i8
  %67 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %66, ptr %67, align 8, !tbaa !29
  %68 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !43
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %104, label %71

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %73 = zext i32 %69 to i64
  br label %74

74:                                               ; preds = %71, %97
  %75 = phi i64 [ 0, %71 ], [ %99, %97 ]
  %76 = phi i32 [ %62, %71 ], [ %98, %97 ]
  %77 = load ptr, ptr %72, align 8, !tbaa !44
  %78 = getelementptr inbounds ptr, ptr %77, i64 %75
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = load i32, ptr %79, align 8, !tbaa !38
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %97

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.frame_store, ptr %79, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !40
  %85 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 10
  %86 = load i8, ptr %85, align 8, !tbaa !18
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.storable_picture, ptr %84, i64 0, i32 64
  %90 = load i32, ptr %89, align 8, !tbaa !22
  %91 = icmp eq i32 %90, %8
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load ptr, ptr %63, align 8, !tbaa !6
  %94 = add nsw i32 %76, 1
  %95 = sext i32 %76 to i64
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95
  store ptr %84, ptr %96, align 8, !tbaa !6
  br label %97

97:                                               ; preds = %74, %92, %88, %82
  %98 = phi i32 [ %94, %92 ], [ %76, %88 ], [ %76, %82 ], [ %76, %74 ]
  %99 = add nuw nsw i64 %75, 1
  %100 = icmp eq i64 %99, %73
  br i1 %100, label %101, label %74, !llvm.loop !88

101:                                              ; preds = %97
  %102 = load i8, ptr %67, align 8, !tbaa !29
  %103 = trunc i32 %98 to i8
  br label %104

104:                                              ; preds = %101, %61
  %105 = phi i8 [ %103, %101 ], [ %66, %61 ]
  %106 = phi i8 [ %102, %101 ], [ %66, %61 ]
  %107 = phi i32 [ %98, %101 ], [ %62, %61 ]
  %108 = load ptr, ptr %63, align 8, !tbaa !6
  %109 = sext i8 %106 to i64
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109
  %111 = sext i8 %106 to i32
  %112 = sub nsw i32 %107, %111
  %113 = sext i32 %112 to i64
  tail call void @qsort(ptr noundef %110, i64 noundef %113, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #14
  store i8 %105, ptr %67, align 8, !tbaa !29
  br label %191

114:                                              ; preds = %18
  %115 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %116 = load i32, ptr %115, align 8, !tbaa !46
  %117 = zext i32 %116 to i64
  %118 = tail call noalias ptr @calloc(i64 noundef %117, i64 noundef 8) #15
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #14
  %121 = load i32, ptr %115, align 8, !tbaa !46
  %122 = zext i32 %121 to i64
  br label %123

123:                                              ; preds = %120, %114
  %124 = phi i64 [ %122, %120 ], [ %117, %114 ]
  %125 = tail call noalias ptr @calloc(i64 noundef %124, i64 noundef 8) #15
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #14
  br label %128

128:                                              ; preds = %127, %123
  %129 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %130 = load i32, ptr %129, align 8, !tbaa !35
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %156, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %134 = zext i32 %130 to i64
  %135 = load ptr, ptr %133, align 8, !tbaa !37
  br label %136

136:                                              ; preds = %132, %152
  %137 = phi i64 [ 0, %132 ], [ %154, %152 ]
  %138 = phi i32 [ 0, %132 ], [ %153, %152 ]
  %139 = getelementptr inbounds ptr, ptr %135, i64 %137
  %140 = load ptr, ptr %139, align 8, !tbaa !6
  %141 = getelementptr inbounds %struct.frame_store, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 4, !tbaa !47
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %152, label %144

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.frame_store, ptr %140, i64 0, i32 15
  %146 = load i32, ptr %145, align 8, !tbaa !48
  %147 = icmp eq i32 %146, %8
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = add nsw i32 %138, 1
  %150 = sext i32 %138 to i64
  %151 = getelementptr inbounds ptr, ptr %118, i64 %150
  store ptr %140, ptr %151, align 8, !tbaa !6
  br label %152

152:                                              ; preds = %136, %144, %148
  %153 = phi i32 [ %149, %148 ], [ %138, %144 ], [ %138, %136 ]
  %154 = add nuw nsw i64 %137, 1
  %155 = icmp eq i64 %154, %134
  br i1 %155, label %156, label %136, !llvm.loop !89

156:                                              ; preds = %152, %128
  %157 = phi i32 [ 0, %128 ], [ %153, %152 ]
  %158 = sext i32 %157 to i64
  tail call void @qsort(ptr noundef %118, i64 noundef %158, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #14
  %159 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %159, align 8, !tbaa !29
  %160 = load i32, ptr %19, align 8, !tbaa !34
  %161 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %160, ptr noundef %118, i32 noundef %157, ptr noundef %162, ptr noundef nonnull %159, i32 noundef 0) #14
  %163 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %164 = load i32, ptr %163, align 4, !tbaa !43
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %156
  %167 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %168 = zext i32 %164 to i64
  %169 = load ptr, ptr %167, align 8, !tbaa !44
  br label %170

170:                                              ; preds = %166, %182
  %171 = phi i64 [ 0, %166 ], [ %184, %182 ]
  %172 = phi i32 [ 0, %166 ], [ %183, %182 ]
  %173 = getelementptr inbounds ptr, ptr %169, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = getelementptr inbounds %struct.frame_store, ptr %174, i64 0, i32 15
  %176 = load i32, ptr %175, align 8, !tbaa !48
  %177 = icmp eq i32 %176, %8
  br i1 %177, label %178, label %182

178:                                              ; preds = %170
  %179 = add nsw i32 %172, 1
  %180 = sext i32 %172 to i64
  %181 = getelementptr inbounds ptr, ptr %125, i64 %180
  store ptr %174, ptr %181, align 8, !tbaa !6
  br label %182

182:                                              ; preds = %170, %178
  %183 = phi i32 [ %179, %178 ], [ %172, %170 ]
  %184 = add nuw nsw i64 %171, 1
  %185 = icmp eq i64 %184, %168
  br i1 %185, label %186, label %170, !llvm.loop !90

186:                                              ; preds = %182, %156
  %187 = phi i32 [ 0, %156 ], [ %183, %182 ]
  %188 = sext i32 %187 to i64
  tail call void @qsort(ptr noundef %125, i64 noundef %188, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #14
  %189 = load i32, ptr %19, align 8, !tbaa !34
  %190 = load ptr, ptr %161, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %189, ptr noundef %125, i32 noundef %187, ptr noundef %190, ptr noundef nonnull %159, i32 noundef 1) #14
  tail call void @free(ptr noundef %118) #14
  tail call void @free(ptr noundef %125) #14
  br label %191

191:                                              ; preds = %186, %104
  %192 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 0, ptr %192, align 1, !tbaa !29
  br label %542

193:                                              ; preds = %1
  %194 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %195 = load i32, ptr %194, align 8, !tbaa !34
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %390

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %199 = load i32, ptr %198, align 8, !tbaa !35
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %242, label %201

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %203 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %204 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %205 = zext i32 %199 to i64
  br label %206

206:                                              ; preds = %201, %238
  %207 = phi i64 [ 0, %201 ], [ %240, %238 ]
  %208 = phi i32 [ 0, %201 ], [ %239, %238 ]
  %209 = load ptr, ptr %202, align 8, !tbaa !37
  %210 = getelementptr inbounds ptr, ptr %209, i64 %207
  %211 = load ptr, ptr %210, align 8, !tbaa !6
  %212 = load i32, ptr %211, align 8, !tbaa !38
  %213 = icmp eq i32 %212, 3
  br i1 %213, label %214, label %238

214:                                              ; preds = %206
  %215 = getelementptr inbounds %struct.frame_store, ptr %211, i64 0, i32 12
  %216 = load ptr, ptr %215, align 8, !tbaa !40
  %217 = getelementptr inbounds %struct.storable_picture, ptr %216, i64 0, i32 11
  %218 = load i32, ptr %217, align 4, !tbaa !41
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %238, label %220

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.storable_picture, ptr %216, i64 0, i32 10
  %222 = load i8, ptr %221, align 8, !tbaa !18
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.storable_picture, ptr %216, i64 0, i32 64
  %226 = load i32, ptr %225, align 8, !tbaa !22
  %227 = icmp eq i32 %226, %8
  br i1 %227, label %228, label %238

228:                                              ; preds = %224
  %229 = load i32, ptr %203, align 4, !tbaa !68
  %230 = getelementptr inbounds %struct.storable_picture, ptr %216, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !69
  %232 = icmp slt i32 %229, %231
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr %204, align 8, !tbaa !6
  %235 = add nsw i32 %208, 1
  %236 = sext i32 %208 to i64
  %237 = getelementptr inbounds ptr, ptr %234, i64 %236
  store ptr %216, ptr %237, align 8, !tbaa !6
  br label %238

238:                                              ; preds = %206, %228, %233, %224, %220, %214
  %239 = phi i32 [ %208, %220 ], [ %235, %233 ], [ %208, %228 ], [ %208, %224 ], [ %208, %214 ], [ %208, %206 ]
  %240 = add nuw nsw i64 %207, 1
  %241 = icmp eq i64 %240, %205
  br i1 %241, label %242, label %206, !llvm.loop !91

242:                                              ; preds = %238, %197
  %243 = phi i32 [ 0, %197 ], [ %239, %238 ]
  %244 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %245 = load ptr, ptr %244, align 8, !tbaa !6
  %246 = sext i32 %243 to i64
  tail call void @qsort(ptr noundef %245, i64 noundef %246, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #14
  %247 = load i32, ptr %198, align 8, !tbaa !35
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %289, label %249

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %251 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 13
  %252 = zext i32 %247 to i64
  br label %253

253:                                              ; preds = %249, %285
  %254 = phi i64 [ 0, %249 ], [ %287, %285 ]
  %255 = phi i32 [ %243, %249 ], [ %286, %285 ]
  %256 = load ptr, ptr %250, align 8, !tbaa !37
  %257 = getelementptr inbounds ptr, ptr %256, i64 %254
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  %259 = load i32, ptr %258, align 8, !tbaa !38
  %260 = icmp eq i32 %259, 3
  br i1 %260, label %261, label %285

261:                                              ; preds = %253
  %262 = getelementptr inbounds %struct.frame_store, ptr %258, i64 0, i32 12
  %263 = load ptr, ptr %262, align 8, !tbaa !40
  %264 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 11
  %265 = load i32, ptr %264, align 4, !tbaa !41
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %285, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 10
  %269 = load i8, ptr %268, align 8, !tbaa !18
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %285

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 64
  %273 = load i32, ptr %272, align 8, !tbaa !22
  %274 = icmp eq i32 %273, %8
  br i1 %274, label %275, label %285

275:                                              ; preds = %271
  %276 = load i32, ptr %251, align 4, !tbaa !68
  %277 = getelementptr inbounds %struct.storable_picture, ptr %263, i64 0, i32 1
  %278 = load i32, ptr %277, align 4, !tbaa !69
  %279 = icmp slt i32 %276, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load ptr, ptr %244, align 8, !tbaa !6
  %282 = add nsw i32 %255, 1
  %283 = sext i32 %255 to i64
  %284 = getelementptr inbounds ptr, ptr %281, i64 %283
  store ptr %263, ptr %284, align 8, !tbaa !6
  br label %285

285:                                              ; preds = %253, %275, %280, %271, %267, %261
  %286 = phi i32 [ %255, %267 ], [ %282, %280 ], [ %255, %275 ], [ %255, %271 ], [ %255, %261 ], [ %255, %253 ]
  %287 = add nuw nsw i64 %254, 1
  %288 = icmp eq i64 %287, %252
  br i1 %288, label %289, label %253, !llvm.loop !92

289:                                              ; preds = %285, %242
  %290 = phi i32 [ %243, %242 ], [ %286, %285 ]
  %291 = load ptr, ptr %244, align 8, !tbaa !6
  %292 = getelementptr inbounds ptr, ptr %291, i64 %246
  %293 = sub nsw i32 %290, %243
  %294 = sext i32 %293 to i64
  tail call void @qsort(ptr noundef %292, i64 noundef %294, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #14
  %295 = icmp sgt i32 %243, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %298 = zext nneg i32 %243 to i64
  br label %304

299:                                              ; preds = %304, %289
  %300 = icmp slt i32 %243, %290
  br i1 %300, label %301, label %324

301:                                              ; preds = %299
  %302 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %303 = sext i32 %290 to i64
  br label %314

304:                                              ; preds = %296, %304
  %305 = phi i64 [ 0, %296 ], [ %312, %304 ]
  %306 = load ptr, ptr %244, align 8, !tbaa !6
  %307 = getelementptr inbounds ptr, ptr %306, i64 %305
  %308 = load ptr, ptr %307, align 8, !tbaa !6
  %309 = load ptr, ptr %297, align 8, !tbaa !6
  %310 = getelementptr ptr, ptr %309, i64 %305
  %311 = getelementptr ptr, ptr %310, i64 %294
  store ptr %308, ptr %311, align 8, !tbaa !6
  %312 = add nuw nsw i64 %305, 1
  %313 = icmp eq i64 %312, %298
  br i1 %313, label %299, label %304, !llvm.loop !93

314:                                              ; preds = %301, %314
  %315 = phi i64 [ %246, %301 ], [ %322, %314 ]
  %316 = load ptr, ptr %244, align 8, !tbaa !6
  %317 = getelementptr inbounds ptr, ptr %316, i64 %315
  %318 = load ptr, ptr %317, align 8, !tbaa !6
  %319 = load ptr, ptr %302, align 8, !tbaa !6
  %320 = sub nsw i64 %315, %246
  %321 = getelementptr inbounds ptr, ptr %319, i64 %320
  store ptr %318, ptr %321, align 8, !tbaa !6
  %322 = add nsw i64 %315, 1
  %323 = icmp eq i64 %322, %303
  br i1 %323, label %324, label %314, !llvm.loop !94

324:                                              ; preds = %314, %299
  %325 = trunc i32 %290 to i8
  %326 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %327 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %325, ptr %327, align 1, !tbaa !29
  store i8 %325, ptr %326, align 8, !tbaa !29
  %328 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %329 = load i32, ptr %328, align 4, !tbaa !43
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %372, label %331

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %333 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %334 = zext i32 %329 to i64
  br label %335

335:                                              ; preds = %331, %365
  %336 = phi i64 [ 0, %331 ], [ %367, %365 ]
  %337 = phi i32 [ %290, %331 ], [ %366, %365 ]
  %338 = load ptr, ptr %332, align 8, !tbaa !44
  %339 = getelementptr inbounds ptr, ptr %338, i64 %336
  %340 = load ptr, ptr %339, align 8, !tbaa !6
  %341 = load i32, ptr %340, align 8, !tbaa !38
  %342 = icmp eq i32 %341, 3
  br i1 %342, label %343, label %365

343:                                              ; preds = %335
  %344 = getelementptr inbounds %struct.frame_store, ptr %340, i64 0, i32 12
  %345 = load ptr, ptr %344, align 8, !tbaa !40
  %346 = getelementptr inbounds %struct.storable_picture, ptr %345, i64 0, i32 10
  %347 = load i8, ptr %346, align 8, !tbaa !18
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %365, label %349

349:                                              ; preds = %343
  %350 = getelementptr inbounds %struct.storable_picture, ptr %345, i64 0, i32 64
  %351 = load i32, ptr %350, align 8, !tbaa !22
  %352 = icmp eq i32 %351, %8
  br i1 %352, label %353, label %365

353:                                              ; preds = %349
  %354 = load ptr, ptr %244, align 8, !tbaa !6
  %355 = sext i32 %337 to i64
  %356 = getelementptr inbounds ptr, ptr %354, i64 %355
  store ptr %345, ptr %356, align 8, !tbaa !6
  %357 = load ptr, ptr %332, align 8, !tbaa !44
  %358 = getelementptr inbounds ptr, ptr %357, i64 %336
  %359 = load ptr, ptr %358, align 8, !tbaa !6
  %360 = getelementptr inbounds %struct.frame_store, ptr %359, i64 0, i32 12
  %361 = load ptr, ptr %360, align 8, !tbaa !40
  %362 = load ptr, ptr %333, align 8, !tbaa !6
  %363 = add nsw i32 %337, 1
  %364 = getelementptr inbounds ptr, ptr %362, i64 %355
  store ptr %361, ptr %364, align 8, !tbaa !6
  br label %365

365:                                              ; preds = %335, %353, %349, %343
  %366 = phi i32 [ %363, %353 ], [ %337, %349 ], [ %337, %343 ], [ %337, %335 ]
  %367 = add nuw nsw i64 %336, 1
  %368 = icmp eq i64 %367, %334
  br i1 %368, label %369, label %335, !llvm.loop !95

369:                                              ; preds = %365
  %370 = load i8, ptr %326, align 8, !tbaa !29
  %371 = trunc i32 %366 to i8
  br label %372

372:                                              ; preds = %369, %324
  %373 = phi i8 [ %371, %369 ], [ %325, %324 ]
  %374 = phi i8 [ %370, %369 ], [ %325, %324 ]
  %375 = phi i32 [ %366, %369 ], [ %290, %324 ]
  %376 = load ptr, ptr %244, align 8, !tbaa !6
  %377 = sext i8 %374 to i64
  %378 = getelementptr inbounds ptr, ptr %376, i64 %377
  %379 = sext i8 %374 to i32
  %380 = sub nsw i32 %375, %379
  %381 = sext i32 %380 to i64
  tail call void @qsort(ptr noundef %378, i64 noundef %381, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #14
  %382 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %383 = load ptr, ptr %382, align 8, !tbaa !6
  %384 = load i8, ptr %326, align 8, !tbaa !29
  %385 = sext i8 %384 to i64
  %386 = getelementptr inbounds ptr, ptr %383, i64 %385
  %387 = sext i8 %384 to i32
  %388 = sub nsw i32 %375, %387
  %389 = sext i32 %388 to i64
  tail call void @qsort(ptr noundef %386, i64 noundef %389, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #14
  store i8 %373, ptr %327, align 1, !tbaa !29
  store i8 %373, ptr %326, align 8, !tbaa !29
  br label %542

390:                                              ; preds = %193
  %391 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %392 = load i32, ptr %391, align 8, !tbaa !46
  %393 = zext i32 %392 to i64
  %394 = tail call noalias ptr @calloc(i64 noundef %393, i64 noundef 8) #15
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #14
  %397 = load i32, ptr %391, align 8, !tbaa !46
  %398 = zext i32 %397 to i64
  br label %399

399:                                              ; preds = %396, %390
  %400 = phi i64 [ %398, %396 ], [ %393, %390 ]
  %401 = tail call noalias ptr @calloc(i64 noundef %400, i64 noundef 8) #15
  %402 = icmp eq ptr %401, null
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #14
  %404 = load i32, ptr %391, align 8, !tbaa !46
  %405 = zext i32 %404 to i64
  br label %406

406:                                              ; preds = %403, %399
  %407 = phi i64 [ %405, %403 ], [ %400, %399 ]
  %408 = tail call noalias ptr @calloc(i64 noundef %407, i64 noundef 8) #15
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %411

410:                                              ; preds = %406
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #14
  br label %411

411:                                              ; preds = %410, %406
  %412 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 0, ptr %412, align 8, !tbaa !29
  %413 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 1, ptr %413, align 1, !tbaa !29
  %414 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 7
  %415 = load i32, ptr %414, align 8, !tbaa !35
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %445, label %417

417:                                              ; preds = %411
  %418 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %419 = zext i32 %415 to i64
  %420 = load ptr, ptr %418, align 8, !tbaa !37
  br label %421

421:                                              ; preds = %417, %441
  %422 = phi i64 [ 0, %417 ], [ %443, %441 ]
  %423 = phi i32 [ 0, %417 ], [ %442, %441 ]
  %424 = getelementptr inbounds ptr, ptr %420, i64 %422
  %425 = load ptr, ptr %424, align 8, !tbaa !6
  %426 = load i32, ptr %425, align 8, !tbaa !38
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %441, label %428

428:                                              ; preds = %421
  %429 = load i32, ptr %5, align 8, !tbaa !31
  %430 = getelementptr inbounds %struct.frame_store, ptr %425, i64 0, i32 10
  %431 = load i32, ptr %430, align 8, !tbaa !75
  %432 = icmp slt i32 %429, %431
  br i1 %432, label %441, label %433

433:                                              ; preds = %428
  %434 = getelementptr inbounds %struct.frame_store, ptr %425, i64 0, i32 15
  %435 = load i32, ptr %434, align 8, !tbaa !48
  %436 = icmp eq i32 %435, %8
  br i1 %436, label %437, label %441

437:                                              ; preds = %433
  %438 = add nsw i32 %423, 1
  %439 = sext i32 %423 to i64
  %440 = getelementptr inbounds ptr, ptr %394, i64 %439
  store ptr %425, ptr %440, align 8, !tbaa !6
  br label %441

441:                                              ; preds = %421, %437, %433, %428
  %442 = phi i32 [ %438, %437 ], [ %423, %433 ], [ %423, %428 ], [ %423, %421 ]
  %443 = add nuw nsw i64 %422, 1
  %444 = icmp eq i64 %443, %419
  br i1 %444, label %445, label %421, !llvm.loop !96

445:                                              ; preds = %441, %411
  %446 = phi i32 [ 0, %411 ], [ %442, %441 ]
  %447 = sext i32 %446 to i64
  tail call void @qsort(ptr noundef %394, i64 noundef %447, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #14
  %448 = load i32, ptr %414, align 8, !tbaa !35
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %478, label %450

450:                                              ; preds = %445
  %451 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 3
  %452 = zext i32 %448 to i64
  %453 = load ptr, ptr %451, align 8, !tbaa !37
  br label %454

454:                                              ; preds = %450, %474
  %455 = phi i64 [ 0, %450 ], [ %476, %474 ]
  %456 = phi i32 [ %446, %450 ], [ %475, %474 ]
  %457 = getelementptr inbounds ptr, ptr %453, i64 %455
  %458 = load ptr, ptr %457, align 8, !tbaa !6
  %459 = load i32, ptr %458, align 8, !tbaa !38
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %474, label %461

461:                                              ; preds = %454
  %462 = load i32, ptr %5, align 8, !tbaa !31
  %463 = getelementptr inbounds %struct.frame_store, ptr %458, i64 0, i32 10
  %464 = load i32, ptr %463, align 8, !tbaa !75
  %465 = icmp slt i32 %462, %464
  br i1 %465, label %466, label %474

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.frame_store, ptr %458, i64 0, i32 15
  %468 = load i32, ptr %467, align 8, !tbaa !48
  %469 = icmp eq i32 %468, %8
  br i1 %469, label %470, label %474

470:                                              ; preds = %466
  %471 = add nsw i32 %456, 1
  %472 = sext i32 %456 to i64
  %473 = getelementptr inbounds ptr, ptr %394, i64 %472
  store ptr %458, ptr %473, align 8, !tbaa !6
  br label %474

474:                                              ; preds = %454, %470, %466, %461
  %475 = phi i32 [ %471, %470 ], [ %456, %466 ], [ %456, %461 ], [ %456, %454 ]
  %476 = add nuw nsw i64 %455, 1
  %477 = icmp eq i64 %476, %452
  br i1 %477, label %478, label %454, !llvm.loop !97

478:                                              ; preds = %474, %445
  %479 = phi i32 [ %446, %445 ], [ %475, %474 ]
  %480 = getelementptr inbounds ptr, ptr %394, i64 %447
  %481 = sub nsw i32 %479, %446
  %482 = sext i32 %481 to i64
  tail call void @qsort(ptr noundef %480, i64 noundef %482, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #14
  %483 = icmp sgt i32 %446, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %478
  %485 = zext nneg i32 %446 to i64
  %486 = getelementptr ptr, ptr %401, i64 %482
  br label %497

487:                                              ; preds = %497, %478
  %488 = icmp slt i32 %446, %479
  br i1 %488, label %489, label %504

489:                                              ; preds = %487
  %490 = shl nsw i64 %447, 3
  %491 = getelementptr i8, ptr %394, i64 %490
  %492 = xor i32 %446, -1
  %493 = add i32 %479, %492
  %494 = zext i32 %493 to i64
  %495 = shl nuw nsw i64 %494, 3
  %496 = add nuw nsw i64 %495, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %401, ptr noundef nonnull align 8 dereferenceable(1) %491, i64 %496, i1 false), !tbaa !6
  br label %504

497:                                              ; preds = %484, %497
  %498 = phi i64 [ 0, %484 ], [ %502, %497 ]
  %499 = getelementptr inbounds ptr, ptr %394, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !6
  %501 = getelementptr ptr, ptr %486, i64 %498
  store ptr %500, ptr %501, align 8, !tbaa !6
  %502 = add nuw nsw i64 %498, 1
  %503 = icmp eq i64 %502, %485
  br i1 %503, label %487, label %497, !llvm.loop !98

504:                                              ; preds = %489, %487
  store i8 0, ptr %412, align 8, !tbaa !29
  store i8 0, ptr %413, align 1, !tbaa !29
  %505 = load i32, ptr %194, align 8, !tbaa !34
  %506 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %507 = load ptr, ptr %506, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %505, ptr noundef %394, i32 noundef %479, ptr noundef %507, ptr noundef nonnull %412, i32 noundef 0) #14
  %508 = load i32, ptr %194, align 8, !tbaa !34
  %509 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %508, ptr noundef %401, i32 noundef %479, ptr noundef %510, ptr noundef nonnull %413, i32 noundef 0) #14
  %511 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 8
  %512 = load i32, ptr %511, align 4, !tbaa !43
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %534, label %514

514:                                              ; preds = %504
  %515 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 4
  %516 = zext i32 %512 to i64
  %517 = load ptr, ptr %515, align 8, !tbaa !44
  br label %518

518:                                              ; preds = %514, %530
  %519 = phi i64 [ 0, %514 ], [ %532, %530 ]
  %520 = phi i32 [ 0, %514 ], [ %531, %530 ]
  %521 = getelementptr inbounds ptr, ptr %517, i64 %519
  %522 = load ptr, ptr %521, align 8, !tbaa !6
  %523 = getelementptr inbounds %struct.frame_store, ptr %522, i64 0, i32 15
  %524 = load i32, ptr %523, align 8, !tbaa !48
  %525 = icmp eq i32 %524, %8
  br i1 %525, label %526, label %530

526:                                              ; preds = %518
  %527 = add nsw i32 %520, 1
  %528 = sext i32 %520 to i64
  %529 = getelementptr inbounds ptr, ptr %408, i64 %528
  store ptr %522, ptr %529, align 8, !tbaa !6
  br label %530

530:                                              ; preds = %518, %526
  %531 = phi i32 [ %527, %526 ], [ %520, %518 ]
  %532 = add nuw nsw i64 %519, 1
  %533 = icmp eq i64 %532, %516
  br i1 %533, label %534, label %518, !llvm.loop !99

534:                                              ; preds = %530, %504
  %535 = phi i32 [ 0, %504 ], [ %531, %530 ]
  %536 = sext i32 %535 to i64
  tail call void @qsort(ptr noundef %408, i64 noundef %536, i64 noundef 8, ptr noundef nonnull @compare_fs_by_lt_pic_idx_asc) #14
  %537 = load i32, ptr %194, align 8, !tbaa !34
  %538 = load ptr, ptr %506, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %537, ptr noundef %408, i32 noundef %535, ptr noundef %538, ptr noundef nonnull %412, i32 noundef 1) #14
  %539 = load i32, ptr %194, align 8, !tbaa !34
  %540 = load ptr, ptr %509, align 8, !tbaa !6
  tail call void @gen_pic_list_from_frame_list(i32 noundef %539, ptr noundef %408, i32 noundef %535, ptr noundef %540, ptr noundef nonnull %413, i32 noundef 1) #14
  tail call void @free(ptr noundef %394) #14
  tail call void @free(ptr noundef %401) #14
  tail call void @free(ptr noundef %408) #14
  %541 = load i8, ptr %413, align 1, !tbaa !29
  br label %542

542:                                              ; preds = %372, %534, %191
  %543 = phi i8 [ %373, %372 ], [ %541, %534 ], [ 0, %191 ]
  %544 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  %545 = load i8, ptr %544, align 8, !tbaa !29
  %546 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  %547 = icmp eq i8 %545, %543
  %548 = icmp sgt i8 %545, 1
  %549 = and i1 %548, %547
  br i1 %549, label %550, label %576

550:                                              ; preds = %542
  %551 = sext i8 %543 to i64
  %552 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %553 = load ptr, ptr %552, align 8, !tbaa !6
  %554 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %555 = load ptr, ptr %554, align 8, !tbaa !6
  %556 = and i64 %551, 4294967295
  br label %557

557:                                              ; preds = %550, %557
  %558 = phi i64 [ 0, %550 ], [ %566, %557 ]
  %559 = phi i32 [ 0, %550 ], [ %565, %557 ]
  %560 = getelementptr inbounds ptr, ptr %553, i64 %558
  %561 = load ptr, ptr %560, align 8, !tbaa !6
  %562 = getelementptr inbounds ptr, ptr %555, i64 %558
  %563 = load ptr, ptr %562, align 8, !tbaa !6
  %564 = icmp eq ptr %561, %563
  %565 = select i1 %564, i32 %559, i32 1
  %566 = add nuw nsw i64 %558, 1
  %567 = icmp eq i64 %566, %556
  br i1 %567, label %568, label %557, !llvm.loop !100

568:                                              ; preds = %557
  %569 = icmp eq i32 %565, 0
  br i1 %569, label %570, label %576

570:                                              ; preds = %568
  %571 = load ptr, ptr %555, align 8, !tbaa !6
  %572 = getelementptr inbounds ptr, ptr %555, i64 1
  %573 = load ptr, ptr %572, align 8, !tbaa !6
  store ptr %573, ptr %555, align 8, !tbaa !6
  %574 = load ptr, ptr %554, align 8, !tbaa !6
  %575 = getelementptr inbounds ptr, ptr %574, i64 1
  store ptr %571, ptr %575, align 8, !tbaa !6
  br label %576

576:                                              ; preds = %568, %570, %542
  %577 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %578 = load i32, ptr %577, align 8, !tbaa !51
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %580, label %712

580:                                              ; preds = %576
  %581 = load i32, ptr %13, align 4, !tbaa !86
  switch i32 %581, label %627 [
    i32 0, label %582
    i32 3, label %582
  ]

582:                                              ; preds = %580, %580
  %583 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %584 = load i32, ptr %583, align 8, !tbaa !46
  %585 = zext i32 %584 to i64
  %586 = tail call noalias ptr @calloc(i64 noundef %585, i64 noundef 8) #15
  %587 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %586, ptr %587, align 8, !tbaa !52
  %588 = icmp eq ptr %586, null
  br i1 %588, label %589, label %590

589:                                              ; preds = %582
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #14
  br label %590

590:                                              ; preds = %589, %582
  %591 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %592 = load i32, ptr %591, align 8, !tbaa !34
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %620

594:                                              ; preds = %590
  %595 = load i8, ptr %544, align 8, !tbaa !29
  %596 = load ptr, ptr %587, align 8, !tbaa !52
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef %596, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %597 = load i32, ptr %11, align 4, !tbaa !27
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %618, label %599

599:                                              ; preds = %594
  %600 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %601 = sext i8 %595 to i64
  %602 = zext i32 %597 to i64
  br label %603

603:                                              ; preds = %599, %603
  %604 = phi i64 [ %601, %599 ], [ %612, %603 ]
  %605 = phi i64 [ 0, %599 ], [ %614, %603 ]
  %606 = load ptr, ptr %587, align 8, !tbaa !52
  %607 = getelementptr inbounds ptr, ptr %606, i64 %605
  %608 = load ptr, ptr %607, align 8, !tbaa !6
  %609 = getelementptr inbounds %struct.frame_store, ptr %608, i64 0, i32 12
  %610 = load ptr, ptr %609, align 8, !tbaa !40
  %611 = load ptr, ptr %600, align 8, !tbaa !6
  %612 = add nsw i64 %604, 1
  %613 = getelementptr inbounds ptr, ptr %611, i64 %604
  store ptr %610, ptr %613, align 8, !tbaa !6
  %614 = add nuw nsw i64 %605, 1
  %615 = icmp eq i64 %614, %602
  br i1 %615, label %616, label %603, !llvm.loop !101

616:                                              ; preds = %603
  %617 = trunc i64 %612 to i8
  br label %618

618:                                              ; preds = %616, %594
  %619 = phi i8 [ %595, %594 ], [ %617, %616 ]
  store i8 %619, ptr %544, align 8, !tbaa !29
  br label %712

620:                                              ; preds = %590
  %621 = load ptr, ptr %587, align 8, !tbaa !52
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %592, i32 noundef 0, ptr noundef %621, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %622 = load i32, ptr %591, align 8, !tbaa !34
  %623 = load ptr, ptr %587, align 8, !tbaa !52
  %624 = load i32, ptr %11, align 4, !tbaa !27
  %625 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %626 = load ptr, ptr %625, align 8, !tbaa !6
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %622, ptr noundef %623, i32 noundef %624, ptr noundef %626, ptr noundef nonnull %544) #16
  br label %712

627:                                              ; preds = %580
  %628 = getelementptr inbounds %struct.decoded_picture_buffer, ptr %4, i64 0, i32 5
  %629 = load i32, ptr %628, align 8, !tbaa !46
  %630 = zext i32 %629 to i64
  %631 = tail call noalias ptr @calloc(i64 noundef %630, i64 noundef 8) #15
  %632 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 107
  store ptr %631, ptr %632, align 8, !tbaa !52
  %633 = icmp eq ptr %631, null
  br i1 %633, label %634, label %637

634:                                              ; preds = %627
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #14
  %635 = load i32, ptr %628, align 8, !tbaa !46
  %636 = zext i32 %635 to i64
  br label %637

637:                                              ; preds = %634, %627
  %638 = phi i64 [ %636, %634 ], [ %630, %627 ]
  %639 = tail call noalias ptr @calloc(i64 noundef %638, i64 noundef 8) #15
  %640 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 108
  store ptr %639, ptr %640, align 8, !tbaa !81
  %641 = icmp eq ptr %639, null
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #14
  br label %643

643:                                              ; preds = %642, %637
  %644 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 38
  %645 = load i32, ptr %644, align 8, !tbaa !34
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %698

647:                                              ; preds = %643
  %648 = load i8, ptr %544, align 8, !tbaa !29
  %649 = load ptr, ptr %632, align 8, !tbaa !52
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, ptr noundef %649, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %650 = load ptr, ptr %640, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 1, ptr noundef %650, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %651 = load i32, ptr %11, align 4, !tbaa !27
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %672, label %653

653:                                              ; preds = %647
  %654 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %655 = sext i8 %648 to i64
  %656 = zext i32 %651 to i64
  br label %657

657:                                              ; preds = %653, %657
  %658 = phi i64 [ %655, %653 ], [ %666, %657 ]
  %659 = phi i64 [ 0, %653 ], [ %668, %657 ]
  %660 = load ptr, ptr %632, align 8, !tbaa !52
  %661 = getelementptr inbounds ptr, ptr %660, i64 %659
  %662 = load ptr, ptr %661, align 8, !tbaa !6
  %663 = getelementptr inbounds %struct.frame_store, ptr %662, i64 0, i32 12
  %664 = load ptr, ptr %663, align 8, !tbaa !40
  %665 = load ptr, ptr %654, align 8, !tbaa !6
  %666 = add nsw i64 %658, 1
  %667 = getelementptr inbounds ptr, ptr %665, i64 %658
  store ptr %664, ptr %667, align 8, !tbaa !6
  %668 = add nuw nsw i64 %659, 1
  %669 = icmp eq i64 %668, %656
  br i1 %669, label %670, label %657, !llvm.loop !102

670:                                              ; preds = %657
  %671 = trunc i64 %666 to i8
  br label %672

672:                                              ; preds = %670, %647
  %673 = phi i8 [ %648, %647 ], [ %671, %670 ]
  store i8 %673, ptr %544, align 8, !tbaa !29
  %674 = load i8, ptr %546, align 1, !tbaa !29
  %675 = load i32, ptr %12, align 8, !tbaa !28
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %696, label %677

677:                                              ; preds = %672
  %678 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %679 = sext i8 %674 to i64
  %680 = zext i32 %675 to i64
  br label %681

681:                                              ; preds = %677, %681
  %682 = phi i64 [ %679, %677 ], [ %690, %681 ]
  %683 = phi i64 [ 0, %677 ], [ %692, %681 ]
  %684 = load ptr, ptr %640, align 8, !tbaa !81
  %685 = getelementptr inbounds ptr, ptr %684, i64 %683
  %686 = load ptr, ptr %685, align 8, !tbaa !6
  %687 = getelementptr inbounds %struct.frame_store, ptr %686, i64 0, i32 12
  %688 = load ptr, ptr %687, align 8, !tbaa !40
  %689 = load ptr, ptr %678, align 8, !tbaa !6
  %690 = add nsw i64 %682, 1
  %691 = getelementptr inbounds ptr, ptr %689, i64 %682
  store ptr %688, ptr %691, align 8, !tbaa !6
  %692 = add nuw nsw i64 %683, 1
  %693 = icmp eq i64 %692, %680
  br i1 %693, label %694, label %681, !llvm.loop !103

694:                                              ; preds = %681
  %695 = trunc i64 %690 to i8
  br label %696

696:                                              ; preds = %694, %672
  %697 = phi i8 [ %674, %672 ], [ %695, %694 ]
  store i8 %697, ptr %546, align 1, !tbaa !29
  br label %712

698:                                              ; preds = %643
  %699 = load ptr, ptr %632, align 8, !tbaa !52
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %645, i32 noundef 0, ptr noundef %699, ptr noundef nonnull %11, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %700 = load i32, ptr %644, align 8, !tbaa !34
  %701 = load ptr, ptr %632, align 8, !tbaa !52
  %702 = load i32, ptr %11, align 4, !tbaa !27
  %703 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %704 = load ptr, ptr %703, align 8, !tbaa !6
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %700, ptr noundef %701, i32 noundef %702, ptr noundef %704, ptr noundef nonnull %544) #16
  %705 = load i32, ptr %644, align 8, !tbaa !34
  %706 = load ptr, ptr %640, align 8, !tbaa !81
  tail call void @append_interview_list(ptr noundef nonnull %4, i32 noundef %705, i32 noundef 1, ptr noundef %706, ptr noundef nonnull %12, i32 noundef %6, i32 noundef %8, i32 noundef %10) #14
  %707 = load i32, ptr %644, align 8, !tbaa !34
  %708 = load ptr, ptr %640, align 8, !tbaa !81
  %709 = load i32, ptr %12, align 8, !tbaa !28
  %710 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %711 = load ptr, ptr %710, align 8, !tbaa !6
  tail call fastcc void @gen_pic_list_from_frame_interview_list(i32 noundef %707, ptr noundef %708, i32 noundef %709, ptr noundef %711, ptr noundef nonnull %546) #16
  br label %712

712:                                              ; preds = %620, %618, %698, %696, %576
  %713 = load i8, ptr %544, align 8, !tbaa !29
  %714 = sext i8 %713 to i32
  %715 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %716 = load i32, ptr %715, align 8, !tbaa !15
  %717 = tail call fastcc i32 @imin(i32 noundef %714, i32 noundef %716) #16
  %718 = trunc i32 %717 to i8
  store i8 %718, ptr %544, align 8, !tbaa !29
  %719 = load i8, ptr %546, align 1, !tbaa !29
  %720 = sext i8 %719 to i32
  %721 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %722 = load i32, ptr %721, align 4, !tbaa !15
  %723 = tail call fastcc i32 @imin(i32 noundef %720, i32 noundef %722) #16
  %724 = trunc i32 %723 to i8
  store i8 %724, ptr %546, align 1, !tbaa !29
  %725 = shl i32 %717, 24
  %726 = ashr exact i32 %725, 24
  %727 = icmp ult i32 %726, 33
  br i1 %727, label %728, label %742

728:                                              ; preds = %712
  %729 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %730 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %731 = zext nneg i32 %726 to i64
  %732 = load ptr, ptr %729, align 8, !tbaa !54
  br label %733

733:                                              ; preds = %728, %733
  %734 = phi i64 [ %731, %728 ], [ %737, %733 ]
  %735 = load ptr, ptr %730, align 8, !tbaa !6
  %736 = getelementptr inbounds ptr, ptr %735, i64 %734
  store ptr %732, ptr %736, align 8, !tbaa !6
  %737 = add nuw nsw i64 %734, 1
  %738 = and i64 %737, 4294967295
  %739 = icmp eq i64 %738, 33
  br i1 %739, label %740, label %733, !llvm.loop !104

740:                                              ; preds = %733
  %741 = load i8, ptr %546, align 1, !tbaa !29
  br label %742

742:                                              ; preds = %740, %712
  %743 = phi i8 [ %741, %740 ], [ %724, %712 ]
  %744 = icmp ult i8 %743, 33
  br i1 %744, label %745, label %757

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct.video_par, ptr %2, i64 0, i32 138
  %747 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %748 = zext nneg i8 %743 to i64
  %749 = load ptr, ptr %746, align 8, !tbaa !54
  br label %750

750:                                              ; preds = %745, %750
  %751 = phi i64 [ %748, %745 ], [ %754, %750 ]
  %752 = load ptr, ptr %747, align 8, !tbaa !6
  %753 = getelementptr inbounds ptr, ptr %752, i64 %751
  store ptr %749, ptr %753, align 8, !tbaa !6
  %754 = add nuw nsw i64 %751, 1
  %755 = and i64 %754, 4294967295
  %756 = icmp eq i64 %755, 33
  br i1 %756, label %757, label %750, !llvm.loop !105

757:                                              ; preds = %750, %742, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_ref_pic_list_mvc(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca i32, align 4
  %10 = load ptr, ptr %0, align 8, !tbaa !30
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 62, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 63, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 64, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 %11
  %19 = load i32, ptr %18, align 4, !tbaa !15
  %20 = add nsw i32 %19, -1
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 65, i64 %11
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  store i32 0, ptr %9, align 4, !tbaa !15
  %23 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 33
  %24 = load i32, ptr %23, align 4, !tbaa !106
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds %struct.video_par, ptr %10, i64 0, i32 52
  %27 = load i32, ptr %26, align 8, !tbaa !107
  br i1 %25, label %28, label %31

28:                                               ; preds = %8
  %29 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %30 = load i32, ptr %29, align 4, !tbaa !108
  br label %37

31:                                               ; preds = %8
  %32 = shl nsw i32 %27, 1
  %33 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 35
  %34 = load i32, ptr %33, align 4, !tbaa !108
  %35 = shl i32 %34, 1
  %36 = or disjoint i32 %35, 1
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i32 [ %27, %28 ], [ %32, %31 ]
  %39 = phi i32 [ %30, %28 ], [ %36, %31 ]
  %40 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 4
  %41 = load i32, ptr %40, align 8, !tbaa !51
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = tail call i32 @GetVOIdx(ptr noundef nonnull %10, i32 noundef %4) #14
  %45 = tail call i32 @get_maxViewIdx(ptr noundef nonnull %10, i32 noundef %4, i32 noundef %5, i32 noundef 0) #14
  %46 = sext i32 %44 to i64
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i32 [ %45, %43 ], [ 0, %37 ]
  %49 = phi i64 [ %46, %43 ], [ -1, %37 ]
  %50 = load i32, ptr %13, align 4, !tbaa !15
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %125, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 %11
  %54 = icmp eq i32 %5, 0
  %55 = select i1 %54, ptr %3, ptr %2
  %56 = getelementptr inbounds ptr, ptr %55, i64 %49
  br label %57

57:                                               ; preds = %52, %118
  %58 = phi i64 [ 0, %52 ], [ %121, %118 ]
  %59 = phi i32 [ %50, %52 ], [ %123, %118 ]
  %60 = phi ptr [ %13, %52 ], [ %122, %118 ]
  %61 = phi i32 [ -1, %52 ], [ %120, %118 ]
  %62 = phi i32 [ %39, %52 ], [ %119, %118 ]
  %63 = icmp sgt i32 %59, 5
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 500) #14
  %65 = load i32, ptr %60, align 4, !tbaa !15
  br label %66

66:                                               ; preds = %64, %57
  %67 = phi i32 [ %65, %64 ], [ %59, %57 ]
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = icmp eq i32 %67, 0
  %71 = getelementptr inbounds i32, ptr %15, i64 %58
  %72 = load i32, ptr %71, align 4, !tbaa !15
  br i1 %70, label %73, label %79

73:                                               ; preds = %69
  %74 = xor i32 %72, -1
  %75 = add i32 %62, %74
  %76 = icmp slt i32 %75, 0
  %77 = select i1 %76, i32 %38, i32 0
  %78 = add nsw i32 %77, %75
  br label %85

79:                                               ; preds = %69
  %80 = add i32 %62, 1
  %81 = add i32 %80, %72
  %82 = icmp slt i32 %81, %38
  %83 = select i1 %82, i32 0, i32 %38
  %84 = sub nsw i32 %81, %83
  br label %85

85:                                               ; preds = %79, %73
  %86 = phi i32 [ %78, %73 ], [ %84, %79 ]
  %87 = icmp sgt i32 %86, %39
  %88 = select i1 %87, i32 %38, i32 0
  %89 = sub nsw i32 %86, %88
  call void @reorder_short_term(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %20, i32 noundef %89, ptr noundef nonnull %9, i32 noundef %4) #16
  br label %118

90:                                               ; preds = %66
  switch i32 %67, label %103 [
    i32 2, label %91
    i32 4, label %95
  ]

91:                                               ; preds = %90
  %92 = load ptr, ptr %53, align 8, !tbaa !6
  %93 = getelementptr inbounds i32, ptr %17, i64 %58
  %94 = load i32, ptr %93, align 4, !tbaa !15
  call void @reorder_long_term(ptr noundef nonnull %0, ptr noundef %92, i32 noundef %20, i32 noundef %94, ptr noundef nonnull %9, i32 noundef %4) #16
  br label %118

95:                                               ; preds = %90
  %96 = getelementptr inbounds i32, ptr %22, i64 %58
  %97 = load i32, ptr %96, align 4, !tbaa !15
  %98 = xor i32 %97, -1
  %99 = add i32 %61, %98
  %100 = icmp slt i32 %99, 0
  %101 = select i1 %100, i32 %48, i32 0
  %102 = add nsw i32 %101, %99
  br label %111

103:                                              ; preds = %90
  %104 = getelementptr inbounds i32, ptr %22, i64 %58
  %105 = load i32, ptr %104, align 4, !tbaa !15
  %106 = add i32 %61, 1
  %107 = add i32 %106, %105
  %108 = icmp slt i32 %107, %48
  %109 = select i1 %108, i32 0, i32 %48
  %110 = sub nsw i32 %107, %109
  br label %111

111:                                              ; preds = %103, %95
  %112 = phi i32 [ %102, %95 ], [ %110, %103 ]
  %113 = sext i32 %112 to i64
  %114 = load ptr, ptr %56, align 8, !tbaa !6
  %115 = getelementptr inbounds i32, ptr %114, i64 %113
  %116 = load i32, ptr %115, align 4, !tbaa !15
  %117 = load ptr, ptr %53, align 8, !tbaa !6
  call fastcc void @reorder_interview(ptr noundef %10, ptr noundef nonnull %0, ptr noundef %117, i32 noundef %20, ptr noundef nonnull %9, i32 noundef %116, i32 noundef %6, i32 noundef %7) #16
  br label %118

118:                                              ; preds = %85, %111, %91
  %119 = phi i32 [ %86, %85 ], [ %62, %91 ], [ %62, %111 ]
  %120 = phi i32 [ %61, %85 ], [ %61, %91 ], [ %112, %111 ]
  %121 = add nuw i64 %58, 1
  %122 = getelementptr inbounds i32, ptr %13, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !15
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %57, !llvm.loop !109

125:                                              ; preds = %118, %47
  %126 = trunc i32 %19 to i8
  %127 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 %11
  store i8 %126, ptr %127, align 1, !tbaa !29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  ret void
}

; Function Attrs: optsize
declare i32 @GetVOIdx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_maxViewIdx(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @reorder_interview(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #8 {
  %9 = tail call fastcc ptr @get_inter_view_pic(ptr noundef %0, ptr noundef %1, i32 noundef %5, i32 noundef %6, i32 noundef %7) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 4, !tbaa !15
  %13 = icmp sgt i32 %12, %3
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = sext i32 %12 to i64
  %16 = add i32 %12, 1
  store i32 %16, ptr %4, align 4, !tbaa !15
  %17 = getelementptr inbounds ptr, ptr %2, i64 %15
  store ptr %9, ptr %17, align 8, !tbaa !6
  br label %55

18:                                               ; preds = %11
  %19 = add i32 %3, 1
  %20 = sext i32 %19 to i64
  %21 = sext i32 %12 to i64
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi i64 [ %20, %18 ], [ %27, %22 ]
  %24 = getelementptr ptr, ptr %2, i64 %23
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  store ptr %26, ptr %24, align 8, !tbaa !6
  %27 = add nsw i64 %23, -1
  %28 = icmp sgt i64 %27, %21
  br i1 %28, label %22, label %29, !llvm.loop !110

29:                                               ; preds = %22
  %30 = add i32 %12, 1
  store i32 %30, ptr %4, align 4, !tbaa !15
  %31 = getelementptr inbounds ptr, ptr %2, i64 %21
  store ptr %9, ptr %31, align 8, !tbaa !6
  br i1 %13, label %55, label %32

32:                                               ; preds = %29
  %33 = sext i32 %30 to i64
  %34 = sext i32 %3 to i64
  br label %35

35:                                               ; preds = %32, %51
  %36 = phi i64 [ %33, %32 ], [ %53, %51 ]
  %37 = phi i32 [ %30, %32 ], [ %52, %51 ]
  %38 = getelementptr inbounds ptr, ptr %2, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.storable_picture, ptr %39, i64 0, i32 64
  %41 = load i32, ptr %40, align 8, !tbaa !22
  %42 = icmp eq i32 %41, %5
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.storable_picture, ptr %39, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !69
  %46 = icmp eq i32 %45, %6
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %35
  %48 = add nsw i32 %37, 1
  %49 = sext i32 %37 to i64
  %50 = getelementptr inbounds ptr, ptr %2, i64 %49
  store ptr %39, ptr %50, align 8, !tbaa !6
  br label %51

51:                                               ; preds = %43, %47
  %52 = phi i32 [ %48, %47 ], [ %37, %43 ]
  %53 = add nsw i64 %36, 1
  %54 = icmp sgt i64 %36, %34
  br i1 %54, label %55, label %35, !llvm.loop !111

55:                                               ; preds = %51, %14, %29, %8
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_inter_view_pic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
  %6 = icmp eq i32 %4, 0
  %7 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 107
  %8 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 105
  %9 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 108
  %10 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 106
  %11 = select i1 %6, ptr %8, ptr %10
  %12 = select i1 %6, ptr %7, ptr %9
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i32, ptr %11, align 4, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 33
  %18 = zext i32 %14 to i64
  br label %19

19:                                               ; preds = %16, %46
  %20 = phi i64 [ 0, %16 ], [ %47, %46 ]
  %21 = getelementptr inbounds ptr, ptr %13, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.frame_store, ptr %22, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !48
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load i32, ptr %17, align 4, !tbaa !106
  switch i32 %27, label %46 [
    i32 0, label %28
    i32 1, label %34
    i32 2, label %40
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.frame_store, ptr %22, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = getelementptr inbounds %struct.storable_picture, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !69
  %33 = icmp eq i32 %32, %3
  br i1 %33, label %49, label %46

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.frame_store, ptr %22, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = getelementptr inbounds %struct.storable_picture, ptr %36, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !69
  %39 = icmp eq i32 %38, %3
  br i1 %39, label %49, label %46

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.frame_store, ptr %22, i64 0, i32 14
  %42 = load ptr, ptr %41, align 8, !tbaa !66
  %43 = getelementptr inbounds %struct.storable_picture, ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !69
  %45 = icmp eq i32 %44, %3
  br i1 %45, label %49, label %46

46:                                               ; preds = %26, %28, %34, %19, %40
  %47 = add nuw nsw i64 %20, 1
  %48 = icmp eq i64 %47, %18
  br i1 %48, label %49, label %19, !llvm.loop !112

49:                                               ; preds = %28, %34, %40, %46, %5
  %50 = phi ptr [ null, %5 ], [ null, %46 ], [ %42, %40 ], [ %36, %34 ], [ %30, %28 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @reorder_lists_mvc(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 33
  %5 = load i32, ptr %4, align 4, !tbaa !86
  switch i32 %5, label %6 [
    i32 2, label %83
    i32 4, label %83
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61
  %8 = load i32, ptr %7, align 8, !tbaa !15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !113
  %13 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %12, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !120
  %17 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %18 = load i32, ptr %17, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %20 = load i32, ptr %19, align 8, !tbaa !33
  tail call void @reorder_ref_pic_list_mvc(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %14, ptr noundef %16, i32 noundef %18, i32 noundef %20, i32 noundef %1, i32 noundef 0) #16
  br label %21

21:                                               ; preds = %10, %6
  %22 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 138
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27
  %27 = load i32, ptr %26, align 8, !tbaa !15
  %28 = sext i32 %27 to i64
  %29 = getelementptr ptr, ptr %25, i64 %28
  %30 = getelementptr ptr, ptr %29, i64 -1
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = icmp eq ptr %23, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 41
  %35 = load i32, ptr %34, align 4, !tbaa !121
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %40

39:                                               ; preds = %33
  tail call void @error(ptr noundef nonnull @.str.7, i32 noundef 500) #14
  br label %40

40:                                               ; preds = %21, %39, %37
  %41 = load i32, ptr %26, align 8, !tbaa !15
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55
  store i8 %42, ptr %43, align 8, !tbaa !29
  %44 = load i32, ptr %4, align 4, !tbaa !86
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 61, i64 1
  %48 = load i32, ptr %47, align 4, !tbaa !15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 5
  %52 = load ptr, ptr %51, align 8, !tbaa !113
  %53 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %52, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !122
  %55 = getelementptr inbounds %struct.subset_seq_parameter_set_rbsp_t, ptr %52, i64 0, i32 11
  %56 = load ptr, ptr %55, align 8, !tbaa !123
  %57 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 66
  %58 = load i32, ptr %57, align 8, !tbaa !32
  %59 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 68
  %60 = load i32, ptr %59, align 8, !tbaa !33
  tail call void @reorder_ref_pic_list_mvc(ptr noundef nonnull %0, i32 noundef 1, ptr noundef %54, ptr noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %1, i32 noundef 1) #16
  br label %61

61:                                               ; preds = %50, %46
  %62 = load ptr, ptr %22, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 56, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 27, i64 1
  %66 = load i32, ptr %65, align 4, !tbaa !15
  %67 = sext i32 %66 to i64
  %68 = getelementptr ptr, ptr %64, i64 %67
  %69 = getelementptr ptr, ptr %68, i64 -1
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = icmp eq ptr %62, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.video_par, ptr %3, i64 0, i32 41
  %74 = load i32, ptr %73, align 4, !tbaa !121
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %79

78:                                               ; preds = %72
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 500) #14
  br label %79

79:                                               ; preds = %76, %78, %61
  %80 = load i32, ptr %65, align 4, !tbaa !15
  %81 = trunc i32 %80 to i8
  %82 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 55, i64 1
  store i8 %81, ptr %82, align 1, !tbaa !29
  br label %83

83:                                               ; preds = %2, %2, %79, %40
  tail call void @free_ref_pic_list_reordering_buffer(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: optsize
declare void @free_ref_pic_list_reordering_buffer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind optsize allocsize(0,1) }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 40}
!11 = !{!"slice", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !7, i64 40, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !8, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !13, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !8, i64 136, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !8, i64 180, !12, i64 184, !12, i64 188, !12, i64 192, !12, i64 196, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !12, i64 224, !12, i64 228, !12, i64 232, !12, i64 236, !12, i64 240, !12, i64 244, !7, i64 248, !8, i64 256, !8, i64 264, !7, i64 312, !7, i64 320, !7, i64 328, !8, i64 336, !8, i64 1104, !8, i64 1112, !8, i64 1128, !8, i64 1144, !8, i64 1160, !12, i64 1176, !12, i64 1180, !12, i64 1184, !14, i64 1188, !13, i64 1220, !13, i64 1222, !13, i64 1224, !12, i64 1228, !12, i64 1232, !12, i64 1236, !12, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !8, i64 1288, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !8, i64 1392, !8, i64 2544, !8, i64 3696, !8, i64 8304, !8, i64 12912, !8, i64 13008, !12, i64 13264, !12, i64 13268, !13, i64 13272, !13, i64 13274, !13, i64 13276, !13, i64 13278, !7, i64 13280, !7, i64 13288, !7, i64 13296, !13, i64 13304, !13, i64 13306, !12, i64 13308, !12, i64 13312, !7, i64 13320, !7, i64 13328, !12, i64 13336, !8, i64 13340, !7, i64 13408, !7, i64 13416, !7, i64 13424, !7, i64 13432, !7, i64 13440, !7, i64 13448, !7, i64 13456, !7, i64 13464, !7, i64 13472, !7, i64 13480, !7, i64 13488, !7, i64 13496, !12, i64 13504, !7, i64 13512, !7, i64 13520, !7, i64 13528, !7, i64 13536, !7, i64 13544, !8, i64 13552}
!12 = !{!"int", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!"nalunitheadermvcext_tag", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28}
!15 = !{!12, !12, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!19, !8, i64 40}
!19 = !{!"storable_picture", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !8, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !13, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !8, i64 160, !20, i64 184, !8, i64 192, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !12, i64 248, !12, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !12, i64 288, !12, i64 292, !12, i64 296, !8, i64 300, !12, i64 308, !7, i64 312, !12, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !7, i64 336, !12, i64 344, !12, i64 348, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !12, i64 368, !7, i64 376, !12, i64 384, !12, i64 388, !8, i64 392, !8, i64 400}
!20 = !{!"pic_motion_params_old", !7, i64 0}
!21 = !{!19, !12, i64 28}
!22 = !{!19, !12, i64 344}
!23 = distinct !{!23, !17}
!24 = distinct !{!24, !17}
!25 = !{!19, !12, i64 32}
!26 = distinct !{!26, !17}
!27 = !{!11, !12, i64 13308}
!28 = !{!11, !12, i64 13312}
!29 = !{!8, !8, i64 0}
!30 = !{!11, !7, i64 0}
!31 = !{!11, !12, i64 104}
!32 = !{!11, !12, i64 1176}
!33 = !{!11, !12, i64 1184}
!34 = !{!11, !12, i64 184}
!35 = !{!36, !12, i64 48}
!36 = !{!"decoded_picture_buffer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64, !12, i64 4160, !12, i64 4164, !7, i64 4168}
!37 = !{!36, !7, i64 24}
!38 = !{!39, !12, i64 0}
!39 = !{!"frame_store", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !7, i64 48, !7, i64 56, !7, i64 64, !12, i64 72, !8, i64 76, !8, i64 84}
!40 = !{!39, !7, i64 48}
!41 = !{!19, !12, i64 44}
!42 = distinct !{!42, !17}
!43 = !{!36, !12, i64 52}
!44 = !{!36, !7, i64 32}
!45 = distinct !{!45, !17}
!46 = !{!36, !12, i64 40}
!47 = !{!39, !12, i64 4}
!48 = !{!39, !12, i64 72}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = !{!11, !12, i64 32}
!52 = !{!11, !7, i64 13320}
!53 = distinct !{!53, !17}
!54 = !{!55, !7, i64 856488}
!55 = !{!"video_par", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !8, i64 132120, !7, i64 699416, !8, i64 699424, !12, i64 848672, !12, i64 848676, !12, i64 848680, !12, i64 848684, !7, i64 848688, !7, i64 848696, !7, i64 848704, !12, i64 848712, !12, i64 848716, !12, i64 848720, !12, i64 848724, !12, i64 848728, !7, i64 848736, !7, i64 848744, !8, i64 848752, !12, i64 848776, !12, i64 848780, !12, i64 848784, !12, i64 848788, !12, i64 848792, !7, i64 848800, !8, i64 848808, !7, i64 848832, !7, i64 848840, !8, i64 848848, !12, i64 848872, !12, i64 848876, !7, i64 848880, !7, i64 848888, !8, i64 848896, !12, i64 848920, !7, i64 848928, !7, i64 848936, !12, i64 848944, !12, i64 848948, !12, i64 848952, !12, i64 848956, !12, i64 848960, !12, i64 848964, !12, i64 848968, !12, i64 848972, !12, i64 848976, !12, i64 848980, !12, i64 848984, !12, i64 848988, !12, i64 848992, !12, i64 848996, !12, i64 849000, !12, i64 849004, !12, i64 849008, !12, i64 849012, !12, i64 849016, !12, i64 849020, !12, i64 849024, !12, i64 849028, !12, i64 849032, !12, i64 849036, !13, i64 849040, !13, i64 849042, !8, i64 849044, !12, i64 849052, !12, i64 849056, !8, i64 849060, !8, i64 849072, !12, i64 849084, !12, i64 849088, !12, i64 849092, !12, i64 849096, !12, i64 849100, !12, i64 849104, !12, i64 849108, !12, i64 849112, !12, i64 849116, !12, i64 849120, !8, i64 849124, !8, i64 849148, !8, i64 849172, !12, i64 849196, !12, i64 849200, !12, i64 849204, !12, i64 849208, !12, i64 849212, !12, i64 849216, !12, i64 849220, !12, i64 849224, !12, i64 849228, !12, i64 849232, !12, i64 849236, !12, i64 849240, !12, i64 849244, !12, i64 849248, !12, i64 849252, !12, i64 849256, !12, i64 849260, !12, i64 849264, !12, i64 849268, !12, i64 849272, !12, i64 849276, !12, i64 849280, !12, i64 849284, !7, i64 849288, !7, i64 849296, !56, i64 849304, !56, i64 849624, !56, i64 849944, !56, i64 850264, !56, i64 850584, !56, i64 850904, !56, i64 851224, !56, i64 851544, !12, i64 851864, !12, i64 851868, !12, i64 851872, !59, i64 851880, !12, i64 851888, !8, i64 851892, !12, i64 855988, !12, i64 855992, !12, i64 855996, !12, i64 856000, !12, i64 856004, !12, i64 856008, !12, i64 856012, !7, i64 856016, !7, i64 856024, !7, i64 856032, !7, i64 856040, !7, i64 856048, !8, i64 856056, !7, i64 856456, !8, i64 856464, !7, i64 856488, !7, i64 856496, !7, i64 856504, !12, i64 856512, !7, i64 856520, !8, i64 856528, !7, i64 856608, !7, i64 856616, !7, i64 856624, !7, i64 856632, !12, i64 856640, !12, i64 856644, !12, i64 856648, !7, i64 856656, !7, i64 856664, !8, i64 856672, !8, i64 856688, !7, i64 856704, !7, i64 856712, !12, i64 856720, !7, i64 856728, !7, i64 856736, !7, i64 856744, !7, i64 856752, !7, i64 856760, !7, i64 856768, !7, i64 856776, !7, i64 856784, !7, i64 856792, !7, i64 856800, !7, i64 856808, !7, i64 856816, !12, i64 856824, !7, i64 856832, !12, i64 856840, !12, i64 856844, !12, i64 856848, !12, i64 856852, !12, i64 856856, !12, i64 856860, !12, i64 856864, !7, i64 856872}
!56 = !{!"image_data", !57, i64 0, !8, i64 136, !8, i64 160, !8, i64 184, !8, i64 208, !8, i64 232, !8, i64 256, !8, i64 280, !8, i64 292, !8, i64 304}
!57 = !{!"frame_format", !12, i64 0, !12, i64 4, !58, i64 8, !8, i64 16, !8, i64 28, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !8, i64 72, !12, i64 84, !8, i64 88, !8, i64 100, !8, i64 112, !12, i64 124, !12, i64 128}
!58 = !{!"double", !8, i64 0}
!59 = !{!"long", !8, i64 0}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = !{!39, !12, i64 28}
!63 = !{!39, !12, i64 32}
!64 = !{!39, !7, i64 56}
!65 = distinct !{!65, !17}
!66 = !{!39, !7, i64 64}
!67 = distinct !{!67, !17}
!68 = !{!11, !12, i64 76}
!69 = !{!19, !12, i64 4}
!70 = distinct !{!70, !17}
!71 = distinct !{!71, !17}
!72 = distinct !{!72, !17}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = !{!39, !12, i64 40}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = distinct !{!78, !17}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = !{!11, !7, i64 13328}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = !{!11, !12, i64 164}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = !{!55, !12, i64 848876}
!107 = !{!55, !12, i64 848992}
!108 = !{!11, !12, i64 172}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = !{!55, !7, i64 699416}
!114 = !{!115, !7, i64 4152}
!115 = !{!"", !116, i64 0, !12, i64 4128, !12, i64 4132, !7, i64 4136, !7, i64 4144, !7, i64 4152, !7, i64 4160, !7, i64 4168, !7, i64 4176, !7, i64 4184, !7, i64 4192, !7, i64 4200, !12, i64 4208, !7, i64 4216, !7, i64 4224, !7, i64 4232, !7, i64 4240, !7, i64 4248, !7, i64 4256, !12, i64 4264, !12, i64 4268, !119, i64 4272}
!116 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !8, i64 44, !8, i64 92, !8, i64 476, !8, i64 2012, !8, i64 2036, !12, i64 2060, !12, i64 2064, !12, i64 2068, !12, i64 2072, !12, i64 2076, !12, i64 2080, !12, i64 2084, !12, i64 2088, !12, i64 2092, !8, i64 2096, !12, i64 3120, !12, i64 3124, !12, i64 3128, !12, i64 3132, !12, i64 3136, !12, i64 3140, !12, i64 3144, !12, i64 3148, !12, i64 3152, !12, i64 3156, !12, i64 3160, !12, i64 3164, !12, i64 3168, !117, i64 3172, !12, i64 4120, !12, i64 4124}
!117 = !{!"", !12, i64 0, !12, i64 4, !13, i64 8, !13, i64 10, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !118, i64 80, !12, i64 492, !118, i64 496, !12, i64 908, !12, i64 912, !12, i64 916, !12, i64 920, !12, i64 924, !12, i64 928, !12, i64 932, !12, i64 936, !12, i64 940, !12, i64 944}
!118 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !8, i64 12, !8, i64 140, !8, i64 268, !12, i64 396, !12, i64 400, !12, i64 404, !12, i64 408}
!119 = !{!"mvcvui_tag", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !8, i64 96, !8, i64 97, !8, i64 98, !8, i64 100, !8, i64 228, !8, i64 356, !8, i64 388, !8, i64 389, !8, i64 390, !8, i64 391}
!120 = !{!115, !7, i64 4184}
!121 = !{!55, !12, i64 848948}
!122 = !{!115, !7, i64 4168}
!123 = !{!115, !7, i64 4200}
