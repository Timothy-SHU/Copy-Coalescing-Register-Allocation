; ModuleID = 'blender/source/blender/blenkernel/intern/deform.c'
source_filename = "blender/source/blender/blenkernel/intern/deform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.MDeformWeight = type { i32, float }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.anon.0 = type { ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BKE_defgroup_new = private unnamed_addr constant [17 x i8] c"BKE_defgroup_new\00", align 1
@.str = private unnamed_addr constant [17 x i8] c"copy deformGroup\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.defgroup_flip_map = private unnamed_addr constant [18 x i8] c"defgroup_flip_map\00", align 1
@__func__.defgroup_flip_map_single = private unnamed_addr constant [25 x i8] c"defgroup_flip_map_single\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LEFT\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"RIGHT\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"deformWeight\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"defvert_add_to group, new deformWeight\00", align 1
@__func__.defvert_remove_group = private unnamed_addr constant [21 x i8] c"defvert_remove_group\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"copy_deformWeight\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_defgroup_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 88, ptr noundef nonnull @__func__.BKE_defgroup_new) #12
  %5 = getelementptr inbounds %struct.bDeformGroup, ptr %4, i64 0, i32 2
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef %1, i64 noundef 64) #12
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %4) #12
  tail call void @defgroup_unique_name(ptr noundef %4, ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defgroup_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.bDeformGroup, ptr %0, i64 0, i32 2
  %6 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @defgroup_unique_check, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i8 noundef zeroext 46, ptr noundef nonnull %5, i32 noundef 64) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defgroup_copy_list(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call fastcc void @BLI_listbase_clear(ptr noundef %0) #13
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call ptr @defgroup_duplicate(ptr noundef nonnull %6) #13
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %7) #12
  %8 = load ptr, ptr %6, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !41

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #3 !PGOFuncName !43 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @defgroup_duplicate(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 88, ptr noundef nonnull @.str) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_copy_subset(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = zext nneg i32 %3 to i64
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi i64 [ 0, %6 ], [ %16, %15 ]
  %10 = getelementptr inbounds i8, ptr %2, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !44
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = trunc i64 %9 to i32
  tail call void @defvert_copy_index(ptr noundef %0, ptr noundef %1, i32 noundef %14) #13
  br label %15

15:                                               ; preds = %8, %13
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %8, !llvm.loop !45

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_copy_index(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @defvert_find_index(ptr noundef %1, i32 noundef %2) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @defvert_verify_index(ptr noundef %0, i32 noundef %2) #13
  %8 = getelementptr inbounds %struct.MDeformWeight, ptr %4, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !46
  br label %13

10:                                               ; preds = %3
  %11 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %2) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %7, %6 ], [ %11, %10 ]
  %15 = phi float [ %9, %6 ], [ 0.000000e+00, %10 ]
  %16 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 0, i32 1
  store float %15, ptr %16, align 4, !tbaa !46
  br label %17

17:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !50
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  %12 = load ptr, ptr %1, align 8, !tbaa !52
  %13 = sext i32 %4 to i64
  %14 = shl nsw i64 %13, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %12, i64 %14, i1 false)
  br label %32

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #12
  %20 = load i32, ptr %5, align 8, !tbaa !50
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %20, %18 ], [ %6, %15 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %26 = load ptr, ptr %1, align 8, !tbaa !52
  %27 = tail call ptr %25(ptr noundef %26) #12
  %28 = load i32, ptr %5, align 8, !tbaa !50
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %28, %24 ], [ 0, %21 ]
  %31 = phi ptr [ %27, %24 ], [ null, %21 ]
  store ptr %31, ptr %0, align 8, !tbaa !52
  store i32 %30, ptr %3, align 8, !tbaa !50
  br label %32

32:                                               ; preds = %8, %10, %29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @defvert_find_index(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp ne ptr %0, null
  %4 = icmp sgt i32 %1, -1
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  br label %12

12:                                               ; preds = %10, %17
  %13 = phi i32 [ %18, %17 ], [ %8, %10 ]
  %14 = phi ptr [ %19, %17 ], [ %11, %10 ]
  %15 = load i32, ptr %14, align 4, !tbaa !53
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = add i32 %13, -1
  %19 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %12, !llvm.loop !54

21:                                               ; preds = %12, %17, %6, %2
  %22 = phi ptr [ null, %2 ], [ null, %6 ], [ %14, %12 ], [ null, %17 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @defvert_verify_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp slt i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @defvert_find_index(ptr noundef nonnull %0, i32 noundef %1) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %6
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = tail call ptr %10(i64 noundef %15, ptr noundef nonnull @.str.13) #12
  %17 = load ptr, ptr %0, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %9
  %20 = load i32, ptr %11, align 8, !tbaa !50
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %16, ptr nonnull align 4 %17, i64 %22, i1 false)
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %24 = load ptr, ptr %0, align 8, !tbaa !52
  tail call void %23(ptr noundef %24) #12
  br label %25

25:                                               ; preds = %19, %9
  store ptr %16, ptr %0, align 8, !tbaa !52
  %26 = load i32, ptr %11, align 8, !tbaa !50
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.MDeformWeight, ptr %16, i64 %27
  %29 = getelementptr inbounds %struct.MDeformWeight, ptr %16, i64 %27, i32 1
  store float 0.000000e+00, ptr %29, align 4, !tbaa !46
  store i32 %1, ptr %28, align 4, !tbaa !53
  %30 = add nsw i32 %26, 1
  store i32 %30, ptr %11, align 8, !tbaa !50
  br label %31

31:                                               ; preds = %6, %2, %25
  %32 = phi ptr [ %28, %25 ], [ null, %2 ], [ %7, %6 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_sync(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %36, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = icmp ne i32 %9, 0
  %11 = icmp sgt i32 %5, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8, !tbaa !52
  %15 = icmp eq i8 %2, 0
  br label %16

16:                                               ; preds = %13, %31
  %17 = phi ptr [ %14, %13 ], [ %33, %31 ]
  %18 = phi i32 [ 0, %13 ], [ %32, %31 ]
  %19 = load i32, ptr %17, align 4, !tbaa !53
  br i1 %15, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @defvert_verify_index(ptr noundef %0, i32 noundef %19) #13
  br label %24

22:                                               ; preds = %16
  %23 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %19) #13
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ]
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.MDeformWeight, ptr %17, i64 0, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !46
  %30 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 0, i32 1
  store float %29, ptr %30, align 4, !tbaa !46
  br label %31

31:                                               ; preds = %27, %24
  %32 = add nuw nsw i32 %18, 1
  %33 = getelementptr inbounds %struct.MDeformWeight, ptr %17, i64 1
  %34 = load i32, ptr %4, align 8, !tbaa !50
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %16, label %36, !llvm.loop !55

36:                                               ; preds = %31, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_sync_mapped(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !50
  %12 = icmp ne i32 %11, 0
  %13 = icmp sgt i32 %7, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 8, !tbaa !52
  %17 = icmp eq i8 %4, 0
  br label %18

18:                                               ; preds = %15, %38
  %19 = phi ptr [ %16, %15 ], [ %40, %38 ]
  %20 = phi i32 [ 0, %15 ], [ %39, %38 ]
  %21 = load i32, ptr %19, align 4, !tbaa !53
  %22 = icmp slt i32 %21, %3
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i32, ptr %2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !56
  br i1 %17, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @defvert_verify_index(ptr noundef %0, i32 noundef %26) #13
  br label %31

29:                                               ; preds = %23
  %30 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %26) #13
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi ptr [ %28, %27 ], [ %30, %29 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.MDeformWeight, ptr %19, i64 0, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !46
  %37 = getelementptr inbounds %struct.MDeformWeight, ptr %32, i64 0, i32 1
  store float %36, ptr %37, align 4, !tbaa !46
  br label %38

38:                                               ; preds = %31, %34, %18
  %39 = add nuw nsw i32 %20, 1
  %40 = getelementptr inbounds %struct.MDeformWeight, ptr %19, i64 1
  %41 = load i32, ptr %6, align 8, !tbaa !50
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %18, label %43, !llvm.loop !57

43:                                               ; preds = %38, %9, %5
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_remap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i32 [ %19, %18 ], [ %5, %7 ]
  %11 = phi ptr [ %20, %18 ], [ %8, %7 ]
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %1, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !56
  store i32 %17, ptr %11, align 4, !tbaa !53
  br label %18

18:                                               ; preds = %9, %14
  %19 = add i32 %10, -1
  %20 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 1
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %9, !llvm.loop !58

22:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_normalize_subset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  switch i32 %5, label %17 [
    i32 0, label %67
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = icmp slt i32 %8, %2
  br i1 %9, label %10, label %67

10:                                               ; preds = %6
  %11 = sext i32 %8 to i64
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !44
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %67, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.MDeformWeight, ptr %7, i64 0, i32 1
  store float 1.000000e+00, ptr %16, align 4, !tbaa !46
  br label %67

17:                                               ; preds = %3
  %18 = load ptr, ptr %0, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %17, %34
  %20 = phi ptr [ %18, %17 ], [ %37, %34 ]
  %21 = phi float [ 0.000000e+00, %17 ], [ %35, %34 ]
  %22 = phi i32 [ %5, %17 ], [ %36, %34 ]
  %23 = load i32, ptr %20, align 4, !tbaa !53
  %24 = icmp slt i32 %23, %2
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !44
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.MDeformWeight, ptr %20, i64 0, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !46
  %33 = fadd float %21, %32
  br label %34

34:                                               ; preds = %19, %25, %30
  %35 = phi float [ %33, %30 ], [ %21, %25 ], [ %21, %19 ]
  %36 = add i32 %22, -1
  %37 = getelementptr inbounds %struct.MDeformWeight, ptr %20, i64 1
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %19, !llvm.loop !59

39:                                               ; preds = %34
  %40 = fcmp ogt float %35, 0.000000e+00
  br i1 %40, label %41, label %67

41:                                               ; preds = %39
  %42 = fdiv float 1.000000e+00, %35
  %43 = icmp eq i32 %5, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %41, %63
  %45 = phi ptr [ %65, %63 ], [ %18, %41 ]
  %46 = phi i32 [ %64, %63 ], [ %5, %41 ]
  %47 = load i32, ptr %45, align 4, !tbaa !53
  %48 = icmp slt i32 %47, %2
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = sext i32 %47 to i64
  %51 = getelementptr inbounds i8, ptr %1, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !44
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.MDeformWeight, ptr %45, i64 0, i32 1
  %56 = load float, ptr %55, align 4, !tbaa !46
  %57 = fmul float %42, %56
  store float %57, ptr %55, align 4, !tbaa !46
  %58 = fcmp olt float %57, 0.000000e+00
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = fcmp ogt float %57, 1.000000e+00
  br i1 %60, label %61, label %63

61:                                               ; preds = %59, %54
  %62 = phi float [ 0.000000e+00, %54 ], [ 1.000000e+00, %59 ]
  store float %62, ptr %55, align 4, !tbaa !46
  br label %63

63:                                               ; preds = %61, %44, %49, %59
  %64 = add i32 %46, -1
  %65 = getelementptr inbounds %struct.MDeformWeight, ptr %45, i64 1
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %67, label %44, !llvm.loop !60

67:                                               ; preds = %63, %41, %39, %6, %10, %15, %3
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_normalize(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !50
  switch i32 %3, label %7 [
    i32 0, label %39
    i32 1, label %4
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.MDeformWeight, ptr %5, i64 0, i32 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !46
  br label %39

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %8, %7 ], [ %17, %9 ]
  %11 = phi float [ 0.000000e+00, %7 ], [ %15, %9 ]
  %12 = phi i32 [ %3, %7 ], [ %16, %9 ]
  %13 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 0, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !46
  %15 = fadd float %11, %14
  %16 = add i32 %12, -1
  %17 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 1
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %9, !llvm.loop !61

19:                                               ; preds = %9
  %20 = fcmp ogt float %15, 0.000000e+00
  br i1 %20, label %21, label %39

21:                                               ; preds = %19
  %22 = fdiv float 1.000000e+00, %15
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %21, %35
  %25 = phi ptr [ %37, %35 ], [ %8, %21 ]
  %26 = phi i32 [ %36, %35 ], [ %3, %21 ]
  %27 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !46
  %29 = fmul float %22, %28
  store float %29, ptr %27, align 4, !tbaa !46
  %30 = fcmp olt float %29, 0.000000e+00
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = fcmp ogt float %29, 1.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %31, %24
  %34 = phi float [ 0.000000e+00, %24 ], [ 1.000000e+00, %31 ]
  store float %34, ptr %27, align 4, !tbaa !46
  br label %35

35:                                               ; preds = %33, %31
  %36 = add i32 %26, -1
  %37 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 1
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %24, !llvm.loop !62

39:                                               ; preds = %35, %21, %19, %1, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_normalize_lock_single(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !50
  switch i32 %6, label %20 [
    i32 0, label %85
    i32 1, label %7
  ]

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = load i32, ptr %8, align 4, !tbaa !53
  %10 = icmp slt i32 %9, %2
  br i1 %10, label %11, label %85

11:                                               ; preds = %7
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !44
  %15 = icmp ne i8 %14, 0
  %16 = icmp ne i32 %3, 0
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %85

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.MDeformWeight, ptr %8, i64 0, i32 1
  store float 1.000000e+00, ptr %19, align 4, !tbaa !46
  br label %85

20:                                               ; preds = %4
  %21 = load ptr, ptr %0, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %20, %47
  %23 = phi ptr [ null, %20 ], [ %50, %47 ]
  %24 = phi float [ 1.000000e+00, %20 ], [ %49, %47 ]
  %25 = phi float [ 0.000000e+00, %20 ], [ %48, %47 ]
  %26 = phi i32 [ %6, %20 ], [ %51, %47 ]
  %27 = phi ptr [ %21, %20 ], [ %52, %47 ]
  %28 = load i32, ptr %27, align 4, !tbaa !53
  %29 = icmp slt i32 %28, %2
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !44
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = icmp eq i32 %28, %3
  %37 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 0, i32 1
  %38 = load float, ptr %37, align 4, !tbaa !46
  br i1 %36, label %41, label %39

39:                                               ; preds = %35
  %40 = fadd float %25, %38
  br label %47

41:                                               ; preds = %35
  %42 = fsub float 1.000000e+00, %38
  %43 = fcmp olt float %42, 0.000000e+00
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = fcmp ogt float %42, 1.000000e+00
  br i1 %45, label %46, label %47

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %41, %22, %30, %46, %44, %39
  %48 = phi float [ %40, %39 ], [ %25, %46 ], [ %25, %44 ], [ %25, %30 ], [ %25, %22 ], [ %25, %41 ]
  %49 = phi float [ %24, %39 ], [ 1.000000e+00, %46 ], [ %42, %44 ], [ %24, %30 ], [ %24, %22 ], [ 0.000000e+00, %41 ]
  %50 = phi ptr [ %23, %39 ], [ %27, %46 ], [ %27, %44 ], [ %23, %30 ], [ %23, %22 ], [ %27, %41 ]
  %51 = add i32 %26, -1
  %52 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 1
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %22, !llvm.loop !63

54:                                               ; preds = %47
  %55 = fcmp ogt float %48, 0.000000e+00
  br i1 %55, label %56, label %85

56:                                               ; preds = %54
  %57 = fdiv float 1.000000e+00, %48
  %58 = fmul float %57, %49
  %59 = icmp eq i32 %6, 0
  br i1 %59, label %85, label %60

60:                                               ; preds = %56, %81
  %61 = phi i32 [ %82, %81 ], [ %6, %56 ]
  %62 = phi ptr [ %83, %81 ], [ %21, %56 ]
  %63 = load i32, ptr %62, align 4, !tbaa !53
  %64 = icmp slt i32 %63, %2
  br i1 %64, label %65, label %81

65:                                               ; preds = %60
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds i8, ptr %1, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !44
  %69 = icmp eq i8 %68, 0
  %70 = icmp eq ptr %62, %50
  %71 = select i1 %69, i1 true, i1 %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.MDeformWeight, ptr %62, i64 0, i32 1
  %74 = load float, ptr %73, align 4, !tbaa !46
  %75 = fmul float %58, %74
  store float %75, ptr %73, align 4, !tbaa !46
  %76 = fcmp olt float %75, 0.000000e+00
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = fcmp ogt float %75, 1.000000e+00
  br i1 %78, label %79, label %81

79:                                               ; preds = %77, %72
  %80 = phi float [ 0.000000e+00, %72 ], [ 1.000000e+00, %77 ]
  store float %80, ptr %73, align 4, !tbaa !46
  br label %81

81:                                               ; preds = %79, %60, %65, %77
  %82 = add i32 %61, -1
  %83 = getelementptr inbounds %struct.MDeformWeight, ptr %62, i64 1
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %85, label %60, !llvm.loop !64

85:                                               ; preds = %81, %56, %54, %7, %11, %18, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_normalize_lock_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !50
  switch i32 %7, label %24 [
    i32 0, label %95
    i32 1, label %8
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !52
  %10 = load i32, ptr %9, align 4, !tbaa !53
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %95

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !44
  %16 = icmp ne i8 %15, 0
  %17 = icmp sgt i32 %4, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %95

19:                                               ; preds = %12
  %20 = load i8, ptr %3, align 1, !tbaa !44
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %95, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.MDeformWeight, ptr %9, i64 0, i32 1
  store float 1.000000e+00, ptr %23, align 4, !tbaa !46
  br label %95

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !52
  br label %26

26:                                               ; preds = %24, %52
  %27 = phi ptr [ %25, %24 ], [ %56, %52 ]
  %28 = phi float [ 0.000000e+00, %24 ], [ %54, %52 ]
  %29 = phi float [ 0.000000e+00, %24 ], [ %53, %52 ]
  %30 = phi i32 [ %7, %24 ], [ %55, %52 ]
  %31 = load i32, ptr %27, align 4, !tbaa !53
  %32 = icmp slt i32 %31, %2
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i8, ptr %1, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !44
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %52, label %38

38:                                               ; preds = %33
  %39 = icmp slt i32 %31, %4
  br i1 %39, label %40, label %48

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %3, i64 %34
  %42 = load i8, ptr %41, align 1, !tbaa !44
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 0, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !46
  %47 = fadd float %29, %46
  br label %52

48:                                               ; preds = %40, %38
  %49 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !46
  %51 = fadd float %28, %50
  br label %52

52:                                               ; preds = %26, %33, %48, %44
  %53 = phi float [ %47, %44 ], [ %29, %48 ], [ %29, %33 ], [ %29, %26 ]
  %54 = phi float [ %28, %44 ], [ %51, %48 ], [ %28, %33 ], [ %28, %26 ]
  %55 = add i32 %30, -1
  %56 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 1
  %57 = icmp eq i32 %55, 0
  br i1 %57, label %58, label %26, !llvm.loop !65

58:                                               ; preds = %52
  %59 = fcmp ogt float %53, 0.000000e+00
  br i1 %59, label %60, label %95

60:                                               ; preds = %58
  %61 = fsub float 1.000000e+00, %54
  %62 = tail call fastcc float @max_ff(float noundef %61) #13
  %63 = fdiv float 1.000000e+00, %53
  %64 = fmul float %63, %62
  %65 = icmp eq i32 %7, 0
  br i1 %65, label %95, label %66

66:                                               ; preds = %60, %91
  %67 = phi ptr [ %93, %91 ], [ %25, %60 ]
  %68 = phi i32 [ %92, %91 ], [ %7, %60 ]
  %69 = load i32, ptr %67, align 4, !tbaa !53
  %70 = icmp slt i32 %69, %2
  br i1 %70, label %71, label %91

71:                                               ; preds = %66
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds i8, ptr %1, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !44
  %75 = icmp ne i8 %74, 0
  %76 = icmp slt i32 %69, %4
  %77 = and i1 %76, %75
  br i1 %77, label %78, label %91

78:                                               ; preds = %71
  %79 = getelementptr inbounds i8, ptr %3, i64 %72
  %80 = load i8, ptr %79, align 1, !tbaa !44
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.MDeformWeight, ptr %67, i64 0, i32 1
  %84 = load float, ptr %83, align 4, !tbaa !46
  %85 = fmul float %64, %84
  store float %85, ptr %83, align 4, !tbaa !46
  %86 = fcmp olt float %85, 0.000000e+00
  br i1 %86, label %89, label %87

87:                                               ; preds = %82
  %88 = fcmp ogt float %85, 1.000000e+00
  br i1 %88, label %89, label %91

89:                                               ; preds = %87, %82
  %90 = phi float [ 0.000000e+00, %82 ], [ 1.000000e+00, %87 ]
  store float %90, ptr %83, align 4, !tbaa !46
  br label %91

91:                                               ; preds = %89, %66, %71, %87, %78
  %92 = add i32 %68, -1
  %93 = getelementptr inbounds %struct.MDeformWeight, ptr %67, i64 1
  %94 = icmp eq i32 %92, 0
  br i1 %94, label %95, label %66, !llvm.loop !66

95:                                               ; preds = %91, %60, %58, %8, %12, %22, %19, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0) unnamed_addr #7 !PGOFuncName !67 {
  %2 = fcmp olt float %0, 0.000000e+00
  %3 = select i1 %2, float 0.000000e+00, float %0
  ret float %3
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_flip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  br label %9

9:                                                ; preds = %7, %20
  %10 = phi i32 [ %22, %20 ], [ 0, %7 ]
  %11 = phi ptr [ %21, %20 ], [ %8, %7 ]
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %1, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 %17, ptr %11, align 4, !tbaa !53
  br label %20

20:                                               ; preds = %9, %19, %14
  %21 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 1
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp eq i32 %22, %5
  br i1 %23, label %24, label %9, !llvm.loop !68

24:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_flip_merged(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %35

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %30
  %11 = phi i64 [ 0, %7 ], [ %33, %30 ]
  %12 = phi ptr [ %8, %7 ], [ %32, %30 ]
  %13 = load i32, ptr %12, align 4, !tbaa !53
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = tail call ptr @defvert_verify_index(ptr noundef nonnull %0, i32 noundef %18) #13
  %22 = load ptr, ptr %0, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.MDeformWeight, ptr %22, i64 %11
  %24 = getelementptr inbounds %struct.MDeformWeight, ptr %21, i64 0, i32 1
  %25 = load float, ptr %24, align 4, !tbaa !46
  %26 = getelementptr inbounds %struct.MDeformWeight, ptr %22, i64 %11, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !46
  %28 = fadd float %25, %27
  %29 = fmul float %28, 5.000000e-01
  store float %29, ptr %24, align 4, !tbaa !46
  store float %29, ptr %26, align 4, !tbaa !46
  br label %30

30:                                               ; preds = %10, %20, %15
  %31 = phi ptr [ %23, %20 ], [ %12, %15 ], [ %12, %10 ]
  %32 = getelementptr inbounds %struct.MDeformWeight, ptr %31, i64 1
  %33 = add nuw nsw i64 %11, 1
  %34 = icmp eq i64 %33, %9
  br i1 %34, label %35, label %10, !llvm.loop !69

35:                                               ; preds = %30, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @defgroup_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #12
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @defgroup_name_index(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_findstringindex(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef 16) #12
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %2 ]
  ret i32 %8
}

; Function Attrs: optsize
declare i32 @BLI_findstringindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @defgroup_flip_map(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #12
  store i32 %6, ptr %1, align 4, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %10 = sext i32 %6 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @__func__.defgroup_flip_map) #12
  %13 = icmp sgt i32 %6, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = zext nneg i32 %6 to i64
  %16 = shl nuw nsw i64 %15, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %12, i8 -1, i64 %16, i1 false), !tbaa !56
  br label %17

17:                                               ; preds = %14, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !34
  %19 = icmp eq ptr %18, null
  br i1 %19, label %46, label %20

20:                                               ; preds = %17
  %21 = icmp eq i8 %2, 0
  br label %22

22:                                               ; preds = %20, %42
  %23 = phi i64 [ 0, %20 ], [ %43, %42 ]
  %24 = phi ptr [ %18, %20 ], [ %44, %42 ]
  %25 = getelementptr inbounds i32, ptr %12, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !56
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  br i1 %21, label %31, label %29

29:                                               ; preds = %28
  %30 = trunc i64 %23 to i32
  store i32 %30, ptr %25, align 4, !tbaa !56
  br label %31

31:                                               ; preds = %29, %28
  %32 = getelementptr inbounds %struct.bDeformGroup, ptr %24, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %32, i8 noundef zeroext 0) #13
  %33 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %32) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %4) #13
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  store i32 %36, ptr %25, align 4, !tbaa !56
  %39 = zext nneg i32 %36 to i64
  %40 = getelementptr inbounds i32, ptr %12, i64 %39
  %41 = trunc i64 %23 to i32
  store i32 %41, ptr %40, align 4, !tbaa !56
  br label %42

42:                                               ; preds = %22, %35, %38, %31
  %43 = add nuw i64 %23, 1
  %44 = load ptr, ptr %24, align 8, !tbaa !34
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %22, !llvm.loop !70

46:                                               ; preds = %42, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  br label %47

47:                                               ; preds = %3, %46
  %48 = phi ptr [ %12, %46 ], [ null, %3 ]
  ret ptr %48
}

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_deform_flip_side_name(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %8 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 64) #12
  %9 = tail call i64 @BLI_strnlen(ptr noundef %1, i64 noundef 64) #12
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %121, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @__ctype_b_loc() #16
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = add i64 %9, 4294967295
  %16 = and i64 %15, 4294967295
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !44
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i16, ptr %14, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !71
  %22 = and i16 %21, 2048
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %12
  %25 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !44
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %14, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !71
  %33 = and i16 %32, 2048
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = icmp eq i8 %2, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %25, i64 noundef 64) #12
  br label %39

39:                                               ; preds = %37, %35
  store i8 0, ptr %25, align 1, !tbaa !44
  %40 = call i64 @BLI_strnlen(ptr noundef nonnull %0, i64 noundef 64) #12
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %24, %27, %39, %12
  %43 = phi i32 [ %41, %39 ], [ %10, %27 ], [ %10, %24 ], [ %10, %12 ]
  %44 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %0, i64 noundef 64) #12
  %45 = sext i32 %43 to i64
  %46 = getelementptr i8, ptr %0, i64 %45
  %47 = getelementptr i8, ptr %46, i64 -2
  %48 = load i8, ptr %47, align 1, !tbaa !44
  %49 = call fastcc zeroext i8 @is_char_sep(i8 noundef zeroext %48) #13, !range !73
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %42
  %52 = add nsw i32 %43, -1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !44
  switch i8 %55, label %64 [
    i8 108, label %56
    i8 114, label %58
    i8 76, label %60
    i8 82, label %62
  ]

56:                                               ; preds = %51
  %57 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %53
  store i8 0, ptr %57, align 1, !tbaa !44
  store i16 114, ptr %6, align 16
  br label %119

58:                                               ; preds = %51
  %59 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %53
  store i8 0, ptr %59, align 1, !tbaa !44
  store i16 108, ptr %6, align 16
  br label %119

60:                                               ; preds = %51
  %61 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %53
  store i8 0, ptr %61, align 1, !tbaa !44
  store i16 82, ptr %6, align 16
  br label %119

62:                                               ; preds = %51
  %63 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %53
  store i8 0, ptr %63, align 1, !tbaa !44
  store i16 76, ptr %6, align 16
  br label %119

64:                                               ; preds = %42, %51
  %65 = getelementptr inbounds i8, ptr %0, i64 1
  %66 = load i8, ptr %65, align 1, !tbaa !44
  %67 = call fastcc zeroext i8 @is_char_sep(i8 noundef zeroext %66) #13, !range !73
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load i8, ptr %0, align 1, !tbaa !44
  switch i8 %70, label %79 [
    i8 108, label %71
    i8 114, label %73
    i8 76, label %75
    i8 82, label %77
  ]

71:                                               ; preds = %69
  store i16 114, ptr %6, align 16
  %72 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %65, i64 noundef 64) #12
  store i8 0, ptr %4, align 16, !tbaa !44
  br label %119

73:                                               ; preds = %69
  store i16 108, ptr %6, align 16
  %74 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %65, i64 noundef 64) #12
  store i8 0, ptr %4, align 16, !tbaa !44
  br label %119

75:                                               ; preds = %69
  store i16 82, ptr %6, align 16
  %76 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %65, i64 noundef 64) #12
  store i8 0, ptr %4, align 16, !tbaa !44
  br label %119

77:                                               ; preds = %69
  store i16 76, ptr %6, align 16
  %78 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %65, i64 noundef 64) #12
  store i8 0, ptr %4, align 16, !tbaa !44
  br label %119

79:                                               ; preds = %69, %64
  %80 = icmp sgt i32 %43, 5
  br i1 %80, label %81, label %119

81:                                               ; preds = %79
  %82 = call ptr @BLI_strcasestr(ptr noundef nonnull %4, ptr noundef nonnull @.str.6) #12
  %83 = icmp eq ptr %82, %4
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = zext nneg i32 %43 to i64
  %86 = getelementptr inbounds i8, ptr %4, i64 %85
  %87 = getelementptr inbounds i8, ptr %86, i64 -5
  %88 = icmp eq ptr %82, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %84, %81
  %90 = load i8, ptr %82, align 1, !tbaa !44
  %91 = icmp eq i8 %90, 114
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds i8, ptr %82, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !44
  %95 = icmp eq i8 %94, 73
  %96 = select i1 %95, ptr @.str.8, ptr @.str.9
  br label %97

97:                                               ; preds = %89, %92
  %98 = phi ptr [ %96, %92 ], [ @.str.7, %89 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %6, ptr noundef nonnull align 1 dereferenceable(5) %98, i64 5, i1 false) #12
  store i8 0, ptr %82, align 1, !tbaa !44
  %99 = getelementptr inbounds i8, ptr %82, i64 5
  %100 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %99, i64 noundef 64) #12
  br label %119

101:                                              ; preds = %84
  %102 = call ptr @BLI_strcasestr(ptr noundef nonnull %4, ptr noundef nonnull @.str.7) #12
  %103 = icmp eq ptr %102, %4
  %104 = getelementptr inbounds i8, ptr %86, i64 -4
  %105 = icmp eq ptr %102, %104
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %101
  %108 = load i8, ptr %102, align 1, !tbaa !44
  %109 = icmp eq i8 %108, 108
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds i8, ptr %102, i64 1
  %112 = load i8, ptr %111, align 1, !tbaa !44
  %113 = icmp eq i8 %112, 69
  %114 = select i1 %113, ptr @.str.10, ptr @.str.11
  br label %115

115:                                              ; preds = %107, %110
  %116 = phi ptr [ %114, %110 ], [ @.str.6, %107 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) %116, i64 6, i1 false) #12
  store i8 0, ptr %102, align 1, !tbaa !44
  %117 = getelementptr inbounds i8, ptr %102, i64 4
  %118 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %117, i64 noundef 64) #12
  br label %119

119:                                              ; preds = %62, %60, %58, %56, %71, %73, %75, %77, %101, %97, %115, %79
  %120 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %0, i64 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  br label %121

121:                                              ; preds = %3, %119
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @defgroup_flip_map_single(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %7 = tail call i32 @BLI_countlist(ptr noundef nonnull %6) #12
  store i32 %7, ptr %1, align 4, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #14
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = sext i32 %7 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.defgroup_flip_map_single) #12
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = icmp eq i8 %2, 0
  %17 = zext nneg i32 %7 to i64
  %18 = add nuw nsw i64 %17, 3
  %19 = and i64 %18, 4294967292
  %20 = add nsw i64 %17, -1
  %21 = insertelement <4 x i64> poison, i64 %20, i64 0
  %22 = shufflevector <4 x i64> %21, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %23

23:                                               ; preds = %53, %15
  %24 = phi i64 [ 0, %15 ], [ %54, %53 ]
  %25 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %15 ], [ %55, %53 ]
  %26 = trunc i64 %24 to i32
  %27 = icmp ule <4 x i64> %25, %22
  %28 = extractelement <4 x i1> %27, i64 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = getelementptr inbounds i32, ptr %13, i64 %24
  %31 = select i1 %16, i32 -1, i32 %26
  store i32 %31, ptr %30, align 4, !tbaa !56
  br label %32

32:                                               ; preds = %29, %23
  %33 = extractelement <4 x i1> %27, i64 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = or disjoint i64 %24, 1
  %36 = or disjoint i32 %26, 1
  %37 = getelementptr inbounds i32, ptr %13, i64 %35
  %38 = select i1 %16, i32 -1, i32 %36
  store i32 %38, ptr %37, align 4, !tbaa !56
  br label %39

39:                                               ; preds = %34, %32
  %40 = extractelement <4 x i1> %27, i64 2
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = or disjoint i64 %24, 2
  %43 = or disjoint i32 %26, 2
  %44 = getelementptr inbounds i32, ptr %13, i64 %42
  %45 = select i1 %16, i32 -1, i32 %43
  store i32 %45, ptr %44, align 4, !tbaa !56
  br label %46

46:                                               ; preds = %41, %39
  %47 = extractelement <4 x i1> %27, i64 3
  br i1 %47, label %48, label %53

48:                                               ; preds = %46
  %49 = or disjoint i64 %24, 3
  %50 = or disjoint i32 %26, 3
  %51 = getelementptr inbounds i32, ptr %13, i64 %49
  %52 = select i1 %16, i32 -1, i32 %50
  store i32 %52, ptr %51, align 4, !tbaa !56
  br label %53

53:                                               ; preds = %48, %46
  %54 = add i64 %24, 4
  %55 = add <4 x i64> %25, <i64 4, i64 4, i64 4, i64 4>
  %56 = icmp eq i64 %54, %19
  br i1 %56, label %57, label %23, !llvm.loop !74

57:                                               ; preds = %53, %9
  %58 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %3) #12
  %59 = getelementptr inbounds %struct.bDeformGroup, ptr %58, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %5, ptr noundef nonnull %59, i8 noundef zeroext 0) #13
  %60 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %59) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %5) #13
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = sext i32 %3 to i64
  %67 = getelementptr inbounds i32, ptr %13, i64 %66
  store i32 %63, ptr %67, align 4, !tbaa !56
  %68 = sext i32 %63 to i64
  %69 = getelementptr inbounds i32, ptr %13, i64 %68
  store i32 %3, ptr %69, align 4, !tbaa !56
  br label %70

70:                                               ; preds = %62, %65, %57
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #14
  br label %71

71:                                               ; preds = %4, %70
  %72 = phi ptr [ %13, %70 ], [ null, %4 ]
  ret ptr %72
}

; Function Attrs: optsize
declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @defgroup_flip_index(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %1) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #14
  %9 = getelementptr inbounds %struct.bDeformGroup, ptr %6, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %9, i8 noundef zeroext 0) #13
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %9) #15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 @defgroup_name_index(ptr noundef %0, ptr noundef nonnull %4) #13
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ -1, %8 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #14
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ -1, %3 ]
  %18 = icmp eq i32 %17, -1
  %19 = icmp ne i8 %2, 0
  %20 = and i1 %19, %18
  %21 = select i1 %20, i32 %1, i32 %17
  ret i32 %21
}

; Function Attrs: optsize
declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @defgroup_unique_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = tail call fastcc zeroext i8 @defgroup_find_name_dupe(ptr noundef %1, ptr noundef %4, ptr noundef %5) #13, !range !73
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_deform_split_suffix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @BLI_strnlen(ptr noundef %0, i64 noundef 64) #12
  store i8 0, ptr %2, align 1, !tbaa !44
  store i8 0, ptr %1, align 1, !tbaa !44
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %3, %19
  %7 = phi i64 [ %20, %19 ], [ %4, %3 ]
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !44
  %10 = tail call fastcc zeroext i8 @is_char_sep(i8 noundef zeroext %9) #13, !range !73
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 %7
  %14 = add i64 %7, 1
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef %14) #12
  %16 = add i64 %4, 1
  %17 = sub i64 %16, %7
  %18 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %13, i64 noundef %17) #12
  br label %24

19:                                               ; preds = %6
  %20 = add i64 %7, -1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %6, !llvm.loop !78

22:                                               ; preds = %19, %3
  %23 = add i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %0, i64 %23, i1 false)
  br label %24

24:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: optsize
declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @is_char_sep(i8 noundef zeroext %0) unnamed_addr #7 !PGOFuncName !79 {
  switch i8 %0, label %2 [
    i8 46, label %5
    i8 45, label %5
    i8 32, label %5
  ]

2:                                                ; preds = %1
  %3 = icmp eq i8 %0, 95
  %4 = zext i1 %3 to i8
  br label %5

5:                                                ; preds = %1, %1, %1, %2
  %6 = phi i8 [ 1, %1 ], [ %4, %2 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_deform_split_prefix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @BLI_strnlen(ptr noundef %0, i64 noundef 64) #12
  store i8 0, ptr %1, align 1, !tbaa !44
  store i8 0, ptr %2, align 1, !tbaa !44
  %5 = icmp ugt i64 %4, 1
  br i1 %5, label %6, label %22

6:                                                ; preds = %3, %19
  %7 = phi i64 [ %20, %19 ], [ 1, %3 ]
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !44
  %10 = tail call fastcc zeroext i8 @is_char_sep(i8 noundef zeroext %9) #13, !range !73
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, ptr %0, i64 %7
  %14 = add i64 %7, 2
  %15 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef nonnull %0, i64 noundef %14) #12
  %16 = getelementptr i8, ptr %13, i64 1
  %17 = sub i64 %4, %7
  %18 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %16, i64 noundef %17) #12
  br label %24

19:                                               ; preds = %6
  %20 = add nuw i64 %7, 1
  %21 = icmp eq i64 %20, %4
  br i1 %21, label %22, label %6, !llvm.loop !80

22:                                               ; preds = %19, %3
  %23 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %0, i64 noundef %4) #12
  br label %24

24:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local float @defvert_find_weight(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = tail call ptr @defvert_find_index(ptr noundef %0, i32 noundef %1) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.MDeformWeight, ptr %3, i64 0, i32 1
  %7 = load float, ptr %6, align 4, !tbaa !46
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi float [ %7, %5 ], [ 0.000000e+00, %2 ]
  ret float %9
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local float @defvert_array_find_weight_safe(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = icmp eq i32 %2, -1
  %5 = icmp eq ptr %0, null
  %6 = or i1 %5, %4
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %8
  %10 = tail call float @defvert_find_weight(ptr noundef %9, i32 noundef %2) #13
  br label %11

11:                                               ; preds = %3, %7
  %12 = phi float [ %10, %7 ], [ 1.000000e+00, %3 ]
  ret float %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_add_index_notest(ptr noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !50
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %8(i64 noundef %13, ptr noundef nonnull @.str.14) #12
  %15 = load ptr, ptr %0, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %9, align 8, !tbaa !50
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr nonnull align 4 %15, i64 %20, i1 false)
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %22 = load ptr, ptr %0, align 8, !tbaa !52
  tail call void %21(ptr noundef %22) #12
  br label %23

23:                                               ; preds = %17, %7
  store ptr %14, ptr %0, align 8, !tbaa !52
  %24 = load i32, ptr %9, align 8, !tbaa !50
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 %25
  %27 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 %25, i32 1
  store float %2, ptr %27, align 4, !tbaa !46
  store i32 %1, ptr %26, align 4, !tbaa !53
  %28 = add nsw i32 %24, 1
  store i32 %28, ptr %9, align 8, !tbaa !50
  br label %29

29:                                               ; preds = %3, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_remove_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 3
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %51, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !50
  %17 = icmp sgt i32 %16, %12
  br i1 %17, label %18, label %51

18:                                               ; preds = %14
  %19 = add nsw i32 %16, -1
  store i32 %19, ptr %15, align 8, !tbaa !50
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %45, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %23 = zext nneg i32 %19 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @__func__.defvert_remove_group) #12
  %26 = load ptr, ptr %0, align 8, !tbaa !52
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %15, align 8, !tbaa !50
  %30 = icmp eq i32 %29, %12
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = and i64 %11, 4294967295
  %33 = getelementptr inbounds %struct.MDeformWeight, ptr %26, i64 %32
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds %struct.MDeformWeight, ptr %26, i64 %34
  %36 = load i64, ptr %35, align 4
  store i64 %36, ptr %33, align 4
  %37 = load ptr, ptr %0, align 8, !tbaa !52
  %38 = load i32, ptr %15, align 8, !tbaa !50
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %38, %31 ], [ %12, %28 ]
  %41 = phi ptr [ %37, %31 ], [ %26, %28 ]
  %42 = sext i32 %40 to i64
  %43 = shl nsw i64 %42, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %41, i64 %43, i1 false)
  %44 = load ptr, ptr %0, align 8, !tbaa !52
  br label %45

45:                                               ; preds = %18, %39
  %46 = phi ptr [ %44, %39 ], [ %7, %18 ]
  %47 = phi ptr [ %25, %39 ], [ null, %18 ]
  %48 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %48(ptr noundef %46) #12
  br label %49

49:                                               ; preds = %45, %21
  %50 = phi ptr [ %25, %21 ], [ %47, %45 ]
  store ptr %50, ptr %0, align 8, !tbaa !52
  br label %51

51:                                               ; preds = %49, %14, %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @defvert_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %2) #12
  store ptr null, ptr %0, align 8, !tbaa !52
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !50
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @defvert_find_shared(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !52
  br label %12

12:                                               ; preds = %10, %22
  %13 = phi i32 [ %4, %10 ], [ %23, %22 ]
  %14 = phi ptr [ %11, %10 ], [ %24, %22 ]
  %15 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !46
  %17 = fcmp ogt float %16, 0.000000e+00
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, ptr %14, align 4, !tbaa !53
  %20 = tail call float @defvert_find_weight(ptr noundef %1, i32 noundef %19) #13
  %21 = fcmp ogt float %20, 0.000000e+00
  br i1 %21, label %26, label %22

22:                                               ; preds = %12, %18
  %23 = add i32 %13, -1
  %24 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 1
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %12, !llvm.loop !81

26:                                               ; preds = %22, %18, %2, %6
  %27 = phi i32 [ -1, %6 ], [ -1, %2 ], [ -1, %22 ], [ %19, %18 ]
  ret i32 %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @defvert_is_weight_zero(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  br label %8

8:                                                ; preds = %6, %17
  %9 = phi i32 [ %18, %17 ], [ %4, %6 ]
  %10 = phi ptr [ %19, %17 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !46
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 4, !tbaa !53
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %8, %14
  %18 = add i32 %9, -1
  %19 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %8, !llvm.loop !82

21:                                               ; preds = %14, %17, %2
  %22 = phi i8 [ 1, %2 ], [ 1, %17 ], [ 0, %14 ]
  ret i8 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_defvert_array_copy(ptr noundef writeonly %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp ne ptr %0, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = shl nsw i64 %8, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %1, i64 %9, i1 false)
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = zext nneg i32 %2 to i64
  br label %13

13:                                               ; preds = %11, %30
  %14 = phi i64 [ 0, %11 ], [ %31, %30 ]
  %15 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 %14, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !50
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr %19(i64 noundef %23, ptr noundef nonnull @.str.15) #12
  %25 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %14
  store ptr %24, ptr %25, align 8, !tbaa !52
  %26 = load ptr, ptr %15, align 8, !tbaa !52
  %27 = load i32, ptr %20, align 8, !tbaa !50
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %26, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %13, %18
  %31 = add nuw nsw i64 %14, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %13, !llvm.loop !83

33:                                               ; preds = %30, %7, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_defvert_array_free_elems(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp sgt i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi i64 [ 0, %6 ], [ %16, %15 ]
  %10 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #12
  br label %15

15:                                               ; preds = %8, %13
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %8, !llvm.loop !84

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_defvert_array_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  tail call void @BKE_defvert_array_free_elems(ptr noundef nonnull %0, i32 noundef %1) #13
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %0) #12
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @defgroup_find_name_dupe(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !PGOFuncName !85 {
  %4 = getelementptr inbounds %struct.Object, ptr %2, i64 0, i32 25
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %3, %14
  %8 = phi ptr [ %15, %14 ], [ %5, %3 ]
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.bDeformGroup, ptr %8, i64 0, i32 2
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %0) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7, %10
  %15 = load ptr, ptr %8, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %7, !llvm.loop !86

17:                                               ; preds = %10, %14, %3
  %18 = phi i8 [ 0, %3 ], [ 0, %14 ], [ 1, %10 ]
  ret i8 %18
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(read) }
attributes #16 = { nounwind optsize willreturn memory(none) }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"", !35, i64 0, !35, i64 8}
!40 = !{!39, !35, i64 8}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"deform.c:BLI_listbase_clear"}
!44 = !{!36, !36, i64 0}
!45 = distinct !{!45, !42}
!46 = !{!47, !49, i64 4}
!47 = !{!"MDeformWeight", !48, i64 0, !49, i64 4}
!48 = !{!"int", !36, i64 0}
!49 = !{!"float", !36, i64 0}
!50 = !{!51, !48, i64 8}
!51 = !{!"MDeformVert", !35, i64 0, !48, i64 8, !48, i64 12}
!52 = !{!51, !35, i64 0}
!53 = !{!47, !48, i64 0}
!54 = distinct !{!54, !42}
!55 = distinct !{!55, !42}
!56 = !{!48, !48, i64 0}
!57 = distinct !{!57, !42}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = distinct !{!60, !42}
!61 = distinct !{!61, !42}
!62 = distinct !{!62, !42}
!63 = distinct !{!63, !42}
!64 = distinct !{!64, !42}
!65 = distinct !{!65, !42}
!66 = distinct !{!66, !42}
!67 = !{!"deform.c:max_ff"}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !42}
!70 = distinct !{!70, !42}
!71 = !{!72, !72, i64 0}
!72 = !{!"short", !36, i64 0}
!73 = !{i8 0, i8 2}
!74 = distinct !{!74, !42, !75, !76}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!"deform.c:defgroup_unique_check"}
!78 = distinct !{!78, !42}
!79 = !{!"deform.c:is_char_sep"}
!80 = distinct !{!80, !42}
!81 = distinct !{!81, !42}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42}
!85 = !{!"deform.c:defgroup_find_name_dupe"}
!86 = distinct !{!86, !42}
