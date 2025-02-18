; ModuleID = 'blender/source/blender/editors/space_buttons/buttons_ops.c'
source_filename = "blender/source/blender/editors/space_buttons/buttons_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.StructRNA = type opaque
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.FileBrowseOp = type { %struct.PointerRNA, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.Library = type { %struct.ID, ptr, ptr, [1024 x i8], [1024 x i8], ptr, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }

@.str = private unnamed_addr constant [8 x i8] c"Toolbox\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Display button panel toolbox\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"BUTTONS_OT_toolbox\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Accept\00", align 1
@.str.4 = private unnamed_addr constant [85 x i8] c"Open a file browser, Hold Shift to open the file, Alt to browse containing directory\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"BUTTONS_OT_file_browse\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"Open a directory browser, Hold Shift to open the file, Alt to browse containing directory\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"BUTTONS_OT_directory_browse\00", align 1
@RNA_SpaceProperties = external global %struct.StructRNA, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Align\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"align\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Cannot activate a file selector, one already open\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"WM_OT_path_open\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"FileBrowseOp\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"relative_path\00", align 1
@U = external global %struct.UserDef, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_reallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.file_browse_exec = private unnamed_addr constant [17 x i8] c"file_browse_exec\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BUTTONS_OT_toolbox(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @toolbox_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_buttons_active, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @toolbox_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #6
  %6 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_SpaceProperties, ptr noundef %6, ptr noundef nonnull %4) #6
  %7 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 0) #6
  %8 = call ptr @uiPupMenuLayout(ptr noundef %7) #6
  call void @uiItemsEnumR(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull @.str.9) #6
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %7) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 32
}

declare i32 @ED_operator_buttons_active(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @BUTTONS_OT_file_browse(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @file_browse_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @file_browse_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @file_browse_cancel, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  %8 = load i16, ptr %7, align 8, !tbaa !48
  %9 = or i16 %8, 2
  store i16 %9, ptr %7, align 8, !tbaa !48
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 0, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @file_browse_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.10) #6
  br label %66

12:                                               ; preds = %3
  call void @uiFileBrowseContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %13 = load ptr, ptr %5, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %66, label %15

15:                                               ; preds = %12
  %16 = call ptr @RNA_property_string_get_alloc(ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %18 = load i16, ptr %17, align 8, !tbaa !52
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %22 = load i16, ptr %21, align 4, !tbaa !56
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20, %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #6
  %25 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %26 = load i16, ptr %25, align 4, !tbaa !56
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = call ptr @BLI_last_slash(ptr noundef %16) #6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i8 0, ptr %29, align 1, !tbaa !57
  br label %32

32:                                               ; preds = %28, %31, %24
  call void @WM_operator_properties_create(ptr noundef nonnull %6, ptr noundef nonnull @.str.11) #6
  call void @RNA_string_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.12, ptr noundef %16) #6
  %33 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.11, i16 noundef signext 6, ptr noundef nonnull %6) #6
  call void @WM_operator_properties_free(ptr noundef nonnull %6) #6
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %34(ptr noundef %16) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #6
  br label %66

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !58
  %38 = call ptr @RNA_struct_find_property(ptr noundef %37, ptr noundef nonnull @.str.13) #6
  %39 = icmp eq ptr %38, null
  %40 = select i1 %39, ptr @.str.12, ptr @.str.13
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %42 = call ptr %41(i64 noundef 32, ptr noundef nonnull @.str.14) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !59
  %43 = load ptr, ptr %5, align 8, !tbaa !51
  %44 = getelementptr inbounds %struct.FileBrowseOp, ptr %42, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !60
  %45 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %42, ptr %45, align 8, !tbaa !64
  %46 = load ptr, ptr %36, align 8, !tbaa !58
  call void @RNA_string_set(ptr noundef %46, ptr noundef nonnull %40, ptr noundef %16) #6
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %47(ptr noundef %16) #6
  %48 = load ptr, ptr %36, align 8, !tbaa !58
  %49 = call ptr @RNA_struct_find_property(ptr noundef %48, ptr noundef nonnull @.str.15) #6
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %35
  %52 = load ptr, ptr %36, align 8, !tbaa !58
  %53 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %52, ptr noundef nonnull @.str.15) #6
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load ptr, ptr %36, align 8, !tbaa !58
  %57 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !65
  %58 = and i32 %57, 1048576
  %59 = icmp ne i32 %58, 0
  %60 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = icmp ne ptr %61, @U
  %63 = select i1 %59, i1 %62, i1 false
  %64 = zext i1 %63 to i32
  call void @RNA_boolean_set(ptr noundef %56, ptr noundef nonnull @.str.15, i32 noundef %64) #6
  br label %65

65:                                               ; preds = %51, %55, %35
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #6
  br label %66

66:                                               ; preds = %12, %65, %32, %9
  %67 = phi i32 [ 2, %9 ], [ 2, %32 ], [ 1, %65 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @file_browse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.13) #6
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str.12, ptr @.str.13
  %11 = load ptr, ptr %6, align 8, !tbaa !58
  %12 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %11, ptr noundef nonnull %10) #6
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq ptr %5, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %89, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 8, !tbaa !58
  %18 = tail call ptr @RNA_string_get_alloc(ptr noundef %17, ptr noundef nonnull %10, ptr noundef null, i32 noundef 0) #6
  %19 = getelementptr inbounds %struct.FileBrowseOp, ptr %5, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = tail call i32 @RNA_property_subtype(ptr noundef %20) #6
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %69

23:                                               ; preds = %16
  %24 = load ptr, ptr %6, align 8, !tbaa !58
  %25 = tail call i32 @RNA_boolean_get(ptr noundef %24, ptr noundef nonnull @.str.15) #6
  %26 = load ptr, ptr %5, align 8, !tbaa !70
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %18, i64 noundef 1024) #6
  %28 = icmp eq ptr %26, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Library, ptr %31, i64 0, i32 4
  br label %41

35:                                               ; preds = %29
  %36 = load ptr, ptr @G, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct.Main, ptr %36, i64 0, i32 2
  br label %41

38:                                               ; preds = %23
  %39 = load ptr, ptr @G, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct.Main, ptr %39, i64 0, i32 2
  br label %41

41:                                               ; preds = %33, %35, %38
  %42 = phi ptr [ %40, %38 ], [ %34, %33 ], [ %37, %35 ]
  %43 = call zeroext i8 @BLI_path_abs(ptr noundef nonnull %3, ptr noundef nonnull %42) #6
  %44 = call zeroext i8 @BLI_is_dir(ptr noundef nonnull %3) #6
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %64, label %46

46:                                               ; preds = %41
  %47 = call i32 @BLI_add_slash(ptr noundef nonnull %3) #6
  %48 = and i32 %25, 255
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %18, i64 noundef 1024) #6
  %52 = load ptr, ptr @G, align 8, !tbaa !73
  %53 = getelementptr inbounds %struct.Main, ptr %52, i64 0, i32 2
  call void @BLI_path_rel(ptr noundef nonnull %3, ptr noundef nonnull %53) #6
  %54 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !51
  %55 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #7
  %56 = add i64 %55, 2
  %57 = call ptr %54(ptr noundef %18, i64 noundef %56, ptr noundef nonnull @__func__.file_browse_exec) #6
  %58 = call ptr @BLI_strncpy(ptr noundef %57, ptr noundef nonnull %3, i64 noundef 1024) #6
  br label %69

59:                                               ; preds = %46
  %60 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !51
  %61 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #7
  %62 = add i64 %61, 2
  %63 = call ptr %60(ptr noundef %18, i64 noundef %62, ptr noundef nonnull @__func__.file_browse_exec) #6
  br label %69

64:                                               ; preds = %41
  %65 = call ptr @BLI_last_slash(ptr noundef %18) #6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 0, ptr %68, align 1, !tbaa !57
  br label %69

69:                                               ; preds = %59, %50, %67, %64, %16
  %70 = phi ptr [ %18, %16 ], [ %57, %50 ], [ %63, %59 ], [ %18, %67 ], [ %18, %64 ]
  %71 = load ptr, ptr %19, align 8, !tbaa !60
  call void @RNA_property_string_set(ptr noundef %5, ptr noundef %71, ptr noundef %70) #6
  %72 = load ptr, ptr %19, align 8, !tbaa !60
  call void @RNA_property_update(ptr noundef %0, ptr noundef %5, ptr noundef %72) #6
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %73(ptr noundef %70) #6
  %74 = call ptr @WM_operator_last_redo(ptr noundef %0) #6
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !75
  %79 = getelementptr inbounds %struct.wmOperator, ptr %74, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  %81 = getelementptr inbounds %struct.PointerRNA, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !76
  %83 = icmp eq ptr %78, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef nonnull %74) #6
  br label %86

86:                                               ; preds = %76, %84, %69
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %88 = load ptr, ptr %4, align 8, !tbaa !64
  call void %87(ptr noundef %88) #6
  br label %89

89:                                               ; preds = %2, %86
  %90 = phi i32 [ 4, %86 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #6
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal void @file_browse_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #1 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void %3(ptr noundef %5) #6
  store ptr null, ptr %4, align 8, !tbaa !64
  ret void
}

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BUTTONS_OT_directory_browse(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @file_browse_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @file_browse_exec, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @file_browse_cancel, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  %8 = load i16, ptr %7, align 8, !tbaa !48
  %9 = or i16 %8, 2
  store i16 %9, ptr %7, align 8, !tbaa !48
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 0, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 3, i16 noundef signext 0) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_buts(ptr noundef) local_unnamed_addr #2

declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiItemsEnumR(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uiFileBrowseContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_property_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BLI_is_dir(ptr noundef) local_unnamed_addr #2

declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #2

declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_operator_last_redo(ptr noundef) local_unnamed_addr #2

declare i32 @ED_undo_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !36, i64 32}
!47 = !{!35, !36, i64 56}
!48 = !{!35, !41, i64 184}
!49 = !{!50, !36, i64 120}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!36, !36, i64 0}
!52 = !{!53, !41, i64 72}
!53 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !54, i64 20, !54, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !54, i64 48, !54, i64 52, !55, i64 56, !54, i64 64, !54, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !54, i64 108, !36, i64 112}
!54 = !{!"int", !37, i64 0}
!55 = !{!"double", !37, i64 0}
!56 = !{!53, !41, i64 76}
!57 = !{!37, !37, i64 0}
!58 = !{!50, !36, i64 112}
!59 = !{i64 0, i64 8, !51, i64 8, i64 8, !51, i64 16, i64 8, !51}
!60 = !{!61, !36, i64 24}
!61 = !{!"FileBrowseOp", !62, i64 0, !36, i64 24}
!62 = !{!"PointerRNA", !63, i64 0, !36, i64 8, !36, i64 16}
!63 = !{!"", !36, i64 0}
!64 = !{!50, !36, i64 96}
!65 = !{!66, !54, i64 8}
!66 = !{!"UserDef", !54, i64 0, !54, i64 4, !54, i64 8, !54, i64 12, !54, i64 16, !37, i64 20, !37, i64 788, !37, i64 1556, !37, i64 2580, !37, i64 3348, !37, i64 4116, !37, i64 4884, !37, i64 5652, !37, i64 6420, !37, i64 7444, !54, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !54, i64 8484, !54, i64 8488, !54, i64 8492, !41, i64 8496, !41, i64 8498, !54, i64 8500, !54, i64 8504, !54, i64 8508, !54, i64 8512, !54, i64 8516, !54, i64 8520, !54, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !39, i64 8536, !39, i64 8552, !39, i64 8568, !39, i64 8584, !39, i64 8600, !39, i64 8616, !39, i64 8632, !37, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !37, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !54, i64 8912, !54, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !37, i64 8940, !37, i64 8941, !37, i64 8942, !37, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !67, i64 8956, !67, i64 8960, !54, i64 8964, !41, i64 8968, !41, i64 8970, !67, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !68, i64 8984, !37, i64 9760, !37, i64 9772, !41, i64 9788, !37, i64 9790, !37, i64 9791, !37, i64 9792, !37, i64 9872, !54, i64 10896, !54, i64 10900, !67, i64 10904, !67, i64 10908, !54, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !69, i64 10928}
!67 = !{!"float", !37, i64 0}
!68 = !{!"ColorBand", !41, i64 0, !41, i64 2, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !37, i64 8}
!69 = !{!"WalkNavigation", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !41, i64 24, !37, i64 26}
!70 = !{!61, !36, i64 0}
!71 = !{!72, !36, i64 24}
!72 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !54, i64 100, !54, i64 104, !54, i64 108, !36, i64 112}
!73 = !{!74, !36, i64 0}
!74 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !54, i64 2096, !54, i64 2100, !37, i64 2104, !54, i64 2108, !54, i64 2112, !37, i64 2116}
!75 = !{!61, !36, i64 16}
!76 = !{!62, !36, i64 16}
