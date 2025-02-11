; ModuleID = 'blender/source/blender/editors/space_info/info_ops.c'
source_filename = "blender/source/blender/editors/space_info/info_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.ImBuf = type { ptr, ptr, i32, i32, i8, i32, i32, i32, ptr, ptr, [2 x double], i32, i32, i32, i32, ptr, ptr, ptr, float, [20 x ptr], i32, i32, i32, i32, ptr, ptr, i32, [1024 x i8], [1024 x i8], ptr, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.rcti, %struct.DDSData }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.DDSData = type { i32, i32, ptr, i32 }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.wmTimer = type { ptr, ptr, ptr, double, i32, ptr, double, double, double, double, double, i32 }
%struct.Report = type { ptr, ptr, i16, i16, i32, ptr, ptr }
%struct.ReportTimerInfo = type { [3 x float], float, float }

@.str = private unnamed_addr constant [23 x i8] c"Pack Blender Libraries\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"FILE_OT_pack_libraries\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Pack all used Blender library files into the current .blend\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Unpack Blender Libraries\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"FILE_OT_unpack_libraries\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"Unpack all used Blender library files from this .blend file\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Automatically Pack Into .blend\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"FILE_OT_autopack_toggle\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"Automatically pack all external files into the .blend file\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Pack All Into .blend\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"FILE_OT_pack_all\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Pack all used external files into the .blend\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Unpack All Into Files\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"FILE_OT_unpack_all\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"Unpack all files packed into this .blend to external ones\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@unpack_all_method_items = internal constant [6 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 5, ptr @.str.50, i32 0, ptr @.str.51, ptr @.str.52 }, %struct.EnumPropertyItem { i32 4, ptr @.str.53, i32 0, ptr @.str.54, ptr @.str.52 }, %struct.EnumPropertyItem { i32 6, ptr @.str.55, i32 0, ptr @.str.56, ptr @.str.52 }, %struct.EnumPropertyItem { i32 3, ptr @.str.57, i32 0, ptr @.str.58, ptr @.str.52 }, %struct.EnumPropertyItem { i32 7, ptr @.str.59, i32 0, ptr @.str.60, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [7 x i8] c"Method\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"How to unpack\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"Unpack Item\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"FILE_OT_unpack_item\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Unpack this file to an external file\00", align 1
@unpack_item_method_items = internal constant [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 5, ptr @.str.50, i32 0, ptr @.str.63, ptr @.str.52 }, %struct.EnumPropertyItem { i32 4, ptr @.str.53, i32 0, ptr @.str.64, ptr @.str.52 }, %struct.EnumPropertyItem { i32 6, ptr @.str.55, i32 0, ptr @.str.65, ptr @.str.52 }, %struct.EnumPropertyItem { i32 3, ptr @.str.57, i32 0, ptr @.str.66, ptr @.str.52 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [8 x i8] c"id_name\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"ID name\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"Name of ID block to unpack\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"id_type\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"ID Type\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Identifier type of ID block\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"Make All Paths Relative\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"FILE_OT_make_paths_relative\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"Make all paths to external files relative to current .blend\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Make All Paths Absolute\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"FILE_OT_make_paths_absolute\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Make all paths to external files absolute\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Report Missing Files\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"FILE_OT_report_missing_files\00", align 1
@.str.35 = private unnamed_addr constant [34 x i8] c"Report all missing external files\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Find Missing Files\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"FILE_OT_find_missing_files\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Try to find missing external files\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"find_all\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"Find All\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"Find all files in the search path (not just missing)\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"Update Reports Display\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"INFO_OT_reports_display_update\00", align 1
@.str.44 = private unnamed_addr constant [59 x i8] c"Update the display of reports in Blender UI (internal use)\00", align 1
@.str.45 = private unnamed_addr constant [74 x i8] c"Unpack Blender Libraries - creates directories, all new paths should work\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.46 = private unnamed_addr constant [66 x i8] c"Some images are painted on. These changes will be lost. Continue?\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"No packed files to unpack\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"Unpack 1 File\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"Unpack %d Files\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"USE_LOCAL\00", align 1
@.str.51 = private unnamed_addr constant [55 x i8] c"Use files in current directory (create when necessary)\00", align 1
@.str.52 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"WRITE_LOCAL\00", align 1
@.str.54 = private unnamed_addr constant [60 x i8] c"Write files to current directory (overwrite existing files)\00", align 1
@.str.55 = private unnamed_addr constant [13 x i8] c"USE_ORIGINAL\00", align 1
@.str.56 = private unnamed_addr constant [55 x i8] c"Use files in original location (create when necessary)\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"WRITE_ORIGINAL\00", align 1
@.str.58 = private unnamed_addr constant [60 x i8] c"Write files to original location (overwrite existing files)\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"KEEP\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"Disable Auto-pack, keep all packed files\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"No packed file\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"Unpack\00", align 1
@.str.63 = private unnamed_addr constant [56 x i8] c"Use file from current directory (create when necessary)\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"Write file to current directory (overwrite existing file)\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"Use file in original location (create when necessary)\00", align 1
@.str.66 = private unnamed_addr constant [58 x i8] c"Write file to original location (overwrite existing file)\00", align 1
@.str.67 = private unnamed_addr constant [53 x i8] c"Cannot set relative paths with an unsaved blend file\00", align 1
@.str.68 = private unnamed_addr constant [53 x i8] c"Cannot set absolute paths with an unsaved blend file\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__const.update_reports_display_invoke.neutral_col = private unnamed_addr constant [3 x float] [float 0x3FD6666660000000, float 0x3FD6666660000000, float 0x3FD6666660000000], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_pack_libraries(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pack_libraries_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pack_libraries_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @packLibraries(ptr noundef %3, ptr noundef %5) #7
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_unpack_libraries(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @unpack_libraries_invoke, ptr %4, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unpack_libraries_exec, ptr %5, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @unpack_libraries_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.45) #7
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @unpack_libraries_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = tail call i32 @unpackLibraries(ptr noundef %3, ptr noundef %5) #7
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_autopack_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @autopack_toggle_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @autopack_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = and i32 %4, -2
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  tail call void @packAll(ptr noundef %3, ptr noundef %11) #7
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  %13 = or i32 %12, 1
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %13, %9 ], [ %8, %7 ]
  store i32 %15, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_pack_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pack_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pack_all_invoke, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @pack_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @packAll(ptr noundef %3, ptr noundef %5) #7
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  %7 = or i32 %6, 1
  store i32 %7, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @pack_all_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %3, %21
  %9 = phi ptr [ %22, %21 ], [ %6, %3 ]
  %10 = tail call zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef nonnull %9) #7
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 23
  %17 = load i32, ptr %16, align 4, !tbaa !24
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %12
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %9, ptr noundef %13, ptr noundef null) #7
  br label %21

21:                                               ; preds = %8, %20
  %22 = load ptr, ptr %9, align 8, !tbaa !23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %8, !llvm.loop !29

24:                                               ; preds = %15
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef null) #7
  %25 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.46) #7
  br label %28

26:                                               ; preds = %21, %3
  %27 = tail call i32 @pack_all_exec(ptr noundef %0, ptr noundef %1) #8
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ 4, %26 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FILE_OT_unpack_all(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unpack_all_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @unpack_all_invoke, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @unpack_all_method_items, i32 noundef 5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @unpack_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.15) #7
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  tail call void @unpackAll(ptr noundef %3, ptr noundef %10, i32 noundef %6) #7
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  %13 = and i32 %12, -2
  store i32 %13, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @unpack_all_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #9
  %6 = tail call i32 @countPackedFiles(ptr noundef %5) #7
  switch i32 %6, label %13 [
    i32 0, label %7
    i32 1, label %12
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  tail call void @BKE_report(ptr noundef %9, i32 noundef 16, ptr noundef nonnull @.str.47) #7
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  %11 = and i32 %10, -2
  store i32 %11, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  br label %18

12:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %4, ptr noundef nonnull align 1 dereferenceable(14) @.str.48, i64 14, i1 false) #7
  br label %15

13:                                               ; preds = %3
  %14 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.49, i32 noundef %6) #7
  br label %15

15:                                               ; preds = %13, %12
  %16 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #7
  %17 = call ptr @uiPupMenuLayout(ptr noundef %16) #7
  call void @uiLayoutSetOperatorContext(ptr noundef %17, i32 noundef 6) #7
  call void @uiItemsEnumO(ptr noundef %17, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #7
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %16) #7
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i32 [ 32, %15 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #9
  ret i32 %19
}

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FILE_OT_unpack_item(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unpack_item_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @unpack_item_invoke, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @unpack_item_method_items, i32 noundef 5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  %10 = load ptr, ptr %7, align 8, !tbaa !31
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #7
  %12 = load ptr, ptr %7, align 8, !tbaa !31
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef 19785, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 2147483647) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @unpack_item_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #9
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !32
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.24) #7
  %8 = load ptr, ptr %5, align 8, !tbaa !32
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.15) #7
  %10 = load ptr, ptr %5, align 8, !tbaa !32
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #7
  %11 = trunc i32 %7 to i16
  %12 = call ptr @BKE_libblock_find_name(i16 noundef signext %11, ptr noundef nonnull %3) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  call void @BKE_report(ptr noundef %16, i32 noundef 16, ptr noundef nonnull @.str.61) #7
  br label %25

17:                                               ; preds = %2
  %18 = icmp eq i32 %9, 7
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  call void @BKE_unpack_id(ptr noundef %4, ptr noundef nonnull %12, ptr noundef %21, i32 noundef %9) #7
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  %24 = and i32 %23, -2
  store i32 %24, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !20
  br label %25

25:                                               ; preds = %22, %14
  %26 = phi i32 [ 2, %14 ], [ 4, %22 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #9
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @unpack_item_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef 0) #7
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #7
  tail call void @uiLayoutSetOperatorContext(ptr noundef %5, i32 noundef 6) #7
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  tail call void @uiItemsFullEnumO(ptr noundef %5, ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef %13, i32 noundef 7, i32 noundef 0) #7
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #7
  ret i32 32
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_make_paths_relative(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_paths_relative_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_paths_relative_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !37
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  tail call void @BKE_report(ptr noundef %8, i32 noundef 16, ptr noundef nonnull @.str.67) #7
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  tail call void @BKE_bpath_relative_convert(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %12) #7
  tail call void @WM_main_add_notifier(i32 noundef 33554432, ptr noundef null) #7
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 4, %9 ], [ 2, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_make_paths_absolute(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_paths_absolute_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @make_paths_absolute_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !37
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  tail call void @BKE_report(ptr noundef %8, i32 noundef 16, ptr noundef nonnull @.str.68) #7
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  tail call void @BKE_bpath_absolute_convert(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %12) #7
  tail call void @WM_main_add_notifier(i32 noundef 33554432, ptr noundef null) #7
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 4, %9 ], [ 2, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_report_missing_files(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_missing_files_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @report_missing_files_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  tail call void @BKE_bpath_missing_files_check(ptr noundef %3, ptr noundef %5) #7
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @FILE_OT_find_missing_files(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @find_missing_files_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @find_missing_files_invoke, ptr %5, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #7
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 0, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 0) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @find_missing_files_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !32
  %6 = tail call ptr @RNA_string_get_alloc(ptr noundef %5, ptr noundef nonnull @.str.69, ptr noundef null, i32 noundef 0) #7
  %7 = load ptr, ptr %4, align 8, !tbaa !32
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.39) #7
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  tail call void @BKE_bpath_missing_files_find(ptr noundef %3, ptr noundef %6, ptr noundef %11, i8 noundef zeroext %9) #7
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !23
  tail call void %12(ptr noundef %6) #7
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @find_missing_files_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #7
  ret i32 1
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_reports_display_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @update_reports_display_invoke, ptr %4, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @update_reports_display_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.update_reports_display_invoke.neutral_col, i64 12, i1 false)
  %7 = getelementptr inbounds %struct.ReportList, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %72, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_reports_last_displayable(ptr noundef nonnull %6) #7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %72, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %7, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.wmTimer, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.Report, ptr %15, i64 0, i32 2
  %22 = load i16, ptr %21, align 8, !tbaa !45
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 480
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, float 5.000000e+00, float 1.000000e+01
  %27 = select i1 %25, float 3.000000e+00, float 6.000000e+00
  %28 = getelementptr inbounds %struct.wmTimer, ptr %18, i64 0, i32 6
  %29 = load double, ptr %28, align 8, !tbaa !47
  %30 = fptrunc double %29 to float
  %31 = fcmp olt float %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  tail call void @WM_event_remove_timer(ptr noundef %5, ptr noundef null, ptr noundef nonnull %18) #7
  store ptr null, ptr %7, align 8, !tbaa !38
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251854848, ptr noundef null) #7
  br label %72

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.ReportTimerInfo, ptr %20, i64 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !48
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  br i1 %25, label %38, label %44

38:                                               ; preds = %37
  %39 = and i32 %23, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = and i32 %23, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41, %38, %37
  %45 = phi float [ 0.000000e+00, %37 ], [ 0.000000e+00, %38 ], [ 0x3FE6666660000000, %41 ]
  %46 = phi <2 x float> [ <float 1.000000e+00, float 0x3FC99999A0000000>, %37 ], [ <float 1.000000e+00, float 1.000000e+00>, %38 ], [ <float 0x3FD3333340000000, float 0x3FDCCCCCC0000000>, %41 ]
  store <2 x float> %46, ptr %20, align 4, !tbaa !50
  %47 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  store float %45, ptr %47, align 4, !tbaa !50
  br label %48

48:                                               ; preds = %44, %41
  %49 = getelementptr inbounds %struct.ReportTimerInfo, ptr %20, i64 0, i32 1
  store <2 x float> <float 7.500000e-01, float 1.000000e+00>, ptr %49, align 4, !tbaa !50
  br label %50

50:                                               ; preds = %48, %33
  %51 = fdiv float %30, %26
  %52 = fdiv float %30, %27
  %53 = fcmp ugt float %52, 1.000000e+00
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = fmul float %26, %51
  %56 = fadd float %26, -2.500000e-01
  %57 = fcmp ogt float %55, %56
  br i1 %57, label %65, label %72

58:                                               ; preds = %50
  call void @interp_v3_v3v3(ptr noundef nonnull %20, ptr noundef nonnull %20, ptr noundef nonnull %4, float noundef %52) #7
  %59 = getelementptr inbounds %struct.ReportTimerInfo, ptr %20, i64 0, i32 1
  %60 = load float, ptr %59, align 4, !tbaa !51
  %61 = call fastcc float @interpf(float noundef %60, float noundef %52) #8
  store float %61, ptr %59, align 4, !tbaa !51
  %62 = fmul float %26, %51
  %63 = fadd float %26, -2.500000e-01
  %64 = fcmp ogt float %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %58, %54
  %66 = phi float [ %63, %58 ], [ %56, %54 ]
  %67 = fneg float %66
  %68 = call float @llvm.fmuladd.f32(float %51, float %26, float %67)
  %69 = fmul float %68, 4.000000e+00
  %70 = fsub float 1.000000e+00, %69
  store float %70, ptr %34, align 4, !tbaa !48
  br label %71

71:                                               ; preds = %58, %65
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251854848, ptr noundef null) #7
  br label %72

72:                                               ; preds = %54, %71, %3, %10, %14, %32
  %73 = phi i32 [ 12, %32 ], [ 8, %14 ], [ 8, %10 ], [ 8, %3 ], [ 12, %71 ], [ 12, %54 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret i32 %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @packLibraries(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @WM_operator_confirm_message(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @unpackLibraries(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @packAll(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @unpackAll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @countPackedFiles(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_unpack_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemsFullEnumO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_bpath_relative_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_bpath_absolute_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_bpath_missing_files_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_bpath_missing_files_find(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare ptr @BKE_reports_last_displayable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @interpf(float noundef %0, float noundef %1) unnamed_addr #5 {
  %3 = fsub float 1.000000e+00, %1
  %4 = fmul float %3, %0
  %5 = tail call float @llvm.fmuladd.f32(float %1, float 0x3FE3333340000000, float %4)
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !12, i64 184}
!17 = !{!18, !7, i64 120}
!18 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!19 = !{!6, !7, i64 48}
!20 = !{!21, !22, i64 2108}
!21 = !{!"Global", !7, i64 0, !8, i64 8, !8, i64 1032, !8, i64 2056, !8, i64 2057, !8, i64 2058, !10, i64 2064, !8, i64 2080, !8, i64 2081, !8, i64 2082, !12, i64 2084, !12, i64 2086, !12, i64 2088, !8, i64 2090, !12, i64 2092, !22, i64 2096, !22, i64 2100, !8, i64 2104, !22, i64 2108, !22, i64 2112, !8, i64 2116}
!22 = !{!"int", !8, i64 0}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !22, i64 292}
!25 = !{!"ImBuf", !7, i64 0, !7, i64 8, !22, i64 16, !22, i64 20, !8, i64 24, !22, i64 28, !22, i64 32, !22, i64 36, !7, i64 40, !7, i64 48, !8, i64 56, !22, i64 72, !22, i64 76, !22, i64 80, !22, i64 84, !7, i64 88, !7, i64 96, !7, i64 104, !26, i64 112, !8, i64 120, !22, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !7, i64 296, !7, i64 304, !22, i64 312, !8, i64 316, !8, i64 1340, !7, i64 2368, !22, i64 2376, !7, i64 2384, !22, i64 2392, !22, i64 2396, !7, i64 2400, !7, i64 2408, !7, i64 2416, !7, i64 2424, !22, i64 2432, !27, i64 2436, !28, i64 2456}
!26 = !{!"float", !8, i64 0}
!27 = !{!"rcti", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12}
!28 = !{!"DDSData", !22, i64 0, !22, i64 4, !7, i64 8, !22, i64 16}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!6, !7, i64 88}
!32 = !{!18, !7, i64 112}
!33 = !{!18, !7, i64 88}
!34 = !{!35, !7, i64 16}
!35 = !{!"PointerRNA", !36, i64 0, !7, i64 8, !7, i64 16}
!36 = !{!"", !7, i64 0}
!37 = !{!21, !8, i64 2056}
!38 = !{!39, !7, i64 32}
!39 = !{!"ReportList", !10, i64 0, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !7, i64 32}
!40 = !{!41, !7, i64 112}
!41 = !{!"wmEvent", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !22, i64 20, !22, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !12, i64 44, !12, i64 46, !22, i64 48, !22, i64 52, !42, i64 56, !22, i64 64, !22, i64 68, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 106, !22, i64 108, !7, i64 112}
!42 = !{!"double", !8, i64 0}
!43 = !{!44, !7, i64 40}
!44 = !{!"wmTimer", !7, i64 0, !7, i64 8, !7, i64 16, !42, i64 24, !22, i64 32, !7, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !22, i64 88}
!45 = !{!46, !12, i64 16}
!46 = !{!"Report", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 18, !22, i64 20, !7, i64 24, !7, i64 32}
!47 = !{!44, !42, i64 48}
!48 = !{!49, !26, i64 16}
!49 = !{!"ReportTimerInfo", !8, i64 0, !26, i64 12, !26, i64 16}
!50 = !{!26, !26, i64 0}
!51 = !{!49, !26, i64 12}
