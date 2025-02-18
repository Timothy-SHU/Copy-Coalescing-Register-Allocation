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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_freestyle_config_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 1
  store i32 2, ptr %2, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 3
  store i32 0, ptr %3, align 8, !tbaa !42
  %4 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store float 0x3FB99999A0000000, ptr %4, align 4, !tbaa !43
  %5 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 5
  store float 0.000000e+00, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 6
  store float 0x4002C51CA0000000, ptr %6, align 4, !tbaa !45
  %7 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
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
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #8
  tail call void @BLI_freelistN(ptr noundef %0) #8
  ret void
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  %10 = load float, ptr %9, align 4, !tbaa !43
  %11 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 4
  store float %10, ptr %11, align 4, !tbaa !43
  %12 = getelementptr inbounds %struct.FreestyleConfig, ptr %1, i64 0, i32 5
  %13 = load float, ptr %12, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 5
  store float %13, ptr %14, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.FreestyleConfig, ptr %1, i64 0, i32 6
  %16 = load float, ptr %15, align 4, !tbaa !45
  %17 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 6
  store float %16, ptr %17, align 4, !tbaa !45
  %18 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct.FreestyleConfig, ptr %1, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %70, label %22

22:                                               ; preds = %2, %64
  %23 = phi ptr [ %68, %64 ], [ %20, %2 ]
  %24 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %25 = tail call ptr %24(i64 noundef 128, ptr noundef nonnull @.str.5) #8
  %26 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 13
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 13
  store ptr %27, ptr %28, align 8, !tbaa !53
  %29 = icmp eq ptr %27, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.ID, ptr %27, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !54
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !54
  br label %34

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 3
  store i32 %36, ptr %37, align 8, !tbaa !59
  %38 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !60
  %40 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 4
  store i32 %39, ptr %40, align 4, !tbaa !60
  %41 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 5
  %42 = load i16, ptr %41, align 8, !tbaa !61
  %43 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 5
  store i16 %42, ptr %43, align 8, !tbaa !61
  %44 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !62
  %46 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 7
  store i32 %45, ptr %46, align 4, !tbaa !62
  %47 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !63
  %49 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 8
  store i32 %48, ptr %49, align 8, !tbaa !63
  %50 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !64
  %52 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 9
  store i32 %51, ptr %52, align 4, !tbaa !64
  %53 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 10
  %54 = load i32, ptr %53, align 8, !tbaa !65
  %55 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 10
  store i32 %54, ptr %55, align 8, !tbaa !65
  %56 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 12
  %57 = load ptr, ptr %56, align 8, !tbaa !47
  %58 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 12
  store ptr %57, ptr %58, align 8, !tbaa !47
  %59 = icmp eq ptr %57, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %34
  %61 = getelementptr inbounds %struct.ID, ptr %57, i64 0, i32 6
  %62 = load i32, ptr %61, align 4, !tbaa !50
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %61, align 4, !tbaa !50
  br label %64

64:                                               ; preds = %34, %60
  %65 = getelementptr inbounds %struct.FreestyleLineSet, ptr %25, i64 0, i32 2
  %66 = getelementptr inbounds %struct.FreestyleLineSet, ptr %23, i64 0, i32 2
  %67 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) %66) #8
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %25) #8
  %68 = load ptr, ptr %23, align 8, !tbaa !46
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %22, !llvm.loop !66

70:                                               ; preds = %64, %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %71 = load ptr, ptr %1, align 8, !tbaa !46
  %72 = icmp eq ptr %71, null
  br i1 %72, label %85, label %73

73:                                               ; preds = %70, %73
  %74 = phi ptr [ %83, %73 ], [ %71, %70 ]
  %75 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %76 = tail call ptr %75(i64 noundef 32, ptr noundef nonnull @.str.4) #8
  %77 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %74, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !67
  %79 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %76, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !67
  %80 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %74, i64 0, i32 3
  %81 = load i16, ptr %80, align 8, !tbaa !69
  %82 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %76, i64 0, i32 3
  store i16 %81, ptr %82, align 8, !tbaa !69
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %76) #8
  %83 = load ptr, ptr %74, align 8, !tbaa !46
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %73, !llvm.loop !70

85:                                               ; preds = %73, %70
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_freestyle_module_add(ptr noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %3 = tail call ptr %2(i64 noundef 32, ptr noundef nonnull @.str.4) #8
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %3, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %3, i64 0, i32 3
  store i16 1, ptr %5, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_freestyle_module_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @BLI_freelinkN(ptr noundef %0, ptr noundef %1) #8
  br label %6

6:                                                ; preds = %2, %5
  %7 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %7
}

declare i32 @BLI_findindex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelinkN(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_freestyle_module_move_up(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #8
  %6 = getelementptr inbounds %struct.FreestyleModuleConfig, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  tail call void @BLI_insertlinkbefore(ptr noundef %0, ptr noundef %7, ptr noundef %1) #8
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %9
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_freestyle_module_move_down(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = tail call i32 @BLI_findindex(ptr noundef %0, ptr noundef %1) #8
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  tail call void @BLI_remlink(ptr noundef %0, ptr noundef %1) #8
  %6 = load ptr, ptr %1, align 8, !tbaa !72
  tail call void @BLI_insertlinkafter(ptr noundef %0, ptr noundef %6, ptr noundef nonnull %1) #8
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %2 ]
  ret i8 %8
}

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_freestyle_lineset_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  ret void
}

declare void @BLI_uniquename(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BKE_freestyle_lineset_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %4 = tail call i32 @BLI_countlist(ptr noundef nonnull %3) #8
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !46
  %6 = tail call ptr %5(i64 noundef 128, ptr noundef nonnull @.str.5) #8
  tail call void @BLI_addtail(ptr noundef nonnull %3, ptr noundef %6) #8
  %7 = trunc i32 %4 to i16
  %8 = load ptr, ptr %3, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %2, %10
  %11 = phi ptr [ %20, %10 ], [ %8, %2 ]
  %12 = phi i16 [ %19, %10 ], [ 0, %2 ]
  %13 = icmp eq i16 %12, %7
  %14 = getelementptr inbounds %struct.FreestyleLineSet, ptr %11, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = and i32 %15, -2
  %17 = zext i1 %13 to i32
  %18 = or disjoint i32 %16, %17
  store i32 %18, ptr %14, align 8, !tbaa !59
  %19 = add i16 %12, 1
  %20 = load ptr, ptr %11, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !73

22:                                               ; preds = %10, %2
  %23 = tail call ptr @BKE_linestyle_new(ptr noundef nonnull @.str.1, ptr noundef null) #8
  %24 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 13
  store ptr %23, ptr %24, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !59
  %27 = or i32 %26, 2
  store i32 %27, ptr %25, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 4
  store i32 11, ptr %28, align 4, !tbaa !60
  %29 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 5
  store i16 1, ptr %29, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 7
  store i32 0, ptr %30, align 4, !tbaa !62
  %31 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 8
  store i32 100, ptr %31, align 8, !tbaa !63
  %32 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 9
  store i32 7, ptr %32, align 4, !tbaa !64
  %33 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 10
  store i32 0, ptr %33, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 12
  store ptr null, ptr %34, align 8, !tbaa !47
  %35 = icmp eq ptr %1, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 2
  %38 = tail call ptr @BLI_strncpy(ptr noundef nonnull %37, ptr noundef nonnull %1, i64 noundef 64) #8
  br label %46

39:                                               ; preds = %22
  %40 = icmp sgt i32 %4, 0
  %41 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 2
  br i1 %40, label %42, label %45

42:                                               ; preds = %39
  %43 = add nuw nsw i32 %4, 1
  %44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %43) #8
  br label %46

45:                                               ; preds = %39
  store i64 32762506156861772, ptr %41, align 1
  br label %46

46:                                               ; preds = %42, %45, %36
  tail call void @BLI_uniquename(ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull @.str, i8 noundef zeroext 46, i32 noundef 16, i32 noundef 64) #8
  ret ptr %6
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BKE_freestyle_lineset_set_active_index(ptr nocapture noundef readonly %0, i16 noundef signext %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %16, %6 ], [ %4, %2 ]
  %8 = phi i16 [ %15, %6 ], [ 0, %2 ]
  %9 = icmp eq i16 %8, %1
  %10 = getelementptr inbounds %struct.FreestyleLineSet, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !59
  %12 = and i32 %11, -2
  %13 = zext i1 %9 to i32
  %14 = or disjoint i32 %12, %13
  store i32 %14, ptr %10, align 8, !tbaa !59
  %15 = add i16 %8, 1
  %16 = load ptr, ptr %7, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !73

18:                                               ; preds = %6, %2
  ret void
}

declare ptr @BKE_linestyle_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_freestyle_lineset_delete(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %4 = tail call i32 @BLI_findindex(ptr noundef nonnull %3, ptr noundef %1) #8
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %38, label %6

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
  tail call void @BLI_remlink(ptr noundef nonnull %3, ptr noundef %1) #8
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !46
  tail call void %23(ptr noundef %1) #8
  %24 = load ptr, ptr %3, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %36, %26 ], [ %24, %22 ]
  %28 = phi i16 [ %35, %26 ], [ 0, %22 ]
  %29 = icmp eq i16 %28, 0
  %30 = getelementptr inbounds %struct.FreestyleLineSet, ptr %27, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !59
  %32 = and i32 %31, -2
  %33 = zext i1 %29 to i32
  %34 = or disjoint i32 %32, %33
  store i32 %34, ptr %30, align 8, !tbaa !59
  %35 = add i16 %28, 1
  %36 = load ptr, ptr %27, align 8, !tbaa !46
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %26, !llvm.loop !73

38:                                               ; preds = %26, %22, %2
  %39 = phi i8 [ 0, %2 ], [ 1, %22 ], [ 1, %26 ]
  ret i8 %39
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_freestyle_lineset_get_active(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  br label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %7 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.FreestyleLineSet, ptr %5, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %3, label %12, !llvm.loop !74

12:                                               ; preds = %3, %7
  %13 = phi ptr [ %5, %7 ], [ null, %3 ]
  ret ptr %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local signext i16 @BKE_freestyle_lineset_get_active_index(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.FreestyleConfig, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %14, %12 ], [ %3, %1 ]
  %7 = phi i16 [ %13, %12 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.FreestyleLineSet, ptr %6, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = add i16 %7, 1
  %14 = load ptr, ptr %6, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !75

16:                                               ; preds = %5, %12, %1
  %17 = phi i16 [ 0, %1 ], [ %7, %5 ], [ 0, %12 ]
  ret i16 %17
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!34 = !{!35, !40, i64 16}
!35 = !{!"FreestyleConfig", !36, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !36, i64 40}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"float", !38, i64 0}
!42 = !{!35, !40, i64 24}
!43 = !{!35, !41, i64 28}
!44 = !{!35, !41, i64 32}
!45 = !{!35, !41, i64 36}
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
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!48, !40, i64 80}
!60 = !{!48, !40, i64 84}
!61 = !{!48, !49, i64 88}
!62 = !{!48, !40, i64 92}
!63 = !{!48, !40, i64 96}
!64 = !{!48, !40, i64 100}
!65 = !{!48, !40, i64 104}
!66 = distinct !{!66, !57, !58}
!67 = !{!68, !37, i64 16}
!68 = !{!"FreestyleModuleConfig", !37, i64 0, !37, i64 8, !37, i64 16, !49, i64 24, !38, i64 26}
!69 = !{!68, !49, i64 24}
!70 = distinct !{!70, !57, !58}
!71 = !{!68, !37, i64 8}
!72 = !{!68, !37, i64 0}
!73 = distinct !{!73, !57, !58}
!74 = distinct !{!74, !57, !58}
!75 = distinct !{!75, !57, !58}
