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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_pack_libraries(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pack_libraries_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pack_libraries_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @packLibraries(ptr noundef %3, ptr noundef %5) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_unpack_libraries(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @unpack_libraries_invoke, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unpack_libraries_exec, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @unpack_libraries_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.45) #6
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unpack_libraries_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = tail call i32 @unpackLibraries(ptr noundef %3, ptr noundef %5) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_autopack_toggle(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @autopack_toggle_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @autopack_toggle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = and i32 %4, -2
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @packAll(ptr noundef %3, ptr noundef %11) #6
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  %13 = or i32 %12, 1
  br label %14

14:                                               ; preds = %9, %7
  %15 = phi i32 [ %13, %9 ], [ %8, %7 ]
  store i32 %15, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_pack_all(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @pack_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @pack_all_invoke, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pack_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @packAll(ptr noundef %3, ptr noundef %5) #6
  %6 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  %7 = or i32 %6, 1
  store i32 %7, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @pack_all_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.Main, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %3, %23
  %9 = phi ptr [ %24, %23 ], [ %6, %3 ]
  %10 = tail call zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef nonnull %9) #6
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @BKE_image_acquire_ibuf(ptr noundef nonnull %9, ptr noundef null, ptr noundef null) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ImBuf, ptr %13, i64 0, i32 23
  %17 = load i32, ptr %16, align 4, !tbaa !53
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef null) #6
  %21 = tail call i32 @WM_operator_confirm_message(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.46) #6
  br label %32

22:                                               ; preds = %15, %12
  tail call void @BKE_image_release_ibuf(ptr noundef nonnull %9, ptr noundef %13, ptr noundef null) #6
  br label %23

23:                                               ; preds = %8, %22
  %24 = load ptr, ptr %9, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %8, !llvm.loop !58

26:                                               ; preds = %23, %3
  %27 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %28 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !46
  tail call void @packAll(ptr noundef %27, ptr noundef %29) #6
  %30 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  %31 = or i32 %30, 1
  store i32 %31, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i32 [ %21, %20 ], [ 4, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local void @FILE_OT_unpack_all(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unpack_all_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @unpack_all_invoke, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @unpack_all_method_items, i32 noundef 5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unpack_all_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = tail call i32 @RNA_enum_get(ptr noundef %5, ptr noundef nonnull @.str.15) #6
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  tail call void @unpackAll(ptr noundef %3, ptr noundef %10, i32 noundef %6) #6
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  %13 = and i32 %12, -2
  store i32 %13, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unpack_all_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = alloca [64 x i8], align 16
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  %6 = tail call i32 @countPackedFiles(ptr noundef %5) #6
  switch i32 %6, label %13 [
    i32 0, label %7
    i32 1, label %12
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void @BKE_report(ptr noundef %9, i32 noundef 16, ptr noundef nonnull @.str.47) #6
  %10 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  %11 = and i32 %10, -2
  store i32 %11, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  br label %18

12:                                               ; preds = %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) %4, ptr noundef nonnull align 1 dereferenceable(14) @.str.48, i64 14, i1 false) #6
  br label %15

13:                                               ; preds = %3
  %14 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.49, i32 noundef %6) #6
  br label %15

15:                                               ; preds = %13, %12
  %16 = call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 0) #6
  %17 = call ptr @uiPupMenuLayout(ptr noundef %16) #6
  call void @uiLayoutSetOperatorContext(ptr noundef %17, i32 noundef 6) #6
  call void @uiItemsEnumO(ptr noundef %17, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #6
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %16) #6
  br label %18

18:                                               ; preds = %15, %7
  %19 = phi i32 [ 32, %15 ], [ 2, %7 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret i32 %19
}

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FILE_OT_unpack_item(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @unpack_item_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @unpack_item_invoke, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 2, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @RNA_def_enum(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @unpack_item_method_items, i32 noundef 5, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #6
  %10 = load ptr, ptr %7, align 8, !tbaa !61
  %11 = tail call ptr @RNA_def_string(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 64, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #6
  %12 = load ptr, ptr %7, align 8, !tbaa !61
  %13 = tail call ptr @RNA_def_int(ptr noundef %12, ptr noundef nonnull @.str.24, i32 noundef 19785, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef 0, i32 noundef 2147483647) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unpack_item_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca [64 x i8], align 16
  %4 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = tail call i32 @RNA_int_get(ptr noundef %6, ptr noundef nonnull @.str.24) #6
  %8 = load ptr, ptr %5, align 8, !tbaa !62
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.15) #6
  %10 = load ptr, ptr %5, align 8, !tbaa !62
  call void @RNA_string_get(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #6
  %11 = trunc i32 %7 to i16
  %12 = call ptr @BKE_libblock_find_name(i16 noundef signext %11, ptr noundef nonnull %3) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  call void @BKE_report(ptr noundef %16, i32 noundef 16, ptr noundef nonnull @.str.61) #6
  br label %25

17:                                               ; preds = %2
  %18 = icmp eq i32 %9, 7
  br i1 %18, label %22, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  call void @BKE_unpack_id(ptr noundef %4, ptr noundef nonnull %12, ptr noundef %21, i32 noundef %9) #6
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i32, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  %24 = and i32 %23, -2
  store i32 %24, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 18), align 4, !tbaa !49
  br label %25

25:                                               ; preds = %22, %14
  %26 = phi i32 [ 2, %14 ], [ 4, %22 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @unpack_item_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #1 {
  %4 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef 0) #6
  %5 = tail call ptr @uiPupMenuLayout(ptr noundef %4) #6
  tail call void @uiLayoutSetOperatorContext(ptr noundef %5, i32 noundef 6) #6
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.wmOperatorType, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !42
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %struct.PointerRNA, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  tail call void @uiItemsFullEnumO(ptr noundef %5, ptr noundef %9, ptr noundef nonnull @.str.15, ptr noundef %13, i32 noundef 7, i32 noundef 0) #6
  tail call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %4) #6
  ret i32 32
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_make_paths_relative(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.27, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.29, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_paths_relative_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_paths_relative_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !67
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @BKE_report(ptr noundef %8, i32 noundef 16, ptr noundef nonnull @.str.67) #6
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void @BKE_bpath_relative_convert(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %12) #6
  tail call void @WM_main_add_notifier(i32 noundef 33554432, ptr noundef null) #6
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 4, %9 ], [ 2, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_make_paths_absolute(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.30, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.32, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @make_paths_absolute_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @make_paths_absolute_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !67
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  tail call void @BKE_report(ptr noundef %8, i32 noundef 16, ptr noundef nonnull @.str.68) #6
  br label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 2
  %11 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  tail call void @BKE_bpath_absolute_convert(ptr noundef %3, ptr noundef nonnull %10, ptr noundef %12) #6
  tail call void @WM_main_add_notifier(i32 noundef 33554432, ptr noundef null) #6
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i32 [ 4, %9 ], [ 2, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @FILE_OT_report_missing_files(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.33, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @report_missing_files_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @report_missing_files_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @BKE_bpath_missing_files_check(ptr noundef %3, ptr noundef %5) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @FILE_OT_find_missing_files(ptr noundef %0) local_unnamed_addr #1 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.38, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @find_missing_files_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @find_missing_files_invoke, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !45
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41) #6
  tail call void @WM_operator_properties_filesel(ptr noundef nonnull %0, i32 noundef 0, i16 noundef signext 9, i16 noundef signext 0, i16 noundef signext 2, i16 noundef signext 0) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @find_missing_files_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = tail call ptr @RNA_string_get_alloc(ptr noundef %5, ptr noundef nonnull @.str.69, ptr noundef null, i32 noundef 0) #6
  %7 = load ptr, ptr %4, align 8, !tbaa !62
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.39) #6
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @BKE_bpath_missing_files_find(ptr noundef %3, ptr noundef %6, ptr noundef %11, i8 noundef zeroext %9) #6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !52
  tail call void %12(ptr noundef %6) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @find_missing_files_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  tail call void @WM_event_add_fileselect(ptr noundef %0, ptr noundef %1) #6
  ret i32 1
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_operator_properties_filesel(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @INFO_OT_reports_display_update(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.42, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.43, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.44, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @update_reports_display_invoke, ptr %4, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 0, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @update_reports_display_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 {
  %4 = alloca [3 x float], align 4
  %5 = tail call ptr @CTX_wm_manager(ptr noundef %0) #6
  %6 = tail call ptr @CTX_wm_reports(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.update_reports_display_invoke.neutral_col, i64 12, i1 false)
  %7 = getelementptr inbounds %struct.ReportList, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = icmp eq ptr %8, null
  br i1 %9, label %76, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 28
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %8, %12
  br i1 %13, label %14, label %76

14:                                               ; preds = %10
  %15 = tail call ptr @BKE_reports_last_displayable(ptr noundef %6) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %76, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %7, align 8, !tbaa !68
  %19 = getelementptr inbounds %struct.wmTimer, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = getelementptr inbounds %struct.Report, ptr %15, i64 0, i32 2
  %22 = load i16, ptr %21, align 8, !tbaa !75
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 480
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, float 5.000000e+00, float 1.000000e+01
  %27 = select i1 %25, float 3.000000e+00, float 6.000000e+00
  %28 = getelementptr inbounds %struct.wmTimer, ptr %18, i64 0, i32 6
  %29 = load double, ptr %28, align 8, !tbaa !77
  %30 = fptrunc double %29 to float
  %31 = fcmp olt float %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  tail call void @WM_event_remove_timer(ptr noundef %5, ptr noundef null, ptr noundef %18) #6
  store ptr null, ptr %7, align 8, !tbaa !68
  br label %75

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.ReportTimerInfo, ptr %20, i64 0, i32 2
  %35 = load float, ptr %34, align 4, !tbaa !78
  %36 = fcmp oeq float %35, 0.000000e+00
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  br i1 %25, label %38, label %44

38:                                               ; preds = %37
  %39 = and i32 %23, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = and i32 %23, 2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %38, %37
  %45 = phi float [ 1.000000e+00, %37 ], [ 1.000000e+00, %38 ], [ 0x3FD3333340000000, %41 ]
  %46 = phi float [ 0x3FC99999A0000000, %37 ], [ 1.000000e+00, %38 ], [ 0x3FDCCCCCC0000000, %41 ]
  %47 = phi float [ 0.000000e+00, %37 ], [ 0.000000e+00, %38 ], [ 0x3FE6666660000000, %41 ]
  store float %45, ptr %20, align 4, !tbaa !80
  %48 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  store float %46, ptr %48, align 4, !tbaa !80
  %49 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  store float %47, ptr %49, align 4, !tbaa !80
  br label %50

50:                                               ; preds = %44, %41
  %51 = getelementptr inbounds %struct.ReportTimerInfo, ptr %20, i64 0, i32 1
  store float 7.500000e-01, ptr %51, align 4, !tbaa !81
  store float 1.000000e+00, ptr %34, align 4, !tbaa !78
  br label %52

52:                                               ; preds = %50, %33
  %53 = fdiv float %30, %26
  %54 = fdiv float %30, %27
  %55 = fcmp ugt float %54, 1.000000e+00
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  call void @interp_v3_v3v3(ptr noundef %20, ptr noundef %20, ptr noundef nonnull %4, float noundef %54) #6
  %57 = getelementptr inbounds %struct.ReportTimerInfo, ptr %20, i64 0, i32 1
  %58 = load float, ptr %57, align 4, !tbaa !81
  %59 = fsub float 1.000000e+00, %54
  %60 = fmul float %59, %58
  %61 = call float @llvm.fmuladd.f32(float %54, float 0x3FE3333340000000, float %60)
  store float %61, ptr %57, align 4, !tbaa !81
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i32 [ 1, %56 ], [ 0, %52 ]
  %64 = fmul float %26, %53
  %65 = fadd float %26, -2.500000e-01
  %66 = fcmp ogt float %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = fneg float %65
  %69 = call float @llvm.fmuladd.f32(float %53, float %26, float %68)
  %70 = fmul float %69, 4.000000e+00
  %71 = fsub float 1.000000e+00, %70
  store float %71, ptr %34, align 4, !tbaa !78
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i32 [ 1, %67 ], [ %63, %62 ]
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %72, %32
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251854848, ptr noundef null) #6
  br label %76

76:                                               ; preds = %75, %72, %3, %10, %14
  %77 = phi i32 [ 8, %14 ], [ 8, %10 ], [ 8, %3 ], [ 12, %72 ], [ 12, %75 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  ret i32 %77
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare void @packLibraries(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @WM_operator_confirm_message(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @unpackLibraries(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @packAll(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BKE_image_has_loaded_ibuf(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_image_acquire_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_image_release_ibuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @unpackAll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @countPackedFiles(ptr noundef) local_unnamed_addr #2

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiLayoutSetOperatorContext(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemsEnumO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_libblock_find_name(i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @BKE_unpack_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @uiItemsFullEnumO(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @BKE_bpath_relative_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_bpath_absolute_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_bpath_missing_files_check(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_bpath_missing_files_find(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @WM_event_add_fileselect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare ptr @BKE_reports_last_displayable(ptr noundef) local_unnamed_addr #2

declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !41, i64 184}
!46 = !{!47, !36, i64 120}
!47 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!48 = !{!35, !36, i64 48}
!49 = !{!50, !51, i64 2108}
!50 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !41, i64 2084, !41, i64 2086, !41, i64 2088, !37, i64 2090, !41, i64 2092, !51, i64 2096, !51, i64 2100, !37, i64 2104, !51, i64 2108, !51, i64 2112, !37, i64 2116}
!51 = !{!"int", !37, i64 0}
!52 = !{!36, !36, i64 0}
!53 = !{!54, !51, i64 292}
!54 = !{!"ImBuf", !36, i64 0, !36, i64 8, !51, i64 16, !51, i64 20, !37, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !36, i64 40, !36, i64 48, !37, i64 56, !51, i64 72, !51, i64 76, !51, i64 80, !51, i64 84, !36, i64 88, !36, i64 96, !36, i64 104, !55, i64 112, !37, i64 120, !51, i64 280, !51, i64 284, !51, i64 288, !51, i64 292, !36, i64 296, !36, i64 304, !51, i64 312, !37, i64 316, !37, i64 1340, !36, i64 2368, !51, i64 2376, !36, i64 2384, !51, i64 2392, !51, i64 2396, !36, i64 2400, !36, i64 2408, !36, i64 2416, !36, i64 2424, !51, i64 2432, !56, i64 2436, !57, i64 2456}
!55 = !{!"float", !37, i64 0}
!56 = !{!"rcti", !51, i64 0, !51, i64 4, !51, i64 8, !51, i64 12}
!57 = !{!"DDSData", !51, i64 0, !51, i64 4, !36, i64 8, !51, i64 16}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!35, !36, i64 88}
!62 = !{!47, !36, i64 112}
!63 = !{!47, !36, i64 88}
!64 = !{!65, !36, i64 16}
!65 = !{!"PointerRNA", !66, i64 0, !36, i64 8, !36, i64 16}
!66 = !{!"", !36, i64 0}
!67 = !{!50, !37, i64 2056}
!68 = !{!69, !36, i64 32}
!69 = !{!"ReportList", !39, i64 0, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !36, i64 32}
!70 = !{!71, !36, i64 112}
!71 = !{!"wmEvent", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !51, i64 20, !51, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 46, !51, i64 48, !51, i64 52, !72, i64 56, !51, i64 64, !51, i64 68, !41, i64 72, !41, i64 74, !41, i64 76, !41, i64 78, !41, i64 80, !41, i64 82, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 106, !51, i64 108, !36, i64 112}
!72 = !{!"double", !37, i64 0}
!73 = !{!74, !36, i64 40}
!74 = !{!"wmTimer", !36, i64 0, !36, i64 8, !36, i64 16, !72, i64 24, !51, i64 32, !36, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !51, i64 88}
!75 = !{!76, !41, i64 16}
!76 = !{!"Report", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 18, !51, i64 20, !36, i64 24, !36, i64 32}
!77 = !{!74, !72, i64 48}
!78 = !{!79, !55, i64 16}
!79 = !{!"ReportTimerInfo", !37, i64 0, !55, i64 12, !55, i64 16}
!80 = !{!55, !55, i64 0}
!81 = !{!79, !55, i64 12}
