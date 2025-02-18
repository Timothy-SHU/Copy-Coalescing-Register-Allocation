; ModuleID = 'blender/source/blender/windowmanager/intern/wm_dragdrop.c'
source_filename = "blender/source/blender/windowmanager/intern/wm_dragdrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.wmDropBoxMap = type { ptr, ptr, %struct.ListBase, i16, i16, [64 x i8] }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEventHandler = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }

@dropboxes = internal global %struct.ListBase zeroinitializer, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"dropmap list\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"wmDropBox\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Error: dropbox with unknown operator: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"new drag\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"Paste name\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_dropboxmap_find(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @dropboxes, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %3, %21
  %7 = phi ptr [ %22, %21 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.wmDropBoxMap, ptr %7, i64 0, i32 3
  %9 = load i16, ptr %8, align 8, !tbaa !38
  %10 = sext i16 %9 to i32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.wmDropBoxMap, ptr %7, i64 0, i32 4
  %14 = load i16, ptr %13, align 2, !tbaa !42
  %15 = sext i16 %14 to i32
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmDropBoxMap, ptr %7, i64 0, i32 5
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %18, i64 noundef 64) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %6, %12, %17
  %22 = load ptr, ptr %7, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !43

24:                                               ; preds = %21, %3
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 104, ptr noundef nonnull @.str) #7
  %27 = getelementptr inbounds %struct.wmDropBoxMap, ptr %26, i64 0, i32 5
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %0, i64 noundef 64) #7
  %29 = trunc i32 %1 to i16
  %30 = getelementptr inbounds %struct.wmDropBoxMap, ptr %26, i64 0, i32 3
  store i16 %29, ptr %30, align 8, !tbaa !38
  %31 = trunc i32 %2 to i16
  %32 = getelementptr inbounds %struct.wmDropBoxMap, ptr %26, i64 0, i32 4
  store i16 %31, ptr %32, align 2, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull @dropboxes, ptr noundef %26) #7
  br label %33

33:                                               ; preds = %17, %24
  %34 = phi ptr [ %26, %24 ], [ %7, %17 ]
  %35 = getelementptr inbounds %struct.wmDropBoxMap, ptr %34, i64 0, i32 2
  ret ptr %35
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @WM_dropbox_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 64, ptr noundef nonnull @.str.1) #7
  %7 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !48
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #7
  %10 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 7
  store i16 0, ptr %11, align 8, !tbaa !50
  %12 = icmp eq ptr %9, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef %6) #7
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %1)
  br label %19

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 6
  %18 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 5
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %1) #7
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %6) #7
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ null, %13 ], [ %6, %16 ]
  ret ptr %20
}

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @WM_operator_properties_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_dropbox_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @dropboxes, align 8, !tbaa !34
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %0, %19
  %4 = phi ptr [ %20, %19 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.wmDropBoxMap, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %3, %16
  %9 = phi ptr [ %17, %16 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct.wmDropBox, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  tail call void @WM_operator_properties_free(ptr noundef nonnull %11) #7
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = load ptr, ptr %10, align 8, !tbaa !51
  tail call void %14(ptr noundef %15) #7
  br label %16

16:                                               ; preds = %8, %13
  %17 = load ptr, ptr %9, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !52

19:                                               ; preds = %16, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #7
  %20 = load ptr, ptr %4, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %3, !llvm.loop !53

22:                                               ; preds = %19, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @dropboxes) #7
  ret void
}

declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @WM_event_start_drag(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, double noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 1288, ptr noundef nonnull @.str.3) #7
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 12
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 12
  store i32 %5, ptr %11, align 4, !tbaa !54
  %12 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 2
  store i32 %1, ptr %12, align 8, !tbaa !59
  %13 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 3
  store i32 %2, ptr %13, align 4, !tbaa !60
  %14 = icmp eq i32 %2, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 5
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef %3, i64 noundef 1024) #7
  br label %20

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 4
  store ptr %3, ptr %19, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %18, %15
  %21 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 6
  store double %4, ptr %21, align 8, !tbaa !62
  ret ptr %9
}

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @WM_event_drag_image(ptr nocapture noundef writeonly %0, ptr noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 7
  store ptr %1, ptr %6, align 8, !tbaa !63
  %7 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 8
  store float %2, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 9
  store i32 %3, ptr %8, align 4, !tbaa !65
  %9 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 10
  store i32 %4, ptr %9, align 8, !tbaa !66
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_drag_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !54
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #7
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef %0) #7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @WM_drag_free_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %18, %16 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.wmDrag, ptr %5, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !54
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmDrag, ptr %5, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %15(ptr noundef nonnull %12) #7
  br label %16

16:                                               ; preds = %4, %10, %14
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %5) #7
  %18 = tail call ptr @BLI_pophead(ptr noundef %0) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %4, !llvm.loop !67

20:                                               ; preds = %16, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @wm_drags_check_ops(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %139, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 4
  %9 = getelementptr inbounds %struct.wmEvent, ptr %1, i64 0, i32 5
  br label %10

10:                                               ; preds = %7, %136
  %11 = phi ptr [ %5, %7 ], [ %137, %136 ]
  %12 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %13 = tail call i32 @WM_window_pixels_x(ptr noundef %12) #7
  %14 = tail call i32 @WM_window_pixels_y(ptr noundef %12) #7
  %15 = load i32, ptr %8, align 4, !tbaa !68
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %136, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %9, align 8, !tbaa !70
  %19 = icmp slt i32 %18, 0
  %20 = icmp sgt i32 %15, %13
  %21 = select i1 %19, i1 true, i1 %20
  %22 = icmp sgt i32 %18, %14
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %136, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.wmDrag, ptr %11, i64 0, i32 11
  store i8 0, ptr %25, align 4, !tbaa !71
  %26 = tail call zeroext i8 @UI_but_active_drop_name(ptr noundef %0) #7
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %133

28:                                               ; preds = %24
  %29 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  %30 = tail call ptr @CTX_wm_area(ptr noundef %0) #7
  %31 = tail call ptr @CTX_wm_region(ptr noundef %0) #7
  %32 = getelementptr inbounds %struct.wmWindow, ptr %29, i64 0, i32 28
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %28, %58
  %36 = phi ptr [ %60, %58 ], [ %33, %28 ]
  %37 = phi ptr [ %59, %58 ], [ undef, %28 ]
  %38 = getelementptr inbounds %struct.wmEventHandler, ptr %36, i64 0, i32 17
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %35, %45
  %42 = phi ptr [ %43, %45 ], [ %39, %35 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp eq ptr %43, null
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.wmDropBox, ptr %43, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = tail call i32 %47(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %1) #7
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %41, label %50, !llvm.loop !74

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.wmDropBox, ptr %43, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !49
  %53 = getelementptr inbounds %struct.wmOperatorType, ptr %52, i64 0, i32 11
  %54 = load ptr, ptr %53, align 8, !tbaa !75
  %55 = tail call ptr @RNA_struct_ui_name(ptr noundef %54) #7
  br label %56

56:                                               ; preds = %41, %50
  %57 = phi ptr [ %55, %50 ], [ %37, %41 ]
  br i1 %44, label %58, label %62

58:                                               ; preds = %56, %35
  %59 = phi ptr [ %57, %56 ], [ %37, %35 ]
  %60 = load ptr, ptr %36, align 8, !tbaa !34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %35, !llvm.loop !78

62:                                               ; preds = %56, %58, %28
  %63 = phi ptr [ null, %28 ], [ %57, %56 ], [ null, %58 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %130

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.ScrArea, ptr %30, i64 0, i32 21
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = icmp eq ptr %67, null
  br i1 %68, label %96, label %69

69:                                               ; preds = %65, %92
  %70 = phi ptr [ %94, %92 ], [ %67, %65 ]
  %71 = phi ptr [ %93, %92 ], [ undef, %65 ]
  %72 = getelementptr inbounds %struct.wmEventHandler, ptr %70, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  %74 = icmp eq ptr %73, null
  br i1 %74, label %92, label %75

75:                                               ; preds = %69, %79
  %76 = phi ptr [ %77, %79 ], [ %73, %69 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !34
  %78 = icmp eq ptr %77, null
  br i1 %78, label %90, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.wmDropBox, ptr %77, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = tail call i32 %81(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %1) #7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %75, label %84, !llvm.loop !74

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.wmDropBox, ptr %77, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !49
  %87 = getelementptr inbounds %struct.wmOperatorType, ptr %86, i64 0, i32 11
  %88 = load ptr, ptr %87, align 8, !tbaa !75
  %89 = tail call ptr @RNA_struct_ui_name(ptr noundef %88) #7
  br label %90

90:                                               ; preds = %75, %84
  %91 = phi ptr [ %89, %84 ], [ %71, %75 ]
  br i1 %78, label %92, label %96

92:                                               ; preds = %90, %69
  %93 = phi ptr [ %91, %90 ], [ %71, %69 ]
  %94 = load ptr, ptr %70, align 8, !tbaa !34
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %69, !llvm.loop !78

96:                                               ; preds = %90, %92, %65
  %97 = phi ptr [ null, %65 ], [ %91, %90 ], [ null, %92 ]
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %130

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.ARegion, ptr %31, i64 0, i32 26
  %101 = load ptr, ptr %100, align 8, !tbaa !34
  %102 = icmp eq ptr %101, null
  br i1 %102, label %130, label %103

103:                                              ; preds = %99, %126
  %104 = phi ptr [ %128, %126 ], [ %101, %99 ]
  %105 = phi ptr [ %127, %126 ], [ undef, %99 ]
  %106 = getelementptr inbounds %struct.wmEventHandler, ptr %104, i64 0, i32 17
  %107 = load ptr, ptr %106, align 8, !tbaa !72
  %108 = icmp eq ptr %107, null
  br i1 %108, label %126, label %109

109:                                              ; preds = %103, %113
  %110 = phi ptr [ %111, %113 ], [ %107, %103 ]
  %111 = load ptr, ptr %110, align 8, !tbaa !34
  %112 = icmp eq ptr %111, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.wmDropBox, ptr %111, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !46
  %116 = tail call i32 %115(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %1) #7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %109, label %118, !llvm.loop !74

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.wmDropBox, ptr %111, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !49
  %121 = getelementptr inbounds %struct.wmOperatorType, ptr %120, i64 0, i32 11
  %122 = load ptr, ptr %121, align 8, !tbaa !75
  %123 = tail call ptr @RNA_struct_ui_name(ptr noundef %122) #7
  br label %124

124:                                              ; preds = %109, %118
  %125 = phi ptr [ %123, %118 ], [ %105, %109 ]
  br i1 %112, label %126, label %130

126:                                              ; preds = %124, %103
  %127 = phi ptr [ %125, %124 ], [ %105, %103 ]
  %128 = load ptr, ptr %104, align 8, !tbaa !34
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %103, !llvm.loop !78

130:                                              ; preds = %126, %124, %99, %96, %62
  %131 = phi ptr [ %63, %62 ], [ %97, %96 ], [ null, %99 ], [ %125, %124 ], [ null, %126 ]
  %132 = icmp eq ptr %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %130, %24
  %134 = phi ptr [ @.str.4, %24 ], [ %131, %130 ]
  %135 = tail call ptr @BLI_strncpy(ptr noundef nonnull %25, ptr noundef nonnull %134, i64 noundef 200) #7
  br label %136

136:                                              ; preds = %133, %10, %17, %130
  %137 = load ptr, ptr %11, align 8, !tbaa !34
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %10, !llvm.loop !79

139:                                              ; preds = %136, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @wm_drags_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %5 = tail call i32 @WM_window_pixels_y(ptr noundef %1) #7
  %6 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !68
  %10 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !70
  %12 = icmp eq ptr %2, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  store i32 %9, ptr %14, align 4, !tbaa !82
  store i32 %9, ptr %2, align 4, !tbaa !84
  %15 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 %11, ptr %15, align 4, !tbaa !85
  %16 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  store i32 %11, ptr %16, align 4, !tbaa !86
  br label %17

17:                                               ; preds = %13, %3
  tail call void @glEnable(i32 noundef 3042) #7
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %291, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %23 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %24 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %25 = sitofp i32 %11 to float
  %26 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %27 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %28 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %29 = sitofp i32 %9 to float
  %30 = sitofp i32 %11 to float
  %31 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %32 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %33 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  %34 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  %35 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  %36 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  br label %37

37:                                               ; preds = %21, %288
  %38 = phi ptr [ %19, %21 ], [ %289, %288 ]
  %39 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !87
  %40 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !91
  %41 = sitofp i32 %40 to float
  %42 = fmul float %39, %41
  %43 = fdiv float %42, 7.200000e+01
  %44 = fmul float %43, 1.600000e+01
  %45 = fptosi float %44 to i32
  %46 = fmul float %43, 4.000000e+00
  %47 = fptosi float %46 to i32
  %48 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !63
  %50 = icmp eq ptr %49, null
  br i1 %50, label %90, label %51

51:                                               ; preds = %37
  %52 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 9
  %53 = load i32, ptr %52, align 4, !tbaa !65
  %54 = sdiv i32 %53, -2
  %55 = add i32 %54, %9
  %56 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 10
  %57 = load i32, ptr %56, align 8, !tbaa !66
  %58 = sdiv i32 %57, -2
  %59 = add i32 %58, %11
  br i1 %12, label %78, label %60

60:                                               ; preds = %51
  %61 = add nsw i32 %55, %53
  %62 = add nsw i32 %59, %57
  %63 = load i32, ptr %2, align 4, !tbaa !84
  %64 = icmp sgt i32 %63, %55
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 %55, ptr %2, align 4, !tbaa !84
  br label %66

66:                                               ; preds = %65, %60
  %67 = load i32, ptr %22, align 4, !tbaa !82
  %68 = icmp slt i32 %67, %61
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 %61, ptr %22, align 4, !tbaa !82
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i32, ptr %23, align 4, !tbaa !86
  %72 = icmp sgt i32 %71, %59
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 %59, ptr %23, align 4, !tbaa !86
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, ptr %24, align 4, !tbaa !85
  %76 = icmp slt i32 %75, %62
  br i1 %76, label %77, label %119

77:                                               ; preds = %74
  store i32 %62, ptr %24, align 4, !tbaa !85
  br label %119

78:                                               ; preds = %51
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FE4CCCCC0000000) #7
  %79 = sitofp i32 %55 to float
  %80 = sitofp i32 %59 to float
  %81 = load ptr, ptr %48, align 8, !tbaa !63
  %82 = getelementptr inbounds %struct.ImBuf, ptr %81, i64 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !92
  %84 = getelementptr inbounds %struct.ImBuf, ptr %81, i64 0, i32 3
  %85 = load i32, ptr %84, align 4, !tbaa !95
  %86 = getelementptr inbounds %struct.ImBuf, ptr %81, i64 0, i32 8
  %87 = load ptr, ptr %86, align 8, !tbaa !96
  %88 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 8
  %89 = load float, ptr %88, align 8, !tbaa !64
  tail call void @glaDrawPixelsTexScaled(float noundef %79, float noundef %80, i32 noundef %83, i32 noundef %85, i32 noundef 6408, i32 noundef 5121, i32 noundef 9728, ptr noundef %87, float noundef %89, float noundef %89) #7
  br label %119

90:                                               ; preds = %37
  %91 = shl nsw i32 %47, 1
  %92 = sub nsw i32 %9, %91
  %93 = tail call float @llvm.fmuladd.f32(float %43, float -2.000000e+00, float %25)
  %94 = fptosi float %93 to i32
  br i1 %12, label %113, label %95

95:                                               ; preds = %90
  %96 = add nsw i32 %92, %45
  %97 = add nsw i32 %94, %45
  %98 = load i32, ptr %2, align 4, !tbaa !84
  %99 = icmp sgt i32 %98, %92
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 %92, ptr %2, align 4, !tbaa !84
  br label %101

101:                                              ; preds = %100, %95
  %102 = load i32, ptr %26, align 4, !tbaa !82
  %103 = icmp slt i32 %102, %96
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 %96, ptr %26, align 4, !tbaa !82
  br label %105

105:                                              ; preds = %104, %101
  %106 = load i32, ptr %27, align 4, !tbaa !86
  %107 = icmp sgt i32 %106, %94
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 %94, ptr %27, align 4, !tbaa !86
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, ptr %28, align 4, !tbaa !85
  %111 = icmp slt i32 %110, %97
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  store i32 %97, ptr %28, align 4, !tbaa !85
  br label %119

113:                                              ; preds = %90
  %114 = sitofp i32 %92 to float
  %115 = sitofp i32 %94 to float
  %116 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !59
  %118 = fdiv float 1.000000e+00, %43
  tail call void @UI_icon_draw_aspect(float noundef %114, float noundef %115, i32 noundef %117, float noundef %118, float noundef 0x3FE99999A0000000) #7
  br label %119

119:                                              ; preds = %112, %109, %77, %74, %113, %78
  %120 = load ptr, ptr %48, align 8, !tbaa !63
  %121 = icmp eq ptr %120, null
  br i1 %121, label %132, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 9
  %124 = load i32, ptr %123, align 4, !tbaa !65
  %125 = sdiv i32 %124, -2
  %126 = add i32 %125, %9
  %127 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 10
  %128 = load i32, ptr %127, align 8, !tbaa !66
  %129 = sdiv i32 %128, -2
  %130 = sub i32 %11, %45
  %131 = add i32 %130, %129
  br label %142

132:                                              ; preds = %119
  %133 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !87
  %134 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !91
  %135 = sitofp i32 %134 to float
  %136 = fmul float %133, %135
  %137 = fdiv float %136, 7.200000e+01
  %138 = tail call float @llvm.fmuladd.f32(float %137, float 1.000000e+01, float %29)
  %139 = fptosi float %138 to i32
  %140 = fadd float %137, %30
  %141 = fptosi float %140 to i32
  br label %142

142:                                              ; preds = %132, %122
  %143 = phi i32 [ %131, %122 ], [ %141, %132 ]
  %144 = phi i32 [ %126, %122 ], [ %139, %132 ]
  br i1 %12, label %176, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 3
  %147 = load i32, ptr %146, align 4, !tbaa !60
  switch i32 %147, label %156 [
    i32 0, label %148
    i32 2, label %152
    i32 3, label %154
  ]

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 4
  %150 = load ptr, ptr %149, align 8, !tbaa !61
  %151 = getelementptr inbounds %struct.ID, ptr %150, i64 0, i32 4, i64 2
  br label %156

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 5
  br label %156

154:                                              ; preds = %145
  %155 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 5
  br label %156

156:                                              ; preds = %145, %148, %152, %154
  %157 = phi ptr [ %155, %154 ], [ %153, %152 ], [ %151, %148 ], [ @.str.5, %145 ]
  %158 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %157) #7
  %159 = add nsw i32 %158, %144
  %160 = add nsw i32 %143, %45
  %161 = load i32, ptr %2, align 4, !tbaa !84
  %162 = icmp sgt i32 %161, %144
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  store i32 %144, ptr %2, align 4, !tbaa !84
  br label %164

164:                                              ; preds = %163, %156
  %165 = load i32, ptr %31, align 4, !tbaa !82
  %166 = icmp slt i32 %165, %159
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 %159, ptr %31, align 4, !tbaa !82
  br label %168

168:                                              ; preds = %167, %164
  %169 = load i32, ptr %32, align 4, !tbaa !86
  %170 = icmp sgt i32 %169, %143
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 %143, ptr %32, align 4, !tbaa !86
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i32, ptr %33, align 4, !tbaa !85
  %174 = icmp slt i32 %173, %160
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  store i32 %160, ptr %33, align 4, !tbaa !85
  br label %191

176:                                              ; preds = %142
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  %177 = sitofp i32 %144 to float
  %178 = sitofp i32 %143 to float
  %179 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !60
  switch i32 %180, label %189 [
    i32 0, label %181
    i32 2, label %185
    i32 3, label %187
  ]

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !61
  %184 = getelementptr inbounds %struct.ID, ptr %183, i64 0, i32 4, i64 2
  br label %189

185:                                              ; preds = %176
  %186 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 5
  br label %189

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 5
  br label %189

189:                                              ; preds = %176, %181, %185, %187
  %190 = phi ptr [ %188, %187 ], [ %186, %185 ], [ %184, %181 ], [ @.str.5, %176 ]
  tail call void @UI_DrawString(float noundef %177, float noundef %178, ptr noundef nonnull %190) #7
  br label %191

191:                                              ; preds = %175, %172, %189
  %192 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 11
  %193 = load i8, ptr %192, align 4, !tbaa !71
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %288, label %195

195:                                              ; preds = %191
  %196 = load ptr, ptr %48, align 8, !tbaa !63
  %197 = icmp eq ptr %196, null
  br i1 %197, label %215, label %198

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 9
  %200 = load i32, ptr %199, align 4, !tbaa !65
  %201 = sdiv i32 %200, -2
  %202 = add i32 %201, %9
  %203 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 10
  %204 = load i32, ptr %203, align 8, !tbaa !66
  %205 = sdiv i32 %204, 2
  %206 = add i32 %11, %47
  %207 = add i32 %206, %205
  %208 = add nsw i32 %207, %45
  %209 = icmp slt i32 %208, %5
  br i1 %209, label %231, label %210

210:                                              ; preds = %198
  %211 = add i32 %47, %45
  %212 = shl i32 %211, 1
  %213 = add i32 %205, %212
  %214 = sub i32 %11, %213
  br label %231

215:                                              ; preds = %195
  %216 = shl nsw i32 %47, 1
  %217 = sub nsw i32 %9, %216
  %218 = add nsw i32 %11, %45
  %219 = add nsw i32 %218, %45
  %220 = icmp slt i32 %219, %5
  br i1 %220, label %231, label %221

221:                                              ; preds = %215
  %222 = sub nsw i32 %11, %45
  %223 = sitofp i32 %222 to float
  %224 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !87
  %225 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !91
  %226 = sitofp i32 %225 to float
  %227 = fmul float %224, %226
  %228 = fdiv float %227, 7.200000e+01
  %229 = tail call float @llvm.fmuladd.f32(float %228, float -2.000000e+00, float %223)
  %230 = fptosi float %229 to i32
  br label %231

231:                                              ; preds = %215, %198, %221, %210
  %232 = phi i32 [ %214, %210 ], [ %230, %221 ], [ %207, %198 ], [ %218, %215 ]
  %233 = phi i32 [ %202, %210 ], [ %217, %221 ], [ %202, %198 ], [ %217, %215 ]
  br i1 %12, label %265, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 3
  %236 = load i32, ptr %235, align 4, !tbaa !60
  switch i32 %236, label %245 [
    i32 0, label %237
    i32 2, label %241
    i32 3, label %243
  ]

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 4
  %239 = load ptr, ptr %238, align 8, !tbaa !61
  %240 = getelementptr inbounds %struct.ID, ptr %239, i64 0, i32 4, i64 2
  br label %245

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 5
  br label %245

243:                                              ; preds = %234
  %244 = getelementptr inbounds %struct.wmDrag, ptr %38, i64 0, i32 5
  br label %245

245:                                              ; preds = %234, %237, %241, %243
  %246 = phi ptr [ %244, %243 ], [ %242, %241 ], [ %240, %237 ], [ @.str.5, %234 ]
  %247 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %246) #7
  %248 = add nsw i32 %247, %233
  %249 = add nsw i32 %232, %45
  %250 = load i32, ptr %2, align 4, !tbaa !84
  %251 = icmp sgt i32 %250, %233
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  store i32 %233, ptr %2, align 4, !tbaa !84
  br label %253

253:                                              ; preds = %252, %245
  %254 = load i32, ptr %34, align 4, !tbaa !82
  %255 = icmp slt i32 %254, %248
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  store i32 %248, ptr %34, align 4, !tbaa !82
  br label %257

257:                                              ; preds = %256, %253
  %258 = load i32, ptr %35, align 4, !tbaa !86
  %259 = icmp sgt i32 %258, %232
  br i1 %259, label %260, label %261

260:                                              ; preds = %257
  store i32 %232, ptr %35, align 4, !tbaa !86
  br label %261

261:                                              ; preds = %260, %257
  %262 = load i32, ptr %36, align 4, !tbaa !85
  %263 = icmp slt i32 %262, %249
  br i1 %263, label %264, label %288

264:                                              ; preds = %261
  store i32 %249, ptr %36, align 4, !tbaa !85
  br label %288

265:                                              ; preds = %231
  %266 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %192) #7
  %267 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !87
  %268 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !91
  %269 = sitofp i32 %268 to float
  %270 = fmul float %267, %269
  %271 = fdiv float %270, 7.200000e+01
  %272 = fmul float %271, 4.000000e+00
  %273 = fptosi float %272 to i32
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #7
  tail call void @uiSetRoundBox(i32 noundef 31) #7
  %274 = sitofp i32 %233 to float
  %275 = sitofp i32 %232 to float
  %276 = add nsw i32 %266, %233
  %277 = shl nsw i32 %273, 1
  %278 = add nsw i32 %276, %277
  %279 = sitofp i32 %278 to float
  %280 = shl nsw i32 %273, 2
  %281 = add nsw i32 %280, %232
  %282 = sitofp i32 %281 to float
  %283 = sitofp i32 %273 to float
  tail call void @uiRoundBox(float noundef %274, float noundef %275, float noundef %279, float noundef %282, float noundef %283) #7
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #7
  %284 = add nsw i32 %233, %273
  %285 = sitofp i32 %284 to float
  %286 = add nsw i32 %232, %273
  %287 = sitofp i32 %286 to float
  tail call void @UI_DrawString(float noundef %285, float noundef %287, ptr noundef nonnull %192) #7
  br label %288

288:                                              ; preds = %264, %261, %265, %191
  %289 = load ptr, ptr %38, align 8, !tbaa !34
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %37, !llvm.loop !97

291:                                              ; preds = %288, %17
  tail call void @glDisable(i32 noundef 3042) #7
  ret void
}

declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glaDrawPixelsTexScaled(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @UI_but_active_drop_name(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 32}
!39 = !{!"wmDropBoxMap", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 32, !41, i64 34, !36, i64 36}
!40 = !{!"ListBase", !35, i64 0, !35, i64 8}
!41 = !{!"short", !36, i64 0}
!42 = !{!39, !41, i64 34}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = !{!47, !35, i64 16}
!47 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !41, i64 56}
!48 = !{!47, !35, i64 24}
!49 = !{!47, !35, i64 32}
!50 = !{!47, !41, i64 56}
!51 = !{!47, !35, i64 48}
!52 = distinct !{!52, !44, !45}
!53 = distinct !{!53, !44, !45}
!54 = !{!55, !56, i64 1284}
!55 = !{!"wmDrag", !35, i64 0, !35, i64 8, !56, i64 16, !56, i64 20, !35, i64 24, !36, i64 32, !57, i64 1056, !35, i64 1064, !58, i64 1072, !56, i64 1076, !56, i64 1080, !36, i64 1084, !56, i64 1284}
!56 = !{!"int", !36, i64 0}
!57 = !{!"double", !36, i64 0}
!58 = !{!"float", !36, i64 0}
!59 = !{!55, !56, i64 16}
!60 = !{!55, !56, i64 20}
!61 = !{!55, !35, i64 24}
!62 = !{!55, !57, i64 1056}
!63 = !{!55, !35, i64 1064}
!64 = !{!55, !58, i64 1072}
!65 = !{!55, !56, i64 1076}
!66 = !{!55, !56, i64 1080}
!67 = distinct !{!67, !44, !45}
!68 = !{!69, !56, i64 20}
!69 = !{!"wmEvent", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 18, !56, i64 20, !56, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !41, i64 44, !41, i64 46, !56, i64 48, !56, i64 52, !57, i64 56, !56, i64 64, !56, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 106, !56, i64 108, !35, i64 112}
!70 = !{!69, !56, i64 24}
!71 = !{!36, !36, i64 0}
!72 = !{!73, !35, i64 128}
!73 = !{!"wmEventHandler", !35, i64 0, !35, i64 8, !56, i64 16, !56, i64 20, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!74 = distinct !{!74, !44, !45}
!75 = !{!76, !35, i64 88}
!76 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !40, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !77, i64 152, !41, i64 184}
!77 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!78 = distinct !{!78, !44, !45}
!79 = distinct !{!79, !44, !45}
!80 = !{!81, !35, i64 136}
!81 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !56, i64 128, !41, i64 132, !41, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !56, i64 160, !56, i64 164, !35, i64 168, !40, i64 176, !40, i64 192, !40, i64 208, !40, i64 224, !40, i64 240}
!82 = !{!83, !56, i64 4}
!83 = !{!"rcti", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12}
!84 = !{!83, !56, i64 0}
!85 = !{!83, !56, i64 12}
!86 = !{!83, !56, i64 8}
!87 = !{!88, !58, i64 10908}
!88 = !{!"UserDef", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !56, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !56, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !56, i64 8484, !56, i64 8488, !56, i64 8492, !41, i64 8496, !41, i64 8498, !56, i64 8500, !56, i64 8504, !56, i64 8508, !56, i64 8512, !56, i64 8516, !56, i64 8520, !56, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !56, i64 8912, !56, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !58, i64 8956, !58, i64 8960, !56, i64 8964, !41, i64 8968, !41, i64 8970, !58, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !89, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !56, i64 10896, !56, i64 10900, !58, i64 10904, !58, i64 10908, !56, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !90, i64 10928}
!89 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!90 = !{!"WalkNavigation", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !41, i64 24, !36, i64 26}
!91 = !{!88, !56, i64 8524}
!92 = !{!93, !56, i64 16}
!93 = !{!"ImBuf", !35, i64 0, !35, i64 8, !56, i64 16, !56, i64 20, !36, i64 24, !56, i64 28, !56, i64 32, !56, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !56, i64 72, !56, i64 76, !56, i64 80, !56, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !58, i64 112, !36, i64 120, !56, i64 280, !56, i64 284, !56, i64 288, !56, i64 292, !35, i64 296, !35, i64 304, !56, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !56, i64 2376, !35, i64 2384, !56, i64 2392, !56, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !56, i64 2432, !83, i64 2436, !94, i64 2456}
!94 = !{!"DDSData", !56, i64 0, !56, i64 4, !35, i64 8, !56, i64 16}
!95 = !{!93, !56, i64 20}
!96 = !{!93, !35, i64 40}
!97 = distinct !{!97, !44, !45}
