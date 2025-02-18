; ModuleID = 'blender/source/blender/editors/space_console/console_ops.c'
source_filename = "blender/source/blender/editors/space_console/console_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceConsole = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], i32, i32, %struct.ListBase, %struct.ListBase, [256 x i8], [32 x i8], i32, i32 }
%struct.ConsoleLine = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SetConsoleCursor = type { [2 x i32], i32 }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"Move Cursor\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Move cursor position\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CONSOLE_OT_move\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@console_move_type_items = internal global [7 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.73, i32 0, ptr @.str.74, ptr @.str.51 }, %struct.EnumPropertyItem { i32 1, ptr @.str.75, i32 0, ptr @.str.76, ptr @.str.51 }, %struct.EnumPropertyItem { i32 2, ptr @.str.77, i32 0, ptr @.str.78, ptr @.str.51 }, %struct.EnumPropertyItem { i32 3, ptr @.str.79, i32 0, ptr @.str.80, ptr @.str.51 }, %struct.EnumPropertyItem { i32 4, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.51 }, %struct.EnumPropertyItem { i32 5, ptr @.str.83, i32 0, ptr @.str.84, ptr @.str.51 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Where to move cursor to\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Insert\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Insert text at cursor position\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"CONSOLE_OT_insert\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Text\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Text to insert at the cursor position\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"Indent\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Add 4 spaces at line beginning\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"CONSOLE_OT_indent\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Unindent\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Delete 4 spaces from line beginning\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"CONSOLE_OT_unindent\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Delete\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Delete text by cursor position\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"CONSOLE_OT_delete\00", align 1
@console_delete_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 1, ptr @.str.79, i32 0, ptr @.str.80, ptr @.str.51 }, %struct.EnumPropertyItem { i32 2, ptr @.str.77, i32 0, ptr @.str.78, ptr @.str.51 }, %struct.EnumPropertyItem { i32 3, ptr @.str.83, i32 0, ptr @.str.84, ptr @.str.51 }, %struct.EnumPropertyItem { i32 4, ptr @.str.81, i32 0, ptr @.str.82, ptr @.str.51 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [33 x i8] c"Which part of the text to delete\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Clear Line\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Clear the line and store in history\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"CONSOLE_OT_clear_line\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"Clear\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Clear text by type\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"CONSOLE_OT_clear\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"scrollback\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"Scrollback\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Clear the scrollback history\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"History\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Clear the command history\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"History Cycle\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Cycle through history\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"CONSOLE_OT_history_cycle\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"Reverse\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"Reverse cycle history\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"History Append\00", align 1
@.str.41 = private unnamed_addr constant [34 x i8] c"Append history at cursor position\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"CONSOLE_OT_history_append\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"current_character\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"The index of the cursor\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"remove_duplicates\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Remove Duplicates\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"Remove duplicate items in the history\00", align 1
@CONSOLE_OT_scrollback_append.console_line_type_items = internal global [5 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.49, i32 0, ptr @.str.50, ptr @.str.51 }, %struct.EnumPropertyItem { i32 1, ptr @.str.52, i32 0, ptr @.str.53, ptr @.str.51 }, %struct.EnumPropertyItem { i32 2, ptr @.str.54, i32 0, ptr @.str.55, ptr @.str.51 }, %struct.EnumPropertyItem { i32 3, ptr @.str.56, i32 0, ptr @.str.57, ptr @.str.51 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.49 = private unnamed_addr constant [7 x i8] c"OUTPUT\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"Output\00", align 1
@.str.51 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"INPUT\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"Input\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"Information\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"Scrollback Append\00", align 1
@.str.59 = private unnamed_addr constant [31 x i8] c"Append scrollback text by type\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"CONSOLE_OT_scrollback_append\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"Console output type\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"Copy to Clipboard\00", align 1
@.str.63 = private unnamed_addr constant [32 x i8] c"Copy selected text to clipboard\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"CONSOLE_OT_copy\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"Paste from Clipboard\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"Paste text from clipboard\00", align 1
@.str.67 = private unnamed_addr constant [17 x i8] c"CONSOLE_OT_paste\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"Set Selection\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"CONSOLE_OT_select_set\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"Set the console selection\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.71 = private unnamed_addr constant [16 x i8] c"ConsoleLine Add\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"console-in-line\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"LINE_BEGIN\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"Line Begin\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"LINE_END\00", align 1
@.str.76 = private unnamed_addr constant [9 x i8] c"Line End\00", align 1
@.str.77 = private unnamed_addr constant [19 x i8] c"PREVIOUS_CHARACTER\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"Previous Character\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"NEXT_CHARACTER\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"Next Character\00", align 1
@.str.81 = private unnamed_addr constant [14 x i8] c"PREVIOUS_WORD\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"Previous Word\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"NEXT_WORD\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"Next Word\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.85 = private unnamed_addr constant [12 x i8] c"insert_exec\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"console line\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.87 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"CONSOLE_OT_execute\00", align 1
@.str.89 = private unnamed_addr constant [17 x i8] c"SetConsoleCursor\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @console_history_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #8
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  tail call void %4(ptr noundef %6) #8
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef %1) #8
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @console_scrollback_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #8
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  tail call void %4(ptr noundef %6) #8
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @console_history_add_str(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @BLI_strdup(ptr noundef %1) #8
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  store i32 %14, ptr %16, align 4, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %5) #8
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local ptr @console_scrollback_add_str(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @BLI_strdup(ptr noundef %1) #8
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 2
  store i32 %14, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  store i32 %14, ptr %16, align 4, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %5) #8
  %17 = load i32, ptr %16, align 4, !tbaa !42
  %18 = add nsw i32 %17, 1
  %19 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  %20 = load i32, ptr %19, align 8, !tbaa !43
  %21 = add nsw i32 %20, %18
  store i32 %21, ptr %19, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !47
  %24 = add nsw i32 %23, %18
  store i32 %24, ptr %22, align 4, !tbaa !47
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @console_history_verify(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %2, i64 0, i32 9, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %11 = getelementptr inbounds %struct.ConsoleLine, ptr %8, i64 0, i32 4
  store ptr %10, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.ConsoleLine, ptr %8, i64 0, i32 2
  store i32 64, ptr %12, align 8, !tbaa !41
  %13 = getelementptr inbounds %struct.ConsoleLine, ptr %8, i64 0, i32 3
  store i32 0, ptr %13, align 4, !tbaa !42
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %2, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %14, ptr noundef %8) #8
  br label %15

15:                                               ; preds = %6, %1
  %16 = phi ptr [ %8, %6 ], [ %4, %1 ]
  ret ptr %16
}

declare ptr @CTX_wm_space_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CONSOLE_OT_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_move_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @console_move_type_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 9, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %13 = getelementptr inbounds %struct.ConsoleLine, ptr %10, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %10, i64 0, i32 2
  store i32 64, ptr %14, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %10, i64 0, i32 3
  store i32 0, ptr %15, align 4, !tbaa !42
  %16 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %16, ptr noundef %10) #8
  br label %17

17:                                               ; preds = %2, %8
  %18 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %19 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = tail call i32 @RNA_enum_get(ptr noundef %20, ptr noundef nonnull @.str.3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  switch i32 %21, label %138 [
    i32 0, label %22
    i32 1, label %40
    i32 2, label %58
    i32 3, label %76
    i32 4, label %94
    i32 5, label %112
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !60
  store i32 %24, ptr %3, align 4, !tbaa !61
  %25 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !42
  %29 = sext i32 %28 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %26, i64 noundef %29, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 1) #8
  %30 = load i32, ptr %3, align 4, !tbaa !61
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load i32, ptr %27, align 4, !tbaa !42
  %34 = call i32 @llvm.smin.i32(i32 %33, i32 %30)
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi i32 [ 0, %22 ], [ %34, %32 ]
  %37 = load i32, ptr %23, align 8, !tbaa !60
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %138, label %39

39:                                               ; preds = %35
  store i32 %36, ptr %23, align 8, !tbaa !60
  br label %130

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !60
  store i32 %42, ptr %3, align 4, !tbaa !61
  %43 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !42
  %47 = sext i32 %46 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %44, i64 noundef %47, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i8 noundef zeroext 1) #8
  %48 = load i32, ptr %3, align 4, !tbaa !61
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, ptr %45, align 4, !tbaa !42
  %52 = call i32 @llvm.smin.i32(i32 %51, i32 %48)
  br label %53

53:                                               ; preds = %50, %40
  %54 = phi i32 [ 0, %40 ], [ %52, %50 ]
  %55 = load i32, ptr %41, align 8, !tbaa !60
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %138, label %57

57:                                               ; preds = %53
  store i32 %54, ptr %41, align 8, !tbaa !60
  br label %130

58:                                               ; preds = %17
  %59 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 5
  %60 = load i32, ptr %59, align 8, !tbaa !60
  store i32 %60, ptr %3, align 4, !tbaa !61
  %61 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  %63 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !42
  %65 = sext i32 %64 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %62, i64 noundef %65, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #8
  %66 = load i32, ptr %3, align 4, !tbaa !61
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %58
  %69 = load i32, ptr %63, align 4, !tbaa !42
  %70 = call i32 @llvm.smin.i32(i32 %69, i32 %66)
  br label %71

71:                                               ; preds = %68, %58
  %72 = phi i32 [ 0, %58 ], [ %70, %68 ]
  %73 = load i32, ptr %59, align 8, !tbaa !60
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %138, label %75

75:                                               ; preds = %71
  store i32 %72, ptr %59, align 8, !tbaa !60
  br label %130

76:                                               ; preds = %17
  %77 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !60
  store i32 %78, ptr %3, align 4, !tbaa !61
  %79 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !38
  %81 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !42
  %83 = sext i32 %82 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %80, i64 noundef %83, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 1) #8
  %84 = load i32, ptr %3, align 4, !tbaa !61
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, ptr %81, align 4, !tbaa !42
  %88 = call i32 @llvm.smin.i32(i32 %87, i32 %84)
  br label %89

89:                                               ; preds = %86, %76
  %90 = phi i32 [ 0, %76 ], [ %88, %86 ]
  %91 = load i32, ptr %77, align 8, !tbaa !60
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %138, label %93

93:                                               ; preds = %89
  store i32 %90, ptr %77, align 8, !tbaa !60
  br label %130

94:                                               ; preds = %17
  %95 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !60
  store i32 %96, ptr %3, align 4, !tbaa !61
  %97 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !38
  %99 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 3
  %100 = load i32, ptr %99, align 4, !tbaa !42
  %101 = sext i32 %100 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %98, i64 noundef %101, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1) #8
  %102 = load i32, ptr %3, align 4, !tbaa !61
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %94
  %105 = load i32, ptr %99, align 4, !tbaa !42
  %106 = call i32 @llvm.smin.i32(i32 %105, i32 %102)
  br label %107

107:                                              ; preds = %104, %94
  %108 = phi i32 [ 0, %94 ], [ %106, %104 ]
  %109 = load i32, ptr %95, align 8, !tbaa !60
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %138, label %111

111:                                              ; preds = %107
  store i32 %108, ptr %95, align 8, !tbaa !60
  br label %130

112:                                              ; preds = %17
  %113 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 5
  %114 = load i32, ptr %113, align 8, !tbaa !60
  store i32 %114, ptr %3, align 4, !tbaa !61
  %115 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !38
  %117 = getelementptr inbounds %struct.ConsoleLine, ptr %18, i64 0, i32 3
  %118 = load i32, ptr %117, align 4, !tbaa !42
  %119 = sext i32 %118 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %116, i64 noundef %119, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 1) #8
  %120 = load i32, ptr %3, align 4, !tbaa !61
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %112
  %123 = load i32, ptr %117, align 4, !tbaa !42
  %124 = call i32 @llvm.smin.i32(i32 %123, i32 %120)
  br label %125

125:                                              ; preds = %122, %112
  %126 = phi i32 [ 0, %112 ], [ %124, %122 ]
  %127 = load i32, ptr %113, align 8, !tbaa !60
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %138, label %129

129:                                              ; preds = %125
  store i32 %126, ptr %113, align 8, !tbaa !60
  br label %130

130:                                              ; preds = %39, %57, %75, %93, %111, %129
  %131 = call ptr @CTX_wm_area(ptr noundef %0) #8
  %132 = call ptr @CTX_wm_region(ptr noundef %0) #8
  call void @ED_area_tag_redraw(ptr noundef %131) #8
  %133 = getelementptr inbounds %struct.ARegion, ptr %132, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %133, align 8, !tbaa !62
  %134 = getelementptr inbounds %struct.ARegion, ptr %132, i64 0, i32 2, i32 17
  %135 = load i16, ptr %134, align 8, !tbaa !66
  %136 = sitofp i16 %135 to float
  %137 = getelementptr inbounds %struct.ARegion, ptr %132, i64 0, i32 2, i32 1, i32 3
  store float %136, ptr %137, align 4, !tbaa !67
  br label %138

138:                                              ; preds = %17, %35, %53, %71, %89, %107, %125, %130
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 4
}

declare i32 @ED_operator_console_active(ptr noundef) #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CONSOLE_OT_insert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_insert_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @console_insert_invoke, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 2
  store i32 64, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 3
  store i32 0, ptr %16, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %11) #8
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = tail call ptr @RNA_string_get_alloc(ptr noundef %21, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #8
  %23 = load i8, ptr %22, align 1, !tbaa !69
  %24 = icmp eq i8 %23, 9
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = getelementptr inbounds i8, ptr %22, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !69
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %30(ptr noundef nonnull %22) #8
  %31 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 5, ptr noundef nonnull @.str.85) #8
  store i32 538976288, ptr %32, align 1
  %33 = getelementptr inbounds i8, ptr %32, i64 4
  store i8 0, ptr %33, align 1, !tbaa !69
  br label %34

34:                                               ; preds = %29, %25, %18
  %35 = phi ptr [ %32, %29 ], [ %22, %25 ], [ %22, %18 ]
  %36 = tail call fastcc i32 @console_line_insert(ptr noundef %19, ptr noundef nonnull %35)
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %37(ptr noundef nonnull %35) #8
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %58, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %41 = load i32, ptr %40, align 8, !tbaa !43
  %42 = add nsw i32 %41, %36
  store i32 %42, ptr %40, align 8, !tbaa !43
  %43 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %44 = load i32, ptr %43, align 4, !tbaa !47
  %45 = add nsw i32 %44, %36
  store i32 %45, ptr %43, align 4, !tbaa !47
  %46 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %47 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %48 = load i16, ptr %47, align 8, !tbaa !70
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %49, -1
  %51 = tail call i32 @console_textview_height(ptr noundef %3, ptr noundef %4) #8
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %46, i32 noundef %50, i32 noundef %51) #8
  %52 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %52) #8
  %53 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %53, align 8, !tbaa !62
  %54 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 17
  %55 = load i16, ptr %54, align 8, !tbaa !66
  %56 = sitofp i16 %55 to float
  %57 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  store float %56, ptr %57, align 4, !tbaa !67
  br label %58

58:                                               ; preds = %34, %39
  %59 = phi i32 [ 4, %39 ], [ 2, %34 ]
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_insert_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [7 x i8], align 1
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = tail call i32 @RNA_string_length(ptr noundef %6, ptr noundef nonnull @.str.9) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %37

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !72
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 20
  %15 = load i16, ptr %14, align 2, !tbaa !75
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %19 = load i8, ptr %18, align 4, !tbaa !69
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17, %13
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #8
  %22 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %23 = load i8, ptr %22, align 4, !tbaa !69
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %22) #8
  %27 = sext i32 %26 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull align 4 %22, i64 %27, i1 false)
  br label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %30 = load i8, ptr %29, align 2, !tbaa !76
  %31 = zext i8 %30 to i32
  %32 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %31, ptr noundef nonnull %4) #8
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i64 [ %27, %25 ], [ %32, %28 ]
  %35 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 %34
  store i8 0, ptr %35, align 1, !tbaa !69
  %36 = load ptr, ptr %5, align 8, !tbaa !58
  call void @RNA_string_set(ptr noundef %36, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #8
  br label %37

37:                                               ; preds = %33, %3
  %38 = call i32 @console_insert_exec(ptr noundef %0, ptr noundef %1), !range !77
  br label %39

39:                                               ; preds = %17, %37
  %40 = phi i32 [ %38, %37 ], [ 8, %17 ]
  ret i32 %40
}

declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_indent(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_indent_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_indent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 2
  store i32 64, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 3
  store i32 0, ptr %16, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %11) #8
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %20 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !42
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = zext nneg i32 %21 to i64
  br label %27

27:                                               ; preds = %23, %32
  %28 = phi i64 [ 0, %23 ], [ %33, %32 ]
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !69
  %31 = icmp eq i8 %30, 32
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = add nuw nsw i64 %28, 1
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %37, label %27, !llvm.loop !78

35:                                               ; preds = %27
  %36 = trunc i64 %28 to i32
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi i32 [ %36, %35 ], [ %21, %32 ]
  %39 = and i32 %38, 3
  %40 = sub nuw nsw i32 4, %39
  br label %41

41:                                               ; preds = %37, %18
  %42 = phi i32 [ 4, %18 ], [ %40, %37 ]
  %43 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 3
  %44 = add nsw i32 %42, %21
  %45 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !41
  %47 = icmp sgt i32 %46, %44
  br i1 %47, label %60, label %48

48:                                               ; preds = %41
  %49 = shl i32 %44, 1
  %50 = add i32 %49, 2
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = sext i32 %50 to i64
  %53 = tail call ptr %51(i64 noundef %52, ptr noundef nonnull @.str.86) #8
  %54 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !38
  %56 = load i32, ptr %43, align 4, !tbaa !42
  %57 = sext i32 %56 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %53, ptr align 1 %55, i64 %57, i1 false)
  %58 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %59 = load ptr, ptr %54, align 8, !tbaa !38
  tail call void %58(ptr noundef %59) #8
  store ptr %53, ptr %54, align 8, !tbaa !38
  store i32 %50, ptr %45, align 8, !tbaa !41
  br label %60

60:                                               ; preds = %41, %48
  %61 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  %63 = zext nneg i32 %42 to i64
  %64 = getelementptr inbounds i8, ptr %62, i64 %63
  %65 = load i32, ptr %43, align 4, !tbaa !42
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %64, ptr align 1 %62, i64 %67, i1 false)
  %68 = load ptr, ptr %61, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %68, i8 32, i64 %63, i1 false)
  %69 = load i32, ptr %43, align 4, !tbaa !42
  %70 = add nsw i32 %69, %42
  store i32 %70, ptr %43, align 4, !tbaa !42
  %71 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 5
  %72 = load i32, ptr %71, align 8, !tbaa !60
  %73 = add nsw i32 %72, %42
  %74 = icmp slt i32 %73, 0
  %75 = tail call i32 @llvm.smin.i32(i32 %70, i32 %73)
  %76 = select i1 %74, i32 0, i32 %75
  %77 = icmp eq i32 %76, %72
  br i1 %77, label %79, label %78

78:                                               ; preds = %60
  store i32 %76, ptr %71, align 8, !tbaa !60
  br label %79

79:                                               ; preds = %60, %78
  %80 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %81 = load i32, ptr %80, align 8, !tbaa !43
  %82 = add nsw i32 %81, %42
  store i32 %82, ptr %80, align 8, !tbaa !43
  %83 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %84 = load i32, ptr %83, align 4, !tbaa !47
  %85 = add nsw i32 %84, %42
  store i32 %85, ptr %83, align 4, !tbaa !47
  %86 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %87 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %88 = load i16, ptr %87, align 8, !tbaa !70
  %89 = sext i16 %88 to i32
  %90 = add nsw i32 %89, -1
  %91 = tail call i32 @console_textview_height(ptr noundef %3, ptr noundef %4) #8
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %86, i32 noundef %90, i32 noundef %91) #8
  %92 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %92) #8
  %93 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %93, align 8, !tbaa !62
  %94 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 17
  %95 = load i16, ptr %94, align 8, !tbaa !66
  %96 = sitofp i16 %95 to float
  %97 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  store float %96, ptr %97, align 4, !tbaa !67
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_unindent(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_unindent_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_unindent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 2
  store i32 64, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 3
  store i32 0, ptr %16, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %11) #8
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %20 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !42
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = zext nneg i32 %21 to i64
  br label %27

27:                                               ; preds = %23, %32
  %28 = phi i64 [ 0, %23 ], [ %33, %32 ]
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !69
  %31 = icmp eq i8 %30, 32
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = add nuw nsw i64 %28, 1
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %37, label %27, !llvm.loop !81

35:                                               ; preds = %27
  %36 = trunc i64 %28 to i32
  br label %37

37:                                               ; preds = %35, %32, %18
  %38 = phi i32 [ 0, %18 ], [ %36, %35 ], [ %21, %32 ]
  %39 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 3
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %99, label %41

41:                                               ; preds = %37
  %42 = and i32 %38, 3
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 4, i32 %42
  %45 = sub nsw i32 %21, %44
  %46 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !41
  %48 = icmp sgt i32 %47, %45
  br i1 %48, label %61, label %49

49:                                               ; preds = %41
  %50 = shl i32 %45, 1
  %51 = add i32 %50, 2
  %52 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %53 = sext i32 %51 to i64
  %54 = tail call ptr %52(i64 noundef %53, ptr noundef nonnull @.str.86) #8
  %55 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !38
  %57 = load i32, ptr %39, align 4, !tbaa !42
  %58 = sext i32 %57 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %54, ptr align 1 %56, i64 %58, i1 false)
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %60 = load ptr, ptr %55, align 8, !tbaa !38
  tail call void %59(ptr noundef %60) #8
  store ptr %54, ptr %55, align 8, !tbaa !38
  store i32 %51, ptr %46, align 8, !tbaa !41
  br label %61

61:                                               ; preds = %41, %49
  %62 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  %64 = zext nneg i32 %44 to i64
  %65 = getelementptr inbounds i8, ptr %63, i64 %64
  %66 = load i32, ptr %39, align 4, !tbaa !42
  %67 = sub i32 %66, %44
  %68 = add i32 %67, 1
  %69 = sext i32 %68 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %63, ptr nonnull align 1 %65, i64 %69, i1 false)
  %70 = load i32, ptr %39, align 4, !tbaa !42
  %71 = sub nsw i32 %70, %44
  store i32 %71, ptr %39, align 4, !tbaa !42
  %72 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 5
  %73 = load i32, ptr %72, align 8, !tbaa !60
  %74 = sub nsw i32 %73, %44
  %75 = icmp slt i32 %74, 0
  %76 = tail call i32 @llvm.smin.i32(i32 %71, i32 %74)
  %77 = select i1 %75, i32 0, i32 %76
  %78 = icmp eq i32 %77, %73
  br i1 %78, label %80, label %79

79:                                               ; preds = %61
  store i32 %77, ptr %72, align 8, !tbaa !60
  br label %80

80:                                               ; preds = %61, %79
  %81 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %82 = load i32, ptr %81, align 8, !tbaa !43
  %83 = sub i32 %82, %44
  store i32 %83, ptr %81, align 8, !tbaa !43
  %84 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %85 = load i32, ptr %84, align 4, !tbaa !47
  %86 = sub i32 %85, %44
  store i32 %86, ptr %84, align 4, !tbaa !47
  %87 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %88 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %89 = load i16, ptr %88, align 8, !tbaa !70
  %90 = sext i16 %89 to i32
  %91 = add nsw i32 %90, -1
  %92 = tail call i32 @console_textview_height(ptr noundef %3, ptr noundef %4) #8
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %87, i32 noundef %91, i32 noundef %92) #8
  %93 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %93) #8
  %94 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %94, align 8, !tbaa !62
  %95 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 17
  %96 = load i16, ptr %95, align 8, !tbaa !66
  %97 = sitofp i16 %96 to float
  %98 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  store float %97, ptr %98, align 4, !tbaa !67
  br label %99

99:                                               ; preds = %37, %80
  %100 = phi i32 [ 4, %80 ], [ 2, %37 ]
  ret i32 %100
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSOLE_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_delete_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @console_delete_type_items, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.SpaceConsole, ptr %6, i64 0, i32 9, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 2
  store i32 64, ptr %16, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !42
  %18 = getelementptr inbounds %struct.SpaceConsole, ptr %6, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %12) #8
  br label %19

19:                                               ; preds = %2, %10
  %20 = phi ptr [ %12, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = tail call i32 @RNA_enum_get(ptr noundef %22, ptr noundef nonnull @.str.3) #8
  %24 = getelementptr inbounds %struct.ConsoleLine, ptr %20, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !42
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %97, label %27

27:                                               ; preds = %19
  %28 = shl i32 %23, 16
  %29 = ashr exact i32 %28, 16
  switch i32 %29, label %75 [
    i32 1, label %30
    i32 3, label %30
    i32 2, label %44
    i32 4, label %44
  ]

30:                                               ; preds = %27, %27
  %31 = getelementptr inbounds %struct.ConsoleLine, ptr %20, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !60
  %33 = icmp slt i32 %32, %25
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  store i32 %32, ptr %3, align 4, !tbaa !61
  %35 = getelementptr inbounds %struct.ConsoleLine, ptr %20, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = sext i32 %25 to i64
  %38 = icmp ne i32 %28, 65536
  %39 = zext i1 %38 to i32
  call void @BLI_str_cursor_step_utf8(ptr noundef %36, i64 noundef %37, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %39, i8 noundef zeroext 1) #8
  %40 = load i32, ptr %3, align 4, !tbaa !61
  %41 = load i32, ptr %31, align 8, !tbaa !60
  %42 = sub nsw i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %75, label %59

44:                                               ; preds = %27, %27
  %45 = getelementptr inbounds %struct.ConsoleLine, ptr %20, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !60
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %75

48:                                               ; preds = %44
  store i32 %46, ptr %3, align 4, !tbaa !61
  %49 = getelementptr inbounds %struct.ConsoleLine, ptr %20, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !38
  %51 = sext i32 %25 to i64
  %52 = icmp ne i32 %28, 131072
  %53 = zext i1 %52 to i32
  call void @BLI_str_cursor_step_utf8(ptr noundef %50, i64 noundef %51, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %53, i8 noundef zeroext 1) #8
  %54 = load i32, ptr %45, align 8, !tbaa !60
  %55 = load i32, ptr %3, align 4, !tbaa !61
  %56 = sub nsw i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %75, label %58

58:                                               ; preds = %48
  store i32 %55, ptr %45, align 8, !tbaa !60
  br label %59

59:                                               ; preds = %34, %58
  %60 = phi ptr [ %49, %58 ], [ %35, %34 ]
  %61 = phi i32 [ %55, %58 ], [ %41, %34 ]
  %62 = phi i32 [ %56, %58 ], [ %42, %34 ]
  %63 = phi i32 [ %54, %58 ], [ %40, %34 ]
  %64 = load ptr, ptr %60, align 8, !tbaa !38
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  %67 = sext i32 %62 to i64
  %68 = getelementptr inbounds i8, ptr %66, i64 %67
  %69 = load i32, ptr %24, align 4, !tbaa !42
  %70 = sub i32 %69, %63
  %71 = add i32 %70, 1
  %72 = sext i32 %71 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %66, ptr nonnull align 1 %68, i64 %72, i1 false)
  %73 = load i32, ptr %24, align 4, !tbaa !42
  %74 = sub nsw i32 %73, %62
  store i32 %74, ptr %24, align 4, !tbaa !42
  br label %75

75:                                               ; preds = %59, %44, %48, %30, %34, %27
  %76 = phi i32 [ undef, %27 ], [ 0, %48 ], [ undef, %44 ], [ 0, %34 ], [ undef, %30 ], [ %62, %59 ]
  %77 = phi i1 [ true, %27 ], [ true, %48 ], [ true, %44 ], [ true, %34 ], [ true, %30 ], [ false, %59 ]
  br i1 %77, label %97, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 12
  %80 = load i32, ptr %79, align 8, !tbaa !43
  %81 = sub i32 %80, %76
  store i32 %81, ptr %79, align 8, !tbaa !43
  %82 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 13
  %83 = load i32, ptr %82, align 4, !tbaa !47
  %84 = sub i32 %83, %76
  store i32 %84, ptr %82, align 4, !tbaa !47
  %85 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %86 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 5
  %87 = load i16, ptr %86, align 8, !tbaa !70
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %88, -1
  %90 = call i32 @console_textview_height(ptr noundef %4, ptr noundef %5) #8
  call void @UI_view2d_totRect_set(ptr noundef nonnull %85, i32 noundef %89, i32 noundef %90) #8
  %91 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_tag_redraw(ptr noundef %91) #8
  %92 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %92, align 8, !tbaa !62
  %93 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 17
  %94 = load i16, ptr %93, align 8, !tbaa !66
  %95 = sitofp i16 %94 to float
  %96 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 3
  store float %95, ptr %96, align 4, !tbaa !67
  br label %97

97:                                               ; preds = %75, %19, %78
  %98 = phi i32 [ 4, %78 ], [ 2, %19 ], [ 2, %75 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %98
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_clear_line(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_clear_line_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_clear_line_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 2
  store i32 64, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 3
  store i32 0, ptr %16, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %11) #8
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %20 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !42
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %25 = tail call ptr %24(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %26 = icmp eq ptr %19, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = load i32, ptr %20, align 4, !tbaa !42
  %31 = sext i32 %30 to i64
  %32 = tail call ptr @BLI_strdupn(ptr noundef %29, i64 noundef %31) #8
  %33 = getelementptr inbounds %struct.ConsoleLine, ptr %25, i64 0, i32 4
  store ptr %32, ptr %33, align 8, !tbaa !38
  %34 = load i32, ptr %20, align 4, !tbaa !42
  %35 = getelementptr inbounds %struct.ConsoleLine, ptr %25, i64 0, i32 2
  store i32 %34, ptr %35, align 8, !tbaa !41
  %36 = getelementptr inbounds %struct.ConsoleLine, ptr %25, i64 0, i32 3
  store i32 %34, ptr %36, align 4, !tbaa !42
  %37 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !60
  %39 = getelementptr inbounds %struct.ConsoleLine, ptr %25, i64 0, i32 5
  store i32 %38, ptr %39, align 8, !tbaa !60
  %40 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 6
  %41 = load i32, ptr %40, align 4, !tbaa !82
  %42 = getelementptr inbounds %struct.ConsoleLine, ptr %25, i64 0, i32 6
  store i32 %41, ptr %42, align 4, !tbaa !82
  br label %49

43:                                               ; preds = %23
  %44 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %45 = tail call ptr %44(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %46 = getelementptr inbounds %struct.ConsoleLine, ptr %25, i64 0, i32 4
  store ptr %45, ptr %46, align 8, !tbaa !38
  %47 = getelementptr inbounds %struct.ConsoleLine, ptr %25, i64 0, i32 2
  store i32 64, ptr %47, align 8, !tbaa !41
  %48 = getelementptr inbounds %struct.ConsoleLine, ptr %25, i64 0, i32 3
  store i32 0, ptr %48, align 4, !tbaa !42
  br label %49

49:                                               ; preds = %27, %43
  %50 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %50, ptr noundef %25) #8
  %51 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %52 = tail call ptr %51(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %53 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %54 = tail call ptr %53(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %55 = getelementptr inbounds %struct.ConsoleLine, ptr %52, i64 0, i32 4
  store ptr %54, ptr %55, align 8, !tbaa !38
  %56 = getelementptr inbounds %struct.ConsoleLine, ptr %52, i64 0, i32 2
  store i32 64, ptr %56, align 8, !tbaa !41
  %57 = getelementptr inbounds %struct.ConsoleLine, ptr %52, i64 0, i32 3
  store i32 0, ptr %57, align 4, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %50, ptr noundef %52) #8
  %58 = load i32, ptr %20, align 4, !tbaa !42
  %59 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %60 = load i32, ptr %59, align 8, !tbaa !43
  %61 = sub i32 %60, %58
  store i32 %61, ptr %59, align 8, !tbaa !43
  %62 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %63 = load i32, ptr %62, align 4, !tbaa !47
  %64 = sub i32 %63, %58
  store i32 %64, ptr %62, align 4, !tbaa !47
  %65 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %66 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %67 = load i16, ptr %66, align 8, !tbaa !70
  %68 = sext i16 %67 to i32
  %69 = add nsw i32 %68, -1
  %70 = tail call i32 @console_textview_height(ptr noundef %3, ptr noundef %4) #8
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %65, i32 noundef %69, i32 noundef %70) #8
  %71 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %71) #8
  %72 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %72, align 8, !tbaa !62
  %73 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 17
  %74 = load i16, ptr %73, align 8, !tbaa !66
  %75 = sitofp i16 %74 to float
  %76 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  store float %75, ptr %76, align 4, !tbaa !67
  br label %77

77:                                               ; preds = %18, %49
  %78 = phi i32 [ 4, %49 ], [ 2, %18 ]
  ret i32 %78
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSOLE_OT_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_clear_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #8
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.28) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !58
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.31) #8
  %10 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.SpaceConsole, ptr %10, i64 0, i32 9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %19 = getelementptr inbounds %struct.ConsoleLine, ptr %16, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.ConsoleLine, ptr %16, i64 0, i32 2
  store i32 64, ptr %20, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.ConsoleLine, ptr %16, i64 0, i32 3
  store i32 0, ptr %21, align 4, !tbaa !42
  %22 = getelementptr inbounds %struct.SpaceConsole, ptr %10, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %22, ptr noundef %16) #8
  br label %23

23:                                               ; preds = %2, %14
  %24 = and i32 %7, 255
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 8
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %28, %26 ]
  tail call void @BLI_remlink(ptr noundef nonnull %27, ptr noundef nonnull %31) #8
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.ConsoleLine, ptr %31, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  tail call void %32(ptr noundef %34) #8
  %35 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %35(ptr noundef nonnull %31) #8
  %36 = load ptr, ptr %27, align 8, !tbaa !83
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30, !llvm.loop !84

38:                                               ; preds = %30, %26, %23
  %39 = and i32 %9, 255
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %67, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  %44 = icmp eq ptr %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %41, %45
  %46 = phi ptr [ %51, %45 ], [ %43, %41 ]
  tail call void @BLI_remlink(ptr noundef nonnull %42, ptr noundef nonnull %46) #8
  %47 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.ConsoleLine, ptr %46, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !38
  tail call void %47(ptr noundef %49) #8
  %50 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %50(ptr noundef nonnull %46) #8
  %51 = load ptr, ptr %42, align 8, !tbaa !85
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %45, !llvm.loop !86

53:                                               ; preds = %45, %41
  %54 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %55 = getelementptr inbounds %struct.SpaceConsole, ptr %54, i64 0, i32 9, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %60 = tail call ptr %59(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %62 = tail call ptr %61(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %63 = getelementptr inbounds %struct.ConsoleLine, ptr %60, i64 0, i32 4
  store ptr %62, ptr %63, align 8, !tbaa !38
  %64 = getelementptr inbounds %struct.ConsoleLine, ptr %60, i64 0, i32 2
  store i32 64, ptr %64, align 8, !tbaa !41
  %65 = getelementptr inbounds %struct.ConsoleLine, ptr %60, i64 0, i32 3
  store i32 0, ptr %65, align 4, !tbaa !42
  %66 = getelementptr inbounds %struct.SpaceConsole, ptr %54, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %66, ptr noundef %60) #8
  br label %67

67:                                               ; preds = %58, %53, %38
  %68 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %69 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %70 = load i16, ptr %69, align 8, !tbaa !70
  %71 = sext i16 %70 to i32
  %72 = add nsw i32 %71, -1
  %73 = tail call i32 @console_textview_height(ptr noundef %3, ptr noundef %4) #8
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %68, i32 noundef %72, i32 noundef %73) #8
  %74 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %74) #8
  ret i32 4
}

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CONSOLE_OT_history_cycle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_history_cycle_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_history_cycle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %13 = tail call ptr %12(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 2
  store i32 64, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 3
  store i32 0, ptr %16, align 4, !tbaa !42
  %17 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %11) #8
  br label %18

18:                                               ; preds = %2, %9
  %19 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %20 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = tail call i32 @RNA_boolean_get(ptr noundef %21, ptr noundef nonnull @.str.37) #8
  %23 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !42
  %25 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !87
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.ConsoleLine, ptr %19, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.ConsoleLine, ptr %26, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %32) #9
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  tail call void @BLI_remlink(ptr noundef nonnull %36, ptr noundef nonnull %26) #8
  %37 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %38 = load ptr, ptr %31, align 8, !tbaa !38
  tail call void %37(ptr noundef %38) #8
  %39 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %39(ptr noundef nonnull %26) #8
  br label %40

40:                                               ; preds = %28, %35, %18
  %41 = and i32 %22, 255
  %42 = icmp eq i32 %41, 0
  %43 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  br i1 %42, label %47, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  tail call void @BLI_remlink(ptr noundef nonnull %43, ptr noundef %46) #8
  tail call void @BLI_addhead(ptr noundef nonnull %43, ptr noundef %46) #8
  br label %49

47:                                               ; preds = %40
  %48 = load ptr, ptr %43, align 8, !tbaa !85
  tail call void @BLI_remlink(ptr noundef nonnull %43, ptr noundef %48) #8
  tail call void @BLI_addtail(ptr noundef nonnull %43, ptr noundef %48) #8
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi ptr [ %46, %44 ], [ %48, %47 ]
  %51 = getelementptr inbounds %struct.ConsoleLine, ptr %50, i64 0, i32 4
  %52 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9, i32 1
  %53 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  br label %54

54:                                               ; preds = %73, %49
  %55 = load ptr, ptr %51, align 8, !tbaa !38
  %56 = load ptr, ptr %52, align 8, !tbaa !34
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %54, %66
  %59 = phi ptr [ %68, %66 ], [ %56, %54 ]
  %60 = icmp eq ptr %59, %50
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.ConsoleLine, ptr %59, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(1) %63) #9
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %61, %58
  %67 = getelementptr inbounds %struct.ConsoleLine, ptr %59, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %58, !llvm.loop !88

70:                                               ; preds = %61, %66, %54
  %71 = phi ptr [ null, %54 ], [ %59, %61 ], [ null, %66 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  tail call void @BLI_remlink(ptr noundef nonnull %53, ptr noundef nonnull %71) #8
  %74 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %75 = getelementptr inbounds %struct.ConsoleLine, ptr %71, i64 0, i32 4
  %76 = load ptr, ptr %75, align 8, !tbaa !38
  tail call void %74(ptr noundef %76) #8
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %77(ptr noundef nonnull %71) #8
  br label %54, !llvm.loop !89

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !48
  %81 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %82 = tail call ptr %81(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %83 = icmp eq ptr %80, null
  br i1 %83, label %101, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.ConsoleLine, ptr %80, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !38
  %87 = getelementptr inbounds %struct.ConsoleLine, ptr %80, i64 0, i32 3
  %88 = load i32, ptr %87, align 4, !tbaa !42
  %89 = sext i32 %88 to i64
  %90 = tail call ptr @BLI_strdupn(ptr noundef %86, i64 noundef %89) #8
  %91 = getelementptr inbounds %struct.ConsoleLine, ptr %82, i64 0, i32 4
  store ptr %90, ptr %91, align 8, !tbaa !38
  %92 = load i32, ptr %87, align 4, !tbaa !42
  %93 = getelementptr inbounds %struct.ConsoleLine, ptr %82, i64 0, i32 2
  store i32 %92, ptr %93, align 8, !tbaa !41
  %94 = getelementptr inbounds %struct.ConsoleLine, ptr %82, i64 0, i32 3
  store i32 %92, ptr %94, align 4, !tbaa !42
  %95 = getelementptr inbounds %struct.ConsoleLine, ptr %80, i64 0, i32 5
  %96 = load i32, ptr %95, align 8, !tbaa !60
  %97 = getelementptr inbounds %struct.ConsoleLine, ptr %82, i64 0, i32 5
  store i32 %96, ptr %97, align 8, !tbaa !60
  %98 = getelementptr inbounds %struct.ConsoleLine, ptr %80, i64 0, i32 6
  %99 = load i32, ptr %98, align 4, !tbaa !82
  %100 = getelementptr inbounds %struct.ConsoleLine, ptr %82, i64 0, i32 6
  store i32 %99, ptr %100, align 4, !tbaa !82
  br label %107

101:                                              ; preds = %78
  %102 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %103 = tail call ptr %102(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %104 = getelementptr inbounds %struct.ConsoleLine, ptr %82, i64 0, i32 4
  store ptr %103, ptr %104, align 8, !tbaa !38
  %105 = getelementptr inbounds %struct.ConsoleLine, ptr %82, i64 0, i32 2
  store i32 64, ptr %105, align 8, !tbaa !41
  %106 = getelementptr inbounds %struct.ConsoleLine, ptr %82, i64 0, i32 3
  store i32 0, ptr %106, align 4, !tbaa !42
  br label %107

107:                                              ; preds = %84, %101
  %108 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %108, ptr noundef %82) #8
  %109 = load ptr, ptr %79, align 8, !tbaa !48
  %110 = getelementptr inbounds %struct.ConsoleLine, ptr %109, i64 0, i32 3
  %111 = load i32, ptr %110, align 4, !tbaa !42
  %112 = sub nsw i32 %111, %24
  %113 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %114 = load i32, ptr %113, align 8, !tbaa !43
  %115 = add nsw i32 %114, %112
  store i32 %115, ptr %113, align 8, !tbaa !43
  %116 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %117 = load i32, ptr %116, align 4, !tbaa !47
  %118 = add nsw i32 %117, %112
  store i32 %118, ptr %116, align 4, !tbaa !47
  %119 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %120 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %121 = load i16, ptr %120, align 8, !tbaa !70
  %122 = sext i16 %121 to i32
  %123 = add nsw i32 %122, -1
  %124 = tail call i32 @console_textview_height(ptr noundef %3, ptr noundef %4) #8
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %119, i32 noundef %123, i32 noundef %124) #8
  %125 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %125) #8
  %126 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %126, align 8, !tbaa !62
  %127 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 17
  %128 = load i16, ptr %127, align 8, !tbaa !66
  %129 = sitofp i16 %128 to float
  %130 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  store float %129, ptr %130, align 4, !tbaa !67
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local void @CONSOLE_OT_history_append(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_history_append_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @RNA_def_string(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 10000) #8
  %11 = load ptr, ptr %6, align 8, !tbaa !57
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_history_append_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.SpaceConsole, ptr %6, i64 0, i32 9, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 2
  store i32 64, ptr %16, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !42
  %18 = getelementptr inbounds %struct.SpaceConsole, ptr %6, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %12) #8
  br label %19

19:                                               ; preds = %2, %10
  %20 = phi ptr [ %12, %10 ], [ %8, %2 ]
  %21 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = tail call ptr @RNA_string_get_alloc(ptr noundef %22, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #8
  %24 = load ptr, ptr %21, align 8, !tbaa !58
  %25 = tail call i32 @RNA_int_get(ptr noundef %24, ptr noundef nonnull @.str.43) #8
  %26 = load ptr, ptr %21, align 8, !tbaa !58
  %27 = tail call i32 @RNA_boolean_get(ptr noundef %26, ptr noundef nonnull @.str.46) #8
  %28 = getelementptr inbounds %struct.ConsoleLine, ptr %20, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !42
  %30 = and i32 %27, 255
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %65, label %32

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.ConsoleLine, ptr %20, i64 0, i32 4
  %34 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9, i32 1
  %35 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  br label %36

36:                                               ; preds = %32, %55
  %37 = load ptr, ptr %33, align 8, !tbaa !38
  %38 = load ptr, ptr %34, align 8, !tbaa !34
  %39 = icmp eq ptr %38, null
  br i1 %39, label %52, label %40

40:                                               ; preds = %36, %48
  %41 = phi ptr [ %50, %48 ], [ %38, %36 ]
  %42 = icmp eq ptr %41, %20
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.ConsoleLine, ptr %41, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %45) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43, %40
  %49 = getelementptr inbounds %struct.ConsoleLine, ptr %41, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %40, !llvm.loop !88

52:                                               ; preds = %43, %48, %36
  %53 = phi ptr [ null, %36 ], [ %41, %43 ], [ null, %48 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %52
  tail call void @BLI_remlink(ptr noundef nonnull %35, ptr noundef nonnull %53) #8
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %57 = getelementptr inbounds %struct.ConsoleLine, ptr %53, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !38
  tail call void %56(ptr noundef %58) #8
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %59(ptr noundef nonnull %53) #8
  br label %36, !llvm.loop !90

60:                                               ; preds = %52
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %37) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %64(ptr noundef %23) #8
  br label %97

65:                                               ; preds = %60, %19
  %66 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  %67 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %68 = tail call ptr %67(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %69 = getelementptr inbounds %struct.ConsoleLine, ptr %68, i64 0, i32 4
  store ptr %23, ptr %69, align 8, !tbaa !38
  %70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #9
  %71 = trunc i64 %70 to i32
  %72 = getelementptr inbounds %struct.ConsoleLine, ptr %68, i64 0, i32 2
  store i32 %71, ptr %72, align 8, !tbaa !41
  %73 = getelementptr inbounds %struct.ConsoleLine, ptr %68, i64 0, i32 3
  store i32 %71, ptr %73, align 4, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %66, ptr noundef %68) #8
  %74 = load i32, ptr %73, align 4, !tbaa !42
  %75 = sub nsw i32 %74, %29
  %76 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %77 = load i32, ptr %76, align 8, !tbaa !43
  %78 = add nsw i32 %77, %75
  store i32 %78, ptr %76, align 8, !tbaa !43
  %79 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %80 = load i32, ptr %79, align 4, !tbaa !47
  %81 = add nsw i32 %80, %75
  store i32 %81, ptr %79, align 4, !tbaa !47
  %82 = icmp slt i32 %25, 0
  %83 = tail call i32 @llvm.smin.i32(i32 %74, i32 %25)
  %84 = select i1 %82, i32 0, i32 %83
  %85 = getelementptr inbounds %struct.ConsoleLine, ptr %68, i64 0, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !60
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %65
  store i32 %84, ptr %85, align 8, !tbaa !60
  br label %89

89:                                               ; preds = %65, %88
  tail call void @ED_area_tag_redraw(ptr noundef %5) #8
  %90 = icmp eq ptr %4, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %92, align 8, !tbaa !62
  %93 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 17
  %94 = load i16, ptr %93, align 8, !tbaa !66
  %95 = sitofp i16 %94 to float
  %96 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2, i32 1, i32 3
  store float %95, ptr %96, align 4, !tbaa !67
  br label %97

97:                                               ; preds = %63, %89, %91
  ret i32 4
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @CONSOLE_OT_scrollback_append(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_scrollback_append_exec, ptr %4, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = tail call ptr @RNA_def_string(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #8
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @CONSOLE_OT_scrollback_append.console_line_type_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_scrollback_append_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = tail call ptr @RNA_string_get_alloc(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #8
  %8 = load ptr, ptr %5, align 8, !tbaa !58
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #8
  %10 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %11 = getelementptr inbounds %struct.SpaceConsole, ptr %10, i64 0, i32 9, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %19 = getelementptr inbounds %struct.ConsoleLine, ptr %16, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %struct.ConsoleLine, ptr %16, i64 0, i32 2
  store i32 64, ptr %20, align 8, !tbaa !41
  %21 = getelementptr inbounds %struct.ConsoleLine, ptr %16, i64 0, i32 3
  store i32 0, ptr %21, align 4, !tbaa !42
  %22 = getelementptr inbounds %struct.SpaceConsole, ptr %10, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %22, ptr noundef %16) #8
  br label %23

23:                                               ; preds = %2, %14
  %24 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 8
  %25 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %26 = tail call ptr %25(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %27 = getelementptr inbounds %struct.ConsoleLine, ptr %26, i64 0, i32 4
  store ptr %7, ptr %27, align 8, !tbaa !38
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #9
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.ConsoleLine, ptr %26, i64 0, i32 2
  store i32 %29, ptr %30, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.ConsoleLine, ptr %26, i64 0, i32 3
  store i32 %29, ptr %31, align 4, !tbaa !42
  tail call void @BLI_addtail(ptr noundef nonnull %24, ptr noundef %26) #8
  %32 = load i32, ptr %31, align 4, !tbaa !42
  %33 = add nsw i32 %32, 1
  %34 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 12
  %35 = load i32, ptr %34, align 8, !tbaa !43
  %36 = add nsw i32 %35, %33
  store i32 %36, ptr %34, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 13
  %38 = load i32, ptr %37, align 4, !tbaa !47
  %39 = add nsw i32 %38, %33
  store i32 %39, ptr %37, align 4, !tbaa !47
  %40 = getelementptr inbounds %struct.ConsoleLine, ptr %26, i64 0, i32 6
  store i32 %9, ptr %40, align 4, !tbaa !82
  %41 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 32), align 8, !tbaa !91
  %42 = icmp slt i32 %41, 32
  br i1 %42, label %43, label %44

43:                                               ; preds = %23
  store i32 256, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 32), align 8, !tbaa !91
  br label %44

44:                                               ; preds = %43, %23
  %45 = tail call i32 @BLI_countlist(ptr noundef nonnull %24) #8
  %46 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 32), align 8, !tbaa !91
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44, %48
  %49 = phi i32 [ %55, %48 ], [ %45, %44 ]
  %50 = load ptr, ptr %24, align 8, !tbaa !83
  tail call void @BLI_remlink(ptr noundef nonnull %24, ptr noundef %50) #8
  %51 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %52 = getelementptr inbounds %struct.ConsoleLine, ptr %50, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  tail call void %51(ptr noundef %53) #8
  %54 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %54(ptr noundef %50) #8
  %55 = add nsw i32 %49, -1
  %56 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 32), align 8, !tbaa !91
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %48, label %58, !llvm.loop !95

58:                                               ; preds = %48, %44
  %59 = icmp eq ptr %4, null
  br i1 %59, label %67, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 2
  %62 = getelementptr inbounds %struct.ARegion, ptr %4, i64 0, i32 5
  %63 = load i16, ptr %62, align 8, !tbaa !70
  %64 = sext i16 %63 to i32
  %65 = add nsw i32 %64, -1
  %66 = tail call i32 @console_textview_height(ptr noundef %3, ptr noundef nonnull %4) #8
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %61, i32 noundef %65, i32 noundef %66) #8
  br label %67

67:                                               ; preds = %60, %58
  %68 = tail call ptr @CTX_wm_area(ptr noundef %0) #8
  tail call void @ED_area_tag_redraw(ptr noundef %68) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_copy_exec, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca %struct.ConsoleLine, align 8
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !47
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %69, label %10

10:                                               ; preds = %2
  call void @console_scrollback_prompt_begin(ptr noundef %4, ptr noundef nonnull %3) #8
  %11 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %21, %14 ], [ %12, %10 ]
  %16 = phi i32 [ %20, %14 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.ConsoleLine, ptr %15, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !42
  %19 = add i32 %16, 1
  %20 = add i32 %19, %18
  %21 = load ptr, ptr %15, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !96

23:                                               ; preds = %14, %10
  %24 = phi i32 [ 0, %10 ], [ %20, %14 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %67, label %26

26:                                               ; preds = %23
  %27 = call ptr @BLI_dynstr_new() #8
  %28 = load ptr, ptr %11, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %30

30:                                               ; preds = %26
  %31 = add nsw i32 %24, -1
  %32 = load i32, ptr %5, align 8, !tbaa !43
  %33 = sub nsw i32 %31, %32
  %34 = load i32, ptr %7, align 4, !tbaa !47
  %35 = sub nsw i32 %31, %34
  br label %36

36:                                               ; preds = %30, %57
  %37 = phi ptr [ %62, %57 ], [ %28, %30 ]
  %38 = phi i32 [ %60, %57 ], [ %35, %30 ]
  %39 = phi i32 [ %61, %57 ], [ %33, %30 ]
  %40 = getelementptr inbounds %struct.ConsoleLine, ptr %37, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !42
  %42 = icmp sle i32 %38, %41
  %43 = icmp sgt i32 %39, -1
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %57

45:                                               ; preds = %36
  %46 = call i32 @llvm.smax.i32(i32 %38, i32 0)
  %47 = call i32 @llvm.smin.i32(i32 %39, i32 %41)
  %48 = call i32 @BLI_dynstr_get_len(ptr noundef %27) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void @BLI_dynstr_append(ptr noundef %27, ptr noundef nonnull @.str.87) #8
  br label %51

51:                                               ; preds = %50, %45
  %52 = getelementptr inbounds %struct.ConsoleLine, ptr %37, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !38
  %54 = zext nneg i32 %46 to i64
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  %56 = sub nsw i32 %47, %46
  call void @BLI_dynstr_nappend(ptr noundef %27, ptr noundef %55, i32 noundef %56) #8
  br label %57

57:                                               ; preds = %51, %36
  %58 = load i32, ptr %40, align 4, !tbaa !42
  %59 = add nsw i32 %58, 1
  %60 = sub nsw i32 %38, %59
  %61 = sub nsw i32 %39, %59
  %62 = load ptr, ptr %37, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %36, !llvm.loop !97

64:                                               ; preds = %57, %26
  %65 = call ptr @BLI_dynstr_get_cstring(ptr noundef %27) #8
  call void @BLI_dynstr_free(ptr noundef %27) #8
  call void @WM_clipboard_text_set(ptr noundef %65, i8 noundef zeroext 0) #8
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %66(ptr noundef %65) #8
  br label %67

67:                                               ; preds = %23, %64
  %68 = phi i32 [ 4, %64 ], [ 2, %23 ]
  call void @console_scrollback_prompt_end(ptr noundef %4, ptr noundef nonnull %3) #8
  br label %69

69:                                               ; preds = %67, %2
  %70 = phi i32 [ 2, %2 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #8
  ret i32 %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %2, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %4, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_paste_exec, ptr %5, align 8, !tbaa !55
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_paste_exec(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.SpaceConsole, ptr %6, i64 0, i32 9, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = tail call ptr %11(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 4
  store ptr %14, ptr %15, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 2
  store i32 64, ptr %16, align 8, !tbaa !41
  %17 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 3
  store i32 0, ptr %17, align 4, !tbaa !42
  %18 = getelementptr inbounds %struct.SpaceConsole, ptr %6, i64 0, i32 9
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %12) #8
  br label %19

19:                                               ; preds = %2, %10
  %20 = phi ptr [ %12, %10 ], [ %8, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  %21 = call ptr @WM_clipboard_text_get(i8 noundef zeroext 0, ptr noundef nonnull %3) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %76, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 12
  %25 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 13
  br label %26

26:                                               ; preds = %23, %54
  %27 = phi ptr [ %21, %23 ], [ %37, %54 ]
  %28 = phi ptr [ %20, %23 ], [ %55, %54 ]
  %29 = load i8, ptr %27, align 1, !tbaa !69
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %62, label %31

31:                                               ; preds = %26
  %32 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 noundef 10) #9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  store i8 0, ptr %32, align 1, !tbaa !69
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi ptr [ %35, %34 ], [ null, %31 ]
  %38 = icmp eq ptr %27, %21
  br i1 %38, label %54, label %39

39:                                               ; preds = %36
  %40 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.88, i16 noundef signext 6, ptr noundef null) #8
  %41 = call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %42 = getelementptr inbounds %struct.SpaceConsole, ptr %41, i64 0, i32 9, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !48
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %47 = call ptr %46(i64 noundef 40, ptr noundef nonnull @.str.71) #8
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %49 = call ptr %48(i64 noundef 64, ptr noundef nonnull @.str.72) #8
  %50 = getelementptr inbounds %struct.ConsoleLine, ptr %47, i64 0, i32 4
  store ptr %49, ptr %50, align 8, !tbaa !38
  %51 = getelementptr inbounds %struct.ConsoleLine, ptr %47, i64 0, i32 2
  store i32 64, ptr %51, align 8, !tbaa !41
  %52 = getelementptr inbounds %struct.ConsoleLine, ptr %47, i64 0, i32 3
  store i32 0, ptr %52, align 4, !tbaa !42
  %53 = getelementptr inbounds %struct.SpaceConsole, ptr %41, i64 0, i32 9
  call void @BLI_addtail(ptr noundef nonnull %53, ptr noundef %47) #8
  br label %54

54:                                               ; preds = %45, %39, %36
  %55 = phi ptr [ %28, %36 ], [ %47, %45 ], [ %43, %39 ]
  %56 = call fastcc i32 @console_line_insert(ptr noundef %55, ptr noundef nonnull %27)
  %57 = load i32, ptr %24, align 8, !tbaa !43
  %58 = add nsw i32 %57, %56
  store i32 %58, ptr %24, align 8, !tbaa !43
  %59 = load i32, ptr %25, align 4, !tbaa !47
  %60 = add nsw i32 %59, %56
  store i32 %60, ptr %25, align 4, !tbaa !47
  %61 = icmp eq ptr %37, null
  br i1 %61, label %62, label %26, !llvm.loop !98

62:                                               ; preds = %54, %26
  %63 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %63(ptr noundef nonnull %21) #8
  %64 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %65 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 5
  %66 = load i16, ptr %65, align 8, !tbaa !70
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %67, -1
  %69 = call i32 @console_textview_height(ptr noundef %4, ptr noundef %5) #8
  call void @UI_view2d_totRect_set(ptr noundef nonnull %64, i32 noundef %68, i32 noundef %69) #8
  %70 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_tag_redraw(ptr noundef %70) #8
  %71 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %71, align 8, !tbaa !62
  %72 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 17
  %73 = load i16, ptr %72, align 8, !tbaa !66
  %74 = sitofp i16 %73 to float
  %75 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2, i32 1, i32 3
  store float %74, ptr %75, align 4, !tbaa !67
  br label %76

76:                                               ; preds = %19, %62
  %77 = phi i32 [ 4, %62 ], [ 2, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_select_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %2, align 8, !tbaa !54
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !53
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @console_modal_select_invoke, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @console_modal_select, ptr %5, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @console_modal_select_cancel, ptr %6, align 8, !tbaa !100
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %7, align 8, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_modal_select_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 12, ptr noundef nonnull @.str.89) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !43
  store i32 %9, ptr %6, align 4, !tbaa !61
  %10 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !47
  %12 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %11, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds %struct.SetConsoleCursor, ptr %6, i64 0, i32 1
  store i32 2147483647, ptr %13, align 4, !tbaa !102
  %14 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #8
  tail call fastcc void @console_modal_select_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @console_modal_select(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !104
  switch i16 %5, label %11 [
    i16 1, label %6
    i16 2, label %6
    i16 3, label %6
    i16 4, label %10
  ]

6:                                                ; preds = %3, %3, %3
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %9(ptr noundef %8) #8
  br label %11

10:                                               ; preds = %3
  tail call fastcc void @console_modal_select_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %10, %3, %6
  %12 = phi i32 [ 4, %6 ], [ 1, %3 ], [ 1, %10 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @console_modal_select_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef %4) #8
  ret void
}

declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_str_cursor_step_utf8(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @console_line_insert(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = add i64 %3, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !69
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  store i8 0, ptr %9, align 1, !tbaa !69
  %13 = add nsw i32 %4, -1
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi i32 [ %13, %12 ], [ %4, %6 ], [ %4, %2 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !42
  %20 = add nsw i32 %19, %15
  %21 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !41
  %23 = icmp sgt i32 %22, %20
  br i1 %23, label %36, label %24

24:                                               ; preds = %17
  %25 = shl i32 %20, 1
  %26 = add i32 %25, 2
  %27 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %28 = sext i32 %26 to i64
  %29 = tail call ptr %27(i64 noundef %28, ptr noundef nonnull @.str.86) #8
  %30 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = load i32, ptr %18, align 4, !tbaa !42
  %33 = sext i32 %32 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %31, i64 %33, i1 false)
  %34 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %35 = load ptr, ptr %30, align 8, !tbaa !38
  tail call void %34(ptr noundef %35) #8
  store ptr %29, ptr %30, align 8, !tbaa !38
  store i32 %26, ptr %21, align 8, !tbaa !41
  br label %36

36:                                               ; preds = %17, %24
  %37 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 5
  %40 = load i32, ptr %39, align 8, !tbaa !60
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = sext i32 %15 to i64
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = load i32, ptr %18, align 4, !tbaa !42
  %46 = sub i32 %45, %40
  %47 = add i32 %46, 1
  %48 = sext i32 %47 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %44, ptr align 1 %42, i64 %48, i1 false)
  %49 = load ptr, ptr %37, align 8, !tbaa !38
  %50 = load i32, ptr %39, align 8, !tbaa !60
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %49, i64 %51
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %52, ptr align 1 %1, i64 %43, i1 false)
  %53 = load i32, ptr %18, align 4, !tbaa !42
  %54 = add nsw i32 %53, %15
  store i32 %54, ptr %18, align 4, !tbaa !42
  %55 = load i32, ptr %39, align 8, !tbaa !60
  %56 = add nsw i32 %55, %15
  store i32 %56, ptr %39, align 8, !tbaa !60
  br label %57

57:                                               ; preds = %14, %36
  %58 = phi i32 [ %15, %36 ], [ 0, %14 ]
  ret i32 %58
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @console_textview_height(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_string_length(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #1

declare i64 @BLI_str_utf8_from_unicode(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

declare void @console_scrollback_prompt_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @console_scrollback_prompt_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BLI_dynstr_new() local_unnamed_addr #1

declare i32 @BLI_dynstr_get_len(ptr noundef) local_unnamed_addr #1

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_dynstr_nappend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #1

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #1

declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @WM_clipboard_text_get(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @console_modal_select_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [2 x i32], align 4
  %5 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #8
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #8
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !61
  store i32 %10, ptr %4, align 4, !tbaa !61
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !61
  %13 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %12, ptr %13, align 4, !tbaa !61
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 13
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = call i32 @console_char_pick(ptr noundef %5, ptr noundef %6, ptr noundef nonnull %4) #8
  %19 = getelementptr inbounds %struct.SetConsoleCursor, ptr %8, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !102
  %21 = icmp eq i32 %20, 2147483647
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 %18, ptr %19, align 4, !tbaa !102
  store i32 %18, ptr %16, align 4, !tbaa !47
  store i32 %18, ptr %14, align 8, !tbaa !43
  br label %31

23:                                               ; preds = %3
  %24 = icmp slt i32 %18, %20
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i32 %18, ptr %14, align 8, !tbaa !43
  store i32 %20, ptr %16, align 4, !tbaa !47
  br label %31

26:                                               ; preds = %23
  %27 = load i32, ptr %14, align 8, !tbaa !43
  %28 = icmp sgt i32 %18, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 %20, ptr %14, align 8, !tbaa !43
  store i32 %18, ptr %16, align 4, !tbaa !47
  br label %31

30:                                               ; preds = %26
  store i32 %18, ptr %16, align 4, !tbaa !47
  store i32 %18, ptr %14, align 8, !tbaa !43
  br label %31

31:                                               ; preds = %22, %25, %29, %30
  %32 = load i32, ptr %14, align 8, !tbaa !43
  %33 = icmp eq i32 %15, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, ptr %16, align 4, !tbaa !47
  %36 = icmp eq i32 %17, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %31
  %38 = call ptr @CTX_wm_area(ptr noundef %0) #8
  call void @ED_area_tag_redraw(ptr noundef %38) #8
  br label %39

39:                                               ; preds = %37, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

declare i32 @console_char_pick(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!38 = !{!39, !35, i64 24}
!39 = !{!"ConsoleLine", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !35, i64 24, !40, i64 32, !40, i64 36}
!40 = !{!"int", !36, i64 0}
!41 = !{!39, !40, i64 16}
!42 = !{!39, !40, i64 20}
!43 = !{!44, !40, i64 384}
!44 = !{!"SpaceConsole", !35, i64 0, !35, i64 8, !45, i64 16, !40, i64 32, !46, i64 36, !36, i64 40, !40, i64 56, !40, i64 60, !45, i64 64, !45, i64 80, !36, i64 96, !36, i64 352, !40, i64 384, !40, i64 388}
!45 = !{!"ListBase", !35, i64 0, !35, i64 8}
!46 = !{!"float", !36, i64 0}
!47 = !{!44, !40, i64 388}
!48 = !{!44, !35, i64 88}
!49 = !{!50, !35, i64 0}
!50 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !45, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !51, i64 152, !52, i64 184}
!51 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!52 = !{!"short", !36, i64 0}
!53 = !{!50, !35, i64 24}
!54 = !{!50, !35, i64 8}
!55 = !{!50, !35, i64 32}
!56 = !{!50, !35, i64 72}
!57 = !{!50, !35, i64 88}
!58 = !{!59, !35, i64 112}
!59 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !45, i64 128, !35, i64 144, !35, i64 152, !52, i64 160, !36, i64 162}
!60 = !{!39, !40, i64 32}
!61 = !{!40, !40, i64 0}
!62 = !{!63, !46, i64 24}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !65, i64 32, !65, i64 48, !65, i64 64, !36, i64 80, !36, i64 88, !46, i64 96, !46, i64 100, !52, i64 104, !52, i64 106, !52, i64 108, !52, i64 110, !52, i64 112, !52, i64 114, !52, i64 116, !52, i64 118, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!64 = !{!"rctf", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12}
!65 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!66 = !{!63, !52, i64 120}
!67 = !{!63, !46, i64 28}
!68 = !{!50, !35, i64 48}
!69 = !{!36, !36, i64 0}
!70 = !{!71, !52, i64 208}
!71 = !{!"ARegion", !35, i64 0, !35, i64 8, !63, i64 16, !65, i64 176, !65, i64 192, !52, i64 208, !52, i64 210, !52, i64 212, !52, i64 214, !52, i64 216, !52, i64 218, !46, i64 220, !52, i64 224, !52, i64 226, !52, i64 228, !52, i64 230, !52, i64 232, !52, i64 234, !52, i64 236, !52, i64 238, !35, i64 240, !45, i64 248, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !45, i64 328, !45, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!72 = !{!73, !52, i64 74}
!73 = !{!"wmEvent", !35, i64 0, !35, i64 8, !52, i64 16, !52, i64 18, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !52, i64 44, !52, i64 46, !40, i64 48, !40, i64 52, !74, i64 56, !40, i64 64, !40, i64 68, !52, i64 72, !52, i64 74, !52, i64 76, !52, i64 78, !52, i64 80, !52, i64 82, !35, i64 88, !35, i64 96, !52, i64 104, !52, i64 106, !40, i64 108, !35, i64 112}
!74 = !{!"double", !36, i64 0}
!75 = !{!73, !52, i64 78}
!76 = !{!73, !36, i64 42}
!77 = !{i32 2, i32 5}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = distinct !{!81, !79, !80}
!82 = !{!39, !40, i64 36}
!83 = !{!44, !35, i64 64}
!84 = distinct !{!84, !79, !80}
!85 = !{!44, !35, i64 80}
!86 = distinct !{!86, !79, !80}
!87 = !{!39, !35, i64 8}
!88 = distinct !{!88, !79, !80}
!89 = distinct !{!89, !79, !80}
!90 = distinct !{!90, !79, !80}
!91 = !{!92, !40, i64 8520}
!92 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !52, i64 8472, !52, i64 8474, !52, i64 8476, !52, i64 8478, !52, i64 8480, !52, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !52, i64 8496, !52, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !52, i64 8528, !52, i64 8530, !52, i64 8532, !52, i64 8534, !45, i64 8536, !45, i64 8552, !45, i64 8568, !45, i64 8584, !45, i64 8600, !45, i64 8616, !45, i64 8632, !36, i64 8648, !52, i64 8712, !52, i64 8714, !52, i64 8716, !52, i64 8718, !52, i64 8720, !52, i64 8722, !52, i64 8724, !52, i64 8726, !36, i64 8728, !52, i64 8896, !52, i64 8898, !52, i64 8900, !52, i64 8902, !52, i64 8904, !52, i64 8906, !52, i64 8908, !52, i64 8910, !40, i64 8912, !40, i64 8916, !52, i64 8920, !52, i64 8922, !52, i64 8924, !52, i64 8926, !52, i64 8928, !52, i64 8930, !52, i64 8932, !52, i64 8934, !52, i64 8936, !52, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !52, i64 8944, !52, i64 8946, !52, i64 8948, !52, i64 8950, !52, i64 8952, !52, i64 8954, !46, i64 8956, !46, i64 8960, !40, i64 8964, !52, i64 8968, !52, i64 8970, !46, i64 8972, !52, i64 8976, !52, i64 8978, !52, i64 8980, !52, i64 8982, !93, i64 8984, !36, i64 9760, !36, i64 9772, !52, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !46, i64 10904, !46, i64 10908, !40, i64 10912, !52, i64 10916, !52, i64 10918, !52, i64 10920, !52, i64 10922, !52, i64 10924, !52, i64 10926, !94, i64 10928}
!93 = !{!"ColorBand", !52, i64 0, !52, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!94 = !{!"WalkNavigation", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !46, i64 16, !46, i64 20, !52, i64 24, !36, i64 26}
!95 = distinct !{!95, !79, !80}
!96 = distinct !{!96, !79, !80}
!97 = distinct !{!97, !79, !80}
!98 = distinct !{!98, !79, !80}
!99 = !{!50, !35, i64 64}
!100 = !{!50, !35, i64 56}
!101 = !{!59, !35, i64 96}
!102 = !{!103, !40, i64 8}
!103 = !{!"SetConsoleCursor", !36, i64 0, !40, i64 8}
!104 = !{!73, !52, i64 16}
