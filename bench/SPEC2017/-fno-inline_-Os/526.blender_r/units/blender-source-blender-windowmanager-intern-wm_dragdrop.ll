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
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.wmEventHandler = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }

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

; Function Attrs: noinline nounwind optsize uwtable
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
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %18, i64 noundef 64) #8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %6, %12, %17
  %22 = load ptr, ptr %7, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !llvm.loop !43

24:                                               ; preds = %21, %3
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 104, ptr noundef nonnull @.str) #9
  %27 = getelementptr inbounds %struct.wmDropBoxMap, ptr %26, i64 0, i32 5
  %28 = tail call ptr @BLI_strncpy(ptr noundef nonnull %27, ptr noundef %0, i64 noundef 64) #9
  %29 = trunc i32 %1 to i16
  %30 = getelementptr inbounds %struct.wmDropBoxMap, ptr %26, i64 0, i32 3
  store i16 %29, ptr %30, align 8, !tbaa !38
  %31 = trunc i32 %2 to i16
  %32 = getelementptr inbounds %struct.wmDropBoxMap, ptr %26, i64 0, i32 4
  store i16 %31, ptr %32, align 2, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull @dropboxes, ptr noundef %26) #9
  br label %33

33:                                               ; preds = %17, %24
  %34 = phi ptr [ %26, %24 ], [ %7, %17 ]
  %35 = getelementptr inbounds %struct.wmDropBoxMap, ptr %34, i64 0, i32 2
  ret ptr %35
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_dropbox_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 64, ptr noundef nonnull @.str.1) #9
  %7 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 2
  store ptr %2, ptr %7, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 3
  store ptr %3, ptr %8, align 8, !tbaa !47
  %9 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 0) #9
  %10 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 4
  store ptr %9, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 7
  store i16 0, ptr %11, align 8, !tbaa !49
  %12 = icmp eq ptr %9, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %6) #9
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %1) #10
  br label %19

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 6
  %18 = getelementptr inbounds %struct.wmDropBox, ptr %6, i64 0, i32 5
  tail call void @WM_operator_properties_alloc(ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %1) #9
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %6) #9
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ null, %13 ], [ %6, %16 ]
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @WM_operator_properties_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %11 = load ptr, ptr %10, align 8, !tbaa !50
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  tail call void @WM_operator_properties_free(ptr noundef nonnull %11) #9
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %15 = load ptr, ptr %10, align 8, !tbaa !50
  tail call void %14(ptr noundef %15) #9
  br label %16

16:                                               ; preds = %8, %13
  %17 = load ptr, ptr %9, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %8, !llvm.loop !51

19:                                               ; preds = %16, %3
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #9
  %20 = load ptr, ptr %4, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %3, !llvm.loop !52

22:                                               ; preds = %19, %0
  tail call void @BLI_freelistN(ptr noundef nonnull @dropboxes) #9
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @WM_event_start_drag(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, double noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 1288, ptr noundef nonnull @.str.3) #9
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %7, i64 0, i32 12
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 12
  store i32 %5, ptr %11, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 2
  store i32 %1, ptr %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 3
  store i32 %2, ptr %13, align 4, !tbaa !59
  %14 = icmp eq i32 %2, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 5
  %17 = tail call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef %3, i64 noundef 1024) #9
  br label %20

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 4
  store ptr %3, ptr %19, align 8, !tbaa !60
  br label %20

20:                                               ; preds = %18, %15
  %21 = getelementptr inbounds %struct.wmDrag, ptr %9, i64 0, i32 6
  store double %4, ptr %21, align 8, !tbaa !61
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @WM_event_drag_image(ptr nocapture noundef writeonly %0, ptr noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 7
  store ptr %1, ptr %6, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 8
  store float %2, ptr %7, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 9
  store i32 %3, ptr %8, align 4, !tbaa !64
  %9 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 10
  store i32 %4, ptr %9, align 8, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_drag_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !53
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #9
  br label %12

12:                                               ; preds = %10, %6, %1
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %13(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_drag_free_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @WM_drag_free(ptr noundef nonnull %5) #10
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !66

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_drags_check_ops(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  tail call fastcc void @wm_drop_operator_options(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %1) #10
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !67

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_drop_operator_options(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !68 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %5 = tail call i32 @WM_window_pixels_x(ptr noundef %4) #9
  %6 = tail call i32 @WM_window_pixels_y(ptr noundef %4) #9
  %7 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !69
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !71
  %13 = icmp slt i32 %12, 0
  %14 = icmp sgt i32 %8, %5
  %15 = select i1 %13, i1 true, i1 %14
  %16 = icmp sgt i32 %12, %6
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 11
  store i8 0, ptr %19, align 4, !tbaa !72
  %20 = tail call zeroext i8 @UI_but_active_drop_name(ptr noundef %0) #9
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @wm_dropbox_active(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ @.str.4, %18 ], [ %23, %22 ]
  %27 = tail call ptr @BLI_strncpy(ptr noundef nonnull %19, ptr noundef nonnull %26, i64 noundef 200) #9
  br label %28

28:                                               ; preds = %25, %22, %3, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_drags_draw(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %5 = tail call i32 @WM_window_pixels_y(ptr noundef %1) #9
  %6 = getelementptr inbounds %struct.wmWindow, ptr %1, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %2, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 1
  store i32 %9, ptr %14, align 4, !tbaa !75
  store i32 %9, ptr %2, align 4, !tbaa !77
  %15 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 3
  store i32 %11, ptr %15, align 4, !tbaa !78
  %16 = getelementptr inbounds %struct.rcti, ptr %2, i64 0, i32 2
  store i32 %11, ptr %16, align 4, !tbaa !79
  br label %17

17:                                               ; preds = %13, %3
  tail call void @glEnable(i32 noundef 3042) #9
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %4, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %163, label %21

21:                                               ; preds = %17
  %22 = sitofp i32 %11 to float
  %23 = sitofp i32 %9 to float
  br label %24

24:                                               ; preds = %21, %160
  %25 = phi ptr [ %19, %21 ], [ %161, %160 ]
  %26 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !80
  %27 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !84
  %28 = sitofp i32 %27 to float
  %29 = fmul float %26, %28
  %30 = fdiv float %29, 7.200000e+01
  %31 = fmul float %30, 1.600000e+01
  %32 = fptosi float %31 to i32
  %33 = fmul float %30, 4.000000e+00
  %34 = fptosi float %33 to i32
  %35 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !62
  %37 = icmp eq ptr %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !64
  %41 = sdiv i32 %40, -2
  %42 = add i32 %41, %9
  %43 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 10
  %44 = load i32, ptr %43, align 8, !tbaa !65
  %45 = sdiv i32 %44, -2
  %46 = add i32 %45, %11
  br i1 %12, label %50, label %47

47:                                               ; preds = %38
  %48 = add nsw i32 %42, %40
  %49 = add nsw i32 %46, %44
  tail call fastcc void @drag_rect_minmax(ptr noundef nonnull %2, i32 noundef %42, i32 noundef %46, i32 noundef %48, i32 noundef %49) #10
  br label %76

50:                                               ; preds = %38
  tail call void @glColor4f(float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 0x3FE4CCCCC0000000) #9
  %51 = sitofp i32 %42 to float
  %52 = sitofp i32 %46 to float
  %53 = load ptr, ptr %35, align 8, !tbaa !62
  %54 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !85
  %56 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !88
  %58 = getelementptr inbounds %struct.ImBuf, ptr %53, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !89
  %60 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 8
  %61 = load float, ptr %60, align 8, !tbaa !63
  tail call void @glaDrawPixelsTexScaled(float noundef %51, float noundef %52, i32 noundef %55, i32 noundef %57, i32 noundef 6408, i32 noundef 5121, i32 noundef 9728, ptr noundef %59, float noundef %61, float noundef %61) #9
  br label %76

62:                                               ; preds = %24
  %63 = shl nsw i32 %34, 1
  %64 = sub nsw i32 %9, %63
  %65 = tail call float @llvm.fmuladd.f32(float %30, float -2.000000e+00, float %22)
  %66 = fptosi float %65 to i32
  br i1 %12, label %70, label %67

67:                                               ; preds = %62
  %68 = add nsw i32 %64, %32
  %69 = add nsw i32 %66, %32
  tail call fastcc void @drag_rect_minmax(ptr noundef nonnull %2, i32 noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %69) #10
  br label %76

70:                                               ; preds = %62
  %71 = sitofp i32 %64 to float
  %72 = sitofp i32 %66 to float
  %73 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !58
  %75 = fdiv float 1.000000e+00, %30
  tail call void @UI_icon_draw_aspect(float noundef %71, float noundef %72, i32 noundef %74, float noundef %75, float noundef 0x3FE99999A0000000) #9
  br label %76

76:                                               ; preds = %67, %70, %47, %50
  %77 = load ptr, ptr %35, align 8, !tbaa !62
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 9
  %81 = load i32, ptr %80, align 4, !tbaa !64
  %82 = sdiv i32 %81, -2
  %83 = add i32 %82, %9
  %84 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 10
  %85 = load i32, ptr %84, align 8, !tbaa !65
  %86 = sdiv i32 %85, -2
  %87 = sub i32 %11, %32
  %88 = add i32 %87, %86
  br label %99

89:                                               ; preds = %76
  %90 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !80
  %91 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !84
  %92 = sitofp i32 %91 to float
  %93 = fmul float %90, %92
  %94 = fdiv float %93, 7.200000e+01
  %95 = tail call float @llvm.fmuladd.f32(float %94, float 1.000000e+01, float %23)
  %96 = fptosi float %95 to i32
  %97 = fadd float %94, %22
  %98 = fptosi float %97 to i32
  br label %99

99:                                               ; preds = %89, %79
  %100 = phi i32 [ %88, %79 ], [ %98, %89 ]
  %101 = phi i32 [ %83, %79 ], [ %96, %89 ]
  br i1 %12, label %107, label %102

102:                                              ; preds = %99
  %103 = tail call fastcc ptr @wm_drag_name(ptr noundef nonnull %25) #10
  %104 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %103) #9
  %105 = add nsw i32 %104, %101
  %106 = add nsw i32 %100, %32
  tail call fastcc void @drag_rect_minmax(ptr noundef nonnull %2, i32 noundef %101, i32 noundef %100, i32 noundef %105, i32 noundef %106) #10
  br label %111

107:                                              ; preds = %99
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  %108 = sitofp i32 %101 to float
  %109 = sitofp i32 %100 to float
  %110 = tail call fastcc ptr @wm_drag_name(ptr noundef nonnull %25) #10
  tail call void @UI_DrawString(float noundef %108, float noundef %109, ptr noundef nonnull %110) #9
  br label %111

111:                                              ; preds = %107, %102
  %112 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 11
  %113 = load i8, ptr %112, align 4, !tbaa !72
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %160, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %35, align 8, !tbaa !62
  %117 = icmp eq ptr %116, null
  br i1 %117, label %135, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 9
  %120 = load i32, ptr %119, align 4, !tbaa !64
  %121 = sdiv i32 %120, -2
  %122 = add i32 %121, %9
  %123 = getelementptr inbounds %struct.wmDrag, ptr %25, i64 0, i32 10
  %124 = load i32, ptr %123, align 8, !tbaa !65
  %125 = sdiv i32 %124, 2
  %126 = add i32 %11, %34
  %127 = add i32 %126, %125
  %128 = add nsw i32 %127, %32
  %129 = icmp slt i32 %128, %5
  br i1 %129, label %151, label %130

130:                                              ; preds = %118
  %131 = add i32 %34, %32
  %132 = shl i32 %131, 1
  %133 = add i32 %125, %132
  %134 = sub i32 %11, %133
  br label %151

135:                                              ; preds = %115
  %136 = shl nsw i32 %34, 1
  %137 = sub nsw i32 %9, %136
  %138 = add nsw i32 %11, %32
  %139 = add nsw i32 %138, %32
  %140 = icmp slt i32 %139, %5
  br i1 %140, label %151, label %141

141:                                              ; preds = %135
  %142 = sub nsw i32 %11, %32
  %143 = sitofp i32 %142 to float
  %144 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !80
  %145 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !84
  %146 = sitofp i32 %145 to float
  %147 = fmul float %144, %146
  %148 = fdiv float %147, 7.200000e+01
  %149 = tail call float @llvm.fmuladd.f32(float %148, float -2.000000e+00, float %143)
  %150 = fptosi float %149 to i32
  br label %151

151:                                              ; preds = %135, %118, %141, %130
  %152 = phi i32 [ %134, %130 ], [ %150, %141 ], [ %127, %118 ], [ %138, %135 ]
  %153 = phi i32 [ %122, %130 ], [ %137, %141 ], [ %122, %118 ], [ %137, %135 ]
  br i1 %12, label %159, label %154

154:                                              ; preds = %151
  %155 = tail call fastcc ptr @wm_drag_name(ptr noundef nonnull %25) #10
  %156 = tail call i32 @UI_GetStringWidth(ptr noundef nonnull %155) #9
  %157 = add nsw i32 %156, %153
  %158 = add nsw i32 %152, %32
  tail call fastcc void @drag_rect_minmax(ptr noundef nonnull %2, i32 noundef %153, i32 noundef %152, i32 noundef %157, i32 noundef %158) #10
  br label %160

159:                                              ; preds = %151
  tail call fastcc void @wm_drop_operator_draw(ptr noundef nonnull %112, i32 noundef %153, i32 noundef %152) #10
  br label %160

160:                                              ; preds = %154, %159, %111
  %161 = load ptr, ptr %25, align 8, !tbaa !34
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %24, !llvm.loop !90

163:                                              ; preds = %160, %17
  tail call void @glDisable(i32 noundef 3042) #9
  ret void
}

; Function Attrs: optsize
declare i32 @WM_window_pixels_y(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @drag_rect_minmax(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 !PGOFuncName !91 {
  %6 = load i32, ptr %0, align 4, !tbaa !77
  %7 = icmp sgt i32 %6, %1
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  store i32 %1, ptr %0, align 4, !tbaa !77
  br label %9

9:                                                ; preds = %8, %5
  %10 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !75
  %12 = icmp slt i32 %11, %3
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 %3, ptr %10, align 4, !tbaa !75
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !79
  %17 = icmp sgt i32 %16, %2
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 %2, ptr %15, align 4, !tbaa !79
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.rcti, ptr %0, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !78
  %22 = icmp slt i32 %21, %4
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 %4, ptr %20, align 4, !tbaa !78
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glaDrawPixelsTexScaled(float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @UI_icon_draw_aspect(float noundef, float noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @UI_GetStringWidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @wm_drag_name(ptr noundef readonly %0) unnamed_addr #7 !PGOFuncName !92 {
  %2 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !59
  switch i32 %3, label %12 [
    i32 0, label %4
    i32 2, label %8
    i32 3, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.ID, ptr %6, i64 0, i32 4, i64 2
  br label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  br label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  br label %12

12:                                               ; preds = %1, %10, %8, %4
  %13 = phi ptr [ %11, %10 ], [ %9, %8 ], [ %7, %4 ], [ @.str.5, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare void @glColor4ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_DrawString(float noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_drop_operator_draw(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !93 {
  %4 = tail call i32 @UI_GetStringWidth(ptr noundef %0) #9
  %5 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !80
  %6 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !84
  %7 = sitofp i32 %6 to float
  %8 = fmul float %5, %7
  %9 = fdiv float %8, 7.200000e+01
  %10 = fmul float %9, 4.000000e+00
  %11 = fptosi float %10 to i32
  tail call void @glColor4ub(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) #9
  tail call void @uiSetRoundBox(i32 noundef 31) #9
  %12 = sitofp i32 %1 to float
  %13 = sitofp i32 %2 to float
  %14 = add nsw i32 %4, %1
  %15 = shl nsw i32 %11, 1
  %16 = add nsw i32 %14, %15
  %17 = sitofp i32 %16 to float
  %18 = shl nsw i32 %11, 2
  %19 = add nsw i32 %18, %2
  %20 = sitofp i32 %19 to float
  %21 = sitofp i32 %11 to float
  tail call void @uiRoundBox(float noundef %12, float noundef %13, float noundef %17, float noundef %20, float noundef %21) #9
  tail call void @glColor4ub(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) #9
  %22 = add nsw i32 %11, %1
  %23 = sitofp i32 %22 to float
  %24 = add nsw i32 %11, %2
  %25 = sitofp i32 %24 to float
  tail call void @UI_DrawString(float noundef %23, float noundef %25, ptr noundef %0) #9
  ret void
}

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @WM_window_pixels_x(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @UI_but_active_drop_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @wm_dropbox_active(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !94 {
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %7 = getelementptr inbounds %struct.wmWindow, ptr %4, i64 0, i32 28
  %8 = tail call fastcc ptr @dropbox_active(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.ScrArea, ptr %5, i64 0, i32 21
  %12 = tail call fastcc ptr @dropbox_active(ptr noundef %0, ptr noundef nonnull %11, ptr noundef %1, ptr noundef %2) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 26
  %16 = tail call fastcc ptr @dropbox_active(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %1, ptr noundef %2) #10
  br label %17

17:                                               ; preds = %14, %10, %3
  %18 = phi ptr [ %8, %3 ], [ %12, %10 ], [ %16, %14 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dropbox_active(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !95 {
  %5 = load ptr, ptr %1, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %4, %27
  %8 = phi ptr [ %28, %27 ], [ %5, %4 ]
  %9 = getelementptr inbounds %struct.wmEventHandler, ptr %8, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %7, %16
  %13 = phi ptr [ %14, %16 ], [ %10, %7 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.wmDropBox, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = tail call i32 %18(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %12, label %21, !llvm.loop !98

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wmDropBox, ptr %14, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %struct.wmOperatorType, ptr %23, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !99
  %26 = tail call ptr @RNA_struct_ui_name(ptr noundef %25) #9
  br label %30

27:                                               ; preds = %12, %7
  %28 = load ptr, ptr %8, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !102

30:                                               ; preds = %27, %4, %21
  %31 = phi ptr [ %26, %21 ], [ null, %4 ], [ null, %27 ]
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @RNA_struct_ui_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiSetRoundBox(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiRoundBox(float noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize willreturn memory(read) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !41, i64 32}
!39 = !{!"wmDropBoxMap", !35, i64 0, !35, i64 8, !40, i64 16, !41, i64 32, !41, i64 34, !36, i64 36}
!40 = !{!"ListBase", !35, i64 0, !35, i64 8}
!41 = !{!"short", !36, i64 0}
!42 = !{!39, !41, i64 34}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!46, !35, i64 16}
!46 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !41, i64 56}
!47 = !{!46, !35, i64 24}
!48 = !{!46, !35, i64 32}
!49 = !{!46, !41, i64 56}
!50 = !{!46, !35, i64 48}
!51 = distinct !{!51, !44}
!52 = distinct !{!52, !44}
!53 = !{!54, !55, i64 1284}
!54 = !{!"wmDrag", !35, i64 0, !35, i64 8, !55, i64 16, !55, i64 20, !35, i64 24, !36, i64 32, !56, i64 1056, !35, i64 1064, !57, i64 1072, !55, i64 1076, !55, i64 1080, !36, i64 1084, !55, i64 1284}
!55 = !{!"int", !36, i64 0}
!56 = !{!"double", !36, i64 0}
!57 = !{!"float", !36, i64 0}
!58 = !{!54, !55, i64 16}
!59 = !{!54, !55, i64 20}
!60 = !{!54, !35, i64 24}
!61 = !{!54, !56, i64 1056}
!62 = !{!54, !35, i64 1064}
!63 = !{!54, !57, i64 1072}
!64 = !{!54, !55, i64 1076}
!65 = !{!54, !55, i64 1080}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = !{!"wm_dragdrop.c:wm_drop_operator_options"}
!69 = !{!70, !55, i64 20}
!70 = !{!"wmEvent", !35, i64 0, !35, i64 8, !41, i64 16, !41, i64 18, !55, i64 20, !55, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !41, i64 44, !41, i64 46, !55, i64 48, !55, i64 52, !56, i64 56, !55, i64 64, !55, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 106, !55, i64 108, !35, i64 112}
!71 = !{!70, !55, i64 24}
!72 = !{!36, !36, i64 0}
!73 = !{!74, !35, i64 136}
!74 = !{!"wmWindow", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !41, i64 112, !41, i64 114, !41, i64 116, !41, i64 118, !41, i64 120, !41, i64 122, !41, i64 124, !41, i64 126, !55, i64 128, !41, i64 132, !41, i64 134, !35, i64 136, !35, i64 144, !35, i64 152, !55, i64 160, !55, i64 164, !35, i64 168, !40, i64 176, !40, i64 192, !40, i64 208, !40, i64 224, !40, i64 240}
!75 = !{!76, !55, i64 4}
!76 = !{!"rcti", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!77 = !{!76, !55, i64 0}
!78 = !{!76, !55, i64 12}
!79 = !{!76, !55, i64 8}
!80 = !{!81, !57, i64 10908}
!81 = !{!"UserDef", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !55, i64 8468, !41, i64 8472, !41, i64 8474, !41, i64 8476, !41, i64 8478, !41, i64 8480, !41, i64 8482, !55, i64 8484, !55, i64 8488, !55, i64 8492, !41, i64 8496, !41, i64 8498, !55, i64 8500, !55, i64 8504, !55, i64 8508, !55, i64 8512, !55, i64 8516, !55, i64 8520, !55, i64 8524, !41, i64 8528, !41, i64 8530, !41, i64 8532, !41, i64 8534, !40, i64 8536, !40, i64 8552, !40, i64 8568, !40, i64 8584, !40, i64 8600, !40, i64 8616, !40, i64 8632, !36, i64 8648, !41, i64 8712, !41, i64 8714, !41, i64 8716, !41, i64 8718, !41, i64 8720, !41, i64 8722, !41, i64 8724, !41, i64 8726, !36, i64 8728, !41, i64 8896, !41, i64 8898, !41, i64 8900, !41, i64 8902, !41, i64 8904, !41, i64 8906, !41, i64 8908, !41, i64 8910, !55, i64 8912, !55, i64 8916, !41, i64 8920, !41, i64 8922, !41, i64 8924, !41, i64 8926, !41, i64 8928, !41, i64 8930, !41, i64 8932, !41, i64 8934, !41, i64 8936, !41, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !41, i64 8944, !41, i64 8946, !41, i64 8948, !41, i64 8950, !41, i64 8952, !41, i64 8954, !57, i64 8956, !57, i64 8960, !55, i64 8964, !41, i64 8968, !41, i64 8970, !57, i64 8972, !41, i64 8976, !41, i64 8978, !41, i64 8980, !41, i64 8982, !82, i64 8984, !36, i64 9760, !36, i64 9772, !41, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !55, i64 10896, !55, i64 10900, !57, i64 10904, !57, i64 10908, !55, i64 10912, !41, i64 10916, !41, i64 10918, !41, i64 10920, !41, i64 10922, !41, i64 10924, !41, i64 10926, !83, i64 10928}
!82 = !{!"ColorBand", !41, i64 0, !41, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!83 = !{!"WalkNavigation", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !41, i64 24, !36, i64 26}
!84 = !{!81, !55, i64 8524}
!85 = !{!86, !55, i64 16}
!86 = !{!"ImBuf", !35, i64 0, !35, i64 8, !55, i64 16, !55, i64 20, !36, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !35, i64 40, !35, i64 48, !36, i64 56, !55, i64 72, !55, i64 76, !55, i64 80, !55, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !57, i64 112, !36, i64 120, !55, i64 280, !55, i64 284, !55, i64 288, !55, i64 292, !35, i64 296, !35, i64 304, !55, i64 312, !36, i64 316, !36, i64 1340, !35, i64 2368, !55, i64 2376, !35, i64 2384, !55, i64 2392, !55, i64 2396, !35, i64 2400, !35, i64 2408, !35, i64 2416, !35, i64 2424, !55, i64 2432, !76, i64 2436, !87, i64 2456}
!87 = !{!"DDSData", !55, i64 0, !55, i64 4, !35, i64 8, !55, i64 16}
!88 = !{!86, !55, i64 20}
!89 = !{!86, !35, i64 40}
!90 = distinct !{!90, !44}
!91 = !{!"wm_dragdrop.c:drag_rect_minmax"}
!92 = !{!"wm_dragdrop.c:wm_drag_name"}
!93 = !{!"wm_dragdrop.c:wm_drop_operator_draw"}
!94 = !{!"wm_dragdrop.c:wm_dropbox_active"}
!95 = !{!"wm_dragdrop.c:dropbox_active"}
!96 = !{!97, !35, i64 128}
!97 = !{!"wmEventHandler", !35, i64 0, !35, i64 8, !55, i64 16, !55, i64 20, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128}
!98 = distinct !{!98, !44}
!99 = !{!100, !35, i64 88}
!100 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !40, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !101, i64 152, !41, i64 184}
!101 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!102 = distinct !{!102, !44}
