; ModuleID = 'blender/source/blender/blenkernel/intern/freestyle.c'
source_filename = "blender/source/blender/blenkernel/intern/freestyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FreestyleConfig = type { %struct.ListBase, i32, i32, i32, float, float, float, %struct.ListBase }
%struct.ListBase = type { ptr, ptr }
%struct.FreestyleLineSet = type { ptr, ptr, [64 x i8], i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.FreestyleModuleConfig = type { ptr, ptr, ptr, i16, [3 x i16] }

@.str = private unnamed_addr constant [17 x i8] c"FreestyleLineSet\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"LineStyle\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"LineSet %i\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"style module configuration\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Freestyle line set\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @BKE_freestyle_config_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 1
  store i32 2, ptr %2, align 8, !tbaa !34
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 4
  store <2 x float> <float 0x3FB99999A0000000, float 0.000000e+00>, ptr %4, align 4, !tbaa !43
  %5 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 6
  store float 0x4002C51CA0000000, ptr %5, align 4, !tbaa !44
  %6 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %6) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !45 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_freestyle_config_free(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %1, %22
  %6 = phi ptr [ %23, %22 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %11, align 4, !tbaa !50
  store ptr null, ptr %7, align 8, !tbaa !47
  br label %14

14:                                               ; preds = %10, %5
  %15 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !54
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4, !tbaa !54
  store ptr null, ptr %15, align 8, !tbaa !53
  br label %22

22:                                               ; preds = %14, %18
  %23 = load ptr, ptr %6, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5, !llvm.loop !56

25:                                               ; preds = %22, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #11
  tail call void @BLI_freelistN(ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_freestyle_config_copy(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 1
  store i32 %4, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds %struct.FreestyleConfig, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 3
  store i32 %7, ptr %8, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.FreestyleConfig, ptr %1, i64 0, i32 4
  %10 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 4
  %11 = load <2 x float>, ptr %9, align 4, !tbaa !43
  store <2 x float> %11, ptr %10, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.FreestyleConfig, ptr %1, i64 0, i32 6
  %13 = load float, ptr %12, align 4, !tbaa !44
  %14 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 6
  store float %13, ptr %14, align 4, !tbaa !44
  %15 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %15) #10
  %16 = getelementptr inbounds %struct.FreestyleConfig, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2, %19
  %20 = phi ptr [ %22, %19 ], [ %17, %2 ]
  %21 = tail call fastcc ptr @alloc_lineset() #10
  tail call fastcc void @copy_lineset(ptr noundef %21, ptr noundef nonnull %20) #10
  tail call void @BLI_addtail(ptr noundef nonnull %15, ptr noundef %21) #11
  %22 = load ptr, ptr %20, align 8, !tbaa !46
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %19, !llvm.loop !58

24:                                               ; preds = %19, %2
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #10
  %25 = load ptr, ptr %1, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %30, %27 ], [ %25, %24 ]
  %29 = tail call fastcc ptr @alloc_module() #10
  tail call fastcc void @copy_module(ptr noundef %29, ptr noundef nonnull %28) #10
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %29) #11
  %30 = load ptr, ptr %28, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %27, !llvm.loop !59

32:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_lineset() unnamed_addr #1 !PGOFuncName !60 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %2 = tail call ptr %1(i64 noundef 128, ptr noundef nonnull @.str.5) #11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copy_lineset(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !61 {
  %3 = getelementptr inbounds %struct.FreestyleLineSet, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.FreestyleLineSet, ptr %0, i64 0, i32 13
  store ptr %4, ptr %5, align 8, !tbaa !53
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !54
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !54
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %struct.FreestyleLineSet, ptr %1, i64 0, i32 3
  %13 = getelementptr inbounds %struct.FreestyleLineSet, ptr %0, i64 0, i32 3
  %14 = load <2 x i32>, ptr %12, align 8, !tbaa !62
  store <2 x i32> %14, ptr %13, align 8, !tbaa !62
  %15 = getelementptr inbounds %struct.FreestyleLineSet, ptr %1, i64 0, i32 5
  %16 = load i16, ptr %15, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct.FreestyleLineSet, ptr %0, i64 0, i32 5
  store i16 %16, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.FreestyleLineSet, ptr %1, i64 0, i32 7
  %19 = getelementptr inbounds %struct.FreestyleLineSet, ptr %0, i64 0, i32 7
  %20 = load <4 x i32>, ptr %18, align 4, !tbaa !62
  store <4 x i32> %20, ptr %19, align 4, !tbaa !62
  %21 = getelementptr inbounds %struct.FreestyleLineSet, ptr %1, i64 0, i32 12
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.FreestyleLineSet, ptr %0, i64 0, i32 12
  store ptr %22, ptr %23, align 8, !tbaa !47
  %24 = icmp eq ptr %22, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %11
  %26 = getelementptr inbounds %struct.ID, ptr %22, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 4, !tbaa !50
  br label %29

29:                                               ; preds = %25, %11
  %30 = getelementptr inbounds %struct.FreestyleLineSet, ptr %0, i64 0, i32 2
  %31 = getelementptr inbounds %struct.FreestyleLineSet, ptr %1, i64 0, i32 2
  %32 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(1) %31) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alloc_module() unnamed_addr #1 !PGOFuncName !64 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %2 = tail call ptr %1(i64 noundef 32, ptr noundef nonnull @.str.4) #11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_module(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 !PGOFuncName !65 {
  %3 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !66
  %6 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %1, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %0, i64 0, i32 3
  store i16 %7, ptr %8, align 8, !tbaa !68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_freestyle_module_add(ptr noundef %0) local_unnamed_addr #1 {
  %2 = tail call fastcc ptr @alloc_module() #10
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %2, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %2, i64 0, i32 3
  store i16 1, ptr %4, align 8, !tbaa !68
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_freestyle_module_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef %1) #11
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %7
}

; Function Attrs: optsize
declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_freestyle_module_move_up(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #11
  %6 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !69
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef %7, ptr noundef %1) #11
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %9
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_freestyle_module_move_down(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #11
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #11
  %6 = load ptr, ptr %1, align 8, !tbaa !70
  tail call void @BLI_insertlinkafter(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %1) #11
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %8
}

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_freestyle_lineset_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_freestyle_lineset_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %4 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #11
  %5 = tail call fastcc ptr @alloc_lineset() #10
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %5) #11
  %6 = trunc i32 %4 to i16
  tail call void @BKE_freestyle_lineset_set_active_index(ptr noundef %0, i16 noundef signext %6) #10
  %7 = tail call ptr @BKE_linestyle_new(ptr noundef nonnull @.str.1, ptr noundef null) #11
  %8 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 13
  store ptr %7, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = or i32 %10, 2
  store i32 %11, ptr %9, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 4
  store i32 11, ptr %12, align 4, !tbaa !72
  %13 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 5
  store i16 1, ptr %13, align 8, !tbaa !63
  %14 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 7
  store <4 x i32> <i32 0, i32 100, i32 7, i32 0>, ptr %14, align 4, !tbaa !62
  %15 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 12
  store ptr null, ptr %15, align 8, !tbaa !47
  %16 = icmp eq ptr %1, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 2
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %18, ptr noundef nonnull %1, i64 noundef 64) #11
  br label %27

20:                                               ; preds = %2
  %21 = icmp sgt i32 %4, 0
  %22 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 2
  br i1 %21, label %23, label %26

23:                                               ; preds = %20
  %24 = add nuw nsw i32 %4, 1
  %25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %24) #11
  br label %27

26:                                               ; preds = %20
  store i64 32762506156861772, ptr %22, align 1
  br label %27

27:                                               ; preds = %23, %26, %17
  tail call void @BKE_freestyle_lineset_unique_name(ptr noundef %0, ptr noundef nonnull %5) #10
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_freestyle_lineset_set_active_index(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %16, %6 ], [ %4, %2 ]
  %8 = phi i16 [ %15, %6 ], [ 0, %2 ]
  %9 = icmp eq i16 %8, %1
  %10 = getelementptr inbounds %struct.FreestyleLineSet, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !71
  %12 = and i32 %11, -2
  %13 = zext i1 %9 to i32
  %14 = or disjoint i32 %12, %13
  store i32 %14, ptr %10, align 8, !tbaa !71
  %15 = add i16 %8, 1
  %16 = load ptr, ptr %7, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !73

18:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_linestyle_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_freestyle_lineset_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #11
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.FreestyleLineSet, ptr %1, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ID, ptr %8, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = add nsw i32 %12, -1
  store i32 %13, ptr %11, align 4, !tbaa !50
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.FreestyleLineSet, ptr %1, i64 0, i32 13
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ID, ptr %16, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !54
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4, !tbaa !54
  br label %22

22:                                               ; preds = %18, %14
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef nonnull %1) #11
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %23(ptr noundef nonnull %1) #11
  tail call void @BKE_freestyle_lineset_set_active_index(ptr noundef %0, i16 noundef signext 0) #10
  br label %24

24:                                               ; preds = %2, %22
  %25 = phi i8 [ 1, %22 ], [ 0, %2 ]
  ret i8 %25
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_freestyle_lineset_get_active(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !71
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !74

12:                                               ; preds = %3, %7
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @BKE_freestyle_lineset_get_active_index(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = phi i16 [ %13, %12 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !71
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = add i16 %7, 1
  %14 = load ptr, ptr %6, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !75

16:                                               ; preds = %5, %12, %1
  %17 = phi i16 [ 0, %1 ], [ 0, %12 ], [ %7, %5 ]
  ret i16 %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

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
!34 = !{!35, !40, i64 16}
!35 = !{!"FreestyleConfig", !36, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !40, i64 24}
!43 = !{!41, !41, i64 0}
!44 = !{!35, !41, i64 36}
!45 = !{!"freestyle.c:BLI_listbase_clear"}
!46 = !{!37, !37, i64 0}
!47 = !{!48, !37, i64 112}
!48 = !{!"FreestyleLineSet", !37, i64 0, !37, i64 8, !38, i64 16, !40, i64 80, !40, i64 84, !49, i64 88, !49, i64 90, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112, !37, i64 120}
!49 = !{!"short", !38, i64 0}
!50 = !{!51, !40, i64 100}
!51 = !{!"Group", !52, i64 0, !36, i64 120, !40, i64 136, !38, i64 140}
!52 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !49, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !37, i64 112}
!53 = !{!48, !37, i64 120}
!54 = !{!55, !40, i64 100}
!55 = !{!"FreestyleLineStyle", !52, i64 0, !37, i64 120, !41, i64 128, !41, i64 132, !41, i64 136, !41, i64 140, !41, i64 144, !40, i64 148, !41, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !40, i64 192, !49, i64 196, !49, i64 198, !49, i64 200, !49, i64 202, !49, i64 204, !49, i64 206, !40, i64 208, !40, i64 212, !41, i64 216, !49, i64 220, !49, i64 222, !49, i64 224, !38, i64 226, !49, i64 232, !49, i64 234, !49, i64 236, !49, i64 238, !49, i64 240, !49, i64 242, !40, i64 244, !38, i64 248, !37, i64 392, !36, i64 400, !36, i64 416, !36, i64 432, !36, i64 448}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !57}
!60 = !{!"freestyle.c:alloc_lineset"}
!61 = !{!"freestyle.c:copy_lineset"}
!62 = !{!40, !40, i64 0}
!63 = !{!48, !49, i64 88}
!64 = !{!"freestyle.c:alloc_module"}
!65 = !{!"freestyle.c:copy_module"}
!66 = !{!67, !37, i64 16}
!67 = !{!"FreestyleModuleConfig", !37, i64 0, !37, i64 8, !37, i64 16, !49, i64 24, !38, i64 26}
!68 = !{!67, !49, i64 24}
!69 = !{!67, !37, i64 8}
!70 = !{!67, !37, i64 0}
!71 = !{!48, !40, i64 80}
!72 = !{!48, !40, i64 84}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !57}
!75 = distinct !{!75, !57}
