; ModuleID = 'blender/source/blender/editors/animation/drivers.c'
source_filename = "blender/source/blender/editors/animation/drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AnimData = type { ptr, ptr, ptr, %struct.ListBase, ptr, %struct.ListBase, %struct.ListBase, i32, i32, i16, i16, float }
%struct.ListBase = type { ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.ChannelDriver = type { %struct.ListBase, [256 x i8], ptr, float, float, i32, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"FCurve\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ChannelDriver\00", align 1
@.str.2 = private unnamed_addr constant [83 x i8] c"Could not add driver, as RNA path is invalid for the given ID (ID = %s, path = %s)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%.3f\00", align 1
@channeldriver_copypaste_buf = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [92 x i8] c"Could not find driver to copy, as RNA path is invalid for the given ID (ID = %s, path = %s)\00", align 1
@.str.8 = private unnamed_addr constant [85 x i8] c"Could not paste driver, as RNA path is invalid for the given ID (ID = %s, path = %s)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Paste driver: no driver to paste\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"Add Driver\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"ANIM_OT_driver_button_add\00", align 1
@.str.12 = private unnamed_addr constant [82 x i8] c"Add driver(s) for the property(s) connected represented by the highlighted button\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"All\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Create drivers for all elements of the array\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"Remove Driver\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"ANIM_OT_driver_button_remove\00", align 1
@.str.18 = private unnamed_addr constant [89 x i8] c"Remove the driver(s) for the property(s) connected represented by the highlighted button\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Delete drivers for all elements of the array\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Copy Driver\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"ANIM_OT_copy_driver_button\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Copy the driver for the highlighted button\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"Paste Driver\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"ANIM_OT_paste_driver_button\00", align 1
@.str.25 = private unnamed_addr constant [69 x i8] c"Paste the driver in the copy/paste buffer for the highlighted button\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @verify_driver_fcurve(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %64, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @BKE_animdata_from_id(ptr noundef nonnull %0) #6
  %10 = icmp eq ptr %9, null
  %11 = icmp ne i16 %3, 0
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call ptr @BKE_id_add_animdata(ptr noundef nonnull %0) #6
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %9, %8 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %64, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.AnimData, ptr %16, i64 0, i32 5
  %20 = tail call ptr @list_find_fcurve(ptr noundef nonnull %19, ptr noundef nonnull %1, i32 noundef %2) #6
  %21 = icmp eq ptr %20, null
  %22 = and i1 %11, %21
  br i1 %22, label %23, label %64

23:                                               ; preds = %18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %25 = tail call ptr %24(i64 noundef 112, ptr noundef nonnull @.str) #6
  %26 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 9
  store i16 3, ptr %26, align 8, !tbaa !9
  %27 = tail call ptr @BLI_strdup(ptr noundef nonnull %1) #6
  %28 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 12
  store ptr %27, ptr %28, align 8, !tbaa !15
  %29 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 11
  store i32 %2, ptr %29, align 4, !tbaa !16
  %30 = icmp sgt i16 %3, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %23
  %32 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %33 = tail call ptr %32(i64 noundef 296, ptr noundef nonnull @.str.1) #6
  %34 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.ChannelDriver, ptr %33, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !18
  %37 = or i32 %36, 32
  store i32 %37, ptr %35, align 4, !tbaa !18
  %38 = icmp eq i16 %3, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 4
  %41 = tail call ptr @add_fmodifier(ptr noundef nonnull %40, i32 noundef 1) #6
  br label %63

42:                                               ; preds = %31
  %43 = tail call i32 @insert_vert_fcurve(ptr noundef nonnull %25, float noundef 0.000000e+00, float noundef 0.000000e+00, i16 noundef signext 4) #6
  %44 = tail call i32 @insert_vert_fcurve(ptr noundef nonnull %25, float noundef 1.000000e+00, float noundef 1.000000e+00, i16 noundef signext 4) #6
  %45 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !20
  %47 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !21
  %49 = zext i32 %48 to i64
  %50 = icmp ne i32 %48, 0
  %51 = icmp ne ptr %46, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %61

53:                                               ; preds = %42, %53
  %54 = phi i64 [ %58, %53 ], [ 0, %42 ]
  %55 = phi ptr [ %59, %53 ], [ %46, %42 ]
  %56 = getelementptr inbounds %struct.BezTriple, ptr %55, i64 0, i32 6
  store i8 2, ptr %56, align 2, !tbaa !22
  %57 = getelementptr inbounds %struct.BezTriple, ptr %55, i64 0, i32 5
  store i8 2, ptr %57, align 1, !tbaa !24
  %58 = add nuw nsw i64 %54, 1
  %59 = getelementptr inbounds %struct.BezTriple, ptr %55, i64 1
  %60 = icmp eq i64 %58, %49
  br i1 %60, label %61, label %53, !llvm.loop !25

61:                                               ; preds = %53, %42
  %62 = getelementptr inbounds %struct.FCurve, ptr %25, i64 0, i32 10
  store i16 1, ptr %62, align 2, !tbaa !27
  tail call void @calchandles_fcurve(ptr noundef nonnull %25) #6
  br label %63

63:                                               ; preds = %39, %61, %23
  tail call void @BLI_addtail(ptr noundef nonnull %19, ptr noundef nonnull %25) #6
  br label %64

64:                                               ; preds = %18, %63, %15, %4
  %65 = phi ptr [ null, %4 ], [ null, %15 ], [ %25, %63 ], [ %20, %18 ]
  ret ptr %65
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_animdata_from_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_id_add_animdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @list_find_fcurve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_fmodifier(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @insert_vert_fcurve(ptr noundef, float noundef, float noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @calchandles_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @ANIM_add_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca %struct.PointerRNA, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #7
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %7) #6
  %10 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull %13, ptr noundef %2) #6
  br label %92

14:                                               ; preds = %6
  %15 = icmp eq i32 %3, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %14
  %17 = load ptr, ptr %9, align 8, !tbaa !5
  %18 = call i32 @RNA_property_array_length(ptr noundef nonnull %8, ptr noundef %17) #6
  br label %19

19:                                               ; preds = %14, %16
  %20 = phi i32 [ %18, %16 ], [ %3, %14 ]
  %21 = phi i32 [ 0, %16 ], [ %3, %14 ]
  %22 = icmp eq i32 %21, %20
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %20, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %19
  %27 = zext i16 %4 to i32
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i16 1, i16 2
  %31 = icmp eq i32 %5, 1
  %32 = and i32 %27, 1
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %26, %87
  %35 = phi i32 [ %21, %26 ], [ %90, %87 ]
  %36 = phi i32 [ 0, %26 ], [ %89, %87 ]
  %37 = call ptr @verify_driver_fcurve(ptr noundef %1, ptr noundef %2, i32 noundef %35, i16 noundef signext %30) #8
  %38 = icmp ne ptr %37, null
  br i1 %38, label %39, label %87

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.FCurve, ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !17
  %42 = icmp eq ptr %41, null
  br i1 %42, label %87, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ChannelDriver, ptr %41, i64 0, i32 5
  store i32 %5, ptr %44, align 8, !tbaa !28
  br i1 %31, label %45, label %84

45:                                               ; preds = %43
  %46 = load ptr, ptr %9, align 8, !tbaa !5
  %47 = call i32 @RNA_property_type(ptr noundef %46) #6
  %48 = load ptr, ptr %9, align 8, !tbaa !5
  %49 = call i32 @RNA_property_array_length(ptr noundef nonnull %8, ptr noundef %48) #6
  %50 = getelementptr inbounds %struct.ChannelDriver, ptr %41, i64 0, i32 1
  switch i32 %47, label %84 [
    i32 0, label %51
    i32 1, label %63
    i32 2, label %73
  ]

51:                                               ; preds = %45
  %52 = icmp eq i32 %49, 0
  %53 = load ptr, ptr %9, align 8, !tbaa !5
  br i1 %52, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 @RNA_property_boolean_get(ptr noundef nonnull %8, ptr noundef %53) #6
  br label %58

56:                                               ; preds = %51
  %57 = call i32 @RNA_property_boolean_get_index(ptr noundef nonnull %8, ptr noundef %53, i32 noundef %35) #6
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %57, %56 ], [ %55, %54 ]
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, ptr @.str.4, ptr @.str.3
  %62 = call ptr @BLI_strncpy(ptr noundef nonnull %50, ptr noundef nonnull %61, i64 noundef 256) #6
  br label %84

63:                                               ; preds = %45
  %64 = icmp eq i32 %49, 0
  %65 = load ptr, ptr %9, align 8, !tbaa !5
  br i1 %64, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @RNA_property_int_get(ptr noundef nonnull %8, ptr noundef %65) #6
  br label %70

68:                                               ; preds = %63
  %69 = call i32 @RNA_property_int_get_index(ptr noundef nonnull %8, ptr noundef %65, i32 noundef %35) #6
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %69, %68 ], [ %67, %66 ]
  %72 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %50, i64 noundef 256, ptr noundef nonnull @.str.5, i32 noundef %71) #6
  br label %84

73:                                               ; preds = %45
  %74 = icmp eq i32 %49, 0
  %75 = load ptr, ptr %9, align 8, !tbaa !5
  br i1 %74, label %76, label %78

76:                                               ; preds = %73
  %77 = call float @RNA_property_float_get(ptr noundef nonnull %8, ptr noundef %75) #6
  br label %80

78:                                               ; preds = %73
  %79 = call float @RNA_property_float_get_index(ptr noundef nonnull %8, ptr noundef %75, i32 noundef %35) #6
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi float [ %79, %78 ], [ %77, %76 ]
  %82 = fpext float %81 to double
  %83 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %50, i64 noundef 256, ptr noundef nonnull @.str.6, double noundef %82) #6
  br label %84

84:                                               ; preds = %58, %80, %70, %45, %43
  br i1 %33, label %87, label %85

85:                                               ; preds = %84
  %86 = call ptr @driver_add_new_variable(ptr noundef nonnull %41) #6
  call void @driver_change_variable_type(ptr noundef %86, i32 noundef 3) #6
  br label %87

87:                                               ; preds = %84, %85, %39, %34
  %88 = zext i1 %38 to i32
  %89 = add nuw nsw i32 %36, %88
  %90 = add i32 %35, 1
  %91 = icmp eq i32 %90, %24
  br i1 %91, label %92, label %34, !llvm.loop !29

92:                                               ; preds = %87, %19, %12
  %93 = phi i32 [ 0, %12 ], [ 0, %19 ], [ %89, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  ret i32 %93
}

; Function Attrs: optsize
declare void @RNA_id_pointer_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_path_resolve_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_reportf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_array_length(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_boolean_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_int_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_property_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_property_float_get_index(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @driver_add_new_variable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @driver_change_variable_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ANIM_remove_driver(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 signext %4) local_unnamed_addr #0 {
  %6 = tail call ptr @BKE_animdata_from_id(ptr noundef %1) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = icmp eq i32 %3, -1
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  %13 = tail call ptr @iter_step_fcurve(ptr noundef %12, ptr noundef %2) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %10 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !32
  tail call void @BLI_remlink(ptr noundef nonnull %11, ptr noundef nonnull %16) #6
  tail call void @free_fcurve(ptr noundef nonnull %16) #6
  %18 = tail call ptr @iter_step_fcurve(ptr noundef %17, ptr noundef %2) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %15, !llvm.loop !33

20:                                               ; preds = %8
  %21 = tail call ptr @verify_driver_fcurve(ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext 0) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.AnimData, ptr %6, i64 0, i32 5
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef nonnull %21) #6
  tail call void @free_fcurve(ptr noundef nonnull %21) #6
  br label %25

25:                                               ; preds = %15, %10, %23, %20, %5
  %26 = phi i8 [ 1, %23 ], [ 0, %20 ], [ 0, %5 ], [ 0, %10 ], [ 1, %15 ]
  ret i8 %26
}

; Function Attrs: optsize
declare ptr @iter_step_fcurve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_anim_drivers_copybuf() local_unnamed_addr #0 {
  %1 = load ptr, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free_fcurve(ptr noundef nonnull %1) #6
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @ANIM_driver_can_paste() local_unnamed_addr #3 {
  %1 = load ptr, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ANIM_copy_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 signext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %6) #6
  %9 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull %12, ptr noundef %2) #6
  br label %24

13:                                               ; preds = %5
  %14 = call ptr @verify_driver_fcurve(ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext 0) #8
  call void @free_anim_drivers_copybuf() #8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.FCurve, ptr %14, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  store ptr null, ptr %21, align 8, !tbaa !15
  %23 = call ptr @copy_fcurve(ptr noundef nonnull %14) #6
  store ptr %23, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  store ptr %22, ptr %21, align 8, !tbaa !15
  br label %24

24:                                               ; preds = %13, %16, %20, %11
  %25 = phi i8 [ 0, %11 ], [ 1, %20 ], [ 0, %16 ], [ 0, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret i8 %25
}

; Function Attrs: optsize
declare ptr @copy_fcurve(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @ANIM_paste_driver(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 signext %4) local_unnamed_addr #0 {
  %6 = alloca %struct.PointerRNA, align 8
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  call void @RNA_id_pointer_create(ptr noundef %1, ptr noundef nonnull %6) #6
  %9 = call zeroext i8 @RNA_path_resolve_property(ptr noundef nonnull %6, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  call void (ptr, i32, ptr, ...) @BKE_reportf(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull %12, ptr noundef %2) #6
  br label %49

13:                                               ; preds = %5
  %14 = load ptr, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @BKE_report(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.9) #6
  br label %49

17:                                               ; preds = %13
  %18 = call ptr @verify_driver_fcurve(ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 noundef signext -1) #8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %22 = load ptr, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  %23 = getelementptr inbounds %struct.FCurve, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = call ptr %21(ptr noundef %24) #6
  %26 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !20
  %27 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %28 = load ptr, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.FCurve, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = call ptr %27(ptr noundef %30) #6
  %32 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 6
  store ptr %31, ptr %32, align 8, !tbaa !34
  %33 = load ptr, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  %34 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !21
  %36 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 7
  store i32 %35, ptr %36, align 8, !tbaa !21
  %37 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 4
  %38 = getelementptr inbounds %struct.FCurve, ptr %33, i64 0, i32 4
  call void @copy_fmodifiers(ptr noundef nonnull %37, ptr noundef nonnull %38) #6
  %39 = load ptr, ptr @channeldriver_copypaste_buf, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 10
  %41 = load i16, ptr %40, align 2, !tbaa !27
  %42 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 10
  store i16 %41, ptr %42, align 2, !tbaa !27
  %43 = getelementptr inbounds %struct.FCurve, ptr %39, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !17
  %45 = call ptr @fcurve_copy_driver(ptr noundef %44) #6
  %46 = getelementptr inbounds %struct.FCurve, ptr %18, i64 0, i32 3
  store ptr %45, ptr %46, align 8, !tbaa !17
  br label %47

47:                                               ; preds = %20, %17
  %48 = zext i1 %19 to i8
  br label %49

49:                                               ; preds = %47, %16, %11
  %50 = phi i8 [ 0, %11 ], [ 0, %16 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret i8 %50
}

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_fmodifiers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fcurve_copy_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_driver_button_add(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.10, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_driver_button_exec, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_driver_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store ptr null, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.13) #6
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, ptr %5, align 4, !tbaa !45
  br label %12

12:                                               ; preds = %11, %2
  %13 = load ptr, ptr %3, align 8, !tbaa !46
  %14 = icmp ne ptr %13, null
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %14, i1 %17, i1 false
  %19 = load ptr, ptr %4, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %38

22:                                               ; preds = %12
  %23 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %3, ptr noundef nonnull %19) #6
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %4, align 8, !tbaa !5
  %27 = call ptr @BKE_animdata_driver_path_hack(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %26, ptr noundef null) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = load ptr, ptr %3, align 8, !tbaa !46
  %33 = load i32, ptr %5, align 4, !tbaa !45
  %34 = call i32 @ANIM_add_driver(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %27, i32 noundef %33, i16 noundef signext 1, i32 noundef 1) #8
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %35(ptr noundef nonnull %27) #6
  %36 = icmp eq i32 %34, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  call void @uiContextAnimUpdate(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239796224, ptr noundef null) #6
  br label %38

38:                                               ; preds = %22, %12, %25, %37, %29
  %39 = phi i32 [ 4, %37 ], [ 2, %29 ], [ 2, %25 ], [ 2, %12 ], [ 2, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %39
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ANIM_OT_driver_button_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.16, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @remove_driver_button_exec, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %5, align 8, !tbaa !41
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef 1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.19) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @remove_driver_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store ptr null, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.13) #6
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 -1, ptr %5, align 4, !tbaa !45
  br label %12

12:                                               ; preds = %11, %2
  %13 = load ptr, ptr %3, align 8, !tbaa !46
  %14 = icmp ne ptr %13, null
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp ne ptr %16, null
  %18 = select i1 %14, i1 %17, i1 false
  %19 = load ptr, ptr %4, align 8
  %20 = icmp ne ptr %19, null
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = call ptr @BKE_animdata_driver_path_hack(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %19, ptr noundef null) #6
  %24 = load ptr, ptr %3, align 8, !tbaa !46
  %25 = load i32, ptr %5, align 4, !tbaa !45
  %26 = call zeroext i8 @ANIM_remove_driver(ptr poison, ptr noundef %24, ptr noundef %23, i32 noundef %25, i16 signext poison) #8, !range !50
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %27(ptr noundef %23) #6
  %28 = icmp eq i8 %26, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  call void @uiContextAnimUpdate(ptr noundef %0) #6
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 239796224, ptr noundef null) #6
  br label %30

30:                                               ; preds = %12, %29, %22
  %31 = phi i32 [ 4, %29 ], [ 2, %22 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_copy_driver_button(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.21, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @copy_driver_button_exec, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %5, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_driver_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store ptr null, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = icmp ne ptr %6, null
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %7, i1 %10, i1 false
  %12 = load ptr, ptr %4, align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %3, ptr noundef nonnull %12) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !tbaa !5
  %20 = call ptr @BKE_animdata_driver_path_hack(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %19, ptr noundef null) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = load ptr, ptr %3, align 8, !tbaa !46
  %26 = load i32, ptr %5, align 4, !tbaa !45
  %27 = call zeroext i8 @ANIM_copy_driver(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %20, i32 noundef %26, i16 signext poison) #8, !range !50
  call void @uiContextAnimUpdate(ptr noundef %0) #6
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %28(ptr noundef nonnull %20) #6
  %29 = icmp eq i8 %27, 0
  %30 = select i1 %29, i32 2, i32 4
  br label %31

31:                                               ; preds = %18, %22, %15, %2
  %32 = phi i32 [ 2, %15 ], [ 2, %2 ], [ %30, %22 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ANIM_OT_paste_driver_button(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.25, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @paste_driver_button_exec, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 66, ptr %5, align 8, !tbaa !41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @paste_driver_button_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store ptr null, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @uiContextActiveProperty(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %6 = load ptr, ptr %3, align 8, !tbaa !46
  %7 = icmp ne ptr %6, null
  %8 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %7, i1 %10, i1 false
  %12 = load ptr, ptr %4, align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = call zeroext i8 @RNA_property_animateable(ptr noundef nonnull %3, ptr noundef nonnull %12) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !tbaa !5
  %20 = call ptr @BKE_animdata_driver_path_hack(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %19, ptr noundef null) #6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = load ptr, ptr %3, align 8, !tbaa !46
  %26 = load i32, ptr %5, align 4, !tbaa !45
  %27 = call zeroext i8 @ANIM_paste_driver(ptr noundef %24, ptr noundef %25, ptr noundef nonnull %20, i32 noundef %26, i16 signext poison) #8, !range !50
  call void @uiContextAnimUpdate(ptr noundef %0) #6
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  call void %28(ptr noundef nonnull %20) #6
  %29 = icmp eq i8 %27, 0
  %30 = select i1 %29, i32 2, i32 4
  br label %31

31:                                               ; preds = %18, %22, %15, %2
  %32 = phi i32 [ 2, %15 ], [ 2, %2 ], [ %30, %22 ], [ 2, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #7
  ret i32 %32
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiContextActiveProperty(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @RNA_property_animateable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_animdata_driver_path_hack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiContextAnimUpdate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !14, i64 72}
!10 = !{!"FCurve", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !6, i64 48, !6, i64 56, !12, i64 64, !13, i64 68, !14, i64 72, !14, i64 74, !12, i64 76, !6, i64 80, !12, i64 88, !7, i64 92, !13, i64 104, !13, i64 108}
!11 = !{!"ListBase", !6, i64 0, !6, i64 8}
!12 = !{!"int", !7, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!10, !6, i64 80}
!16 = !{!10, !12, i64 76}
!17 = !{!10, !6, i64 24}
!18 = !{!19, !12, i64 292}
!19 = !{!"ChannelDriver", !11, i64 0, !7, i64 16, !6, i64 272, !13, i64 280, !13, i64 284, !12, i64 288, !12, i64 292}
!20 = !{!10, !6, i64 48}
!21 = !{!10, !12, i64 64}
!22 = !{!23, !7, i64 50}
!23 = !{!"BezTriple", !7, i64 0, !13, i64 36, !13, i64 40, !13, i64 44, !7, i64 48, !7, i64 49, !7, i64 50, !7, i64 51, !7, i64 52, !7, i64 53, !7, i64 54, !7, i64 55, !13, i64 56, !13, i64 60, !13, i64 64, !7, i64 68}
!24 = !{!23, !7, i64 49}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!10, !14, i64 74}
!28 = !{!19, !12, i64 288}
!29 = distinct !{!29, !26}
!30 = !{!31, !6, i64 48}
!31 = !{!"AnimData", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !6, i64 40, !11, i64 48, !11, i64 64, !12, i64 80, !12, i64 84, !14, i64 88, !14, i64 90, !13, i64 92}
!32 = !{!10, !6, i64 0}
!33 = distinct !{!33, !26}
!34 = !{!10, !6, i64 56}
!35 = !{!36, !6, i64 0}
!36 = !{!"wmOperatorType", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !11, i64 112, !6, i64 128, !6, i64 136, !6, i64 144, !37, i64 152, !14, i64 184}
!37 = !{!"ExtensionRNA", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!38 = !{!36, !6, i64 8}
!39 = !{!36, !6, i64 24}
!40 = !{!36, !6, i64 32}
!41 = !{!36, !14, i64 184}
!42 = !{!36, !6, i64 88}
!43 = !{!44, !6, i64 112}
!44 = !{!"wmOperator", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !11, i64 128, !6, i64 144, !6, i64 152, !14, i64 160, !7, i64 162}
!45 = !{!12, !12, i64 0}
!46 = !{!47, !6, i64 0}
!47 = !{!"PointerRNA", !48, i64 0, !6, i64 8, !6, i64 16}
!48 = !{!"", !6, i64 0}
!49 = !{!44, !6, i64 120}
!50 = !{i8 0, i8 2}
