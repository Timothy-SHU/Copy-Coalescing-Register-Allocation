; ModuleID = 'blender/source/blender/editors/space_file/space_file.c'
source_filename = "blender/source/blender/editors/space_file/space_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceFile = type { ptr, ptr, %struct.ListBase, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i16 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.FileLayout = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x float] }
%struct.FileSelectParams = type { [96 x i8], [1056 x i8], [256 x i8], [256 x i8], [256 x i8], [64 x i8], i32, i32, i32, i16, i16, i16, i16, i16, i16, [8 x i8] }
%struct.direntry = type { i32, ptr, ptr, %struct.stat, i32, [16 x i8], [4 x i8], [4 x i8], [4 x i8], [16 x i8], [8 x i8], [16 x i8], [16 x i8], ptr, i32, ptr, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"spacetype file\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"spacetype file region\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bookmarks.txt\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"initfile\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"header for file\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"channel area for file\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ui area for file\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"main area for file\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"File Browser\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"FILE_OT_bookmark_toggle\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"FILE_OT_parent\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"FILE_OT_bookmark_add\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"FILE_OT_hidedot\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"FILE_OT_previous\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"FILE_OT_next\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"FILE_OT_directory_new\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"FILE_OT_delete\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"FILE_OT_smoothscroll\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"File Browser Main\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"FILE_OT_execute\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"need_active\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"FILE_OT_select\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"fill\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"FILE_OT_select_all_toggle\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"FILE_OT_refresh\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"FILE_OT_select_border\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"FILE_OT_rename\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"FILE_OT_highlight\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"FILE_OT_filenum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"increment\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"File Browser Buttons\00", align 1
@str = private unnamed_addr constant [65 x i8] c"File\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_file() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #6
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 5, ptr %3, align 8, !tbaa !9
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #6
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @file_new, ptr %5, align 8, !tbaa !13
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @file_free, ptr %6, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @file_init, ptr %7, align 8, !tbaa !15
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 8
  store ptr @file_exit, ptr %8, align 8, !tbaa !16
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @file_duplicate, ptr %9, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @file_refresh, ptr %10, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @file_listener, ptr %11, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @file_operatortypes, ptr %12, align 8, !tbaa !20
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @file_keymap, ptr %13, align 8, !tbaa !21
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %15 = tail call ptr %14(i64 noundef 184, ptr noundef nonnull @.str.2) #6
  %16 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 3
  store ptr @file_main_area_init, ptr %17, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 5
  store ptr @file_main_area_draw, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 6
  store ptr @file_main_area_listener, ptr %19, align 8, !tbaa !27
  %20 = getelementptr inbounds %struct.ARegionType, ptr %15, i64 0, i32 20
  store i32 3, ptr %20, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %15) #6
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %23 = tail call ptr %22(i64 noundef 184, ptr noundef nonnull @.str.2) #6
  %24 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 2
  store i32 1, ptr %24, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 19
  store i32 26, ptr %25, align 4, !tbaa !29
  %26 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 20
  store i32 67, ptr %26, align 8, !tbaa !28
  %27 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 3
  store ptr @file_header_area_init, ptr %27, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 5
  store ptr @file_header_area_draw, ptr %28, align 8, !tbaa !26
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %23) #6
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %30 = tail call ptr %29(i64 noundef 184, ptr noundef nonnull @.str.2) #6
  %31 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 2
  store i32 4, ptr %31, align 8, !tbaa !22
  %32 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 19
  store i32 60, ptr %32, align 4, !tbaa !29
  %33 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 20
  store i32 1, ptr %33, align 8, !tbaa !28
  %34 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 6
  store ptr @file_ui_area_listener, ptr %34, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 3
  store ptr @file_ui_area_init, ptr %35, align 8, !tbaa !25
  %36 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 5
  store ptr @file_ui_area_draw, ptr %36, align 8, !tbaa !26
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %30) #6
  %37 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %38 = tail call ptr %37(i64 noundef 184, ptr noundef nonnull @.str.2) #6
  %39 = getelementptr inbounds %struct.ARegionType, ptr %38, i64 0, i32 2
  store i32 2, ptr %39, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.ARegionType, ptr %38, i64 0, i32 18
  store i32 240, ptr %40, align 8, !tbaa !30
  %41 = getelementptr inbounds %struct.ARegionType, ptr %38, i64 0, i32 20
  store i32 1, ptr %41, align 8, !tbaa !28
  %42 = getelementptr inbounds %struct.ARegionType, ptr %38, i64 0, i32 6
  store ptr @file_channel_area_listener, ptr %42, align 8, !tbaa !27
  %43 = getelementptr inbounds %struct.ARegionType, ptr %38, i64 0, i32 3
  store ptr @file_channel_area_init, ptr %43, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.ARegionType, ptr %38, i64 0, i32 5
  store ptr @file_channel_area_draw, ptr %44, align 8, !tbaa !26
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %38) #6
  tail call void @file_panels_register(ptr noundef %38) #6
  tail call void @BKE_spacetype_register(ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @file_new(ptr nocapture readnone %0) #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %3 = tail call ptr %2(i64 noundef 104, ptr noundef nonnull @.str.5) #6
  %4 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 3
  store i32 5, ptr %4, align 8, !tbaa !31
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %6 = tail call ptr %5(i64 noundef 384, ptr noundef nonnull @.str.6) #6
  %7 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %6) #6
  %8 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  store i16 1, ptr %8, align 2, !tbaa !33
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 9
  store i16 1, ptr %9, align 8, !tbaa !39
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.7) #6
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %11) #6
  %12 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 2, ptr %12, align 2, !tbaa !33
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  store i16 3, ptr %13, align 8, !tbaa !39
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %15 = tail call ptr %14(i64 noundef 384, ptr noundef nonnull @.str.8) #6
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %15) #6
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 8
  store i16 4, ptr %16, align 2, !tbaa !33
  %17 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 9
  store i16 1, ptr %17, align 8, !tbaa !39
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %19 = tail call ptr %18(i64 noundef 384, ptr noundef nonnull @.str.9) #6
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %19) #6
  %20 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  store i16 0, ptr %20, align 2, !tbaa !33
  %21 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 9
  store i16 10, ptr %21, align 8, !tbaa !40
  %22 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 15
  store i16 6, ptr %22, align 4, !tbaa !41
  %23 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 12
  store i16 771, ptr %23, align 2, !tbaa !42
  %24 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 11
  store i16 2, ptr %24, align 4, !tbaa !43
  %25 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 7
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %25, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  tail call void @filelist_freelib(ptr noundef nonnull %3) #6
  %6 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void @filelist_free(ptr noundef %6) #6
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %8 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void %7(ptr noundef %8) #6
  store ptr null, ptr %2, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  tail call void @folderlist_free(ptr noundef nonnull %11) #6
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %15 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void %14(ptr noundef %15) #6
  store ptr null, ptr %10, align 8, !tbaa !46
  br label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  tail call void @folderlist_free(ptr noundef nonnull %18) #6
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %22 = load ptr, ptr %17, align 8, !tbaa !47
  tail call void %21(ptr noundef %22) #6
  store ptr null, ptr %17, align 8, !tbaa !47
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !48
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %28(ptr noundef nonnull %25) #6
  store ptr null, ptr %24, align 8, !tbaa !48
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  tail call void %34(ptr noundef nonnull %31) #6
  store ptr null, ptr %30, align 8, !tbaa !49
  br label %35

35:                                               ; preds = %33, %29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_init(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = tail call ptr @fsmenu_get() #6
  tail call void @fsmenu_refresh_system_category(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.FileLayout, ptr %7, i64 0, i32 13
  store i32 1, ptr %10, align 4, !tbaa !52
  br label %11

11:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_exit(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  tail call void @ED_fileselect_exit(ptr noundef %0, ptr noundef %4) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @file_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 9
  store ptr null, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.FileSelectParams, ptr %6, i64 0, i32 9
  %10 = load i16, ptr %9, align 4, !tbaa !55
  %11 = tail call ptr @filelist_new(i16 noundef signext %10) #6
  %12 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 6
  store ptr %11, ptr %12, align 8, !tbaa !45
  %13 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %14 = load ptr, ptr %5, align 8, !tbaa !48
  %15 = tail call ptr %13(ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !48
  %17 = load ptr, ptr %12, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.FileSelectParams, ptr %15, i64 0, i32 1
  tail call void @filelist_setdir(ptr noundef %17, ptr noundef nonnull %18) #6
  br label %19

19:                                               ; preds = %8, %1
  %20 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @folderlist_duplicate(ptr noundef nonnull %21) #6
  %25 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 7
  store ptr %24, ptr %25, align 8, !tbaa !46
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = tail call ptr @folderlist_duplicate(ptr noundef nonnull %28) #6
  %32 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 8
  store ptr %31, ptr %32, align 8, !tbaa !47
  br label %33

33:                                               ; preds = %30, %26
  %34 = getelementptr inbounds %struct.SpaceFile, ptr %0, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %39 = tail call ptr %38(ptr noundef nonnull %35) #6
  %40 = getelementptr inbounds %struct.SpaceFile, ptr %3, i64 0, i32 11
  store ptr %39, ptr %40, align 8, !tbaa !49
  br label %41

41:                                               ; preds = %37, %33
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_refresh(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #6
  %5 = tail call ptr @ED_fileselect_get_params(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call ptr @folderlist_new() #6
  store ptr %10, ptr %6, align 8, !tbaa !46
  br label %11

11:                                               ; preds = %9, %2
  %12 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 9
  %17 = load i16, ptr %16, align 4, !tbaa !55
  %18 = tail call ptr @filelist_new(i16 noundef signext %17) #6
  store ptr %18, ptr %12, align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 1
  tail call void @filelist_setdir(ptr noundef %18, ptr noundef nonnull %19) #6
  %20 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 6
  store i32 -1, ptr %20, align 4, !tbaa !57
  %21 = load ptr, ptr %12, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi ptr [ %21, %15 ], [ %13, %11 ]
  %24 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 10
  %25 = load i16, ptr %24, align 2, !tbaa !58
  %26 = and i16 %25, 8
  tail call void @filelist_hidedot(ptr noundef %23, i16 noundef signext %26) #6
  %27 = load ptr, ptr %12, align 8, !tbaa !45
  %28 = load i16, ptr %24, align 2, !tbaa !58
  %29 = and i16 %28, 256
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 13
  %33 = load i16, ptr %32, align 4, !tbaa !59
  %34 = sext i16 %33 to i32
  br label %35

35:                                               ; preds = %22, %31
  %36 = phi i32 [ %34, %31 ], [ 0, %22 ]
  tail call void @filelist_setfilter(ptr noundef %27, i32 noundef %36) #6
  %37 = load ptr, ptr %12, align 8, !tbaa !45
  %38 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 5
  tail call void @filelist_setfilter_types(ptr noundef %37, ptr noundef nonnull %38) #6
  %39 = load ptr, ptr %12, align 8, !tbaa !45
  %40 = tail call i32 @filelist_empty(ptr noundef %39) #6
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %35
  %43 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @thumbnails_stop(ptr noundef %3, ptr noundef %43) #6
  %44 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @filelist_readdir(ptr noundef %44) #6
  %45 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 11
  %46 = load i16, ptr %45, align 4, !tbaa !60
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @filelist_sort(ptr noundef %49, i16 noundef signext %46) #6
  br label %50

50:                                               ; preds = %48, %42
  %51 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 1
  %52 = load ptr, ptr %12, align 8, !tbaa !45
  %53 = tail call ptr @filelist_dir(ptr noundef %52) #6
  %54 = tail call ptr @BLI_strncpy(ptr noundef nonnull %51, ptr noundef %53, i64 noundef 1024) #6
  %55 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 12
  %56 = load i16, ptr %55, align 2, !tbaa !61
  %57 = icmp eq i16 %56, 3
  br i1 %57, label %58, label %86

58:                                               ; preds = %50
  %59 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @thumbnails_start(ptr noundef %59, ptr noundef %0) #6
  br label %86

60:                                               ; preds = %35
  %61 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 11
  %62 = load i16, ptr %61, align 4, !tbaa !60
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @thumbnails_stop(ptr noundef %3, ptr noundef %65) #6
  %66 = load ptr, ptr %12, align 8, !tbaa !45
  %67 = load i16, ptr %61, align 4, !tbaa !60
  tail call void @filelist_sort(ptr noundef %66, i16 noundef signext %67) #6
  %68 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 12
  %69 = load i16, ptr %68, align 2, !tbaa !61
  %70 = icmp eq i16 %69, 3
  br i1 %70, label %71, label %86

71:                                               ; preds = %64
  %72 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @thumbnails_start(ptr noundef %72, ptr noundef %0) #6
  br label %86

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 12
  %75 = load i16, ptr %74, align 2, !tbaa !61
  %76 = icmp eq i16 %75, 3
  %77 = load ptr, ptr %12, align 8, !tbaa !45
  br i1 %76, label %78, label %83

78:                                               ; preds = %73
  %79 = tail call i32 @thumbnails_running(ptr noundef %3, ptr noundef %77) #6
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @thumbnails_start(ptr noundef %82, ptr noundef %0) #6
  br label %84

83:                                               ; preds = %73
  tail call void @thumbnails_stop(ptr noundef %3, ptr noundef %77) #6
  br label %84

84:                                               ; preds = %78, %81, %83
  %85 = load ptr, ptr %12, align 8, !tbaa !45
  tail call void @filelist_filter(ptr noundef %85) #6
  br label %86

86:                                               ; preds = %84, %71, %64, %50, %58
  %87 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 3
  %88 = load i8, ptr %87, align 4, !tbaa !62
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %12, align 8, !tbaa !45
  %92 = tail call i32 @filelist_find(ptr noundef %91, ptr noundef nonnull %87) #6
  %93 = icmp sgt i32 %92, -1
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load ptr, ptr %12, align 8, !tbaa !45
  %96 = tail call ptr @filelist_file(ptr noundef %95, i32 noundef %92) #6
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.direntry, ptr %96, i64 0, i32 16
  %100 = load i32, ptr %99, align 8, !tbaa !63
  %101 = or i32 %100, 16
  store i32 %101, ptr %99, align 8, !tbaa !63
  br label %102

102:                                              ; preds = %94, %98, %90
  %103 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 5
  %104 = load ptr, ptr %103, align 8, !tbaa !48
  %105 = getelementptr inbounds %struct.FileSelectParams, ptr %104, i64 0, i32 4
  %106 = getelementptr inbounds %struct.FileSelectParams, ptr %104, i64 0, i32 3
  %107 = tail call ptr @BLI_strncpy(ptr noundef nonnull %105, ptr noundef nonnull %106, i64 noundef 256) #6
  store i8 0, ptr %87, align 4, !tbaa !62
  br label %108

108:                                              ; preds = %102, %86
  %109 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 11
  %110 = load ptr, ptr %109, align 8, !tbaa !49
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.FileLayout, ptr %110, i64 0, i32 13
  store i32 1, ptr %113, align 4, !tbaa !52
  br label %114

114:                                              ; preds = %112, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !68
  %6 = icmp eq i32 %5, 251658240
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !70
  switch i32 %9, label %11 [
    i32 393216, label %10
    i32 327680, label %10
  ]

10:                                               ; preds = %7, %7
  tail call void @ED_area_tag_refresh(ptr noundef %1) #6
  tail call void @ED_area_tag_redraw(ptr noundef %1) #6
  br label %11

11:                                               ; preds = %10, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_operatortypes() #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_select) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_select_all_toggle) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_select_border) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_select_bookmark) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_highlight) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_execute) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_cancel) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_parent) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_previous) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_next) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_refresh) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_bookmark_toggle) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_bookmark_add) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_bookmark_delete) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_reset_recent) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_hidedot) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_filenum) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_directory_new) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_delete) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_rename) #6
  tail call void @WM_operatortype_append(ptr noundef nonnull @FILE_OT_smoothscroll) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_keymap(ptr noundef %0) #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef 5, i32 noundef 0) #6
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef 116, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %4 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef 112, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %5 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef 98, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.14, i32 noundef 104, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %7 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.15, i32 noundef 223, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %8 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef 223, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef 105, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %10 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 120, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %11 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.18, i32 noundef 224, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %12 = tail call ptr @WM_keymap_verify_item(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 274, i32 noundef -1, i32 noundef -1, i32 noundef 0) #6
  %13 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef 5, i32 noundef 0) #6
  %14 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef 1, i32 noundef 4, i32 noundef 0, i32 noundef 0) #6
  %15 = getelementptr inbounds %struct.wmKeyMapItem, ptr %14, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %16, ptr noundef nonnull @.str.22, i32 noundef 1) #6
  %17 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 3, i32 noundef 0, i32 noundef 0) #6
  %18 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 3, i32 noundef 1, i32 noundef 0) #6
  %19 = getelementptr inbounds %struct.wmKeyMapItem, ptr %18, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %20, ptr noundef nonnull @.str.24, i32 noundef 1) #6
  %21 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 1, i32 noundef 3, i32 noundef 3, i32 noundef 0) #6
  %22 = getelementptr inbounds %struct.wmKeyMapItem, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %23, ptr noundef nonnull @.str.24, i32 noundef 1) #6
  %24 = load ptr, ptr %22, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %24, ptr noundef nonnull @.str.25, i32 noundef 1) #6
  %25 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 3, i32 noundef 3, i32 noundef 0, i32 noundef 0) #6
  %26 = getelementptr inbounds %struct.wmKeyMapItem, ptr %25, i64 0, i32 17
  %27 = load ptr, ptr %26, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %27, ptr noundef nonnull @.str.26, i32 noundef 0) #6
  %28 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 0) #6
  %29 = getelementptr inbounds %struct.wmKeyMapItem, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %30, ptr noundef nonnull @.str.24, i32 noundef 1) #6
  %31 = load ptr, ptr %29, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %31, ptr noundef nonnull @.str.26, i32 noundef 0) #6
  %32 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.23, i32 noundef 3, i32 noundef 3, i32 noundef 4, i32 noundef 0) #6
  %33 = getelementptr inbounds %struct.wmKeyMapItem, ptr %32, i64 0, i32 17
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %34, ptr noundef nonnull @.str.24, i32 noundef 1) #6
  %35 = load ptr, ptr %33, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %35, ptr noundef nonnull @.str.25, i32 noundef 1) #6
  %36 = load ptr, ptr %33, align 8, !tbaa !71
  tail call void @RNA_boolean_set(ptr noundef %36, ptr noundef nonnull @.str.26, i32 noundef 0) #6
  %37 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.15, i32 noundef 7, i32 noundef 3, i32 noundef 0, i32 noundef 0) #6
  %38 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 3, i32 noundef 0, i32 noundef 0) #6
  %39 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.27, i32 noundef 97, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %40 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.28, i32 noundef 199, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %41 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.29, i32 noundef 98, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %42 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.29, i32 noundef 20483, i32 noundef -1, i32 noundef 0, i32 noundef 0) #6
  %43 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.30, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %44 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.31, i32 noundef 4, i32 noundef -1, i32 noundef -1, i32 noundef 0) #6
  %45 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %46 = getelementptr inbounds %struct.wmKeyMapItem, ptr %45, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %47, ptr noundef nonnull @.str.33, i32 noundef 1) #6
  %48 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 164, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %49 = getelementptr inbounds %struct.wmKeyMapItem, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %50, ptr noundef nonnull @.str.33, i32 noundef 10) #6
  %51 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %52 = getelementptr inbounds %struct.wmKeyMapItem, ptr %51, i64 0, i32 17
  %53 = load ptr, ptr %52, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %53, ptr noundef nonnull @.str.33, i32 noundef 100) #6
  %54 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %55 = getelementptr inbounds %struct.wmKeyMapItem, ptr %54, i64 0, i32 17
  %56 = load ptr, ptr %55, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %56, ptr noundef nonnull @.str.33, i32 noundef -1) #6
  %57 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 162, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %58 = getelementptr inbounds %struct.wmKeyMapItem, ptr %57, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %59, ptr noundef nonnull @.str.33, i32 noundef -10) #6
  %60 = tail call ptr @WM_keymap_add_item(ptr noundef %13, ptr noundef nonnull @.str.32, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %61 = getelementptr inbounds %struct.wmKeyMapItem, ptr %60, i64 0, i32 17
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %62, ptr noundef nonnull @.str.33, i32 noundef -100) #6
  %63 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef 5, i32 noundef 0) #6
  %64 = tail call ptr @WM_keymap_add_item(ptr noundef %63, ptr noundef nonnull @.str.32, i32 noundef 164, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %65 = getelementptr inbounds %struct.wmKeyMapItem, ptr %64, i64 0, i32 17
  %66 = load ptr, ptr %65, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %66, ptr noundef nonnull @.str.33, i32 noundef 1) #6
  %67 = tail call ptr @WM_keymap_add_item(ptr noundef %63, ptr noundef nonnull @.str.32, i32 noundef 164, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %68 = getelementptr inbounds %struct.wmKeyMapItem, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %69, ptr noundef nonnull @.str.33, i32 noundef 10) #6
  %70 = tail call ptr @WM_keymap_add_item(ptr noundef %63, ptr noundef nonnull @.str.32, i32 noundef 164, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %71 = getelementptr inbounds %struct.wmKeyMapItem, ptr %70, i64 0, i32 17
  %72 = load ptr, ptr %71, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %72, ptr noundef nonnull @.str.33, i32 noundef 100) #6
  %73 = tail call ptr @WM_keymap_add_item(ptr noundef %63, ptr noundef nonnull @.str.32, i32 noundef 162, i32 noundef 1, i32 noundef 0, i32 noundef 0) #6
  %74 = getelementptr inbounds %struct.wmKeyMapItem, ptr %73, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %75, ptr noundef nonnull @.str.33, i32 noundef -1) #6
  %76 = tail call ptr @WM_keymap_add_item(ptr noundef %63, ptr noundef nonnull @.str.32, i32 noundef 162, i32 noundef 1, i32 noundef 1, i32 noundef 0) #6
  %77 = getelementptr inbounds %struct.wmKeyMapItem, ptr %76, i64 0, i32 17
  %78 = load ptr, ptr %77, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %78, ptr noundef nonnull @.str.33, i32 noundef -10) #6
  %79 = tail call ptr @WM_keymap_add_item(ptr noundef %63, ptr noundef nonnull @.str.32, i32 noundef 162, i32 noundef 1, i32 noundef 2, i32 noundef 0) #6
  %80 = getelementptr inbounds %struct.wmKeyMapItem, ptr %79, i64 0, i32 17
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  tail call void @RNA_int_set(ptr noundef %81, ptr noundef nonnull @.str.33, i32 noundef -100) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !73
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !74
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %6, i32 noundef %9) #6
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 5, i32 noundef 0) #6
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #6
  %17 = load ptr, ptr %10, align 8, !tbaa !75
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.20, i32 noundef 5, i32 noundef 0) #6
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = tail call ptr @CTX_wm_space_file(ptr noundef %0) #6
  %5 = tail call ptr @ED_fileselect_get_params(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.SpaceFile, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call i32 @filelist_empty(ptr noundef nonnull %8) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  tail call void @file_refresh(ptr noundef %0, ptr poison) #8
  br label %14

14:                                               ; preds = %13, %10
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %3) #6
  %15 = load float, ptr %3, align 4, !tbaa !44
  %16 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !44
  %18 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !44
  call void @glClearColor(float noundef %15, float noundef %17, float noundef %19, float noundef 0.000000e+00) #6
  call void @glClear(i32 noundef 16384) #6
  %20 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 12
  %21 = load i16, ptr %20, align 2, !tbaa !61
  %22 = icmp eq i16 %21, 3
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %24 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 13
  br i1 %22, label %25, label %29

25:                                               ; preds = %14
  store i16 2, ptr %23, align 8, !tbaa !79
  %26 = load i16, ptr %24, align 8, !tbaa !80
  %27 = and i16 %26, -7
  %28 = or disjoint i16 %27, 2
  store i16 %28, ptr %24, align 8, !tbaa !80
  br label %40

29:                                               ; preds = %14
  store i16 8, ptr %23, align 8, !tbaa !79
  %30 = load i16, ptr %24, align 8, !tbaa !80
  %31 = and i16 %30, -7
  %32 = or disjoint i16 %31, 4
  store i16 %32, ptr %24, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %34 = load float, ptr %33, align 4, !tbaa !81
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %38 = load float, ptr %37, align 8, !tbaa !82
  %39 = fsub float %38, %34
  store float %39, ptr %37, align 8, !tbaa !82
  store float 0.000000e+00, ptr %33, align 4, !tbaa !81
  br label %40

40:                                               ; preds = %29, %36, %25
  %41 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %42 = load i16, ptr %41, align 8, !tbaa !73
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %45 = load i16, ptr %44, align 2, !tbaa !74
  %46 = sext i16 %45 to i32
  call void @UI_view2d_region_reinit(ptr noundef nonnull %6, i16 noundef signext 1, i32 noundef %43, i32 noundef %46) #6
  call void @file_calc_previews(ptr noundef %0, ptr noundef nonnull %1) #6
  call void @UI_view2d_view_ortho(ptr noundef nonnull %6) #6
  %47 = getelementptr inbounds %struct.FileSelectParams, ptr %5, i64 0, i32 6
  %48 = load i32, ptr %47, align 4, !tbaa !57
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = call ptr @CTX_wm_window(ptr noundef %0) #6
  %52 = getelementptr inbounds %struct.wmWindow, ptr %51, i64 0, i32 21
  %53 = load ptr, ptr %52, align 8, !tbaa !83
  %54 = getelementptr inbounds %struct.wmEvent, ptr %53, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !85
  %56 = getelementptr inbounds %struct.wmEvent, ptr %53, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !88
  %58 = call i32 @file_highlight_set(ptr noundef nonnull %4, ptr noundef nonnull %1, i32 noundef %55, i32 noundef %57) #6
  br label %59

59:                                               ; preds = %50, %40
  call void @file_draw_list(ptr noundef %0, ptr noundef nonnull %1) #6
  call void @UI_view2d_view_restore(ptr noundef %0) #6
  %60 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %6, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #6
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %60) #6
  call void @UI_view2d_scrollers_free(ptr noundef %60) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = icmp eq i32 %6, 251658240
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !70
  switch i32 %10, label %12 [
    i32 393216, label %11
    i32 327680, label %11
  ]

11:                                               ; preds = %8, %8
  tail call void @ED_region_tag_redraw(ptr noundef %2) #6
  br label %12

12:                                               ; preds = %11, %8, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_header_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #6
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 5, i32 noundef 0) #6
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_ui_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = icmp eq i32 %6, 251658240
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !70
  %11 = icmp eq i32 %10, 393216
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @ED_region_tag_redraw(ptr noundef %2) #6
  br label %13

13:                                               ; preds = %12, %8, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_ui_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !73
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !74
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 3, i32 noundef %6, i32 noundef %9) #6
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 5, i32 noundef 0) #6
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #6
  %17 = load ptr, ptr %10, align 8, !tbaa !75
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.34, i32 noundef 5, i32 noundef 0) #6
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_ui_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %3) #6
  %4 = load float, ptr %3, align 4, !tbaa !44
  %5 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %6 = load float, ptr %5, align 4, !tbaa !44
  %7 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !44
  call void @glClearColor(float noundef %4, float noundef %6, float noundef %8, float noundef 0.000000e+00) #6
  call void @glClear(i32 noundef 16384) #6
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %11 = call fastcc float @BLI_rctf_size_y(ptr noundef nonnull %10) #8
  %12 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  store float %11, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %13, align 8, !tbaa !90
  call void @UI_view2d_view_ortho(ptr noundef nonnull %9) #6
  call void @file_draw_buttons(ptr noundef %0, ptr noundef %1) #6
  call void @UI_view2d_view_restore(ptr noundef %0) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @file_channel_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #3 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_channel_area_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  store i16 130, ptr %3, align 8, !tbaa !40
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #6
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = tail call ptr @WM_keymap_find(ptr noundef %5, ptr noundef nonnull @.str.10, i32 noundef 5, i32 noundef 0) #6
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %10 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %7, ptr noundef %6, ptr noundef nonnull %8, ptr noundef nonnull %9) #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @file_channel_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #6
  ret void
}

; Function Attrs: optsize
declare void @file_panels_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_file_init() local_unnamed_addr #0 {
  tail call void @ED_file_read_bookmarks() #8
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !91
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @filelist_init_icons() #6
  br label %4

4:                                                ; preds = %3, %0
  tail call void @IMB_thumb_makedirs() #6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_file_read_bookmarks() local_unnamed_addr #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = tail call ptr @BLI_get_folder(i32 noundef 31, ptr noundef null) #6
  tail call void @fsmenu_free() #6
  %3 = tail call ptr @fsmenu_get() #6
  tail call void @fsmenu_read_system(ptr noundef %3, i32 noundef 1) #6
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #7
  call void @BLI_make_file_string(ptr noundef nonnull @.str.3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #6
  %6 = call ptr @fsmenu_get() #6
  call void @fsmenu_read_bookmarks(ptr noundef %6, ptr noundef nonnull %1) #6
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #7
  br label %7

7:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: optsize
declare void @filelist_init_icons() local_unnamed_addr #2

; Function Attrs: optsize
declare void @IMB_thumb_makedirs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_file_exit() local_unnamed_addr #0 {
  tail call void @fsmenu_free() #6
  %1 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !91
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @filelist_free_icons() #6
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare void @fsmenu_free() local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_free_icons() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_get_folder(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fsmenu_read_system(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fsmenu_get() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_make_file_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fsmenu_read_bookmarks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_freelib(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @folderlist_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fsmenu_refresh_system_category(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_fileselect_exit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @filelist_new(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_setdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @folderlist_duplicate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_fileselect_get_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @folderlist_new() local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_hidedot(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_setfilter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_setfilter_types(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @filelist_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @thumbnails_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_sort(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @filelist_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @thumbnails_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @thumbnails_running(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @filelist_filter(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @filelist_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @filelist_file(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @FILE_OT_select(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_select_all_toggle(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_select_border(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_select_bookmark(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_highlight(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_execute(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_cancel(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_parent(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_previous(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_next(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_refresh(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_bookmark_toggle(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_bookmark_add(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_bookmark_delete(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_reset_recent(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_hidedot(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_filenum(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_directory_new(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_delete(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_rename(ptr noundef) #2

; Function Attrs: optsize
declare void @FILE_OT_smoothscroll(ptr noundef) #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_verify_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_boolean_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_int_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @file_calc_previews(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @file_highlight_set(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @file_draw_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @BLI_rctf_size_y(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 4, !tbaa !93
  %4 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %5 = load float, ptr %4, align 4, !tbaa !94
  %6 = fsub float %3, %5
  ret float %6
}

; Function Attrs: optsize
declare void @file_draw_buttons(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!9 = !{!10, !11, i64 80}
!10 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !11, i64 80, !11, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !12, i64 176, !12, i64 192, !11, i64 208}
!11 = !{!"int", !7, i64 0}
!12 = !{!"ListBase", !6, i64 0, !6, i64 8}
!13 = !{!10, !6, i64 88}
!14 = !{!10, !6, i64 96}
!15 = !{!10, !6, i64 104}
!16 = !{!10, !6, i64 112}
!17 = !{!10, !6, i64 136}
!18 = !{!10, !6, i64 128}
!19 = !{!10, !6, i64 120}
!20 = !{!10, !6, i64 144}
!21 = !{!10, !6, i64 152}
!22 = !{!23, !11, i64 16}
!23 = !{!"ARegionType", !6, i64 0, !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !12, i64 104, !12, i64 120, !12, i64 136, !11, i64 152, !11, i64 156, !11, i64 160, !11, i64 164, !11, i64 168, !24, i64 172, !24, i64 174, !24, i64 176}
!24 = !{!"short", !7, i64 0}
!25 = !{!23, !6, i64 24}
!26 = !{!23, !6, i64 40}
!27 = !{!23, !6, i64 48}
!28 = !{!23, !11, i64 168}
!29 = !{!23, !11, i64 164}
!30 = !{!23, !11, i64 160}
!31 = !{!32, !11, i64 32}
!32 = !{!"SpaceFile", !6, i64 0, !6, i64 8, !12, i64 16, !11, i64 32, !11, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !24, i64 96, !24, i64 98, !24, i64 100, !24, i64 102}
!33 = !{!34, !24, i64 214}
!34 = !{!"ARegion", !6, i64 0, !6, i64 8, !35, i64 16, !38, i64 176, !38, i64 192, !24, i64 208, !24, i64 210, !24, i64 212, !24, i64 214, !24, i64 216, !24, i64 218, !37, i64 220, !24, i64 224, !24, i64 226, !24, i64 228, !24, i64 230, !24, i64 232, !24, i64 234, !24, i64 236, !24, i64 238, !6, i64 240, !12, i64 248, !12, i64 264, !12, i64 280, !12, i64 296, !12, i64 312, !12, i64 328, !12, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!35 = !{!"View2D", !36, i64 0, !36, i64 16, !38, i64 32, !38, i64 48, !38, i64 64, !7, i64 80, !7, i64 88, !37, i64 96, !37, i64 100, !24, i64 104, !24, i64 106, !24, i64 108, !24, i64 110, !24, i64 112, !24, i64 114, !24, i64 116, !24, i64 118, !24, i64 120, !24, i64 122, !24, i64 124, !24, i64 126, !6, i64 128, !11, i64 136, !11, i64 140, !6, i64 144, !6, i64 152}
!36 = !{!"rctf", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!37 = !{!"float", !7, i64 0}
!38 = !{!"rcti", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!39 = !{!34, !24, i64 216}
!40 = !{!34, !24, i64 120}
!41 = !{!34, !24, i64 132}
!42 = !{!34, !24, i64 126}
!43 = !{!34, !24, i64 124}
!44 = !{!37, !37, i64 0}
!45 = !{!32, !6, i64 48}
!46 = !{!32, !6, i64 56}
!47 = !{!32, !6, i64 64}
!48 = !{!32, !6, i64 40}
!49 = !{!32, !6, i64 88}
!50 = !{!51, !6, i64 96}
!51 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !38, i64 56, !7, i64 72, !7, i64 73, !24, i64 74, !24, i64 76, !24, i64 78, !24, i64 80, !24, i64 82, !24, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !12, i64 96, !12, i64 112, !12, i64 128, !12, i64 144}
!52 = !{!53, !11, i64 52}
!53 = !{!"FileLayout", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !7, i64 60}
!54 = !{!32, !6, i64 72}
!55 = !{!56, !24, i64 1996}
!56 = !{!"FileSelectParams", !7, i64 0, !7, i64 96, !7, i64 1152, !7, i64 1408, !7, i64 1664, !7, i64 1920, !11, i64 1984, !11, i64 1988, !11, i64 1992, !24, i64 1996, !24, i64 1998, !24, i64 2000, !24, i64 2002, !24, i64 2004, !24, i64 2006, !7, i64 2008}
!57 = !{!56, !11, i64 1984}
!58 = !{!56, !24, i64 1998}
!59 = !{!56, !24, i64 2004}
!60 = !{!56, !24, i64 2000}
!61 = !{!56, !24, i64 2002}
!62 = !{!7, !7, i64 0}
!63 = !{!64, !11, i64 280}
!64 = !{!"direntry", !11, i64 0, !6, i64 8, !6, i64 16, !65, i64 24, !11, i64 168, !7, i64 172, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 216, !7, i64 224, !7, i64 240, !6, i64 256, !11, i64 264, !6, i64 272, !11, i64 280}
!65 = !{!"stat", !66, i64 0, !66, i64 8, !66, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !66, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !67, i64 72, !67, i64 88, !67, i64 104, !7, i64 120}
!66 = !{!"long", !7, i64 0}
!67 = !{!"timespec", !66, i64 0, !66, i64 8}
!68 = !{!69, !11, i64 36}
!69 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56}
!70 = !{!69, !11, i64 40}
!71 = !{!72, !6, i64 176}
!72 = !{!"wmKeyMapItem", !6, i64 0, !6, i64 8, !7, i64 16, !6, i64 80, !7, i64 88, !24, i64 152, !24, i64 154, !24, i64 156, !24, i64 158, !24, i64 160, !24, i64 162, !24, i64 164, !24, i64 166, !24, i64 168, !24, i64 170, !24, i64 172, !24, i64 174, !6, i64 176}
!73 = !{!34, !24, i64 208}
!74 = !{!34, !24, i64 210}
!75 = !{!76, !6, i64 296}
!76 = !{!"wmWindowManager", !77, i64 0, !6, i64 120, !6, i64 128, !12, i64 136, !11, i64 152, !24, i64 156, !24, i64 158, !12, i64 160, !12, i64 176, !78, i64 192, !12, i64 232, !12, i64 248, !12, i64 264, !12, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !12, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!77 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !24, i64 98, !11, i64 100, !11, i64 104, !11, i64 108, !6, i64 112}
!78 = !{!"ReportList", !12, i64 0, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !6, i64 32}
!79 = !{!35, !24, i64 104}
!80 = !{!35, !24, i64 112}
!81 = !{!35, !37, i64 28}
!82 = !{!35, !37, i64 24}
!83 = !{!84, !6, i64 136}
!84 = !{!"wmWindow", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !7, i64 40, !24, i64 104, !24, i64 106, !24, i64 108, !24, i64 110, !24, i64 112, !24, i64 114, !24, i64 116, !24, i64 118, !24, i64 120, !24, i64 122, !24, i64 124, !24, i64 126, !11, i64 128, !24, i64 132, !24, i64 134, !6, i64 136, !6, i64 144, !6, i64 152, !11, i64 160, !11, i64 164, !6, i64 168, !12, i64 176, !12, i64 192, !12, i64 208, !12, i64 224, !12, i64 240}
!85 = !{!86, !11, i64 20}
!86 = !{!"wmEvent", !6, i64 0, !6, i64 8, !24, i64 16, !24, i64 18, !11, i64 20, !11, i64 24, !7, i64 28, !7, i64 36, !7, i64 42, !7, i64 43, !24, i64 44, !24, i64 46, !11, i64 48, !11, i64 52, !87, i64 56, !11, i64 64, !11, i64 68, !24, i64 72, !24, i64 74, !24, i64 76, !24, i64 78, !24, i64 80, !24, i64 82, !6, i64 88, !6, i64 96, !24, i64 104, !24, i64 106, !11, i64 108, !6, i64 112}
!87 = !{!"double", !7, i64 0}
!88 = !{!86, !11, i64 24}
!89 = !{!34, !37, i64 44}
!90 = !{!34, !37, i64 40}
!91 = !{!92, !7, i64 2081}
!92 = !{!"Global", !6, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !12, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !24, i64 2084, !24, i64 2086, !24, i64 2088, !7, i64 2090, !24, i64 2092, !11, i64 2096, !11, i64 2100, !7, i64 2104, !11, i64 2108, !11, i64 2112, !7, i64 2116}
!93 = !{!36, !37, i64 12}
!94 = !{!36, !37, i64 8}
