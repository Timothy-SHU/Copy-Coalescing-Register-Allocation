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
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.SetConsoleCursor = type { [2 x i32], i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @console_history_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #11
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  tail call void %4(ptr noundef %6) #11
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @console_scrollback_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #11
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  tail call void %4(ptr noundef %6) #11
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %7(ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @console_history_add_str(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9
  %5 = tail call fastcc ptr @console_lb_add_str__internal(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext %2) #12
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @console_lb_add_str__internal(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !41 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 40, ptr noundef nonnull @.str.71) #11
  %6 = icmp eq i8 %2, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call ptr @BLI_strdup(ptr noundef %1) #11
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  store ptr %10, ptr %11, align 8
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 2
  store i32 %13, ptr %14, align 8, !tbaa !42
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  store i32 %13, ptr %15, align 4, !tbaa !43
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %5) #11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @console_scrollback_add_str(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  %5 = tail call fastcc ptr @console_lb_add_str__internal(ptr noundef nonnull %4, ptr noundef %1, i8 noundef zeroext %2) #12
  %6 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = add nsw i32 %7, 1
  tail call fastcc void @console_select_offset(ptr noundef %0, i32 noundef %8) #12
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @console_select_offset(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !44 {
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  %4 = load <2 x i32>, ptr %3, align 8, !tbaa !45
  %5 = insertelement <2 x i32> poison, i32 %1, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <2 x i32> zeroinitializer
  %7 = add nsw <2 x i32> %4, %6
  store <2 x i32> %7, ptr %3, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @console_history_verify(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %2, i64 0, i32 9, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @console_history_add(ptr noundef nonnull %2, ptr noundef null) #12
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %4, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @CTX_wm_space_console(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @console_history_add(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !50 {
  %3 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9
  %4 = tail call fastcc ptr @console_lb_add__internal(ptr noundef nonnull %3, ptr noundef %1) #12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CONSOLE_OT_move(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_move_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @console_move_type_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_move_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !60 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = tail call i32 @RNA_enum_get(ptr noundef %6, ptr noundef nonnull @.str.3) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  switch i32 %7, label %63 [
    i32 0, label %8
    i32 1, label %16
    i32 2, label %24
    i32 3, label %32
    i32 4, label %40
    i32 5, label %48
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !63
  store i32 %10, ptr %3, align 4, !tbaa !45
  %11 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !43
  %15 = sext i32 %14 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %12, i64 noundef %15, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 2, i8 noundef zeroext 1) #11
  br label %56

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !63
  store i32 %18, ptr %3, align 4, !tbaa !45
  %19 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !43
  %23 = sext i32 %22 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %20, i64 noundef %23, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 2, i8 noundef zeroext 1) #11
  br label %56

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !63
  store i32 %26, ptr %3, align 4, !tbaa !45
  %27 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !43
  %31 = sext i32 %30 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %28, i64 noundef %31, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 1) #11
  br label %56

32:                                               ; preds = %2
  %33 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !63
  store i32 %34, ptr %3, align 4, !tbaa !45
  %35 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %38 = load i32, ptr %37, align 4, !tbaa !43
  %39 = sext i32 %38 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %36, i64 noundef %39, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0, i8 noundef zeroext 1) #11
  br label %56

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !63
  store i32 %42, ptr %3, align 4, !tbaa !45
  %43 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !43
  %47 = sext i32 %46 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %44, i64 noundef %47, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 1) #11
  br label %56

48:                                               ; preds = %2
  %49 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !63
  store i32 %50, ptr %3, align 4, !tbaa !45
  %51 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  %53 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !43
  %55 = sext i32 %54 to i64
  call void @BLI_str_cursor_step_utf8(ptr noundef %52, i64 noundef %55, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 1, i8 noundef zeroext 1) #11
  br label %56

56:                                               ; preds = %48, %40, %32, %24, %16, %8
  %57 = load i32, ptr %3, align 4, !tbaa !45
  %58 = call fastcc zeroext i8 @console_line_cursor_set(ptr noundef %4, i32 noundef %57) #12, !range !64
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = call ptr @CTX_wm_area(ptr noundef %0) #11
  %62 = call ptr @CTX_wm_region(ptr noundef %0) #11
  call void @ED_area_tag_redraw(ptr noundef %61) #11
  call fastcc void @console_scroll_bottom(ptr noundef %62) #12
  br label %63

63:                                               ; preds = %2, %60, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 4
}

; Function Attrs: optsize
declare i32 @ED_operator_console_active(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CONSOLE_OT_insert(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_insert_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @console_insert_invoke, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = tail call ptr @RNA_def_string(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  tail call void @RNA_def_property_flag(ptr noundef %9, i32 noundef 268435456) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_insert_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !66 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = tail call ptr @RNA_string_get_alloc(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #11
  %9 = load i8, ptr %8, align 1, !tbaa !67
  %10 = icmp eq i8 %9, 9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !67
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %16(ptr noundef nonnull %8) #11
  %17 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %18 = tail call ptr %17(i64 noundef 5, ptr noundef nonnull @.str.85) #11
  store i32 538976288, ptr %18, align 1
  %19 = getelementptr inbounds i8, ptr %18, i64 4
  store i8 0, ptr %19, align 1, !tbaa !67
  br label %20

20:                                               ; preds = %15, %11, %2
  %21 = phi ptr [ %18, %15 ], [ %8, %11 ], [ %8, %2 ]
  %22 = tail call fastcc i32 @console_line_insert(ptr noundef %5, ptr noundef nonnull %21) #12
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %23(ptr noundef nonnull %21) #11
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  tail call fastcc void @console_select_offset(ptr noundef %3, i32 noundef %22) #12
  tail call fastcc void @console_textview_update_rect(ptr noundef %3, ptr noundef %4) #12
  %26 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  tail call void @ED_area_tag_redraw(ptr noundef %26) #11
  tail call fastcc void @console_scroll_bottom(ptr noundef %4) #12
  br label %27

27:                                               ; preds = %20, %25
  %28 = phi i32 [ 4, %25 ], [ 2, %20 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_insert_invoke(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !68 {
  %4 = alloca [7 x i8], align 1
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = tail call i32 @RNA_string_length(ptr noundef %6, ptr noundef nonnull @.str.9) #11
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %11 = load i16, ptr %10, align 2, !tbaa !69
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 20
  %15 = load i16, ptr %14, align 2, !tbaa !72
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %19 = load i8, ptr %18, align 4, !tbaa !67
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #14
  br label %26

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %24 = load i8, ptr %23, align 4, !tbaa !67
  %25 = icmp eq i8 %24, 0
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %4) #14
  br i1 %25, label %30, label %26

26:                                               ; preds = %21, %22
  %27 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %28 = tail call i32 @BLI_str_utf8_size_safe(ptr noundef nonnull %27) #11
  %29 = sext i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr nonnull align 4 %27, i64 %29, i1 false)
  br label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %32 = load i8, ptr %31, align 2, !tbaa !73
  %33 = zext i8 %32 to i32
  %34 = call i64 @BLI_str_utf8_from_unicode(i32 noundef %33, ptr noundef nonnull %4) #11
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi i64 [ %29, %26 ], [ %34, %30 ]
  %37 = getelementptr inbounds [7 x i8], ptr %4, i64 0, i64 %36
  store i8 0, ptr %37, align 1, !tbaa !67
  %38 = load ptr, ptr %5, align 8, !tbaa !61
  call void @RNA_string_set(ptr noundef %38, ptr noundef nonnull @.str.9, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %4) #14
  br label %39

39:                                               ; preds = %35, %3
  %40 = call i32 @console_insert_exec(ptr noundef %0, ptr noundef nonnull %1) #12, !range !74
  br label %41

41:                                               ; preds = %17, %39
  %42 = phi i32 [ %40, %39 ], [ 8, %17 ]
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @RNA_def_string(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_property_flag(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_indent(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_indent_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_indent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !75 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = zext nneg i32 %7 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !67
  %17 = icmp eq i8 %16, 32
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %12
  br i1 %20, label %23, label %13, !llvm.loop !76

21:                                               ; preds = %13
  %22 = trunc i64 %14 to i32
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi i32 [ %22, %21 ], [ %7, %18 ]
  %25 = and i32 %24, 3
  %26 = sub nuw nsw i32 4, %25
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i32 [ 4, %2 ], [ %26, %23 ]
  %29 = add nsw i32 %28, %7
  tail call fastcc void @console_line_verify_length(ptr noundef nonnull %5, i32 noundef %29) #12
  %30 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = zext nneg i32 %28 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i32, ptr %6, align 4, !tbaa !43
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %33, ptr align 1 %31, i64 %36, i1 false)
  %37 = load ptr, ptr %30, align 8, !tbaa !38
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %37, i8 32, i64 %32, i1 false)
  %38 = load i32, ptr %6, align 4, !tbaa !43
  %39 = add nsw i32 %38, %28
  store i32 %39, ptr %6, align 4, !tbaa !43
  %40 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !63
  %42 = add nsw i32 %41, %28
  %43 = tail call fastcc zeroext i8 @console_line_cursor_set(ptr noundef nonnull %5, i32 noundef %42) #12, !range !64
  tail call fastcc void @console_select_offset(ptr noundef %3, i32 noundef %28) #12
  tail call fastcc void @console_textview_update_rect(ptr noundef %3, ptr noundef %4) #12
  %44 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  tail call void @ED_area_tag_redraw(ptr noundef %44) #11
  tail call fastcc void @console_scroll_bottom(ptr noundef %4) #12
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_unindent(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_unindent_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_unindent_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !78 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %47

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = zext nneg i32 %7 to i64
  br label %13

13:                                               ; preds = %9, %18
  %14 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !67
  %17 = icmp eq i8 %16, 32
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %12
  br i1 %20, label %23, label %13, !llvm.loop !79

21:                                               ; preds = %13
  %22 = trunc i64 %14 to i32
  br label %23

23:                                               ; preds = %18, %21
  %24 = phi i32 [ %22, %21 ], [ %7, %18 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %23
  %27 = and i32 %24, 3
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 4, i32 %27
  %30 = sub nsw i32 0, %29
  %31 = sub nsw i32 %7, %29
  tail call fastcc void @console_line_verify_length(ptr noundef nonnull %5, i32 noundef %31) #12
  %32 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !38
  %34 = zext nneg i32 %29 to i64
  %35 = getelementptr inbounds i8, ptr %33, i64 %34
  %36 = load i32, ptr %6, align 4, !tbaa !43
  %37 = sub i32 %36, %29
  %38 = add i32 %37, 1
  %39 = sext i32 %38 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %33, ptr nonnull align 1 %35, i64 %39, i1 false)
  %40 = load i32, ptr %6, align 4, !tbaa !43
  %41 = sub nsw i32 %40, %29
  store i32 %41, ptr %6, align 4, !tbaa !43
  %42 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !63
  %44 = sub nsw i32 %43, %29
  %45 = tail call fastcc zeroext i8 @console_line_cursor_set(ptr noundef nonnull %5, i32 noundef %44) #12, !range !64
  tail call fastcc void @console_select_offset(ptr noundef %3, i32 noundef %30) #12
  tail call fastcc void @console_textview_update_rect(ptr noundef %3, ptr noundef %4) #12
  %46 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  tail call void @ED_area_tag_redraw(ptr noundef %46) #11
  tail call fastcc void @console_scroll_bottom(ptr noundef %4) #12
  br label %47

47:                                               ; preds = %2, %23, %26
  %48 = phi i32 [ 4, %26 ], [ 2, %23 ], [ 2, %2 ]
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CONSOLE_OT_delete(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_delete_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @RNA_def_enum(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @console_delete_type_items, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.21) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_delete_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !80 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %6 = tail call ptr @console_history_verify(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #11
  %10 = getelementptr inbounds %struct.ConsoleLine, ptr %6, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %2
  %14 = shl i32 %9, 16
  %15 = ashr exact i32 %14, 16
  switch i32 %15, label %63 [
    i32 1, label %16
    i32 3, label %16
    i32 2, label %30
    i32 4, label %30
  ]

16:                                               ; preds = %13, %13
  %17 = getelementptr inbounds %struct.ConsoleLine, ptr %6, i64 0, i32 5
  %18 = load i32, ptr %17, align 8, !tbaa !63
  %19 = icmp slt i32 %18, %11
  br i1 %19, label %20, label %63

20:                                               ; preds = %16
  store i32 %18, ptr %3, align 4, !tbaa !45
  %21 = getelementptr inbounds %struct.ConsoleLine, ptr %6, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = sext i32 %11 to i64
  %24 = icmp ne i32 %14, 65536
  %25 = zext i1 %24 to i32
  call void @BLI_str_cursor_step_utf8(ptr noundef %22, i64 noundef %23, ptr noundef nonnull %3, i32 noundef 1, i32 noundef %25, i8 noundef zeroext 1) #11
  %26 = load i32, ptr %3, align 4, !tbaa !45
  %27 = load i32, ptr %17, align 8, !tbaa !63
  %28 = sub nsw i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %45

30:                                               ; preds = %13, %13
  %31 = getelementptr inbounds %struct.ConsoleLine, ptr %6, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !63
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  store i32 %32, ptr %3, align 4, !tbaa !45
  %35 = getelementptr inbounds %struct.ConsoleLine, ptr %6, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = sext i32 %11 to i64
  %38 = icmp ne i32 %14, 131072
  %39 = zext i1 %38 to i32
  call void @BLI_str_cursor_step_utf8(ptr noundef %36, i64 noundef %37, ptr noundef nonnull %3, i32 noundef 0, i32 noundef %39, i8 noundef zeroext 1) #11
  %40 = load i32, ptr %31, align 8, !tbaa !63
  %41 = load i32, ptr %3, align 4, !tbaa !45
  %42 = sub nsw i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %34
  store i32 %41, ptr %31, align 8, !tbaa !63
  br label %45

45:                                               ; preds = %20, %44
  %46 = phi ptr [ %35, %44 ], [ %21, %20 ]
  %47 = phi i32 [ %41, %44 ], [ %27, %20 ]
  %48 = phi i32 [ %42, %44 ], [ %28, %20 ]
  %49 = phi i32 [ %40, %44 ], [ %26, %20 ]
  %50 = load ptr, ptr %46, align 8, !tbaa !38
  %51 = sext i32 %47 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  %53 = sext i32 %48 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load i32, ptr %10, align 4, !tbaa !43
  %56 = sub i32 %55, %49
  %57 = add i32 %56, 1
  %58 = sext i32 %57 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %52, ptr nonnull align 1 %54, i64 %58, i1 false)
  %59 = load i32, ptr %10, align 4, !tbaa !43
  %60 = sub nsw i32 %59, %48
  store i32 %60, ptr %10, align 4, !tbaa !43
  %61 = sub nsw i32 0, %48
  call fastcc void @console_select_offset(ptr noundef %4, i32 noundef %61) #12
  call fastcc void @console_textview_update_rect(ptr noundef %4, ptr noundef %5) #12
  %62 = call ptr @CTX_wm_area(ptr noundef %0) #11
  call void @ED_area_tag_redraw(ptr noundef %62) #11
  call fastcc void @console_scroll_bottom(ptr noundef %5) #12
  br label %63

63:                                               ; preds = %16, %20, %30, %34, %13, %2, %45
  %64 = phi i32 [ 4, %45 ], [ 2, %2 ], [ 2, %13 ], [ 2, %34 ], [ 2, %30 ], [ 2, %20 ], [ 2, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %64
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_clear_line(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.22, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.23, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.24, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_clear_line_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_clear_line_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !81 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !43
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @console_history_add(ptr noundef %3, ptr noundef nonnull %5) #12
  %11 = tail call fastcc ptr @console_history_add(ptr noundef %3, ptr noundef null) #12
  %12 = load i32, ptr %6, align 4, !tbaa !43
  %13 = sub nsw i32 0, %12
  tail call fastcc void @console_select_offset(ptr noundef %3, i32 noundef %13) #12
  tail call fastcc void @console_textview_update_rect(ptr noundef %3, ptr noundef %4) #12
  %14 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  tail call void @ED_area_tag_redraw(ptr noundef %14) #11
  tail call fastcc void @console_scroll_bottom(ptr noundef %4) #12
  br label %15

15:                                               ; preds = %2, %9
  %16 = phi i32 [ 4, %9 ], [ 2, %2 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CONSOLE_OT_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.25, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.26, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.27, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_clear_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !59
  %10 = tail call ptr @RNA_def_boolean(ptr noundef %9, ptr noundef nonnull @.str.31, i32 noundef 0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_clear_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !82 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = tail call i32 @RNA_boolean_get(ptr noundef %6, ptr noundef nonnull @.str.28) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !61
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.31) #11
  %10 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %11 = and i32 %7, 255
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13, %17
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  tail call void @console_scrollback_free(ptr noundef nonnull %3, ptr noundef nonnull %18) #12
  %19 = load ptr, ptr %14, align 8, !tbaa !83
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %17, !llvm.loop !84

21:                                               ; preds = %17, %13, %2
  %22 = and i32 %9, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %24 ]
  tail call void @console_history_free(ptr noundef nonnull %3, ptr noundef nonnull %29) #12
  %30 = load ptr, ptr %25, align 8, !tbaa !85
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28, !llvm.loop !86

32:                                               ; preds = %28, %24
  %33 = tail call ptr @console_history_verify(ptr noundef %0) #12
  br label %34

34:                                               ; preds = %32, %21
  tail call fastcc void @console_textview_update_rect(ptr noundef %3, ptr noundef %4) #12
  %35 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  tail call void @ED_area_tag_redraw(ptr noundef %35) #11
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CONSOLE_OT_history_cycle(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.34, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.35, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.36, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_history_cycle_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @RNA_def_boolean(ptr noundef %7, ptr noundef nonnull @.str.37, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_history_cycle_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !87 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = tail call i32 @RNA_boolean_get(ptr noundef %7, ptr noundef nonnull @.str.37) #11
  %9 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %5, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %struct.ConsoleLine, ptr %12, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %18) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  tail call void @console_history_free(ptr noundef %3, ptr noundef nonnull %12) #12
  br label %22

22:                                               ; preds = %14, %21, %2
  %23 = and i32 %8, 255
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9
  br i1 %24, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  tail call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef %28) #11
  tail call void @BLI_addhead(ptr noundef nonnull %25, ptr noundef %28) #11
  br label %31

29:                                               ; preds = %22
  %30 = load ptr, ptr %25, align 8, !tbaa !85
  tail call void @BLI_remlink(ptr noundef nonnull %25, ptr noundef %30) #11
  tail call void @BLI_addtail(ptr noundef nonnull %25, ptr noundef %30) #11
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi ptr [ %28, %26 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct.ConsoleLine, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = tail call fastcc ptr @console_history_find(ptr noundef nonnull %3, ptr noundef %34, ptr noundef %32) #12
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %31, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %31 ]
  tail call void @console_history_free(ptr noundef %3, ptr noundef nonnull %38) #12
  %39 = load ptr, ptr %33, align 8, !tbaa !38
  %40 = tail call fastcc ptr @console_history_find(ptr noundef %3, ptr noundef %39, ptr noundef nonnull %32) #12
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %37, !llvm.loop !89

42:                                               ; preds = %37, %31
  %43 = getelementptr inbounds %struct.SpaceConsole, ptr %3, i64 0, i32 9, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = tail call fastcc ptr @console_history_add(ptr noundef %3, ptr noundef %44) #12
  %46 = load ptr, ptr %43, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.ConsoleLine, ptr %46, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !43
  %49 = sub nsw i32 %48, %10
  tail call fastcc void @console_select_offset(ptr noundef %3, i32 noundef %49) #12
  tail call fastcc void @console_textview_update_rect(ptr noundef %3, ptr noundef %4) #12
  %50 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  tail call void @ED_area_tag_redraw(ptr noundef %50) #11
  tail call fastcc void @console_scroll_bottom(ptr noundef %4) #12
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CONSOLE_OT_history_append(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.40, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.41, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.42, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_history_append_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @RNA_def_string(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !59
  %10 = tail call ptr @RNA_def_int(ptr noundef %9, ptr noundef nonnull @.str.43, i32 noundef 0, i32 noundef 0, i32 noundef 2147483647, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 0, i32 noundef 10000) #11
  %11 = load ptr, ptr %6, align 8, !tbaa !59
  %12 = tail call ptr @RNA_def_boolean(ptr noundef %11, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_history_append_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !90 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  %6 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = tail call ptr @RNA_string_get_alloc(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !61
  %11 = tail call i32 @RNA_int_get(ptr noundef %10, ptr noundef nonnull @.str.43) #11
  %12 = load ptr, ptr %7, align 8, !tbaa !61
  %13 = tail call i32 @RNA_boolean_get(ptr noundef %12, ptr noundef nonnull @.str.46) #11
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %6, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = and i32 %13, 255
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ConsoleLine, ptr %6, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = tail call fastcc ptr @console_history_find(ptr noundef %3, ptr noundef %20, ptr noundef nonnull %6) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18, %23
  %24 = phi ptr [ %26, %23 ], [ %21, %18 ]
  tail call void @console_history_free(ptr noundef %3, ptr noundef nonnull %24) #12
  %25 = load ptr, ptr %19, align 8, !tbaa !38
  %26 = tail call fastcc ptr @console_history_find(ptr noundef %3, ptr noundef %25, ptr noundef nonnull %6) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !91

28:                                               ; preds = %23, %18
  %29 = phi ptr [ %20, %18 ], [ %25, %23 ]
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %29) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %33(ptr noundef %9) #11
  br label %42

34:                                               ; preds = %28, %2
  %35 = tail call ptr @console_history_add_str(ptr noundef %3, ptr noundef %9, i8 noundef zeroext 1) #12
  %36 = getelementptr inbounds %struct.ConsoleLine, ptr %35, i64 0, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !43
  %38 = sub nsw i32 %37, %15
  tail call fastcc void @console_select_offset(ptr noundef %3, i32 noundef %38) #12
  %39 = tail call fastcc zeroext i8 @console_line_cursor_set(ptr noundef %35, i32 noundef %11) #12, !range !64
  tail call void @ED_area_tag_redraw(ptr noundef %5) #11
  %40 = icmp eq ptr %4, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  tail call fastcc void @console_scroll_bottom(ptr noundef nonnull %4) #12
  br label %42

42:                                               ; preds = %32, %34, %41
  ret i32 4
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CONSOLE_OT_scrollback_append(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.58, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.59, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.60, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_scrollback_append_exec, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = tail call ptr @RNA_def_string(ptr noundef %7, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !59
  %10 = tail call ptr @RNA_def_enum(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @CONSOLE_OT_scrollback_append.console_line_type_items, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.61) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_scrollback_append_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !92 {
  %3 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %4 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %5 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = tail call ptr @RNA_string_get_alloc(ptr noundef %6, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 0) #11
  %8 = load ptr, ptr %5, align 8, !tbaa !61
  %9 = tail call i32 @RNA_enum_get(ptr noundef %8, ptr noundef nonnull @.str.3) #11
  %10 = tail call ptr @console_history_verify(ptr noundef %0) #12
  %11 = tail call ptr @console_scrollback_add_str(ptr noundef %3, ptr noundef %7, i8 noundef zeroext 1) #12
  %12 = getelementptr inbounds %struct.ConsoleLine, ptr %11, i64 0, i32 6
  store i32 %9, ptr %12, align 4, !tbaa !93
  tail call fastcc void @console_scrollback_limit(ptr noundef %3) #12
  %13 = icmp eq ptr %4, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call fastcc void @console_textview_update_rect(ptr noundef %3, ptr noundef nonnull %4) #12
  br label %15

15:                                               ; preds = %14, %2
  %16 = tail call ptr @CTX_wm_area(ptr noundef %0) #11
  tail call void @ED_area_tag_redraw(ptr noundef %16) #11
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_copy(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.62, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.63, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.64, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_copy_exec, ptr %5, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_copy_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !94 {
  %3 = alloca %struct.ConsoleLine, align 8
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i64 40, i1 false)
  %5 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 12
  %6 = load i32, ptr %5, align 8, !tbaa !95
  %7 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 13
  %8 = load i32, ptr %7, align 4, !tbaa !96
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %69, label %10

10:                                               ; preds = %2
  call void @console_scrollback_prompt_begin(ptr noundef nonnull %4, ptr noundef nonnull %3) #11
  %11 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %67, label %14

14:                                               ; preds = %10, %14
  %15 = phi ptr [ %21, %14 ], [ %12, %10 ]
  %16 = phi i32 [ %20, %14 ], [ 0, %10 ]
  %17 = getelementptr inbounds %struct.ConsoleLine, ptr %15, i64 0, i32 3
  %18 = load i32, ptr %17, align 4, !tbaa !43
  %19 = add i32 %16, 1
  %20 = add i32 %19, %18
  %21 = load ptr, ptr %15, align 8, !tbaa !34
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !97

23:                                               ; preds = %14
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %67, label %25

25:                                               ; preds = %23
  %26 = call ptr @BLI_dynstr_new() #11
  %27 = load ptr, ptr %11, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  br i1 %28, label %64, label %29

29:                                               ; preds = %25
  %30 = add i32 %16, %18
  %31 = load i32, ptr %5, align 8, !tbaa !95
  %32 = sub nsw i32 %30, %31
  %33 = load i32, ptr %7, align 4, !tbaa !96
  %34 = sub nsw i32 %30, %33
  br label %35

35:                                               ; preds = %29, %57
  %36 = phi ptr [ %62, %57 ], [ %27, %29 ]
  %37 = phi i32 [ %60, %57 ], [ %34, %29 ]
  %38 = phi i32 [ %61, %57 ], [ %32, %29 ]
  %39 = getelementptr inbounds %struct.ConsoleLine, ptr %36, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !43
  %41 = icmp sle i32 %37, %40
  %42 = icmp sgt i32 %38, -1
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %57

44:                                               ; preds = %35
  %45 = call fastcc i32 @max_ii(i32 noundef %37) #12
  %46 = call fastcc i32 @min_ii(i32 noundef %38, i32 noundef %40) #12
  %47 = call i32 @BLI_dynstr_get_len(ptr noundef %26) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  call void @BLI_dynstr_append(ptr noundef %26, ptr noundef nonnull @.str.87) #11
  br label %50

50:                                               ; preds = %49, %44
  %51 = getelementptr inbounds %struct.ConsoleLine, ptr %36, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  %53 = sext i32 %45 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = sub nsw i32 %46, %45
  call void @BLI_dynstr_nappend(ptr noundef %26, ptr noundef %54, i32 noundef %55) #11
  %56 = load i32, ptr %39, align 4, !tbaa !43
  br label %57

57:                                               ; preds = %50, %35
  %58 = phi i32 [ %56, %50 ], [ %40, %35 ]
  %59 = add nsw i32 %58, 1
  %60 = sub nsw i32 %37, %59
  %61 = sub nsw i32 %38, %59
  %62 = load ptr, ptr %36, align 8, !tbaa !34
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %35, !llvm.loop !98

64:                                               ; preds = %57, %25
  %65 = call ptr @BLI_dynstr_get_cstring(ptr noundef %26) #11
  call void @BLI_dynstr_free(ptr noundef %26) #11
  call void @WM_clipboard_text_set(ptr noundef %65, i8 noundef zeroext 0) #11
  %66 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %66(ptr noundef %65) #11
  br label %67

67:                                               ; preds = %23, %10, %64
  %68 = phi i32 [ 4, %64 ], [ 2, %10 ], [ 2, %23 ]
  call void @console_scrollback_prompt_end(ptr noundef %4, ptr noundef nonnull %3) #11
  br label %69

69:                                               ; preds = %67, %2
  %70 = phi i32 [ 2, %2 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #14
  ret i32 %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_paste(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.65, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.66, ptr %2, align 8, !tbaa !55
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.67, ptr %3, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @console_paste_exec, ptr %5, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_paste_exec(ptr noundef %0, ptr nocapture readnone %1) #0 !PGOFuncName !99 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %6 = tail call ptr @console_history_verify(ptr noundef %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %7 = call ptr @WM_clipboard_text_get(i8 noundef zeroext 0, ptr noundef nonnull %3) #11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2, %25
  %10 = phi ptr [ %20, %25 ], [ %7, %2 ]
  %11 = phi ptr [ %26, %25 ], [ %6, %2 ]
  %12 = load i8, ptr %10, align 1, !tbaa !67
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %10, i32 noundef 10) #13
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  store i8 0, ptr %15, align 1, !tbaa !67
  %18 = getelementptr inbounds i8, ptr %15, i64 1
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi ptr [ %18, %17 ], [ null, %14 ]
  %21 = icmp eq ptr %10, %7
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = call i32 @WM_operator_name_call(ptr noundef %0, ptr noundef nonnull @.str.88, i16 noundef signext 6, ptr noundef null) #11
  %24 = call ptr @console_history_verify(ptr noundef %0) #12
  br label %25

25:                                               ; preds = %22, %19
  %26 = phi ptr [ %24, %22 ], [ %11, %19 ]
  %27 = call fastcc i32 @console_line_insert(ptr noundef %26, ptr noundef nonnull %10) #12
  call fastcc void @console_select_offset(ptr noundef %4, i32 noundef %27) #12
  %28 = icmp eq ptr %20, null
  br i1 %28, label %29, label %9, !llvm.loop !100

29:                                               ; preds = %25, %9
  %30 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %30(ptr noundef nonnull %7) #11
  call fastcc void @console_textview_update_rect(ptr noundef %4, ptr noundef %5) #12
  %31 = call ptr @CTX_wm_area(ptr noundef %0) #11
  call void @ED_area_tag_redraw(ptr noundef %31) #11
  call fastcc void @console_scroll_bottom(ptr noundef %5) #12
  br label %32

32:                                               ; preds = %2, %29
  %33 = phi i32 [ 4, %29 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @CONSOLE_OT_select_set(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  store ptr @.str.68, ptr %0, align 8, !tbaa !51
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.69, ptr %2, align 8, !tbaa !56
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.70, ptr %3, align 8, !tbaa !55
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @console_modal_select_invoke, ptr %4, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 8
  store ptr @console_modal_select, ptr %5, align 8, !tbaa !101
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 7
  store ptr @console_modal_select_cancel, ptr %6, align 8, !tbaa !102
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_console_active, ptr %7, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_modal_select_invoke(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !103 {
  %4 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 12, ptr noundef nonnull @.str.89) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  store ptr %6, ptr %7, align 8, !tbaa !104
  %8 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 12
  %9 = load i32, ptr %8, align 8, !tbaa !95
  store i32 %9, ptr %6, align 4, !tbaa !45
  %10 = getelementptr inbounds %struct.SpaceConsole, ptr %4, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !96
  %12 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 %11, ptr %12, align 4, !tbaa !45
  %13 = getelementptr inbounds %struct.SetConsoleCursor, ptr %6, i64 0, i32 1
  store i32 2147483647, ptr %13, align 4, !tbaa !105
  %14 = tail call ptr @WM_event_add_modal_handler(ptr noundef %0, ptr noundef %1) #11
  tail call fastcc void @console_modal_select_apply(ptr noundef %0, ptr noundef %1, ptr noundef %2) #12
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @console_modal_select(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !107 {
  %4 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %5 = load i16, ptr %4, align 8, !tbaa !108
  switch i16 %5, label %8 [
    i16 1, label %6
    i16 2, label %6
    i16 3, label %6
    i16 4, label %7
  ]

6:                                                ; preds = %3, %3, %3
  tail call fastcc void @console_cursor_set_exit(ptr noundef %1) #12
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @console_modal_select_apply(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #12
  br label %8

8:                                                ; preds = %7, %3, %6
  %9 = phi i32 [ 4, %6 ], [ 1, %3 ], [ 1, %7 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @console_modal_select_cancel(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !109 {
  tail call fastcc void @console_cursor_set_exit(ptr noundef %1) #12
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @console_lb_add__internal(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !PGOFuncName !110 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 40, ptr noundef nonnull @.str.71) #11
  %5 = icmp eq ptr %1, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @BLI_strdupn(ptr noundef %8, i64 noundef %11) #11
  %13 = load i32, ptr %9, align 4, !tbaa !43
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %1, i64 0, i32 5
  %15 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 5
  %16 = load <2 x i32>, ptr %14, align 8, !tbaa !45
  store <2 x i32> %16, ptr %15, align 8, !tbaa !45
  br label %20

17:                                               ; preds = %2
  %18 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %19 = tail call ptr %18(i64 noundef 64, ptr noundef nonnull @.str.72) #11
  br label %20

20:                                               ; preds = %17, %6
  %21 = phi ptr [ %19, %17 ], [ %12, %6 ]
  %22 = phi i32 [ 64, %17 ], [ %13, %6 ]
  %23 = phi i32 [ 0, %17 ], [ %13, %6 ]
  %24 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 4
  store ptr %21, ptr %24, align 8
  %25 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 2
  store i32 %22, ptr %25, align 8
  %26 = getelementptr inbounds %struct.ConsoleLine, ptr %4, i64 0, i32 3
  store i32 %23, ptr %26, align 4
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef nonnull %4) #11
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_strdupn(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_str_cursor_step_utf8(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @console_line_cursor_set(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !111 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !43
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 %1)
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i32 [ 0, %2 ], [ %7, %4 ]
  %10 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  store i32 %9, ptr %10, align 8, !tbaa !63
  br label %14

14:                                               ; preds = %8, %13
  %15 = phi i8 [ 1, %13 ], [ 0, %8 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @console_scroll_bottom(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !112 {
  %2 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 2
  store float 0.000000e+00, ptr %2, align 8, !tbaa !113
  %3 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 17
  %4 = load i16, ptr %3, align 8, !tbaa !117
  %5 = sitofp i16 %4 to float
  %6 = getelementptr inbounds %struct.ARegion, ptr %0, i64 0, i32 2, i32 1, i32 3
  store float %5, ptr %6, align 4, !tbaa !118
  ret void
}

; Function Attrs: optsize
declare ptr @RNA_string_get_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @console_line_insert(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = add i64 %3, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !67
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  store i8 0, ptr %9, align 1, !tbaa !67
  %13 = add nsw i32 %4, -1
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ %4, %2 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %42, label %17

17:                                               ; preds = %6, %14
  %18 = phi i32 [ %15, %14 ], [ %4, %6 ]
  %19 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !43
  %21 = add nsw i32 %20, %18
  tail call fastcc void @console_line_verify_length(ptr noundef %0, i32 noundef %21) #12
  %22 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !63
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = sext i32 %18 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  %30 = load i32, ptr %19, align 4, !tbaa !43
  %31 = sub i32 %30, %25
  %32 = add i32 %31, 1
  %33 = sext i32 %32 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %29, ptr align 1 %27, i64 %33, i1 false)
  %34 = load ptr, ptr %22, align 8, !tbaa !38
  %35 = load i32, ptr %24, align 8, !tbaa !63
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %34, i64 %36
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %37, ptr align 1 %1, i64 %28, i1 false)
  %38 = load i32, ptr %19, align 4, !tbaa !43
  %39 = add nsw i32 %38, %18
  store i32 %39, ptr %19, align 4, !tbaa !43
  %40 = load i32, ptr %24, align 8, !tbaa !63
  %41 = add nsw i32 %40, %18
  store i32 %41, ptr %24, align 8, !tbaa !63
  br label %42

42:                                               ; preds = %14, %17
  %43 = phi i32 [ %18, %17 ], [ 0, %14 ]
  ret i32 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_textview_update_rect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !121
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = tail call i32 @console_textview_height(ptr noundef %0, ptr noundef %1) #11
  tail call void @UI_view2d_totRect_set(ptr noundef nonnull %3, i32 noundef %7, i32 noundef %8) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_line_verify_length(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !123 {
  %3 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !42
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = shl i32 %1, 1
  %8 = add i32 %7, 2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = sext i32 %8 to i64
  %11 = tail call ptr %9(i64 noundef %10, ptr noundef nonnull @.str.86) #11
  %12 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = getelementptr inbounds %struct.ConsoleLine, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !43
  %16 = sext i32 %15 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %13, i64 %16, i1 false)
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %18 = load ptr, ptr %12, align 8, !tbaa !38
  tail call void %17(ptr noundef %18) #11
  store ptr %11, ptr %12, align 8, !tbaa !38
  store i32 %8, ptr %3, align 8, !tbaa !42
  br label %19

19:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @UI_view2d_totRect_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @console_textview_height(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_string_length(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_str_utf8_from_unicode(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @console_history_find(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) unnamed_addr #8 !PGOFuncName !124 {
  %4 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 9, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3, %15
  %8 = phi ptr [ %17, %15 ], [ %5, %3 ]
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ConsoleLine, ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %12) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %7
  %16 = getelementptr inbounds %struct.ConsoleLine, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !125

19:                                               ; preds = %10, %15, %3
  %20 = phi ptr [ null, %3 ], [ null, %15 ], [ %8, %10 ]
  ret ptr %20
}

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_scrollback_limit(ptr noundef %0) unnamed_addr #0 !PGOFuncName !126 {
  %2 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 32), align 8, !tbaa !127
  %3 = icmp slt i32 %2, 32
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i32 256, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 32), align 8, !tbaa !127
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 8
  %7 = tail call i32 @BLI_countlist(ptr noundef nonnull %6) #11
  %8 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 32), align 8, !tbaa !127
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %5, %10
  %11 = phi i32 [ %13, %10 ], [ %7, %5 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !83
  tail call void @console_scrollback_free(ptr noundef %0, ptr noundef %12) #12
  %13 = add nsw i32 %11, -1
  %14 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 32), align 8, !tbaa !127
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %10, label %16, !llvm.loop !131

16:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @console_scrollback_prompt_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @console_scrollback_prompt_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @max_ii(i32 noundef %0) unnamed_addr #9 !PGOFuncName !132 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @min_ii(i32 noundef %0, i32 noundef %1) unnamed_addr #9 !PGOFuncName !133 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @BLI_dynstr_get_len(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dynstr_nappend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_clipboard_text_get(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @WM_operator_name_call(ptr noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_event_add_modal_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_modal_select_apply(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !134 {
  %4 = alloca [2 x i32], align 8
  %5 = tail call ptr @CTX_wm_space_console(ptr noundef %0) #11
  %6 = tail call ptr @CTX_wm_region(ptr noundef %0) #11
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %9 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %10 = load <2 x i32>, ptr %9, align 4, !tbaa !45
  store <2 x i32> %10, ptr %4, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 12
  %12 = load i32, ptr %11, align 8, !tbaa !95
  %13 = getelementptr inbounds %struct.SpaceConsole, ptr %5, i64 0, i32 13
  %14 = load i32, ptr %13, align 4, !tbaa !96
  call fastcc void @console_cursor_set_to_pos(ptr noundef %5, ptr noundef %6, ptr noundef %8, ptr noundef nonnull %4) #12
  %15 = load i32, ptr %11, align 8, !tbaa !95
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, ptr %13, align 4, !tbaa !96
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %17, %3
  %21 = call ptr @CTX_wm_area(ptr noundef %0) #11
  call void @ED_area_tag_redraw(ptr noundef %21) #11
  br label %22

22:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_cursor_set_to_pos(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !135 {
  %5 = tail call i32 @console_char_pick(ptr noundef %0, ptr noundef %1, ptr noundef %3) #11
  %6 = getelementptr inbounds %struct.SetConsoleCursor, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !105
  %8 = icmp eq i32 %7, 2147483647
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  store i32 %5, ptr %6, align 4, !tbaa !105
  %10 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 13
  store i32 %5, ptr %10, align 4, !tbaa !96
  %11 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  store i32 %5, ptr %11, align 8, !tbaa !95
  br label %24

12:                                               ; preds = %4
  %13 = icmp slt i32 %5, %7
  %14 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 12
  br i1 %13, label %15, label %17

15:                                               ; preds = %12
  store i32 %5, ptr %14, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 13
  store i32 %7, ptr %16, align 4, !tbaa !96
  br label %24

17:                                               ; preds = %12
  %18 = load i32, ptr %14, align 8, !tbaa !95
  %19 = icmp sgt i32 %5, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  store i32 %7, ptr %14, align 8, !tbaa !95
  %21 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 13
  store i32 %5, ptr %21, align 4, !tbaa !96
  br label %24

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.SpaceConsole, ptr %0, i64 0, i32 13
  store i32 %5, ptr %23, align 4, !tbaa !96
  store i32 %5, ptr %14, align 8, !tbaa !95
  br label %24

24:                                               ; preds = %15, %22, %20, %9
  ret void
}

; Function Attrs: optsize
declare i32 @console_char_pick(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @console_cursor_set_exit(ptr nocapture noundef readonly %0) unnamed_addr #0 !PGOFuncName !136 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %4(ptr noundef %3) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize willreturn memory(read) }
attributes #14 = { nounwind }

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
!38 = !{!39, !35, i64 24}
!39 = !{!"ConsoleLine", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !35, i64 24, !40, i64 32, !40, i64 36}
!40 = !{!"int", !36, i64 0}
!41 = !{!"console_ops.c:console_lb_add_str__internal"}
!42 = !{!39, !40, i64 16}
!43 = !{!39, !40, i64 20}
!44 = !{!"console_ops.c:console_select_offset"}
!45 = !{!40, !40, i64 0}
!46 = !{!47, !35, i64 88}
!47 = !{!"SpaceConsole", !35, i64 0, !35, i64 8, !48, i64 16, !40, i64 32, !49, i64 36, !36, i64 40, !40, i64 56, !40, i64 60, !48, i64 64, !48, i64 80, !36, i64 96, !36, i64 352, !40, i64 384, !40, i64 388}
!48 = !{!"ListBase", !35, i64 0, !35, i64 8}
!49 = !{!"float", !36, i64 0}
!50 = !{!"console_ops.c:console_history_add"}
!51 = !{!52, !35, i64 0}
!52 = !{!"wmOperatorType", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !48, i64 112, !35, i64 128, !35, i64 136, !35, i64 144, !53, i64 152, !54, i64 184}
!53 = !{!"ExtensionRNA", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!54 = !{!"short", !36, i64 0}
!55 = !{!52, !35, i64 24}
!56 = !{!52, !35, i64 8}
!57 = !{!52, !35, i64 32}
!58 = !{!52, !35, i64 72}
!59 = !{!52, !35, i64 88}
!60 = !{!"console_ops.c:console_move_exec"}
!61 = !{!62, !35, i64 112}
!62 = !{!"wmOperator", !35, i64 0, !35, i64 8, !36, i64 16, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !48, i64 128, !35, i64 144, !35, i64 152, !54, i64 160, !36, i64 162}
!63 = !{!39, !40, i64 32}
!64 = !{i8 0, i8 2}
!65 = !{!52, !35, i64 48}
!66 = !{!"console_ops.c:console_insert_exec"}
!67 = !{!36, !36, i64 0}
!68 = !{!"console_ops.c:console_insert_invoke"}
!69 = !{!70, !54, i64 74}
!70 = !{!"wmEvent", !35, i64 0, !35, i64 8, !54, i64 16, !54, i64 18, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 36, !36, i64 42, !36, i64 43, !54, i64 44, !54, i64 46, !40, i64 48, !40, i64 52, !71, i64 56, !40, i64 64, !40, i64 68, !54, i64 72, !54, i64 74, !54, i64 76, !54, i64 78, !54, i64 80, !54, i64 82, !35, i64 88, !35, i64 96, !54, i64 104, !54, i64 106, !40, i64 108, !35, i64 112}
!71 = !{!"double", !36, i64 0}
!72 = !{!70, !54, i64 78}
!73 = !{!70, !36, i64 42}
!74 = !{i32 2, i32 5}
!75 = !{!"console_ops.c:console_indent_exec"}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"console_ops.c:console_unindent_exec"}
!79 = distinct !{!79, !77}
!80 = !{!"console_ops.c:console_delete_exec"}
!81 = !{!"console_ops.c:console_clear_line_exec"}
!82 = !{!"console_ops.c:console_clear_exec"}
!83 = !{!47, !35, i64 64}
!84 = distinct !{!84, !77}
!85 = !{!47, !35, i64 80}
!86 = distinct !{!86, !77}
!87 = !{!"console_ops.c:console_history_cycle_exec"}
!88 = !{!39, !35, i64 8}
!89 = distinct !{!89, !77}
!90 = !{!"console_ops.c:console_history_append_exec"}
!91 = distinct !{!91, !77}
!92 = !{!"console_ops.c:console_scrollback_append_exec"}
!93 = !{!39, !40, i64 36}
!94 = !{!"console_ops.c:console_copy_exec"}
!95 = !{!47, !40, i64 384}
!96 = !{!47, !40, i64 388}
!97 = distinct !{!97, !77}
!98 = distinct !{!98, !77}
!99 = !{!"console_ops.c:console_paste_exec"}
!100 = distinct !{!100, !77}
!101 = !{!52, !35, i64 64}
!102 = !{!52, !35, i64 56}
!103 = !{!"console_ops.c:console_modal_select_invoke"}
!104 = !{!62, !35, i64 96}
!105 = !{!106, !40, i64 8}
!106 = !{!"SetConsoleCursor", !36, i64 0, !40, i64 8}
!107 = !{!"console_ops.c:console_modal_select"}
!108 = !{!70, !54, i64 16}
!109 = !{!"console_ops.c:console_modal_select_cancel"}
!110 = !{!"console_ops.c:console_lb_add__internal"}
!111 = !{!"console_ops.c:console_line_cursor_set"}
!112 = !{!"console_ops.c:console_scroll_bottom"}
!113 = !{!114, !49, i64 24}
!114 = !{!"View2D", !115, i64 0, !115, i64 16, !116, i64 32, !116, i64 48, !116, i64 64, !36, i64 80, !36, i64 88, !49, i64 96, !49, i64 100, !54, i64 104, !54, i64 106, !54, i64 108, !54, i64 110, !54, i64 112, !54, i64 114, !54, i64 116, !54, i64 118, !54, i64 120, !54, i64 122, !54, i64 124, !54, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!115 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!116 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!117 = !{!114, !54, i64 120}
!118 = !{!114, !49, i64 28}
!119 = !{!"console_ops.c:console_line_insert"}
!120 = !{!"console_ops.c:console_textview_update_rect"}
!121 = !{!122, !54, i64 208}
!122 = !{!"ARegion", !35, i64 0, !35, i64 8, !114, i64 16, !116, i64 176, !116, i64 192, !54, i64 208, !54, i64 210, !54, i64 212, !54, i64 214, !54, i64 216, !54, i64 218, !49, i64 220, !54, i64 224, !54, i64 226, !54, i64 228, !54, i64 230, !54, i64 232, !54, i64 234, !54, i64 236, !54, i64 238, !35, i64 240, !48, i64 248, !48, i64 264, !48, i64 280, !48, i64 296, !48, i64 312, !48, i64 328, !48, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!123 = !{!"console_ops.c:console_line_verify_length"}
!124 = !{!"console_ops.c:console_history_find"}
!125 = distinct !{!125, !77}
!126 = !{!"console_ops.c:console_scrollback_limit"}
!127 = !{!128, !40, i64 8520}
!128 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !54, i64 8472, !54, i64 8474, !54, i64 8476, !54, i64 8478, !54, i64 8480, !54, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !54, i64 8496, !54, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !54, i64 8528, !54, i64 8530, !54, i64 8532, !54, i64 8534, !48, i64 8536, !48, i64 8552, !48, i64 8568, !48, i64 8584, !48, i64 8600, !48, i64 8616, !48, i64 8632, !36, i64 8648, !54, i64 8712, !54, i64 8714, !54, i64 8716, !54, i64 8718, !54, i64 8720, !54, i64 8722, !54, i64 8724, !54, i64 8726, !36, i64 8728, !54, i64 8896, !54, i64 8898, !54, i64 8900, !54, i64 8902, !54, i64 8904, !54, i64 8906, !54, i64 8908, !54, i64 8910, !40, i64 8912, !40, i64 8916, !54, i64 8920, !54, i64 8922, !54, i64 8924, !54, i64 8926, !54, i64 8928, !54, i64 8930, !54, i64 8932, !54, i64 8934, !54, i64 8936, !54, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !54, i64 8944, !54, i64 8946, !54, i64 8948, !54, i64 8950, !54, i64 8952, !54, i64 8954, !49, i64 8956, !49, i64 8960, !40, i64 8964, !54, i64 8968, !54, i64 8970, !49, i64 8972, !54, i64 8976, !54, i64 8978, !54, i64 8980, !54, i64 8982, !129, i64 8984, !36, i64 9760, !36, i64 9772, !54, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !49, i64 10904, !49, i64 10908, !40, i64 10912, !54, i64 10916, !54, i64 10918, !54, i64 10920, !54, i64 10922, !54, i64 10924, !54, i64 10926, !130, i64 10928}
!129 = !{!"ColorBand", !54, i64 0, !54, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!130 = !{!"WalkNavigation", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !54, i64 24, !36, i64 26}
!131 = distinct !{!131, !77}
!132 = !{!"console_ops.c:max_ii"}
!133 = !{!"console_ops.c:min_ii"}
!134 = !{!"console_ops.c:console_modal_select_apply"}
!135 = !{!"console_ops.c:console_cursor_set_to_pos"}
!136 = !{!"console_ops.c:console_cursor_set_exit"}
