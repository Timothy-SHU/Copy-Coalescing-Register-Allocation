; ModuleID = 'blender/source/blender/blenkernel/intern/idprop.c'
source_filename = "blender/source/blender/blenkernel/intern/idprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.IDProperty = type { ptr, ptr, i8, i8, i16, [64 x i8], i32, %struct.IDPropertyData, i32, i32 }
%struct.IDPropertyData = type { ptr, %struct.ListBase, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%union.IDPropertyTemplate = type { %struct.anon }
%struct.anon = type { ptr, i16, i8 }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.IDPIter = type { ptr, ptr }
%struct.anon.0 = type { i16, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"IDProperty prop array\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.IDP_CopyIDPArray = private unnamed_addr constant [17 x i8] c"IDP_CopyIDPArray\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_recallocN_id = external local_unnamed_addr global ptr, align 8
@__func__.IDP_ResizeIDPArray = private unnamed_addr constant [19 x i8] c"IDP_ResizeIDPArray\00", align 1
@idp_size_table = internal unnamed_addr constant [9 x i8] c"\01\04\04\0C@\00\10\08\08", align 1
@__func__.IDP_ResizeArray = private unnamed_addr constant [16 x i8] c"IDP_ResizeArray\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"IDProperty string\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"id property string 1\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"id property string 2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"IDPIter\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"IDProperty\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"IDProperty int\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"IDProperty float\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"IDProperty array\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"id property array\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"id property string 3\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"IDProperty group\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"IDP_ResizeArray group\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"IDProperty array dup\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDP_NewIDPArray(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str) #9
  %4 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 2
  store i8 9, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 8
  store i32 0, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 5
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %0, i64 noundef 64) #9
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IDP_CopyIDPArray(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @__func__.IDP_CopyIDPArray) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) %0, i64 128, i1 false), !tbaa.struct !45
  %4 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call ptr %4(ptr noundef %6) #9
  %8 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 7
  store ptr %7, ptr %8, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1, %12
  %13 = phi i64 [ %20, %12 ], [ 0, %1 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !49
  %15 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 %13
  %16 = tail call ptr @IDP_CopyProperty(ptr noundef %15) #10
  %17 = load ptr, ptr %8, align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.IDProperty, ptr %17, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %18, ptr noundef nonnull align 8 dereferenceable(128) %16, i64 128, i1 false)
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef %16) #9
  %20 = add nuw nsw i64 %13, 1
  %21 = load i32, ptr %9, align 8, !tbaa !44
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %12, label %24, !llvm.loop !50

24:                                               ; preds = %12, %1
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDP_CopyProperty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !38
  switch i8 %3, label %12 [
    i8 6, label %4
    i8 0, label %6
    i8 5, label %8
    i8 9, label %10
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @IDP_CopyGroup(ptr noundef nonnull %0) #10
  br label %14

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @IDP_CopyString(ptr noundef nonnull %0) #10
  br label %14

8:                                                ; preds = %1
  %9 = tail call fastcc ptr @IDP_CopyArray(ptr noundef nonnull %0) #10
  br label %14

10:                                               ; preds = %1
  %11 = tail call ptr @IDP_CopyIDPArray(ptr noundef nonnull %0) #10
  br label %14

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @idp_generic_copy(ptr noundef nonnull %0) #10
  br label %14

14:                                               ; preds = %12, %10, %8, %6, %4
  %15 = phi ptr [ %13, %12 ], [ %11, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_FreeIDPArray(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !44
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %11, %7 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 %8
  tail call void @IDP_FreeProperty(ptr noundef %10) #10
  %11 = add nuw nsw i64 %8, 1
  %12 = load i32, ptr %2, align 8, !tbaa !44
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %7, label %15, !llvm.loop !52

15:                                               ; preds = %7, %1
  %16 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %20(ptr noundef nonnull %17) #9
  br label %21

21:                                               ; preds = %19, %15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_FreeProperty(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !38
  switch i8 %3, label %8 [
    i8 5, label %4
    i8 0, label %5
    i8 6, label %6
    i8 9, label %7
  ]

4:                                                ; preds = %1
  tail call void @IDP_FreeArray(ptr noundef nonnull %0) #10
  br label %8

5:                                                ; preds = %1
  tail call void @IDP_FreeString(ptr noundef nonnull %0) #10
  br label %8

6:                                                ; preds = %1
  tail call fastcc void @IDP_FreeGroup(ptr noundef nonnull %0) #10
  br label %8

7:                                                ; preds = %1
  tail call void @IDP_FreeIDPArray(ptr noundef nonnull %0) #10
  br label %8

8:                                                ; preds = %1, %7, %6, %5, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_SetIndexArray(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 %6
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = icmp sle i32 %9, %1
  %11 = icmp slt i32 %1, 0
  %12 = or i1 %11, %10
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = icmp eq ptr %7, %2
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  tail call void @IDP_FreeProperty(ptr noundef %7) #10
  %16 = load ptr, ptr %4, align 8, !tbaa !49
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ %5, %13 ]
  %19 = getelementptr inbounds %struct.IDProperty, ptr %18, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %19, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  br label %20

20:                                               ; preds = %3, %17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local ptr @IDP_GetIndexArray(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 %5
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_AppendArray(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, 1
  tail call void @IDP_ResizeIDPArray(ptr noundef %0, i32 noundef %5) #10
  %6 = load i32, ptr %3, align 8, !tbaa !44
  %7 = add nsw i32 %6, -1
  tail call void @IDP_SetIndexArray(ptr noundef %0, i32 noundef %7, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_ResizeIDPArray(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !53
  %5 = icmp slt i32 %4, %1
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !44
  br i1 %5, label %27, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i32 %7, %1
  %10 = sub nsw i32 %4, %1
  %11 = icmp slt i32 %10, 200
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %15 = sext i32 %1 to i64
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ %15, %13 ], [ %20, %16 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.IDProperty, ptr %18, i64 %17
  tail call void @IDP_FreeProperty(ptr noundef %19) #10
  %20 = add nsw i64 %17, 1
  %21 = load i32, ptr %6, align 8, !tbaa !44
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %16, label %24, !llvm.loop !54

24:                                               ; preds = %16
  store i32 %1, ptr %6, align 8, !tbaa !44
  br label %53

25:                                               ; preds = %8
  br i1 %9, label %27, label %26

26:                                               ; preds = %25
  store i32 %1, ptr %6, align 8, !tbaa !44
  br label %53

27:                                               ; preds = %2, %25
  %28 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %29 = icmp sgt i32 %7, %1
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %32 = sext i32 %1 to i64
  br label %33

33:                                               ; preds = %30, %33
  %34 = phi i64 [ %32, %30 ], [ %37, %33 ]
  %35 = load ptr, ptr %31, align 8, !tbaa !49
  %36 = getelementptr inbounds %struct.IDProperty, ptr %35, i64 %34
  tail call void @IDP_FreeProperty(ptr noundef %36) #10
  %37 = add nsw i64 %34, 1
  %38 = load i32, ptr %28, align 8, !tbaa !44
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %33, label %41, !llvm.loop !55

41:                                               ; preds = %33, %27
  %42 = ashr i32 %1, 3
  %43 = icmp slt i32 %1, 9
  %44 = select i1 %43, i32 3, i32 6
  %45 = add i32 %42, %1
  %46 = add i32 %45, %44
  %47 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %49 = load ptr, ptr %48, align 8, !tbaa !49
  %50 = sext i32 %46 to i64
  %51 = shl nsw i64 %50, 7
  %52 = tail call ptr %47(ptr noundef %49, i64 noundef %51, ptr noundef nonnull @__func__.IDP_ResizeIDPArray) #9
  store ptr %52, ptr %48, align 8, !tbaa !49
  store i32 %1, ptr %28, align 8, !tbaa !44
  store i32 %46, ptr %3, align 4, !tbaa !53
  br label %53

53:                                               ; preds = %41, %26, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_ResizeArray(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = icmp sgt i32 %4, %1
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !53
  %8 = icmp sge i32 %7, %1
  %9 = sub nsw i32 %7, %1
  %10 = icmp slt i32 %9, 200
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  tail call fastcc void @idp_resize_group_array(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %14) #10
  store i32 %1, ptr %3, align 8, !tbaa !44
  br label %39

15:                                               ; preds = %2
  %16 = ashr i32 %1, 3
  %17 = icmp slt i32 %1, 9
  %18 = select i1 %17, i32 3, i32 6
  %19 = add i32 %16, %1
  %20 = add i32 %19, %18
  br i1 %5, label %21, label %24

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  tail call fastcc void @idp_resize_group_array(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %23) #10
  br label %24

24:                                               ; preds = %21, %15
  %25 = load ptr, ptr @MEM_recallocN_id, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !56
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [9 x i8], ptr @idp_size_table, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !46
  %33 = zext i8 %32 to i32
  %34 = mul nsw i32 %20, %33
  %35 = sext i32 %34 to i64
  %36 = tail call ptr %25(ptr noundef %27, i64 noundef %35, ptr noundef nonnull @__func__.IDP_ResizeArray) #9
  store ptr %36, ptr %26, align 8, !tbaa !49
  br i1 %5, label %38, label %37

37:                                               ; preds = %24
  tail call fastcc void @idp_resize_group_array(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %36) #10
  br label %38

38:                                               ; preds = %37, %24
  store i32 %1, ptr %3, align 8, !tbaa !44
  store i32 %20, ptr %6, align 4, !tbaa !53
  br label %39

39:                                               ; preds = %38, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @idp_resize_group_array(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !57 {
  %4 = alloca %union.IDPropertyTemplate, align 8
  %5 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !56
  %7 = icmp eq i8 %6, 6
  br i1 %7, label %8, label %38

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !44
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %13 = icmp slt i32 %10, %1
  br i1 %13, label %14, label %23

14:                                               ; preds = %12
  %15 = sext i32 %10 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ %15, %14 ], [ %20, %16 ]
  store i32 0, ptr %4, align 8, !tbaa !46
  %18 = call ptr @IDP_New(i32 noundef 6, ptr noundef nonnull %4, ptr noundef nonnull @.str.12) #10
  %19 = getelementptr inbounds ptr, ptr %2, i64 %17
  store ptr %18, ptr %19, align 8, !tbaa !34
  %20 = add nsw i64 %17, 1
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %21, %1
  br i1 %22, label %23, label %16, !llvm.loop !58

23:                                               ; preds = %16, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %38

24:                                               ; preds = %8
  %25 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = sext i32 %1 to i64
  br label %28

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %27, %24 ], [ %34, %28 ]
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  tail call void @IDP_FreeProperty(ptr noundef %31) #10
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %33 = load ptr, ptr %30, align 8, !tbaa !34
  tail call void %32(ptr noundef %33) #9
  %34 = add nsw i64 %29, 1
  %35 = load i32, ptr %9, align 8, !tbaa !44
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %28, label %38, !llvm.loop !59

38:                                               ; preds = %28, %3, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_FreeArray(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call fastcc void @idp_resize_group_array(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #10
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %7 = load ptr, ptr %2, align 8, !tbaa !49
  tail call void %6(ptr noundef %7) #9
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDP_NewString(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 128, ptr noundef nonnull @.str.1) #9
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 64, ptr noundef nonnull @.str.2) #9
  %10 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  store ptr %9, ptr %10, align 8, !tbaa !49
  store i8 0, ptr %9, align 1, !tbaa !46
  %11 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 9
  store i32 64, ptr %11, align 4, !tbaa !53
  %12 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  store i32 1, ptr %12, align 8, !tbaa !44
  br label %27

13:                                               ; preds = %3
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #12
  %15 = trunc i64 %14 to i32
  %16 = add i32 %15, 1
  %17 = icmp sgt i32 %2, 0
  %18 = tail call i32 @llvm.smin.i32(i32 %16, i32 %2)
  %19 = select i1 %17, i32 %18, i32 %16
  %20 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %21 = sext i32 %19 to i64
  %22 = tail call ptr %20(i64 noundef %21, ptr noundef nonnull @.str.3) #9
  %23 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 7
  store ptr %22, ptr %23, align 8, !tbaa !49
  %24 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 9
  store i32 %19, ptr %24, align 4, !tbaa !53
  %25 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 8
  store i32 %19, ptr %25, align 8, !tbaa !44
  %26 = tail call ptr @BLI_strncpy(ptr noundef %22, ptr noundef nonnull %0, i64 noundef %21) #9
  br label %27

27:                                               ; preds = %13, %7
  %28 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 2
  store i8 0, ptr %28, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.IDProperty, ptr %5, i64 0, i32 5
  %30 = tail call ptr @BLI_strncpy(ptr noundef nonnull %29, ptr noundef %1, i64 noundef 64) #9
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_AssignString(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %5 = trunc i64 %4 to i32
  %6 = icmp sgt i32 %2, 0
  %7 = tail call i32 @llvm.smin.i32(i32 %5, i32 %2)
  %8 = select i1 %6, i32 %7, i32 %5
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %10 = load i8, ptr %9, align 1, !tbaa !56
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  tail call void @IDP_ResizeArray(ptr noundef nonnull %0, i32 noundef %8) #10
  %13 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = sext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %15, i1 false)
  br label %22

16:                                               ; preds = %3
  %17 = add nsw i32 %8, 1
  tail call void @IDP_ResizeArray(ptr noundef nonnull %0, i32 noundef %17) #10
  %18 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = sext i32 %17 to i64
  %21 = tail call ptr @BLI_strncpy(ptr noundef %19, ptr noundef %1, i64 noundef %20) #9
  br label %22

22:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_ConcatStringC(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #12
  %6 = trunc i64 %5 to i32
  %7 = add i32 %4, %6
  tail call void @IDP_ResizeArray(ptr noundef %0, i32 noundef %7) #10
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_ConcatString(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !44
  %7 = add i32 %4, -1
  %8 = add i32 %7, %6
  tail call void @IDP_ResizeArray(ptr noundef %0, i32 noundef %8) #10
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %12) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_FreeString(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %6(ptr noundef nonnull %3) #9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_LinkID(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ID, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %7, align 4, !tbaa !60
  br label %10

10:                                               ; preds = %6, %2
  store ptr %1, ptr %3, align 8, !tbaa !49
  tail call void @id_us_plus(ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @id_us_plus(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IDP_UnlinkID(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.ID, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !60
  %6 = add nsw i32 %5, -1
  store i32 %6, ptr %4, align 4, !tbaa !60
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_SyncGroupValues(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  br label %8

8:                                                ; preds = %6, %27
  %9 = phi ptr [ %4, %6 ], [ %28, %27 ]
  %10 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 0, i32 5
  %11 = tail call ptr @BLI_findstring(ptr noundef nonnull %7, ptr noundef nonnull %10, i32 noundef 20) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 0, i32 2
  %15 = load i8, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !38
  %18 = icmp eq i8 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  switch i8 %15, label %24 [
    i8 1, label %20
    i8 2, label %20
    i8 8, label %20
    i8 6, label %23
  ]

20:                                               ; preds = %19, %19, %19
  %21 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 7
  %22 = getelementptr inbounds %struct.IDProperty, ptr %9, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 32, i1 false), !tbaa.struct !62
  br label %27

23:                                               ; preds = %19
  tail call void @IDP_SyncGroupValues(ptr noundef nonnull %11, ptr noundef nonnull %9) #10
  br label %27

24:                                               ; preds = %19
  %25 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %9) #10
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef nonnull %11, ptr noundef %25) #9
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %11) #9
  tail call void @IDP_FreeProperty(ptr noundef nonnull %11) #10
  %26 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %26(ptr noundef nonnull %11) #9
  br label %27

27:                                               ; preds = %8, %13, %24, %23, %20
  %28 = load ptr, ptr %9, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %8, !llvm.loop !63

30:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_SyncGroupTypes(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  %6 = icmp eq ptr %5, null
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %2, 0
  %9 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  br label %10

10:                                               ; preds = %7, %44
  %11 = phi ptr [ %5, %7 ], [ %12, %44 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 5
  %14 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %1, ptr noundef nonnull %13) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %43, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 2
  %18 = load i8, ptr %17, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 2
  %20 = load i8, ptr %19, align 8, !tbaa !38
  %21 = icmp eq i8 %18, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !56
  %25 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !56
  %27 = icmp eq i8 %24, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  br i1 %8, label %40, label %29

29:                                               ; preds = %28
  switch i8 %18, label %44 [
    i8 5, label %30
    i8 9, label %30
    i8 6, label %42
  ]

30:                                               ; preds = %29, %29
  %31 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 8
  %32 = load i32, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !44
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %30, %22, %16
  tail call void @IDP_FreeFromGroup(ptr noundef %0, ptr noundef nonnull %11) #10
  %37 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %14) #10
  %38 = load i32, ptr %9, align 8, !tbaa !44
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %9, align 8, !tbaa !44
  tail call void @BLI_insertlinkbefore(ptr noundef nonnull %4, ptr noundef %12, ptr noundef %37) #9
  br label %44

40:                                               ; preds = %30, %28
  %41 = icmp eq i8 %18, 6
  br i1 %41, label %42, label %44

42:                                               ; preds = %29, %40
  tail call void @IDP_SyncGroupTypes(ptr noundef nonnull %11, ptr noundef nonnull %14, i8 noundef zeroext %2) #10
  br label %44

43:                                               ; preds = %10
  tail call void @IDP_FreeFromGroup(ptr noundef %0, ptr noundef nonnull %11) #10
  br label %44

44:                                               ; preds = %29, %43, %40, %42, %36
  %45 = icmp eq ptr %12, null
  br i1 %45, label %46, label %10, !llvm.loop !66

46:                                               ; preds = %44, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDP_GetPropertyFromGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 20) #9
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_FreeFromGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void @IDP_RemoveFromGroup(ptr noundef %0, ptr noundef %1) #10
  tail call void @IDP_FreeProperty(ptr noundef %1) #10
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %3(ptr noundef %1) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_insertlinkbefore(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_ReplaceGroupInGroup(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  br label %9

9:                                                ; preds = %6, %27
  %10 = phi ptr [ %4, %6 ], [ %28, %27 ]
  %11 = getelementptr inbounds %struct.IDProperty, ptr %10, i64 0, i32 5
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %7, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.IDProperty, ptr %14, i64 0, i32 5
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %11) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !llvm.loop !67

20:                                               ; preds = %16
  %21 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %10) #10
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef nonnull %14, ptr noundef %21) #9
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %14) #9
  tail call void @IDP_FreeProperty(ptr noundef nonnull %14) #10
  %22 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %22(ptr noundef nonnull %14) #9
  br label %27

23:                                               ; preds = %12
  %24 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %10) #10
  %25 = load i32, ptr %8, align 8, !tbaa !44
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %8, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %24) #9
  br label %27

27:                                               ; preds = %20, %23
  %28 = load ptr, ptr %10, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %9, !llvm.loop !68

30:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_ReplaceInGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 5
  %4 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %0, ptr noundef nonnull %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef %1) #9
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %4) #9
  tail call void @IDP_FreeProperty(ptr noundef nonnull %4) #10
  %8 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %8(ptr noundef nonnull %4) #9
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !44
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %13, ptr noundef %1) #9
  br label %14

14:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_MergeGroup(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  %5 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %4, label %14, label %8

8:                                                ; preds = %3
  br i1 %7, label %30, label %9

9:                                                ; preds = %8, %9
  %10 = phi ptr [ %12, %9 ], [ %6, %8 ]
  %11 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %10) #10
  tail call void @IDP_ReplaceInGroup(ptr noundef %0, ptr noundef %11) #10
  %12 = load ptr, ptr %10, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %9, !llvm.loop !69

14:                                               ; preds = %3
  br i1 %7, label %30, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  br label %18

18:                                               ; preds = %15, %27
  %19 = phi ptr [ %6, %15 ], [ %28, %27 ]
  %20 = getelementptr inbounds %struct.IDProperty, ptr %19, i64 0, i32 5
  %21 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %0, ptr noundef nonnull %20) #10
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %19) #10
  %25 = load i32, ptr %16, align 8, !tbaa !44
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %16, align 8, !tbaa !44
  tail call void @BLI_addtail(ptr noundef nonnull %17, ptr noundef %24) #9
  br label %27

27:                                               ; preds = %18, %23
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %18, !llvm.loop !70

30:                                               ; preds = %9, %27, %8, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @IDP_AddToGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 5
  %4 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %0, ptr noundef nonnull %3) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !44
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !44
  %10 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %1) #9
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i8 [ 1, %6 ], [ 0, %2 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @IDP_InsertToGroup(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 5
  %5 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %0, ptr noundef nonnull %4) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !44
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !44
  %11 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %11, ptr noundef %1, ptr noundef %2) #9
  br label %12

12:                                               ; preds = %3, %7
  %13 = phi i8 [ 1, %7 ], [ 0, %3 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_RemoveFromGroup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  tail call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDP_GetPropertyTypeFromGroup(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %0, ptr noundef %1) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.IDProperty, ptr %4, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = icmp eq i8 %8, %2
  %10 = select i1 %9, ptr %4, ptr null
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi ptr [ null, %3 ], [ %10, %6 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @IDP_GetGroupIterator(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 16, ptr noundef nonnull @.str.4) #9
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  store ptr %5, ptr %3, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.IDPIter, ptr %3, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDP_GroupIterNext(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %0) #9
  br label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !74
  store ptr %7, ptr %0, align 8, !tbaa !71
  br label %8

8:                                                ; preds = %6, %4
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_FreeIterBeforeEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %2(ptr noundef %0) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @IDP_CopyGroup(ptr noundef %0) unnamed_addr #0 !PGOFuncName !76 {
  %2 = tail call fastcc ptr @idp_generic_copy(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 8
  store i32 %4, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 7, i32 1
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %7, %9 ], [ %14, %11 ]
  %13 = tail call ptr @IDP_CopyProperty(ptr noundef nonnull %12) #10
  tail call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %13) #9
  %14 = load ptr, ptr %12, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !77

16:                                               ; preds = %11, %1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @IDP_CopyString(ptr noundef %0) unnamed_addr #0 !PGOFuncName !78 {
  %2 = tail call fastcc ptr @idp_generic_copy(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %8 = tail call ptr %7(ptr noundef nonnull %4) #9
  %9 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 7
  store ptr %8, ptr %9, align 8, !tbaa !49
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 8
  store i32 %12, ptr %13, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !56
  %16 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 3
  store i8 %15, ptr %16, align 1, !tbaa !56
  %17 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  %18 = load i32, ptr %17, align 4, !tbaa !53
  %19 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 9
  store i32 %18, ptr %19, align 4, !tbaa !53
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @IDP_CopyArray(ptr noundef %0) unnamed_addr #0 !PGOFuncName !79 {
  %2 = tail call fastcc ptr @idp_generic_copy(ptr noundef %0) #10
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %8 = tail call ptr %7(ptr noundef nonnull %4) #9
  %9 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 7
  store ptr %8, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %11 = load i8, ptr %10, align 8, !tbaa !38
  %12 = icmp eq i8 %11, 6
  br i1 %12, label %13, label %26

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !44
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13, %17
  %18 = phi i64 [ %22, %17 ], [ 0, %13 ]
  %19 = getelementptr inbounds ptr, ptr %8, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = tail call ptr @IDP_CopyProperty(ptr noundef %20) #10
  store ptr %21, ptr %19, align 8, !tbaa !34
  %22 = add nuw nsw i64 %18, 1
  %23 = load i32, ptr %14, align 8, !tbaa !44
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %17, label %26, !llvm.loop !80

26:                                               ; preds = %17, %13, %6, %1
  %27 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 8
  store i32 %28, ptr %29, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !56
  %32 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 3
  store i8 %31, ptr %32, align 1, !tbaa !56
  %33 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  %34 = load i32, ptr %33, align 4, !tbaa !53
  %35 = getelementptr inbounds %struct.IDProperty, ptr %2, i64 0, i32 9
  store i32 %34, ptr %35, align 4, !tbaa !53
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @idp_generic_copy(ptr noundef %0) unnamed_addr #0 !PGOFuncName !81 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 128, ptr noundef nonnull @.str.13) #9
  %4 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 5
  %5 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 5
  %6 = tail call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 64) #9
  %7 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 2
  store i8 %8, ptr %9, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 4
  %11 = load i16, ptr %10, align 2, !tbaa !82
  %12 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 4
  store i16 %11, ptr %12, align 2, !tbaa !82
  %13 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %14 = getelementptr inbounds %struct.IDProperty, ptr %3, i64 0, i32 7, i32 2
  %15 = load <2 x i32>, ptr %13, align 8, !tbaa !48
  store <2 x i32> %15, ptr %14, align 8, !tbaa !48
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDP_GetProperties(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ID, ptr %0, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !83
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = icmp eq i8 %1, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 128, ptr noundef nonnull @.str.5) #9
  store ptr %10, ptr %3, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.IDProperty, ptr %10, i64 0, i32 2
  store i8 6, ptr %11, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %6, %8, %2
  %13 = phi ptr [ %4, %2 ], [ %10, %8 ], [ null, %6 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IDP_EqualsProperties_ex(ptr noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %122, label %7

7:                                                ; preds = %3
  %8 = or i1 %4, %5
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = icmp eq i8 %2, 0
  %11 = zext i1 %10 to i8
  br label %122

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %14 = load i8, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !38
  %17 = icmp eq i8 %14, %16
  br i1 %17, label %18, label %122

18:                                               ; preds = %12
  switch i8 %14, label %122 [
    i8 1, label %19
    i8 2, label %26
    i8 8, label %33
    i8 0, label %40
    i8 5, label %55
    i8 6, label %80
    i8 9, label %99
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !84
  %22 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !84
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i8
  br label %122

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %28 = load float, ptr %27, align 8, !tbaa !85
  %29 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 2
  %30 = load float, ptr %29, align 8, !tbaa !85
  %31 = fcmp oeq float %28, %30
  %32 = zext i1 %31 to i8
  br label %122

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 2
  %35 = load double, ptr %34, align 8, !tbaa !87
  %36 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7, i32 2
  %37 = load double, ptr %36, align 8, !tbaa !87
  %38 = fcmp oeq double %35, %37
  %39 = zext i1 %38 to i8
  br label %122

40:                                               ; preds = %18
  %41 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !44
  %43 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !44
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %122

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !49
  %49 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !49
  %51 = sext i32 %42 to i64
  %52 = tail call i32 @strncmp(ptr noundef %48, ptr noundef %50, i64 noundef %51) #12
  %53 = icmp eq i32 %52, 0
  %54 = zext i1 %53 to i8
  br label %122

55:                                               ; preds = %18
  %56 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %57 = load i32, ptr %56, align 8, !tbaa !44
  %58 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %59 = load i32, ptr %58, align 8, !tbaa !44
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %122

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !56
  %64 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !56
  %66 = icmp eq i8 %63, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %69 = load ptr, ptr %68, align 8, !tbaa !49
  %70 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !49
  %72 = zext i8 %63 to i64
  %73 = getelementptr inbounds [9 x i8], ptr @idp_size_table, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !46
  %75 = zext i8 %74 to i32
  %76 = mul nsw i32 %57, %75
  %77 = sext i32 %76 to i64
  %78 = tail call i32 @memcmp(ptr noundef %69, ptr noundef %71, i64 noundef %77) #12
  %79 = trunc i32 %78 to i8
  br label %122

80:                                               ; preds = %18
  %81 = icmp eq i8 %2, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %84 = load i32, ptr %83, align 8, !tbaa !44
  %85 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %86 = load i32, ptr %85, align 8, !tbaa !44
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %82, %80
  %89 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  br label %90

90:                                               ; preds = %94, %88
  %91 = phi ptr [ %89, %88 ], [ %92, %94 ]
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = icmp eq ptr %92, null
  br i1 %93, label %122, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.IDProperty, ptr %92, i64 0, i32 5
  %96 = tail call ptr @IDP_GetPropertyFromGroup(ptr noundef %1, ptr noundef nonnull %95) #10
  %97 = tail call zeroext i8 @IDP_EqualsProperties_ex(ptr noundef nonnull %92, ptr noundef %96, i8 noundef zeroext %2) #10
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %122, label %90, !llvm.loop !89

99:                                               ; preds = %18
  %100 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !49
  %102 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !49
  %104 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  %105 = load i32, ptr %104, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.IDProperty, ptr %1, i64 0, i32 8
  %107 = load i32, ptr %106, align 8, !tbaa !44
  %108 = icmp eq i32 %105, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %99
  %110 = icmp sgt i32 %105, 0
  br i1 %110, label %116, label %122

111:                                              ; preds = %116
  %112 = add nuw nsw i64 %117, 1
  %113 = load i32, ptr %104, align 8, !tbaa !44
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %112, %114
  br i1 %115, label %116, label %122, !llvm.loop !90

116:                                              ; preds = %109, %111
  %117 = phi i64 [ %112, %111 ], [ 0, %109 ]
  %118 = getelementptr inbounds %struct.IDProperty, ptr %101, i64 %117
  %119 = getelementptr inbounds %struct.IDProperty, ptr %103, i64 %117
  %120 = tail call zeroext i8 @IDP_EqualsProperties(ptr noundef %118, ptr noundef %119) #10
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %111

122:                                              ; preds = %111, %116, %94, %90, %109, %18, %99, %82, %55, %61, %40, %46, %12, %3, %67, %33, %26, %19, %9
  %123 = phi i8 [ %11, %9 ], [ %79, %67 ], [ %39, %33 ], [ %32, %26 ], [ %25, %19 ], [ 1, %3 ], [ 0, %12 ], [ 0, %40 ], [ %54, %46 ], [ 0, %61 ], [ 0, %55 ], [ 0, %82 ], [ 0, %99 ], [ 1, %18 ], [ 1, %109 ], [ 1, %90 ], [ 0, %94 ], [ 1, %111 ], [ 0, %116 ]
  ret i8 %123
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @IDP_EqualsProperties(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 @IDP_EqualsProperties_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #10
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @IDP_New(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  switch i32 %0, label %98 [
    i32 1, label %4
    i32 2, label %9
    i32 8, label %14
    i32 5, label %19
    i32 0, label %47
    i32 6, label %95
  ]

4:                                                ; preds = %3
  %5 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %6 = tail call ptr %5(i64 noundef 128, ptr noundef nonnull @.str.6) #9
  %7 = load i32, ptr %1, align 8, !tbaa !46
  %8 = getelementptr inbounds %struct.IDProperty, ptr %6, i64 0, i32 7, i32 2
  store i32 %7, ptr %8, align 8, !tbaa !84
  br label %101

9:                                                ; preds = %3
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 128, ptr noundef nonnull @.str.7) #9
  %12 = load float, ptr %1, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.IDProperty, ptr %11, i64 0, i32 7, i32 2
  store float %12, ptr %13, align 8, !tbaa !85
  br label %101

14:                                               ; preds = %3
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 128, ptr noundef nonnull @.str.7) #9
  %17 = load double, ptr %1, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.IDProperty, ptr %16, i64 0, i32 7, i32 2
  store double %17, ptr %18, align 8, !tbaa !87
  br label %101

19:                                               ; preds = %3
  %20 = load i16, ptr %1, align 8, !tbaa !46
  switch i16 %20, label %107 [
    i16 2, label %21
    i16 1, label %21
    i16 8, label %21
    i16 6, label %21
  ]

21:                                               ; preds = %19, %19, %19, %19
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 128, ptr noundef nonnull @.str.8) #9
  %24 = load i16, ptr %1, align 8, !tbaa !46
  %25 = trunc i16 %24 to i8
  %26 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 3
  store i8 %25, ptr %26, align 1, !tbaa !56
  %27 = getelementptr inbounds %struct.anon.0, ptr %1, i64 0, i32 1
  %28 = load i16, ptr %27, align 2, !tbaa !46
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = load i16, ptr %1, align 8, !tbaa !46
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds [9 x i8], ptr @idp_size_table, i64 0, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !46
  %36 = zext i8 %35 to i64
  %37 = sext i16 %28 to i64
  %38 = mul nsw i64 %36, %37
  %39 = tail call ptr %31(i64 noundef %38, ptr noundef nonnull @.str.9) #9
  %40 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 7
  store ptr %39, ptr %40, align 8, !tbaa !49
  %41 = load i16, ptr %27, align 2, !tbaa !46
  %42 = sext i16 %41 to i32
  br label %43

43:                                               ; preds = %30, %21
  %44 = phi i32 [ %42, %30 ], [ 0, %21 ]
  %45 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 9
  store i32 %44, ptr %45, align 4, !tbaa !53
  %46 = getelementptr inbounds %struct.IDProperty, ptr %23, i64 0, i32 8
  store i32 %44, ptr %46, align 8, !tbaa !44
  br label %101

47:                                               ; preds = %3
  %48 = load ptr, ptr %1, align 8, !tbaa !46
  %49 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %50 = tail call ptr %49(i64 noundef 128, ptr noundef nonnull @.str.1) #9
  %51 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %52 = load i8, ptr %51, align 2, !tbaa !46
  %53 = icmp eq i8 %52, 1
  %54 = icmp eq ptr %48, null
  br i1 %53, label %55, label %76

55:                                               ; preds = %47
  %56 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  br i1 %54, label %57, label %62

57:                                               ; preds = %55
  %58 = tail call ptr %56(i64 noundef 64, ptr noundef nonnull @.str.2) #9
  %59 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 7
  store ptr %58, ptr %59, align 8, !tbaa !49
  store i8 0, ptr %58, align 1, !tbaa !46
  %60 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 9
  store i32 64, ptr %60, align 4, !tbaa !53
  %61 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 8
  store i32 0, ptr %61, align 8, !tbaa !44
  br label %74

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 1
  %64 = load i16, ptr %63, align 8, !tbaa !46
  %65 = sext i16 %64 to i64
  %66 = tail call ptr %56(i64 noundef %65, ptr noundef nonnull @.str.3) #9
  %67 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 7
  store ptr %66, ptr %67, align 8, !tbaa !49
  %68 = load i16, ptr %63, align 8, !tbaa !46
  %69 = sext i16 %68 to i32
  %70 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 9
  store i32 %69, ptr %70, align 4, !tbaa !53
  %71 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 8
  store i32 %69, ptr %71, align 8, !tbaa !44
  %72 = load i16, ptr %63, align 8, !tbaa !46
  %73 = sext i16 %72 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr nonnull align 1 %48, i64 %73, i1 false)
  br label %74

74:                                               ; preds = %62, %57
  %75 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 3
  store i8 1, ptr %75, align 1, !tbaa !56
  br label %101

76:                                               ; preds = %47
  br i1 %54, label %77, label %83

77:                                               ; preds = %76
  %78 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %79 = tail call ptr %78(i64 noundef 64, ptr noundef nonnull @.str.2) #9
  %80 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 7
  store ptr %79, ptr %80, align 8, !tbaa !49
  store i8 0, ptr %79, align 1, !tbaa !46
  %81 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 9
  store i32 64, ptr %81, align 4, !tbaa !53
  %82 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 8
  store i32 1, ptr %82, align 8, !tbaa !44
  br label %93

83:                                               ; preds = %76
  %84 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #12
  %85 = trunc i64 %84 to i32
  %86 = add i32 %85, 1
  %87 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %88 = sext i32 %86 to i64
  %89 = tail call ptr %87(i64 noundef %88, ptr noundef nonnull @.str.10) #9
  %90 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 7
  store ptr %89, ptr %90, align 8, !tbaa !49
  %91 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 9
  store i32 %86, ptr %91, align 4, !tbaa !53
  %92 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 8
  store i32 %86, ptr %92, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %89, ptr nonnull align 1 %48, i64 %88, i1 false)
  br label %93

93:                                               ; preds = %83, %77
  %94 = getelementptr inbounds %struct.IDProperty, ptr %50, i64 0, i32 3
  store i8 0, ptr %94, align 1, !tbaa !56
  br label %101

95:                                               ; preds = %3
  %96 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %97 = tail call ptr %96(i64 noundef 128, ptr noundef nonnull @.str.11) #9
  br label %101

98:                                               ; preds = %3
  %99 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %100 = tail call ptr %99(i64 noundef 128, ptr noundef nonnull @.str.8) #9
  br label %101

101:                                              ; preds = %74, %93, %98, %95, %43, %14, %9, %4
  %102 = phi ptr [ %100, %98 ], [ %97, %95 ], [ %23, %43 ], [ %16, %14 ], [ %11, %9 ], [ %6, %4 ], [ %50, %93 ], [ %50, %74 ]
  %103 = trunc i32 %0 to i8
  %104 = getelementptr inbounds %struct.IDProperty, ptr %102, i64 0, i32 2
  store i8 %103, ptr %104, align 8, !tbaa !38
  %105 = getelementptr inbounds %struct.IDProperty, ptr %102, i64 0, i32 5
  %106 = tail call ptr @BLI_strncpy(ptr noundef nonnull %105, ptr noundef %2, i64 noundef 64) #9
  br label %107

107:                                              ; preds = %19, %101
  %108 = phi ptr [ %102, %101 ], [ null, %19 ]
  ret ptr %108
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @IDP_FreeGroup(ptr noundef %0) unnamed_addr #0 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  tail call void @IDP_FreeProperty(ptr noundef nonnull %6) #10
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !92

9:                                                ; preds = %5, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @IDP_ClearProperty(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @IDP_FreeProperty(ptr noundef %0) #10
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 7
  store ptr null, ptr %2, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 9
  store i32 0, ptr %3, align 4, !tbaa !53
  %4 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 8
  store i32 0, ptr %4, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @IDP_UnlinkProperty(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.IDProperty, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !38
  %4 = icmp eq i8 %3, 7
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @IDP_UnlinkID(ptr noundef nonnull %0) #10
  br label %6

6:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize willreturn memory(read) }

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
!38 = !{!39, !36, i64 16}
!39 = !{!"IDProperty", !35, i64 0, !35, i64 8, !36, i64 16, !36, i64 17, !40, i64 18, !36, i64 20, !41, i64 84, !42, i64 88, !41, i64 120, !41, i64 124}
!40 = !{!"short", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"IDPropertyData", !35, i64 0, !43, i64 8, !41, i64 24, !41, i64 28}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!39, !41, i64 120}
!45 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 1, !46, i64 17, i64 1, !46, i64 18, i64 2, !47, i64 20, i64 64, !46, i64 84, i64 4, !48, i64 88, i64 8, !34, i64 96, i64 8, !34, i64 104, i64 8, !34, i64 112, i64 4, !48, i64 116, i64 4, !48, i64 120, i64 4, !48, i64 124, i64 4, !48}
!46 = !{!36, !36, i64 0}
!47 = !{!40, !40, i64 0}
!48 = !{!41, !41, i64 0}
!49 = !{!39, !35, i64 88}
!50 = distinct !{!50, !51}
!51 = !{!"llvm.loop.mustprogress"}
!52 = distinct !{!52, !51}
!53 = !{!39, !41, i64 124}
!54 = distinct !{!54, !51}
!55 = distinct !{!55, !51}
!56 = !{!39, !36, i64 17}
!57 = !{!"idprop.c:idp_resize_group_array"}
!58 = distinct !{!58, !51}
!59 = distinct !{!59, !51}
!60 = !{!61, !41, i64 100}
!61 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !35, i64 112}
!62 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 4, !48, i64 28, i64 4, !48}
!63 = distinct !{!63, !51}
!64 = !{!39, !35, i64 96}
!65 = !{!39, !35, i64 0}
!66 = distinct !{!66, !51}
!67 = distinct !{!67, !51}
!68 = distinct !{!68, !51}
!69 = distinct !{!69, !51}
!70 = distinct !{!70, !51}
!71 = !{!72, !35, i64 0}
!72 = !{!"IDPIter", !35, i64 0, !35, i64 8}
!73 = !{!72, !35, i64 8}
!74 = !{!75, !35, i64 0}
!75 = !{!"Link", !35, i64 0, !35, i64 8}
!76 = !{!"idprop.c:IDP_CopyGroup"}
!77 = distinct !{!77, !51}
!78 = !{!"idprop.c:IDP_CopyString"}
!79 = !{!"idprop.c:IDP_CopyArray"}
!80 = distinct !{!80, !51}
!81 = !{!"idprop.c:idp_generic_copy"}
!82 = !{!39, !40, i64 18}
!83 = !{!61, !35, i64 112}
!84 = !{!39, !41, i64 112}
!85 = !{!86, !86, i64 0}
!86 = !{!"float", !36, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"double", !36, i64 0}
!89 = distinct !{!89, !51}
!90 = distinct !{!90, !51}
!91 = !{!"idprop.c:IDP_FreeGroup"}
!92 = distinct !{!92, !51}
