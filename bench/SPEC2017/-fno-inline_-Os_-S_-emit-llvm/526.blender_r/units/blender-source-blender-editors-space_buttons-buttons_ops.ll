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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BUTTONS_OT_toolbox(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @toolbox_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_buttons_active, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @toolbox_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = tail call ptr @CTX_wm_screen(ptr noundef %0) #6
  %6 = tail call ptr @CTX_wm_space_buts(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @RNA_pointer_create(ptr noundef %5, ptr noundef nonnull @RNA_SpaceProperties, ptr noundef %6, ptr noundef nonnull %4) #6
  %7 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef 0) #6
  %8 = call ptr @uiPupMenuLayout(ptr noundef %7) #6
  call void @uiItemsEnumR(ptr noundef %8, ptr noundef nonnull %4, ptr noundef nonnull @.str.9) #6
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %7) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret i32 32
}

; Function Attrs: optsize
declare i32 @ED_operator_buttons_active(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BUTTONS_OT_file_browse(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @file_browse_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @file_browse_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @file_browse_cancel, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  %8 = load i16, ptr %7, align 8, !tbaa !19
  %9 = or i16 %8, 2
  store i16 %9, ptr %7, align 8, !tbaa !19
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 0, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 9, i16 noundef signext 0) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @file_browse_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca %struct.PointerRNA, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %7 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  tail call void @BKE_report(ptr noundef %11, i32 noundef 32, ptr noundef nonnull @.str.10) #6
  br label %64

12:                                               ; preds = %3
  call void @uiFileBrowseContextProperty(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %13 = load ptr, ptr %5, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %12
  %16 = call ptr @RNA_property_string_get_alloc(ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  %17 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %18 = load i16, ptr %17, align 8, !tbaa !23
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 19
  %21 = load i16, ptr %20, align 4, !tbaa !27
  %22 = icmp eq i16 %21, 0
  br i1 %19, label %23, label %25

23:                                               ; preds = %15
  br i1 %22, label %33, label %24

24:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  br label %26

25:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  br i1 %22, label %30, label %26

26:                                               ; preds = %24, %25
  %27 = call ptr @BLI_last_slash(ptr noundef %16) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i8 0, ptr %27, align 1, !tbaa !28
  br label %30

30:                                               ; preds = %26, %29, %25
  call void @WM_operator_properties_create(ptr noundef nonnull %6, ptr noundef nonnull @.str.11) #6
  call void @RNA_string_set(ptr noundef nonnull %6, ptr noundef nonnull @.str.12, ptr noundef %16) #6
  %31 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.11, i16 noundef signext 6, ptr noundef nonnull %6) #6
  call void @WM_operator_properties_free(ptr noundef nonnull %6) #6
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  call void %32(ptr noundef %16) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  br label %64

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  %36 = call ptr @RNA_struct_find_property(ptr noundef %35, ptr noundef nonnull @.str.13) #6
  %37 = icmp eq ptr %36, null
  %38 = select i1 %37, ptr @.str.12, ptr @.str.13
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !22
  %40 = call ptr %39(i64 noundef 32, ptr noundef nonnull @.str.14) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %40, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !30
  %41 = load ptr, ptr %5, align 8, !tbaa !22
  %42 = getelementptr inbounds %struct.FileBrowseOp, ptr %40, i64 0, i32 1
  store ptr %41, ptr %42, align 8, !tbaa !31
  %43 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %40, ptr %43, align 8, !tbaa !35
  %44 = load ptr, ptr %34, align 8, !tbaa !29
  call void @RNA_string_set(ptr noundef %44, ptr noundef nonnull %38, ptr noundef %16) #6
  %45 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  call void %45(ptr noundef %16) #6
  %46 = load ptr, ptr %34, align 8, !tbaa !29
  %47 = call ptr @RNA_struct_find_property(ptr noundef %46, ptr noundef nonnull @.str.15) #6
  %48 = icmp eq ptr %47, null
  br i1 %48, label %63, label %49

49:                                               ; preds = %33
  %50 = load ptr, ptr %34, align 8, !tbaa !29
  %51 = call zeroext i8 @RNA_struct_property_is_set(ptr noundef %50, ptr noundef nonnull @.str.15) #6
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %49
  %54 = load ptr, ptr %34, align 8, !tbaa !29
  %55 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !36
  %56 = and i32 %55, 1048576
  %57 = icmp ne i32 %56, 0
  %58 = getelementptr inbounds %struct.PointerRNA, ptr %4, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8
  %60 = icmp ne ptr %59, @U
  %61 = select i1 %57, i1 %60, i1 false
  %62 = zext i1 %61 to i32
  call void @RNA_boolean_set(ptr noundef %54, ptr noundef nonnull @.str.15, i32 noundef %62) #6
  br label %63

63:                                               ; preds = %49, %53, %33
  call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef nonnull %1) #6
  br label %64

64:                                               ; preds = %12, %63, %30, %9
  %65 = phi i32 [ 2, %9 ], [ 2, %30 ], [ 1, %63 ], [ 2, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #7
  ret i32 %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @file_browse_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [1024 x i8], align 16
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !29
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.13) #6
  %9 = icmp eq ptr %8, null
  %10 = select i1 %9, ptr @.str.12, ptr @.str.13
  %11 = load ptr, ptr %6, align 8, !tbaa !29
  %12 = tail call zeroext i8 @RNA_struct_property_is_set(ptr noundef %11, ptr noundef nonnull %10) #6
  %13 = icmp eq i8 %12, 0
  %14 = icmp eq ptr %5, null
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %89, label %16

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 8, !tbaa !29
  %18 = tail call ptr @RNA_string_get_alloc(ptr noundef %17, ptr noundef nonnull %10, ptr noundef null, i32 noundef 0) #6
  %19 = getelementptr inbounds %struct.FileBrowseOp, ptr %5, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = tail call i32 @RNA_property_subtype(ptr noundef %20) #6
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %69

23:                                               ; preds = %16
  %24 = load ptr, ptr %6, align 8, !tbaa !29
  %25 = tail call i32 @RNA_boolean_get(ptr noundef %24, ptr noundef nonnull @.str.15) #6
  %26 = load ptr, ptr %5, align 8, !tbaa !41
  %27 = call ptr @BLI_strncpy(ptr noundef nonnull %3, ptr noundef %18, i64 noundef 1024) #6
  %28 = icmp eq ptr %26, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.ID, ptr %26, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.Library, ptr %31, i64 0, i32 4
  br label %41

35:                                               ; preds = %29
  %36 = load ptr, ptr @G, align 8, !tbaa !44
  %37 = getelementptr inbounds %struct.Main, ptr %36, i64 0, i32 2
  br label %41

38:                                               ; preds = %23
  %39 = load ptr, ptr @G, align 8, !tbaa !44
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
  %52 = load ptr, ptr @G, align 8, !tbaa !44
  %53 = getelementptr inbounds %struct.Main, ptr %52, i64 0, i32 2
  call void @BLI_path_rel(ptr noundef nonnull %3, ptr noundef nonnull %53) #6
  %54 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !22
  %55 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #8
  %56 = add i64 %55, 2
  %57 = call ptr %54(ptr noundef %18, i64 noundef %56, ptr noundef nonnull @__func__.file_browse_exec) #6
  %58 = call ptr @BLI_strncpy(ptr noundef %57, ptr noundef nonnull %3, i64 noundef 1024) #6
  br label %69

59:                                               ; preds = %46
  %60 = load ptr, ptr @MEM_reallocN_id, align 8, !tbaa !22
  %61 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #8
  %62 = add i64 %61, 2
  %63 = call ptr %60(ptr noundef %18, i64 noundef %62, ptr noundef nonnull @__func__.file_browse_exec) #6
  br label %69

64:                                               ; preds = %41
  %65 = call ptr @BLI_last_slash(ptr noundef %18) #6
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 0, ptr %68, align 1, !tbaa !28
  br label %69

69:                                               ; preds = %59, %50, %67, %64, %16
  %70 = phi ptr [ %18, %16 ], [ %57, %50 ], [ %63, %59 ], [ %18, %67 ], [ %18, %64 ]
  %71 = load ptr, ptr %19, align 8, !tbaa !31
  call void @RNA_property_string_set(ptr noundef nonnull %5, ptr noundef %71, ptr noundef %70) #6
  %72 = load ptr, ptr %19, align 8, !tbaa !31
  call void @RNA_property_update(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %72) #6
  %73 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  call void %73(ptr noundef %70) #6
  %74 = call ptr @WM_operator_last_redo(ptr noundef %0) #6
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.PointerRNA, ptr %5, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = getelementptr inbounds %struct.wmOperator, ptr %74, i64 0, i32 7
  %80 = load ptr, ptr %79, align 8, !tbaa !29
  %81 = getelementptr inbounds %struct.PointerRNA, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !47
  %83 = icmp eq ptr %78, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 @ED_undo_operator_repeat(ptr noundef %0, ptr noundef nonnull %74) #6
  br label %86

86:                                               ; preds = %76, %84, %69
  %87 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  %88 = load ptr, ptr %4, align 8, !tbaa !35
  call void %87(ptr noundef %88) #6
  br label %89

89:                                               ; preds = %2, %86
  %90 = phi i32 [ 4, %86 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #7
  ret i32 %90
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_browse_cancel(ptr nocapture readnone %0, ptr nocapture noundef %1) #1 {
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  tail call void %3(ptr noundef %5) #6
  store ptr null, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BUTTONS_OT_directory_browse(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @file_browse_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @file_browse_exec, ptr %5, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @file_browse_cancel, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  %8 = load i16, ptr %7, align 8, !tbaa !19
  %9 = or i16 %8, 2
  store i16 %9, ptr %7, align 8, !tbaa !19
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 0, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 3, i16 noundef signext 0) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_buts(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_pointer_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemsEnumR(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiFileBrowseContextProperty(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_property_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_last_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare zeroext i8 @RNA_struct_property_is_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_property_subtype(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_path_abs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BLI_is_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @BLI_add_slash(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_path_rel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @RNA_property_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_property_update(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_operator_last_redo(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_undo_operator_repeat(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !7, i64 32}
!18 = !{!6, !7, i64 56}
!19 = !{!6, !12, i64 184}
!20 = !{!21, !7, i64 120}
!21 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!22 = !{!7, !7, i64 0}
!23 = !{!24, !12, i64 72}
!24 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !25, i64 20, !25, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !25, i64 48, !25, i64 52, !26, i64 56, !25, i64 64, !25, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !25, i64 108, !7, i64 112}
!25 = !{!"int", !8, i64 0}
!26 = !{!"double", !8, i64 0}
!27 = !{!24, !12, i64 76}
!28 = !{!8, !8, i64 0}
!29 = !{!21, !7, i64 112}
!30 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22}
!31 = !{!32, !7, i64 24}
!32 = !{!"FileBrowseOp", !33, i64 0, !7, i64 24}
!33 = !{!"PointerRNA", !34, i64 0, !7, i64 8, !7, i64 16}
!34 = !{!"", !7, i64 0}
!35 = !{!21, !7, i64 96}
!36 = !{!37, !25, i64 8}
!37 = !{!"UserDef", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !8, i64 20, !8, i64 788, !8, i64 1556, !8, i64 2580, !8, i64 3348, !8, i64 4116, !8, i64 4884, !8, i64 5652, !8, i64 6420, !8, i64 7444, !25, i64 8468, !12, i64 8472, !12, i64 8474, !12, i64 8476, !12, i64 8478, !12, i64 8480, !12, i64 8482, !25, i64 8484, !25, i64 8488, !25, i64 8492, !12, i64 8496, !12, i64 8498, !25, i64 8500, !25, i64 8504, !25, i64 8508, !25, i64 8512, !25, i64 8516, !25, i64 8520, !25, i64 8524, !12, i64 8528, !12, i64 8530, !12, i64 8532, !12, i64 8534, !10, i64 8536, !10, i64 8552, !10, i64 8568, !10, i64 8584, !10, i64 8600, !10, i64 8616, !10, i64 8632, !8, i64 8648, !12, i64 8712, !12, i64 8714, !12, i64 8716, !12, i64 8718, !12, i64 8720, !12, i64 8722, !12, i64 8724, !12, i64 8726, !8, i64 8728, !12, i64 8896, !12, i64 8898, !12, i64 8900, !12, i64 8902, !12, i64 8904, !12, i64 8906, !12, i64 8908, !12, i64 8910, !25, i64 8912, !25, i64 8916, !12, i64 8920, !12, i64 8922, !12, i64 8924, !12, i64 8926, !12, i64 8928, !12, i64 8930, !12, i64 8932, !12, i64 8934, !12, i64 8936, !12, i64 8938, !8, i64 8940, !8, i64 8941, !8, i64 8942, !8, i64 8943, !12, i64 8944, !12, i64 8946, !12, i64 8948, !12, i64 8950, !12, i64 8952, !12, i64 8954, !38, i64 8956, !38, i64 8960, !25, i64 8964, !12, i64 8968, !12, i64 8970, !38, i64 8972, !12, i64 8976, !12, i64 8978, !12, i64 8980, !12, i64 8982, !39, i64 8984, !8, i64 9760, !8, i64 9772, !12, i64 9788, !8, i64 9790, !8, i64 9791, !8, i64 9792, !8, i64 9872, !25, i64 10896, !25, i64 10900, !38, i64 10904, !38, i64 10908, !25, i64 10912, !12, i64 10916, !12, i64 10918, !12, i64 10920, !12, i64 10922, !12, i64 10924, !12, i64 10926, !40, i64 10928}
!38 = !{!"float", !8, i64 0}
!39 = !{!"ColorBand", !12, i64 0, !12, i64 2, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !8, i64 8}
!40 = !{!"WalkNavigation", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !12, i64 24, !8, i64 26}
!41 = !{!32, !7, i64 0}
!42 = !{!43, !7, i64 24}
!43 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !25, i64 100, !25, i64 104, !25, i64 108, !7, i64 112}
!44 = !{!45, !7, i64 0}
!45 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !25, i64 2096, !25, i64 2100, !8, i64 2104, !25, i64 2108, !25, i64 2112, !8, i64 2116}
!46 = !{!32, !7, i64 16}
!47 = !{!33, !7, i64 16}
