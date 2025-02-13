; ModuleID = 'ldecod_src/fmo.c'
source_filename = "ldecod_src/fmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"wrong pps->pic_size_in_map_units_minus1 for used SPS and FMO type 6\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"cannot allocated %d bytes for p_Vid->MapUnitToSliceGroupMap, exit\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Illegal slice_group_map_type %d , exit \0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"cannot allocate %d bytes for p_Vid->MbToSliceGroupMap, exit\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @fmo_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  tail call fastcc void @FmoGenerateMapUnitToSliceGroupMap(ptr noundef %0, ptr noundef %1) #15
  tail call fastcc void @FmoGenerateMbToSliceGroupMap(ptr noundef %0, ptr noundef %1) #15
  %5 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !45
  %7 = add i32 %6, 1
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 157
  store i32 %7, ptr %8, align 8, !tbaa !47
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @FmoGenerateMapUnitToSliceGroupMap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !48 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 29
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 28
  %11 = load i32, ptr %10, align 4, !tbaa !54
  %12 = add i32 %11, 1
  %13 = mul i32 %12, %9
  %14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %6, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !55
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %6, i64 0, i32 19
  %19 = load i32, ptr %18, align 4, !tbaa !56
  %20 = add i32 %19, 1
  %21 = icmp eq i32 %20, %13
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @error(ptr noundef nonnull @.str, i32 noundef 500) #16
  br label %23

23:                                               ; preds = %17, %22, %2
  %24 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %25) #16
  br label %28

28:                                               ; preds = %27, %23
  %29 = zext i32 %13 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #17
  store ptr %31, ptr %24, align 8, !tbaa !57
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %6, i64 0, i32 19
  %35 = load i32, ptr %34, align 4, !tbaa !56
  %36 = shl i32 %35, 2
  %37 = add i32 %36, 4
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %37) #15
  tail call void @exit(i32 noundef -1) #18
  unreachable

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %6, i64 0, i32 12
  %41 = load i32, ptr %40, align 4, !tbaa !45
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = trunc i64 %30 to i32
  tail call fastcc void @fast_memset(ptr noundef nonnull %31, i32 noundef %44) #15
  br label %56

45:                                               ; preds = %39
  %46 = load i32, ptr %14, align 8, !tbaa !55
  switch i32 %46, label %54 [
    i32 0, label %47
    i32 1, label %48
    i32 2, label %49
    i32 3, label %50
    i32 4, label %51
    i32 5, label %52
    i32 6, label %53
  ]

47:                                               ; preds = %45
  tail call fastcc void @FmoGenerateType0MapUnitMap(ptr noundef nonnull %0, i32 noundef %13) #15
  br label %56

48:                                               ; preds = %45
  tail call fastcc void @FmoGenerateType1MapUnitMap(ptr noundef nonnull %0, i32 noundef %13) #15
  br label %56

49:                                               ; preds = %45
  tail call fastcc void @FmoGenerateType2MapUnitMap(ptr noundef nonnull %0, i32 noundef %13) #15
  br label %56

50:                                               ; preds = %45
  tail call fastcc void @FmoGenerateType3MapUnitMap(ptr noundef nonnull %0, i32 noundef %13, ptr noundef %1) #15
  br label %56

51:                                               ; preds = %45
  tail call fastcc void @FmoGenerateType4MapUnitMap(ptr noundef nonnull %0, i32 noundef %13, ptr noundef %1) #15
  br label %56

52:                                               ; preds = %45
  tail call fastcc void @FmoGenerateType5MapUnitMap(ptr noundef nonnull %0, i32 noundef %13, ptr noundef %1) #15
  br label %56

53:                                               ; preds = %45
  tail call fastcc void @FmoGenerateType6MapUnitMap(ptr noundef nonnull %0, i32 noundef %13) #15
  br label %56

54:                                               ; preds = %45
  %55 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %46) #15
  tail call void @exit(i32 noundef -1) #18
  unreachable

56:                                               ; preds = %47, %48, %49, %50, %51, %52, %53, %43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @FmoGenerateMbToSliceGroupMap(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !58 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %6) #16
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %11 = load i32, ptr %10, align 4, !tbaa !60
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 2
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #17
  store ptr %14, ptr %5, align 8, !tbaa !59
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = shl i32 %11, 2
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %17) #15
  tail call void @exit(i32 noundef -1) #18
  unreachable

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 30
  %21 = load i32, ptr %20, align 4, !tbaa !61
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.slice, ptr %1, i64 0, i32 36
  %25 = load i32, ptr %24, align 8, !tbaa !62
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %23, %19
  %28 = icmp eq i32 %11, 0
  br i1 %28, label %79, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi ptr [ %36, %32 ], [ %31, %29 ]
  %34 = phi ptr [ %38, %32 ], [ %14, %29 ]
  %35 = phi i32 [ %39, %32 ], [ 0, %29 ]
  %36 = getelementptr inbounds i32, ptr %33, i64 1
  %37 = load i32, ptr %33, align 4, !tbaa !65
  %38 = getelementptr inbounds i32, ptr %34, i64 1
  store i32 %37, ptr %34, align 4, !tbaa !65
  %39 = add nuw i32 %35, 1
  %40 = icmp eq i32 %39, %11
  br i1 %40, label %79, label %32, !llvm.loop !66

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.seq_parameter_set_rbsp_t, ptr %4, i64 0, i32 31
  %43 = load i32, ptr %42, align 4, !tbaa !68
  %44 = icmp eq i32 %43, 0
  %45 = icmp eq i32 %11, 0
  br i1 %44, label %50, label %46

46:                                               ; preds = %41
  br i1 %45, label %79, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  br label %57

50:                                               ; preds = %41
  br i1 %45, label %79, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %53 = load ptr, ptr %52, align 8, !tbaa !57
  %54 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %55 = load i32, ptr %54, align 4, !tbaa !69
  %56 = shl i32 %55, 1
  br label %66

57:                                               ; preds = %47, %57
  %58 = phi i64 [ 0, %47 ], [ %64, %57 ]
  %59 = lshr i64 %58, 1
  %60 = and i64 %59, 2147483647
  %61 = getelementptr inbounds i32, ptr %49, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !65
  %63 = getelementptr inbounds i32, ptr %14, i64 %58
  store i32 %62, ptr %63, align 4, !tbaa !65
  %64 = add nuw nsw i64 %58, 1
  %65 = icmp eq i64 %64, %12
  br i1 %65, label %79, label %57, !llvm.loop !70

66:                                               ; preds = %51, %66
  %67 = phi i64 [ 0, %51 ], [ %77, %66 ]
  %68 = trunc i64 %67 to i32
  %69 = udiv i32 %68, %56
  %70 = mul i32 %69, %55
  %71 = urem i32 %68, %55
  %72 = add i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %53, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !65
  %76 = getelementptr inbounds i32, ptr %14, i64 %67
  store i32 %75, ptr %76, align 4, !tbaa !65
  %77 = add nuw nsw i64 %67, 1
  %78 = icmp eq i64 %77, %12
  br i1 %78, label %79, label %66, !llvm.loop !71

79:                                               ; preds = %32, %57, %66, %27, %46, %50
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local noundef i32 @FmoFinit(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #16
  store ptr null, ptr %2, align 8, !tbaa !59
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #16
  store ptr null, ptr %7, align 8, !tbaa !57
  br label %11

11:                                               ; preds = %10, %6
  ret i32 0
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @FmoGetNumberOfSliceGroup(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 157
  %3 = load i32, ptr %2, align 8, !tbaa !47
  ret i32 %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetLastMBOfPicture(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = tail call i32 @FmoGetNumberOfSliceGroup(ptr noundef %0) #15
  %3 = add nsw i32 %2, -1
  %4 = tail call i32 @FmoGetLastMBInSliceGroup(ptr noundef %0, i32 noundef %3) #15, !range !72
  ret i32 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetLastMBInSliceGroup(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %4 = load i32, ptr %3, align 4, !tbaa !60
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i32 [ %4, %2 ], [ %7, %9 ]
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call i32 @FmoGetSliceGroupId(ptr noundef %0, i32 noundef %7) #15
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %5, !llvm.loop !73

12:                                               ; preds = %5, %9
  %13 = phi i32 [ %7, %9 ], [ -1, %5 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetSliceGroupId(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !65
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @FmoGetNextMBNr(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = tail call i32 @FmoGetSliceGroupId(ptr noundef %0, i32 noundef %1) #15
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 155
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 57
  %6 = load i32, ptr %5, align 4, !tbaa !60
  %7 = sext i32 %1 to i64
  %8 = sext i32 %6 to i64
  br label %9

9:                                                ; preds = %13, %2
  %10 = phi i64 [ %11, %13 ], [ %7, %2 ]
  %11 = add nsw i64 %10, 1
  %12 = icmp slt i64 %11, %8
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8, !tbaa !59
  %15 = getelementptr inbounds i32, ptr %14, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !65
  %17 = icmp eq i32 %16, %3
  br i1 %17, label %18, label %9, !llvm.loop !74

18:                                               ; preds = %13
  %19 = trunc i64 %11 to i32
  br label %20

20:                                               ; preds = %9, %18
  %21 = phi i32 [ %19, %18 ], [ -1, %9 ]
  ret i32 %21
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @fast_memset(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !PGOFuncName !75 {
  %3 = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %3, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FmoGenerateType0MapUnitMap(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 12
  %6 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  br label %7

7:                                                ; preds = %41, %2
  %8 = phi i32 [ 0, %2 ], [ %36, %41 ]
  %9 = icmp ult i32 %8, %1
  br i1 %9, label %10, label %42

10:                                               ; preds = %7, %32
  %11 = phi i32 [ %36, %32 ], [ %8, %7 ]
  %12 = phi i32 [ %34, %32 ], [ 0, %7 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 14, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !65
  %16 = zext i32 %11 to i64
  %17 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %11)
  %18 = zext i32 %17 to i64
  %19 = icmp ult i32 %11, %1
  br i1 %19, label %20, label %32

20:                                               ; preds = %10
  %21 = load ptr, ptr %6, align 8, !tbaa !57
  %22 = getelementptr i32, ptr %21, i64 %16
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %29, %23 ], [ 0, %20 ]
  %25 = getelementptr i32, ptr %22, i64 %24
  store i32 %12, ptr %25, align 4, !tbaa !65
  %26 = load i32, ptr %14, align 4, !tbaa !65
  %27 = zext i32 %26 to i64
  %28 = icmp uge i64 %24, %27
  %29 = add nuw nsw i64 %24, 1
  %30 = icmp eq i64 %29, %18
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %23, !llvm.loop !77

32:                                               ; preds = %23, %10
  %33 = phi i32 [ %15, %10 ], [ %26, %23 ]
  %34 = add i32 %12, 1
  %35 = add i32 %11, 1
  %36 = add i32 %35, %33
  %37 = load i32, ptr %5, align 4, !tbaa !45
  %38 = icmp ule i32 %34, %37
  %39 = icmp ult i32 %36, %1
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %10, label %41, !llvm.loop !78

41:                                               ; preds = %32
  br i1 %39, label %7, label %42, !llvm.loop !79

42:                                               ; preds = %7, %41
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FmoGenerateType1MapUnitMap(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !80 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %8 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %6, i64 0, i32 12
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = zext i32 %1 to i64
  br label %12

12:                                               ; preds = %4, %12
  %13 = phi i64 [ 0, %4 ], [ %25, %12 ]
  %14 = load i32, ptr %7, align 4, !tbaa !69
  %15 = trunc i64 %13 to i32
  %16 = urem i32 %15, %14
  %17 = udiv i32 %15, %14
  %18 = load i32, ptr %8, align 4, !tbaa !45
  %19 = add i32 %18, 1
  %20 = mul i32 %19, %17
  %21 = lshr i32 %20, 1
  %22 = add i32 %21, %16
  %23 = urem i32 %22, %19
  %24 = getelementptr inbounds i32, ptr %10, i64 %13
  store i32 %23, ptr %24, align 4, !tbaa !65
  %25 = add nuw nsw i64 %13, 1
  %26 = icmp eq i64 %25, %11
  br i1 %26, label %27, label %12, !llvm.loop !81

27:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FmoGenerateType2MapUnitMap(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !82 {
  %3 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 12
  %8 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = load i32, ptr %7, align 4, !tbaa !45
  %11 = zext i32 %1 to i64
  %12 = add nuw nsw i64 %11, 3
  %13 = and i64 %12, 8589934588
  %14 = add nsw i64 %11, -1
  %15 = insertelement <4 x i64> poison, i64 %14, i64 0
  %16 = shufflevector <4 x i64> %15, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %39, %6
  %18 = phi i64 [ 0, %6 ], [ %40, %39 ]
  %19 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %6 ], [ %41, %39 ]
  %20 = icmp ule <4 x i64> %19, %16
  %21 = extractelement <4 x i1> %20, i64 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = getelementptr inbounds i32, ptr %9, i64 %18
  store i32 %10, ptr %23, align 4, !tbaa !65
  br label %24

24:                                               ; preds = %22, %17
  %25 = extractelement <4 x i1> %20, i64 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = or disjoint i64 %18, 1
  %28 = getelementptr inbounds i32, ptr %9, i64 %27
  store i32 %10, ptr %28, align 4, !tbaa !65
  br label %29

29:                                               ; preds = %26, %24
  %30 = extractelement <4 x i1> %20, i64 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %29
  %32 = or disjoint i64 %18, 2
  %33 = getelementptr inbounds i32, ptr %9, i64 %32
  store i32 %10, ptr %33, align 4, !tbaa !65
  br label %34

34:                                               ; preds = %31, %29
  %35 = extractelement <4 x i1> %20, i64 3
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = or disjoint i64 %18, 3
  %38 = getelementptr inbounds i32, ptr %9, i64 %37
  store i32 %10, ptr %38, align 4, !tbaa !65
  br label %39

39:                                               ; preds = %36, %34
  %40 = add i64 %18, 4
  %41 = add <4 x i64> %19, <i64 4, i64 4, i64 4, i64 4>
  %42 = icmp eq i64 %40, %13
  br i1 %42, label %43, label %17, !llvm.loop !83

43:                                               ; preds = %39, %2
  %44 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 12
  %45 = load i32, ptr %44, align 4, !tbaa !45
  %46 = add i32 %45, -1
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %86

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %50 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %51 = zext nneg i32 %46 to i64
  br label %55

52:                                               ; preds = %83, %55
  %53 = add nsw i64 %56, -1
  %54 = icmp sgt i64 %56, 0
  br i1 %54, label %55, label %86, !llvm.loop !86

55:                                               ; preds = %48, %52
  %56 = phi i64 [ %51, %48 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 15, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !65
  %59 = load i32, ptr %49, align 4, !tbaa !69
  %60 = udiv i32 %58, %59
  %61 = urem i32 %58, %59
  %62 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %4, i64 0, i32 16, i64 %56
  %63 = load i32, ptr %62, align 4, !tbaa !65
  %64 = udiv i32 %63, %59
  %65 = urem i32 %63, %59
  %66 = icmp ugt i32 %60, %64
  br i1 %66, label %52, label %67

67:                                               ; preds = %55
  %68 = icmp ugt i32 %61, %65
  %69 = trunc i64 %56 to i32
  br label %70

70:                                               ; preds = %67, %83
  %71 = phi i32 [ %60, %67 ], [ %84, %83 ]
  br i1 %68, label %83, label %72

72:                                               ; preds = %70
  %73 = load ptr, ptr %50, align 8, !tbaa !57
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i32 [ %61, %72 ], [ %81, %74 ]
  %76 = load i32, ptr %49, align 4, !tbaa !69
  %77 = mul i32 %76, %71
  %78 = add i32 %77, %75
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %73, i64 %79
  store i32 %69, ptr %80, align 4, !tbaa !65
  %81 = add i32 %75, 1
  %82 = icmp ugt i32 %81, %65
  br i1 %82, label %83, label %74, !llvm.loop !87

83:                                               ; preds = %74, %70
  %84 = add i32 %71, 1
  %85 = icmp ugt i32 %84, %64
  br i1 %85, label %52, label %70, !llvm.loop !88

86:                                               ; preds = %52, %43
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FmoGenerateType3MapUnitMap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !89 {
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 18
  %7 = load i32, ptr %6, align 8, !tbaa !90
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 49
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = mul i32 %8, %10
  %12 = tail call fastcc i32 @imin(i32 noundef %11, i32 noundef %1) #15
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %143, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = zext i32 %1 to i64
  %18 = add nuw nsw i64 %17, 3
  %19 = and i64 %18, 8589934588
  %20 = add nsw i64 %17, -1
  %21 = insertelement <4 x i64> poison, i64 %20, i64 0
  %22 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %23

23:                                               ; preds = %45, %14
  %24 = phi i64 [ 0, %14 ], [ %46, %45 ]
  %25 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %14 ], [ %47, %45 ]
  %26 = icmp ule <4 x i64> %25, %22
  %27 = extractelement <4 x i1> %26, i64 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = getelementptr inbounds i32, ptr %16, i64 %24
  store i32 2, ptr %29, align 4, !tbaa !65
  br label %30

30:                                               ; preds = %28, %23
  %31 = extractelement <4 x i1> %26, i64 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = or disjoint i64 %24, 1
  %34 = getelementptr inbounds i32, ptr %16, i64 %33
  store i32 2, ptr %34, align 4, !tbaa !65
  br label %35

35:                                               ; preds = %32, %30
  %36 = extractelement <4 x i1> %26, i64 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = or disjoint i64 %24, 2
  %39 = getelementptr inbounds i32, ptr %16, i64 %38
  store i32 2, ptr %39, align 4, !tbaa !65
  br label %40

40:                                               ; preds = %37, %35
  %41 = extractelement <4 x i1> %26, i64 3
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = or disjoint i64 %24, 3
  %44 = getelementptr inbounds i32, ptr %16, i64 %43
  store i32 2, ptr %44, align 4, !tbaa !65
  br label %45

45:                                               ; preds = %42, %40
  %46 = add i64 %24, 4
  %47 = add <4 x i64> %25, <i64 4, i64 4, i64 4, i64 4>
  %48 = icmp eq i64 %46, %19
  br i1 %48, label %49, label %23, !llvm.loop !92

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %51 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 17
  %52 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 54
  br i1 %13, label %143, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr %51, align 4, !tbaa !93
  %55 = add nsw i32 %54, -1
  %56 = load i32, ptr %52, align 8, !tbaa !94
  %57 = sub i32 %56, %54
  %58 = lshr i32 %57, 1
  %59 = load i32, ptr %50, align 4, !tbaa !69
  %60 = sub i32 %59, %54
  %61 = lshr i32 %60, 1
  %62 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %63 = load ptr, ptr %62, align 8, !tbaa !57
  br label %64

64:                                               ; preds = %53, %132
  %65 = phi i32 [ 0, %53 ], [ %141, %132 ]
  %66 = phi i32 [ %54, %53 ], [ %140, %132 ]
  %67 = phi i32 [ %55, %53 ], [ %139, %132 ]
  %68 = phi i32 [ %58, %53 ], [ %138, %132 ]
  %69 = phi i32 [ %61, %53 ], [ %137, %132 ]
  %70 = phi i32 [ %58, %53 ], [ %136, %132 ]
  %71 = phi i32 [ %61, %53 ], [ %135, %132 ]
  %72 = phi i32 [ %58, %53 ], [ %134, %132 ]
  %73 = phi i32 [ %61, %53 ], [ %133, %132 ]
  %74 = load i32, ptr %50, align 4, !tbaa !69
  %75 = mul i32 %74, %68
  %76 = add i32 %75, %69
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %63, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !65
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i32
  br i1 %80, label %82, label %85

82:                                               ; preds = %64
  %83 = icmp uge i32 %65, %12
  %84 = zext i1 %83 to i32
  store i32 %84, ptr %78, align 4, !tbaa !65
  br label %85

85:                                               ; preds = %82, %64
  %86 = icmp eq i32 %67, -1
  %87 = icmp eq i32 %69, %73
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = add nsw i32 %69, -1
  %91 = tail call fastcc i32 @imax(i32 noundef %90) #15
  %92 = load i32, ptr %51, align 4, !tbaa !93
  %93 = shl nsw i32 %92, 1
  %94 = add nsw i32 %93, -1
  br label %132

95:                                               ; preds = %85
  %96 = icmp eq i32 %67, 1
  %97 = icmp eq i32 %69, %71
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = add nsw i32 %69, 1
  %101 = load i32, ptr %50, align 4, !tbaa !69
  %102 = add nsw i32 %101, -1
  %103 = tail call fastcc i32 @imin(i32 noundef %100, i32 noundef %102) #15
  %104 = load i32, ptr %51, align 4, !tbaa !93
  %105 = shl nsw i32 %104, 1
  %106 = sub nsw i32 1, %105
  br label %132

107:                                              ; preds = %95
  %108 = icmp eq i32 %66, -1
  %109 = icmp eq i32 %68, %72
  %110 = select i1 %108, i1 %109, i1 false
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = add nsw i32 %68, -1
  %113 = tail call fastcc i32 @imax(i32 noundef %112) #15
  %114 = load i32, ptr %51, align 4, !tbaa !93
  %115 = shl nsw i32 %114, 1
  %116 = sub nsw i32 1, %115
  br label %132

117:                                              ; preds = %107
  %118 = icmp eq i32 %66, 1
  %119 = icmp eq i32 %68, %70
  %120 = select i1 %118, i1 %119, i1 false
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = add nsw i32 %68, 1
  %123 = load i32, ptr %52, align 8, !tbaa !94
  %124 = add nsw i32 %123, -1
  %125 = tail call fastcc i32 @imin(i32 noundef %122, i32 noundef %124) #15
  %126 = load i32, ptr %51, align 4, !tbaa !93
  %127 = shl nsw i32 %126, 1
  %128 = add nsw i32 %127, -1
  br label %132

129:                                              ; preds = %117
  %130 = add nsw i32 %67, %69
  %131 = add nsw i32 %66, %68
  br label %132

132:                                              ; preds = %89, %111, %129, %121, %99
  %133 = phi i32 [ %91, %89 ], [ %73, %99 ], [ %73, %111 ], [ %73, %121 ], [ %73, %129 ]
  %134 = phi i32 [ %72, %89 ], [ %72, %99 ], [ %113, %111 ], [ %72, %121 ], [ %72, %129 ]
  %135 = phi i32 [ %71, %89 ], [ %103, %99 ], [ %71, %111 ], [ %71, %121 ], [ %71, %129 ]
  %136 = phi i32 [ %70, %89 ], [ %70, %99 ], [ %70, %111 ], [ %125, %121 ], [ %70, %129 ]
  %137 = phi i32 [ %91, %89 ], [ %103, %99 ], [ %69, %111 ], [ %69, %121 ], [ %130, %129 ]
  %138 = phi i32 [ %68, %89 ], [ %68, %99 ], [ %113, %111 ], [ %125, %121 ], [ %131, %129 ]
  %139 = phi i32 [ 0, %89 ], [ 0, %99 ], [ %116, %111 ], [ %128, %121 ], [ %67, %129 ]
  %140 = phi i32 [ %94, %89 ], [ %106, %99 ], [ 0, %111 ], [ 0, %121 ], [ %66, %129 ]
  %141 = add nuw i32 %65, %81
  %142 = icmp ult i32 %141, %1
  br i1 %142, label %64, label %143, !llvm.loop !95

143:                                              ; preds = %132, %3, %49
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FmoGenerateType4MapUnitMap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !96 {
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 17
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %6, align 4, !tbaa !93
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 18
  %12 = load i32, ptr %11, align 8, !tbaa !90
  %13 = add i32 %12, 1
  %14 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 49
  %15 = load i32, ptr %14, align 4, !tbaa !91
  %16 = mul i32 %13, %15
  %17 = tail call fastcc i32 @imin(i32 noundef %16, i32 noundef %1) #15
  %18 = sub i32 %1, %17
  %19 = select i1 %10, i32 %17, i32 %18
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %21 = zext i32 %19 to i64
  %22 = zext i32 %1 to i64
  %23 = load ptr, ptr %20, align 8, !tbaa !57
  br label %24

24:                                               ; preds = %8, %24
  %25 = phi i64 [ 0, %8 ], [ %31, %24 ]
  %26 = icmp ult i64 %25, %21
  %27 = load i32, ptr %6, align 4, !tbaa !93
  %28 = sub nsw i32 1, %27
  %29 = select i1 %26, i32 %27, i32 %28
  %30 = getelementptr inbounds i32, ptr %23, i64 %25
  store i32 %29, ptr %30, align 4, !tbaa !65
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %22
  br i1 %32, label %33, label %24, !llvm.loop !97

33:                                               ; preds = %24, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FmoGenerateType5MapUnitMap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #11 !PGOFuncName !98 {
  %4 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 18
  %7 = load i32, ptr %6, align 8, !tbaa !90
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %struct.slice, ptr %2, i64 0, i32 49
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = mul i32 %8, %10
  %12 = tail call fastcc i32 @imin(i32 noundef %11, i32 noundef %1) #15
  %13 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %5, i64 0, i32 17
  %14 = load i32, ptr %13, align 4, !tbaa !93
  %15 = icmp eq i32 %14, 0
  %16 = sub i32 %1, %12
  %17 = select i1 %15, i32 %12, i32 %16
  %18 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 53
  %19 = load i32, ptr %18, align 4, !tbaa !69
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 54
  %23 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %24 = load i32, ptr %22, align 8, !tbaa !94
  br label %25

25:                                               ; preds = %21, %51
  %26 = phi i32 [ %19, %21 ], [ %52, %51 ]
  %27 = phi i32 [ %24, %21 ], [ %53, %51 ]
  %28 = phi i32 [ 0, %21 ], [ %54, %51 ]
  %29 = phi i32 [ 0, %21 ], [ %55, %51 ]
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %51, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %23, align 8, !tbaa !57
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i32 [ %36, %33 ], [ %28, %31 ]
  %35 = phi i32 [ %46, %33 ], [ 0, %31 ]
  %36 = add i32 %34, 1
  %37 = icmp ult i32 %34, %17
  %38 = load i32, ptr %13, align 4, !tbaa !93
  %39 = sub nsw i32 1, %38
  %40 = select i1 %37, i32 %38, i32 %39
  %41 = load i32, ptr %18, align 4, !tbaa !69
  %42 = mul i32 %41, %35
  %43 = add i32 %42, %29
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %32, i64 %44
  store i32 %40, ptr %45, align 4, !tbaa !65
  %46 = add nuw i32 %35, 1
  %47 = load i32, ptr %22, align 8, !tbaa !94
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %33, label %49, !llvm.loop !99

49:                                               ; preds = %33
  %50 = load i32, ptr %18, align 4, !tbaa !69
  br label %51

51:                                               ; preds = %49, %25
  %52 = phi i32 [ %26, %25 ], [ %50, %49 ]
  %53 = phi i32 [ 0, %25 ], [ %47, %49 ]
  %54 = phi i32 [ %28, %25 ], [ %36, %49 ]
  %55 = add nuw i32 %29, 1
  %56 = icmp ult i32 %55, %52
  br i1 %56, label %25, label %57, !llvm.loop !100

57:                                               ; preds = %51, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FmoGenerateType6MapUnitMap(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #11 !PGOFuncName !101 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.pic_parameter_set_rbsp_t, ptr %6, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 156
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = zext i32 %1 to i64
  br label %12

12:                                               ; preds = %4, %12
  %13 = phi i64 [ 0, %4 ], [ %18, %12 ]
  %14 = getelementptr inbounds i8, ptr %8, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !103
  %16 = zext i8 %15 to i32
  %17 = getelementptr inbounds i32, ptr %10, i64 %13
  store i32 %16, ptr %17, align 4, !tbaa !65
  %18 = add nuw nsw i64 %13, 1
  %19 = icmp eq i64 %18, %11
  br i1 %19, label %20, label %12, !llvm.loop !104

20:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #13 !PGOFuncName !105 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #13 !PGOFuncName !106 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #14

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind optsize allocsize(0) }
attributes #18 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 8}
!35 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !41, i64 849304, !41, i64 849624, !41, i64 849944, !41, i64 850264, !41, i64 850584, !41, i64 850904, !41, i64 851224, !41, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !44, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"image_data", !42, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!42 = !{!"frame_format", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!43 = !{!"double", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!46, !39, i64 2044}
!46 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !37, i64 24, !37, i64 72, !37, i64 456, !37, i64 1992, !37, i64 2016, !39, i64 2040, !39, i64 2044, !39, i64 2048, !37, i64 2052, !37, i64 2084, !37, i64 2116, !39, i64 2148, !39, i64 2152, !39, i64 2156, !36, i64 2160, !39, i64 2168, !39, i64 2172, !39, i64 2176, !39, i64 2180, !39, i64 2184, !39, i64 2188, !39, i64 2192, !39, i64 2196, !39, i64 2200, !39, i64 2204, !39, i64 2208}
!47 = !{!35, !39, i64 856720}
!48 = !{!"fmo.c:FmoGenerateMapUnitToSliceGroupMap"}
!49 = !{!35, !36, i64 16}
!50 = !{!51, !39, i64 3132}
!51 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !37, i64 44, !37, i64 92, !37, i64 476, !37, i64 2012, !37, i64 2036, !39, i64 2060, !39, i64 2064, !39, i64 2068, !39, i64 2072, !39, i64 2076, !39, i64 2080, !39, i64 2084, !39, i64 2088, !39, i64 2092, !37, i64 2096, !39, i64 3120, !39, i64 3124, !39, i64 3128, !39, i64 3132, !39, i64 3136, !39, i64 3140, !39, i64 3144, !39, i64 3148, !39, i64 3152, !39, i64 3156, !39, i64 3160, !39, i64 3164, !39, i64 3168, !52, i64 3172, !39, i64 4120, !39, i64 4124}
!52 = !{!"", !39, i64 0, !39, i64 4, !40, i64 8, !40, i64 10, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !53, i64 80, !39, i64 492, !53, i64 496, !39, i64 908, !39, i64 912, !39, i64 916, !39, i64 920, !39, i64 924, !39, i64 928, !39, i64 932, !39, i64 936, !39, i64 940, !39, i64 944}
!53 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !37, i64 12, !37, i64 140, !37, i64 268, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408}
!54 = !{!51, !39, i64 3128}
!55 = !{!46, !39, i64 2048}
!56 = !{!46, !39, i64 2156}
!57 = !{!35, !36, i64 856712}
!58 = !{!"fmo.c:FmoGenerateMbToSliceGroupMap"}
!59 = !{!35, !36, i64 856704}
!60 = !{!35, !39, i64 849012}
!61 = !{!51, !39, i64 3136}
!62 = !{!63, !39, i64 176}
!63 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !40, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !64, i64 1188, !40, i64 1220, !40, i64 1222, !40, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !40, i64 13272, !40, i64 13274, !40, i64 13276, !40, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !40, i64 13304, !40, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!64 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!65 = !{!39, !39, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.mustprogress"}
!68 = !{!51, !39, i64 3140}
!69 = !{!35, !39, i64 848996}
!70 = distinct !{!70, !67}
!71 = distinct !{!71, !67}
!72 = !{i32 -1, i32 -2147483648}
!73 = distinct !{!73, !67}
!74 = distinct !{!74, !67}
!75 = !{!"fmo.c:fast_memset"}
!76 = !{!"fmo.c:FmoGenerateType0MapUnitMap"}
!77 = distinct !{!77, !67}
!78 = distinct !{!78, !67}
!79 = distinct !{!79, !67}
!80 = !{!"fmo.c:FmoGenerateType1MapUnitMap"}
!81 = distinct !{!81, !67}
!82 = !{!"fmo.c:FmoGenerateType2MapUnitMap"}
!83 = distinct !{!83, !67, !84, !85}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !67}
!87 = distinct !{!87, !67}
!88 = distinct !{!88, !67}
!89 = !{!"fmo.c:FmoGenerateType3MapUnitMap"}
!90 = !{!46, !39, i64 2152}
!91 = !{!63, !39, i64 228}
!92 = distinct !{!92, !67, !84, !85}
!93 = !{!46, !39, i64 2148}
!94 = !{!35, !39, i64 849000}
!95 = distinct !{!95, !67}
!96 = !{!"fmo.c:FmoGenerateType4MapUnitMap"}
!97 = distinct !{!97, !67}
!98 = !{!"fmo.c:FmoGenerateType5MapUnitMap"}
!99 = distinct !{!99, !67}
!100 = distinct !{!100, !67}
!101 = !{!"fmo.c:FmoGenerateType6MapUnitMap"}
!102 = !{!46, !36, i64 2160}
!103 = !{!37, !37, i64 0}
!104 = distinct !{!104, !67}
!105 = !{!"fmo.c:imin"}
!106 = !{!"fmo.c:imax"}
