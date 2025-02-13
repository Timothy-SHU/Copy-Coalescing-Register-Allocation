; ModuleID = 'blender/source/blender/windowmanager/intern/wm.c'
source_filename = "blender/source/blender/windowmanager/intern/wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEventHandler = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uiListType = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.MenuType = type { ptr, ptr, [64 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, %struct.ExtensionRNA }
%struct.wmKeyConfig = type { ptr, ptr, [64 x i8], [64 x i8], %struct.ListBase, i32, i32 }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.bScreen = type { %struct.ID, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@uilisttypes_hash = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [34 x i8] c"search for unknown uilisttype %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"uilisttypes_hash gh\00", align 1
@menutypes_hash = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"search for unknown menutype %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"menutypes_hash gh\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Blender\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Blender Addon\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Blender User\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"WinMan\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !44
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %9(ptr noundef nonnull %3) #7
  br label %10

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  tail call void @IDP_FreeProperty(ptr noundef nonnull %12) #7
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %16 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void %15(ptr noundef %16) #7
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ReportList, ptr %19, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !47
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  tail call void @BKE_reports_clear(ptr noundef nonnull %19) #7
  %27 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %28 = load ptr, ptr %18, align 8, !tbaa !46
  tail call void %27(ptr noundef %28) #7
  br label %29

29:                                               ; preds = %26, %21, %17
  %30 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 9
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %33
  %34 = phi ptr [ %35, %33 ], [ %31, %29 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  tail call void @WM_operator_free(ptr noundef nonnull %34) #8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %33, !llvm.loop !52

37:                                               ; preds = %33, %29
  %38 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %38(ptr noundef %0) #7
  ret void
}

; Function Attrs: optsize
declare void @IDP_FreeProperty(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_reports_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_type_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 4
  store ptr %1, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %1, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.PointerRNA, ptr %8, i64 0, i32 1
  store ptr %6, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %struct.wmOperator, ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @WM_operator_properties_create_ptr(ptr noundef nonnull %3, ptr noundef nonnull %1) #7
  %14 = call zeroext i8 @WM_operator_properties_default(ptr noundef nonnull %3, i8 noundef zeroext 0) #7
  %15 = getelementptr inbounds %struct.PointerRNA, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %10, align 8, !tbaa !44
  call void @IDP_SyncGroupTypes(ptr noundef %19, ptr noundef nonnull %16, i8 noundef zeroext 1) #7
  br label %20

20:                                               ; preds = %18, %13
  call void @WM_operator_properties_free(ptr noundef nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %21

21:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: optsize
declare void @WM_operator_properties_create_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @WM_operator_properties_default(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @IDP_SyncGroupTypes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_operator_properties_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_operator_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 7
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %1) #7
  %5 = tail call i32 @BLI_countlist(ptr noundef nonnull %4) #7
  %6 = icmp sgt i32 %5, 32
  br i1 %6, label %7, label %12

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %10, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %4, align 8, !tbaa !59
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef %9) #7
  tail call void @WM_operator_free(ptr noundef %9) #8
  %10 = add nsw i32 %8, -1
  %11 = icmp ugt i32 %8, 33
  br i1 %11, label %7, label %12, !llvm.loop !62

12:                                               ; preds = %7, %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 251789312, ptr noundef null) #7
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 17039360, ptr noundef null) #7
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_stack_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 7
  %3 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @WM_operator_free(ptr noundef nonnull %6) #8
  %7 = tail call ptr @BLI_pophead(ptr noundef nonnull %2) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !63

9:                                                ; preds = %5, %1
  tail call void @WM_main_add_notifier(i32 noundef 17039360, ptr noundef null) #7
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_main_add_notifier(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_operator_handlers_clear(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 16
  %4 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %3, i64 1
  br label %9

9:                                                ; preds = %7, %37
  %10 = phi ptr [ %5, %7 ], [ %38, %37 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  %11 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 28
  store ptr %11, ptr %3, align 16, !tbaa !45
  %12 = getelementptr inbounds %struct.wmWindow, ptr %10, i64 0, i32 29
  store ptr %12, ptr %8, align 8, !tbaa !45
  br label %13

13:                                               ; preds = %9, %36
  %14 = phi i1 [ true, %9 ], [ false, %36 ]
  %15 = phi i64 [ 0, %9 ], [ 1, %36 ]
  %16 = getelementptr inbounds [2 x ptr], ptr %3, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %13, %33
  %21 = phi ptr [ %34, %33 ], [ %18, %13 ]
  %22 = getelementptr inbounds %struct.wmEventHandler, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.wmOperator, ptr %23, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = icmp eq ptr %27, %1
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.wmEventHandler, ptr %21, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !66
  %32 = or i32 %31, 2
  store i32 %32, ptr %30, align 4, !tbaa !66
  tail call void @WM_operator_free(ptr noundef nonnull %23) #8
  store ptr null, ptr %22, align 8, !tbaa !64
  br label %33

33:                                               ; preds = %20, %25, %29
  %34 = load ptr, ptr %21, align 8, !tbaa !45
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %20, !llvm.loop !67

36:                                               ; preds = %33, %13
  br i1 %14, label %13, label %37, !llvm.loop !68

37:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  %38 = load ptr, ptr %10, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %9, !llvm.loop !69

40:                                               ; preds = %37, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_uilisttype_find(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !70
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @uilisttypes_hash, align 8, !tbaa !45
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %0) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5, %2
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %0) #8
  br label %13

13:                                               ; preds = %9, %11, %5
  %14 = phi ptr [ %7, %5 ], [ null, %11 ], [ null, %9 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_uilisttype_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @uilisttypes_hash, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.uiListType, ptr %0, i64 0, i32 2
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %0) #7
  ret i8 1
}

; Function Attrs: optsize
declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_uilisttype_freelink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @uilisttypes_hash, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.uiListType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %5 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef %4) #7
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BLI_ghash_remove(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_uilisttype_init() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef nonnull @.str.1, i32 noundef 16) #7
  store ptr %1, ptr @uilisttypes_hash, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghash_str_new_ex(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_uilisttype_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @uilisttypes_hash, align 8, !tbaa !45
  %2 = tail call ptr @BLI_ghashIterator_new(ptr noundef %1) #7
  %3 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %2) #8, !range !71
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0, %13
  %6 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %2) #8
  %7 = getelementptr inbounds %struct.uiListType, ptr %6, i64 0, i32 6, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.uiListType, ptr %6, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  tail call void %8(ptr noundef %12) #7
  br label %13

13:                                               ; preds = %10, %5
  tail call void @BLI_ghashIterator_step(ptr noundef %2) #7
  %14 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %2) #8, !range !71
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %5, label %16, !llvm.loop !75

16:                                               ; preds = %13, %0
  tail call void @BLI_ghashIterator_free(ptr noundef %2) #7
  %17 = load ptr, ptr @uilisttypes_hash, align 8, !tbaa !45
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void @BLI_ghash_free(ptr noundef %17, ptr noundef null, ptr noundef %18) #7
  store ptr null, ptr @uilisttypes_hash, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_ghashIterator_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_ghashIterator_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !76 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @BLI_ghashIterator_getValue(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !79 {
  %2 = getelementptr inbounds %struct.GHashIterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = getelementptr inbounds %struct._gh_Entry, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !80
  ret ptr %5
}

; Function Attrs: optsize
declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghashIterator_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @WM_menutype_find(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %0, align 1, !tbaa !70
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @menutypes_hash, align 8, !tbaa !45
  %7 = tail call ptr @BLI_ghash_lookup(ptr noundef %6, ptr noundef nonnull %0) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %5, %2
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %0) #8
  br label %13

13:                                               ; preds = %9, %11, %5
  %14 = phi ptr [ %7, %5 ], [ null, %11 ], [ null, %9 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @WM_menutype_add(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @menutypes_hash, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.MenuType, ptr %0, i64 0, i32 2
  tail call void @BLI_ghash_insert(ptr noundef %2, ptr noundef nonnull %3, ptr noundef %0) #7
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_menutype_freelink(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @menutypes_hash, align 8, !tbaa !45
  %3 = getelementptr inbounds %struct.MenuType, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  %5 = tail call zeroext i8 @BLI_ghash_remove(ptr noundef %2, ptr noundef nonnull %3, ptr noundef null, ptr noundef %4) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_menutype_init() local_unnamed_addr #0 {
  %1 = tail call ptr @BLI_ghash_str_new_ex(ptr noundef nonnull @.str.3, i32 noundef 512) #7
  store ptr %1, ptr @menutypes_hash, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_menutype_free() local_unnamed_addr #0 {
  %1 = load ptr, ptr @menutypes_hash, align 8, !tbaa !45
  %2 = tail call ptr @BLI_ghashIterator_new(ptr noundef %1) #7
  %3 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %2) #8, !range !71
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %0, %13
  %6 = tail call fastcc ptr @BLI_ghashIterator_getValue(ptr noundef %2) #8
  %7 = getelementptr inbounds %struct.MenuType, ptr %6, i64 0, i32 8, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.MenuType, ptr %6, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !84
  tail call void %8(ptr noundef %12) #7
  br label %13

13:                                               ; preds = %10, %5
  tail call void @BLI_ghashIterator_step(ptr noundef %2) #7
  %14 = tail call fastcc zeroext i8 @BLI_ghashIterator_done(ptr noundef %2) #8, !range !71
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %5, label %16, !llvm.loop !85

16:                                               ; preds = %13, %0
  tail call void @BLI_ghashIterator_free(ptr noundef %2) #7
  %17 = load ptr, ptr @menutypes_hash, align 8, !tbaa !45
  %18 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void @BLI_ghash_free(ptr noundef %17, ptr noundef null, ptr noundef %18) #7
  store ptr null, ptr @menutypes_hash, align 8, !tbaa !45
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_keymap_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call ptr @WM_keyconfig_new(ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #7
  store ptr %7, ptr %3, align 8, !tbaa !86
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @WM_keyconfig_new(ptr noundef nonnull %2, ptr noundef nonnull @.str.5) #7
  store ptr %13, ptr %9, align 8, !tbaa !87
  br label %14

14:                                               ; preds = %12, %8
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call ptr @WM_keyconfig_new(ptr noundef nonnull %2, ptr noundef nonnull @.str.6) #7
  store ptr %19, ptr %15, align 8, !tbaa !88
  br label %20

20:                                               ; preds = %18, %14
  %21 = tail call i32 @CTX_py_init_get(ptr noundef %0) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.wmWindowManager, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !89
  %26 = and i32 %25, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load ptr, ptr %3, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.wmKeyConfig, ptr %29, i64 0, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !90
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  tail call void @wm_window_keymap(ptr noundef nonnull %29) #7
  %35 = load ptr, ptr %3, align 8, !tbaa !86
  tail call void @ED_spacetypes_keymap(ptr noundef %35) #7
  %36 = load ptr, ptr %3, align 8, !tbaa !86
  %37 = getelementptr inbounds %struct.wmKeyConfig, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 4, !tbaa !90
  %39 = or i32 %38, 4
  store i32 %39, ptr %37, align 4, !tbaa !90
  br label %40

40:                                               ; preds = %34, %28
  tail call void @WM_keyconfig_update_tag(ptr noundef null, ptr noundef null) #7
  tail call void @WM_keyconfig_update(ptr noundef nonnull %2) #7
  %41 = load i32, ptr %24, align 8, !tbaa !89
  %42 = or i32 %41, 2
  store i32 %42, ptr %24, align 8, !tbaa !89
  br label %43

43:                                               ; preds = %40, %23, %20
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keyconfig_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @CTX_py_init_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_window_keymap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_spacetypes_keymap(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_keyconfig_update_tag(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_keyconfig_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @WM_check(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  tail call void @CTX_wm_manager_set(ptr noundef %0, ptr noundef %7) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %1, %4
  %10 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %10, i64 0, i32 3
  %12 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %11) #8, !range !71
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !95
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wmWindowManager, ptr %10, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !89
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void @WM_keymap_init(ptr noundef %0) #8
  tail call void @WM_autosave_init(ptr noundef nonnull %10) #7
  br label %23

23:                                               ; preds = %22, %17
  tail call void @wm_window_add_ghostwindows(ptr noundef nonnull %10) #7
  br label %24

24:                                               ; preds = %23, %14
  %25 = getelementptr inbounds %struct.wmWindowManager, ptr %10, i64 0, i32 4
  %26 = load i32, ptr %25, align 8, !tbaa !89
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  tail call void @ED_screens_initialize(ptr noundef nonnull %10) #7
  %30 = load i32, ptr %25, align 8, !tbaa !89
  %31 = or i32 %30, 1
  store i32 %31, ptr %25, align 8, !tbaa !89
  br label %32

32:                                               ; preds = %24, %29, %4, %9
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @CTX_wm_manager_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @BLI_listbase_is_empty(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !97 {
  %2 = load ptr, ptr %0, align 8, !tbaa !98
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @WM_autosave_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_window_add_ghostwindows(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_screens_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_clear_default_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.Main, ptr %5, i64 0, i32 40
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  tail call void @CTX_wm_manager_set(ptr noundef %0, ptr noundef %7) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %1, %4
  %10 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %11 = getelementptr inbounds %struct.wmWindowManager, ptr %10, i64 0, i32 3
  %12 = tail call fastcc zeroext i8 @BLI_listbase_is_empty(ptr noundef nonnull %11) #8, !range !71
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load ptr, ptr %11, align 8, !tbaa !45
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %14 ]
  %19 = getelementptr inbounds %struct.wmWindow, ptr %18, i64 0, i32 6
  store i64 0, ptr %19, align 8
  %20 = load ptr, ptr %18, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !99

22:                                               ; preds = %17, %14, %4, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_add_default(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %3 = tail call ptr @BKE_libblock_alloc(ptr noundef %2, i16 noundef signext 19799, ptr noundef nonnull @.str.7) #7
  %4 = tail call ptr @CTX_wm_screen(ptr noundef %0) #7
  tail call void @CTX_wm_manager_set(ptr noundef %0, ptr noundef %3) #7
  %5 = tail call ptr @wm_window_new(ptr noundef %0) #7
  %6 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 3
  store ptr %4, ptr %6, align 8, !tbaa !100
  %7 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 18
  %8 = load i32, ptr %7, align 8, !tbaa !102
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds %struct.bScreen, ptr %4, i64 0, i32 11
  store i16 %9, ptr %10, align 4, !tbaa !103
  %11 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 5
  %12 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 4, i64 2
  %13 = tail call ptr @BLI_strncpy(ptr noundef nonnull %11, ptr noundef nonnull %12, i64 noundef 64) #7
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 2
  store ptr %5, ptr %14, align 8, !tbaa !105
  %15 = getelementptr inbounds %struct.wmWindowManager, ptr %3, i64 0, i32 5
  store i16 1, ptr %15, align 4, !tbaa !106
  tail call void @wm_window_make_drawable(ptr noundef %3, ptr noundef %5) #7
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_libblock_alloc(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_wm_screen(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @wm_window_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_window_make_drawable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_close_and_free(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @wm_autosave_timer_ended(ptr noundef nonnull %1) #7
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 3
  %9 = tail call ptr @BLI_pophead(ptr noundef nonnull %8) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %15, %7
  %12 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 7
  %13 = tail call ptr @BLI_pophead(ptr noundef nonnull %12) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %24

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %18, %15 ], [ %9, %7 ]
  %17 = getelementptr inbounds %struct.wmWindow, ptr %16, i64 0, i32 3
  store ptr null, ptr %17, align 8, !tbaa !100
  tail call void @wm_draw_window_clear(ptr noundef nonnull %16) #7
  tail call void @wm_window_free(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %16) #7
  %18 = tail call ptr @BLI_pophead(ptr noundef nonnull %8) #7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %11, label %15, !llvm.loop !108

20:                                               ; preds = %24, %11
  %21 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 13
  %22 = tail call ptr @BLI_pophead(ptr noundef nonnull %21) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %28

24:                                               ; preds = %11, %24
  %25 = phi ptr [ %26, %24 ], [ %13, %11 ]
  tail call void @WM_operator_free(ptr noundef nonnull %25) #8
  %26 = tail call ptr @BLI_pophead(ptr noundef nonnull %12) #7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %20, label %24, !llvm.loop !109

28:                                               ; preds = %20, %28
  %29 = phi ptr [ %30, %28 ], [ %22, %20 ]
  tail call void @WM_keyconfig_free(ptr noundef nonnull %29) #7
  %30 = tail call ptr @BLI_pophead(ptr noundef nonnull %21) #7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %28, !llvm.loop !110

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 8
  tail call void @BLI_freelistN(ptr noundef nonnull %33) #7
  %34 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 11
  tail call void @BLI_freelistN(ptr noundef nonnull %34) #7
  %35 = getelementptr inbounds %struct.wmWindowManager, ptr %1, i64 0, i32 12
  tail call void @WM_drag_free_list(ptr noundef nonnull %35) #7
  tail call fastcc void @wm_reports_free(ptr noundef %1) #8
  %36 = icmp eq ptr %0, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = tail call ptr @CTX_wm_manager(ptr noundef nonnull %0) #7
  %39 = icmp eq ptr %38, %1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void @CTX_wm_manager_set(ptr noundef nonnull %0, ptr noundef null) #7
  br label %41

41:                                               ; preds = %40, %37, %32
  ret void
}

; Function Attrs: optsize
declare void @wm_autosave_timer_ended(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_draw_window_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_window_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_keyconfig_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_drag_free_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @wm_reports_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !111 {
  %2 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 9
  tail call void @BKE_reports_clear(ptr noundef nonnull %2) #7
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 9, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  tail call void @WM_event_remove_timer(ptr noundef %0, ptr noundef null, ptr noundef %4) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wm_close_and_free_all(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  tail call void @wm_close_and_free(ptr noundef %0, ptr noundef nonnull %6) #8
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef nonnull %6) #7
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  tail call void %7(ptr noundef nonnull %6) #7
  %8 = load ptr, ptr %1, align 8, !tbaa !98
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !113

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define dso_local void @WM_main(ptr noundef %0) local_unnamed_addr #6 {
  br label %2

2:                                                ; preds = %1, %2
  tail call void @wm_window_process_events(ptr noundef %0) #7
  tail call void @wm_event_do_handlers(ptr noundef %0) #7
  tail call void @wm_event_do_notifiers(ptr noundef %0) #7
  tail call void @wm_draw_update(ptr noundef %0) #7
  br label %2
}

; Function Attrs: optsize
declare void @wm_window_process_events(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_event_do_handlers(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_event_do_notifiers(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @wm_draw_update(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_remove_timer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!34 = !{!35, !36, i64 112}
!35 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !40, i64 160, !37, i64 162}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"short", !37, i64 0}
!41 = !{!42, !36, i64 16}
!42 = !{!"PointerRNA", !43, i64 0, !36, i64 8, !36, i64 16}
!43 = !{!"", !36, i64 0}
!44 = !{!35, !36, i64 80}
!45 = !{!36, !36, i64 0}
!46 = !{!35, !36, i64 120}
!47 = !{!48, !49, i64 24}
!48 = !{!"ReportList", !39, i64 0, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !36, i64 32}
!49 = !{!"int", !37, i64 0}
!50 = !{!35, !36, i64 128}
!51 = !{!35, !36, i64 0}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!35, !36, i64 88}
!55 = !{!56, !36, i64 88}
!56 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !57, i64 152, !40, i64 184}
!57 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!58 = !{!42, !36, i64 8}
!59 = !{!60, !36, i64 160}
!60 = !{!"wmWindowManager", !61, i64 0, !36, i64 120, !36, i64 128, !39, i64 136, !49, i64 152, !40, i64 156, !40, i64 158, !39, i64 160, !39, i64 176, !48, i64 192, !39, i64 232, !39, i64 248, !39, i64 264, !39, i64 280, !36, i64 296, !36, i64 304, !36, i64 312, !39, i64 320, !36, i64 336, !37, i64 344, !37, i64 345}
!61 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !40, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !36, i64 112}
!62 = distinct !{!62, !53}
!63 = distinct !{!63, !53}
!64 = !{!65, !36, i64 48}
!65 = !{!"wmEventHandler", !36, i64 0, !36, i64 8, !49, i64 16, !49, i64 20, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128}
!66 = !{!65, !49, i64 20}
!67 = distinct !{!67, !53}
!68 = distinct !{!68, !53}
!69 = distinct !{!69, !53}
!70 = !{!37, !37, i64 0}
!71 = !{i8 0, i8 2}
!72 = !{!73, !36, i64 128}
!73 = !{!"uiListType", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !57, i64 104}
!74 = !{!73, !36, i64 104}
!75 = distinct !{!75, !53}
!76 = !{!"wm.c:BLI_ghashIterator_done"}
!77 = !{!78, !36, i64 8}
!78 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !49, i64 16}
!79 = !{!"wm.c:BLI_ghashIterator_getValue"}
!80 = !{!81, !36, i64 16}
!81 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!82 = !{!83, !36, i64 256}
!83 = !{!"MenuType", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 144, !36, i64 208, !36, i64 216, !36, i64 224, !57, i64 232}
!84 = !{!83, !36, i64 232}
!85 = distinct !{!85, !53}
!86 = !{!60, !36, i64 296}
!87 = !{!60, !36, i64 304}
!88 = !{!60, !36, i64 312}
!89 = !{!60, !49, i64 152}
!90 = !{!91, !49, i64 164}
!91 = !{!"wmKeyConfig", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !39, i64 144, !49, i64 160, !49, i64 164}
!92 = !{!93, !36, i64 1552}
!93 = !{!"Main", !36, i64 0, !36, i64 8, !37, i64 16, !40, i64 1040, !40, i64 1042, !40, i64 1044, !40, i64 1046, !94, i64 1048, !37, i64 1056, !40, i64 1072, !36, i64 1080, !39, i64 1088, !39, i64 1104, !39, i64 1120, !39, i64 1136, !39, i64 1152, !39, i64 1168, !39, i64 1184, !39, i64 1200, !39, i64 1216, !39, i64 1232, !39, i64 1248, !39, i64 1264, !39, i64 1280, !39, i64 1296, !39, i64 1312, !39, i64 1328, !39, i64 1344, !39, i64 1360, !39, i64 1376, !39, i64 1392, !39, i64 1408, !39, i64 1424, !39, i64 1440, !39, i64 1456, !39, i64 1472, !39, i64 1488, !39, i64 1504, !39, i64 1520, !39, i64 1536, !39, i64 1552, !39, i64 1568, !39, i64 1584, !39, i64 1600, !39, i64 1616, !37, i64 1632, !36, i64 1888, !36, i64 1896}
!94 = !{!"long", !37, i64 0}
!95 = !{!96, !37, i64 2081}
!96 = !{!"Global", !36, i64 0, !37, i64 8, !37, i64 1032, !37, i64 2056, !37, i64 2057, !37, i64 2058, !39, i64 2064, !37, i64 2080, !37, i64 2081, !37, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !37, i64 2090, !40, i64 2092, !49, i64 2096, !49, i64 2100, !37, i64 2104, !49, i64 2108, !49, i64 2112, !37, i64 2116}
!97 = !{!"wm.c:BLI_listbase_is_empty"}
!98 = !{!39, !36, i64 0}
!99 = distinct !{!99, !53}
!100 = !{!101, !36, i64 24}
!101 = !{!"wmWindow", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !37, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !49, i64 128, !40, i64 132, !40, i64 134, !36, i64 136, !36, i64 144, !36, i64 152, !49, i64 160, !49, i64 164, !36, i64 168, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 240}
!102 = !{!101, !49, i64 128}
!103 = !{!104, !40, i64 212}
!104 = !{!"bScreen", !61, i64 0, !39, i64 120, !39, i64 136, !39, i64 152, !39, i64 168, !36, i64 184, !36, i64 192, !49, i64 200, !49, i64 204, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !40, i64 220, !40, i64 222, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !36, i64 232, !36, i64 240}
!105 = !{!60, !36, i64 128}
!106 = !{!60, !40, i64 156}
!107 = !{!60, !36, i64 336}
!108 = distinct !{!108, !53}
!109 = distinct !{!109, !53}
!110 = distinct !{!110, !53}
!111 = !{!"wm.c:wm_reports_free"}
!112 = !{!60, !36, i64 224}
!113 = distinct !{!113, !53}
