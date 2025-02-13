; ModuleID = 'blender/source/blender/blenkernel/intern/property.c'
source_filename = "blender/source/blender/blenkernel/intern/property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bProperty = type { ptr, ptr, [64 x i8], i16, i16, i32, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"property string\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"prop\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%.*s%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%f\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bproperty_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %6 = icmp eq ptr %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %9(ptr noundef nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %11(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bproperty_free_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call void @BKE_bproperty_free(ptr noundef nonnull %5) #12
  %6 = tail call ptr @BLI_pophead(ptr noundef %0) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !42

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_bproperty_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %3 = tail call ptr %2(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %8 = icmp eq ptr %5, %7
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %12 = tail call ptr %11(ptr noundef nonnull %5) #11
  br label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 5
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %14, %13 ], [ %12, %10 ]
  %17 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 6
  store ptr %16, ptr %17, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bproperty_copy_list(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @BKE_bproperty_free_list(ptr noundef %0) #12
  %3 = load ptr, ptr %1, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call ptr @BKE_bproperty_copy(ptr noundef nonnull %6) #12
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %7) #11
  %8 = load ptr, ptr %6, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !44

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bproperty_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %6 = icmp eq ptr %3, %5
  %7 = select i1 %4, i1 true, i1 %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %9(ptr noundef nonnull %3) #11
  br label %10

10:                                               ; preds = %8, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  store i32 0, ptr %5, align 4, !tbaa !45
  %11 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !46
  switch i16 %12, label %18 [
    i16 0, label %16
    i16 1, label %16
    i16 2, label %16
    i16 5, label %16
    i16 3, label %13
  ]

13:                                               ; preds = %10
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %15 = tail call ptr %14(i64 noundef 128, ptr noundef nonnull @.str) #11
  br label %16

16:                                               ; preds = %10, %10, %10, %10, %13
  %17 = phi ptr [ %15, %13 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ]
  store ptr %17, ptr %2, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @BKE_bproperty_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %3 = tail call ptr %2(i64 noundef 96, ptr noundef nonnull @.str.1) #11
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !46
  tail call void @BKE_bproperty_init(ptr noundef %3) #12
  %6 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %6, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bproperty_unique(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %11, %8 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.bProperty, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !48

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %0, %3 ], [ %9, %8 ]
  %15 = icmp eq i32 %2, 0
  %16 = getelementptr inbounds %struct.bProperty, ptr %1, i64 0, i32 2
  %17 = tail call fastcc ptr @bproperty_get(ptr noundef nonnull %14, ptr noundef %1, ptr noundef nonnull %16) #12
  %18 = icmp eq ptr %17, null
  br i1 %15, label %24, label %19

19:                                               ; preds = %13
  br i1 %18, label %59, label %20

20:                                               ; preds = %19, %20
  %21 = phi ptr [ %22, %20 ], [ %17, %19 ]
  tail call void @BKE_bproperty_unique(ptr noundef %14, ptr noundef nonnull %21, i32 noundef 0) #12
  %22 = tail call fastcc ptr @bproperty_get(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %16) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %59, label %20, !llvm.loop !49

24:                                               ; preds = %13
  br i1 %18, label %59, label %25

25:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %26 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %16, i64 noundef 64) #11
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #14
  %28 = trunc i64 %27 to i32
  %29 = add i32 %28, -1
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = tail call ptr @__ctype_b_loc() #15
  br label %33

33:                                               ; preds = %31, %44
  %34 = phi i32 [ %29, %31 ], [ %45, %44 ]
  %35 = load ptr, ptr %32, align 8, !tbaa !41
  %36 = zext nneg i32 %34 to i64
  %37 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !50
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %35, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !51
  %42 = and i16 %41, 2048
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %33
  store i8 0, ptr %37, align 1, !tbaa !50
  %45 = add nsw i32 %34, -1
  %46 = icmp sgt i32 %34, 0
  br i1 %46, label %33, label %47, !llvm.loop !52

47:                                               ; preds = %33, %44, %25
  br label %48

48:                                               ; preds = %47, %48
  %49 = phi i32 [ %50, %48 ], [ 0, %47 ]
  %50 = add nuw nsw i32 %49, 1
  %51 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.3, i32 noundef %49) #11
  %52 = trunc i64 %51 to i32
  %53 = sub i32 64, %52
  %54 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.4, i32 noundef %53, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  %55 = call fastcc ptr @bproperty_get(ptr noundef %14, ptr noundef %1, ptr noundef nonnull %4) #12
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %48, !llvm.loop !53

57:                                               ; preds = %48
  %58 = call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %4, i64 noundef 64) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #13
  br label %59

59:                                               ; preds = %20, %19, %24, %57
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bproperty_get(ptr noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #4 !PGOFuncName !54 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3, %12
  %6 = phi ptr [ %13, %12 ], [ %0, %3 ]
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bProperty, ptr %6, i64 0, i32 2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %2) #14
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %5, %8
  %13 = load ptr, ptr %6, align 8, !tbaa !55
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !56

15:                                               ; preds = %8, %12, %3
  %16 = phi ptr [ null, %3 ], [ null, %12 ], [ %6, %8 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_bproperty_object_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 91
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #11
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bproperty_object_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bProperty, ptr %1, i64 0, i32 2
  %4 = tail call ptr @BKE_bproperty_object_get(ptr noundef %0, ptr noundef nonnull %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  tail call void @BKE_bproperty_free(ptr noundef nonnull %4) #12
  %7 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 91
  tail call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %4) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 91
  %10 = tail call ptr @BKE_bproperty_copy(ptr noundef %1) #12
  tail call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %10) #11
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bproperty_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !46
  switch i16 %4, label %31 [
    i16 0, label %5
    i16 1, label %20
    i16 2, label %23
    i16 5, label %23
    i16 3, label %27
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @BLI_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store i32 1, ptr %9, align 4, !tbaa !45
  br label %31

10:                                               ; preds = %5
  %11 = tail call i32 @BLI_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.6) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store i32 0, ptr %14, align 4, !tbaa !45
  br label %31

15:                                               ; preds = %10
  %16 = tail call i32 @atoi(ptr nocapture noundef %1) #14
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !45
  br label %31

20:                                               ; preds = %2
  %21 = tail call i32 @atoi(ptr nocapture noundef %1) #14
  %22 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store i32 %21, ptr %22, align 4, !tbaa !45
  br label %31

23:                                               ; preds = %2, %2
  %24 = tail call double @atof(ptr noundef %1) #14
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store float %25, ptr %26, align 4, !tbaa !57
  br label %31

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %1) #11
  br label %31

31:                                               ; preds = %8, %15, %13, %2, %27, %23, %20
  ret void
}

; Function Attrs: optsize
declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite) uwtable
define dso_local void @BKE_bproperty_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !46
  switch i16 %4, label %16 [
    i16 0, label %5
    i16 1, label %5
    i16 2, label %10
    i16 5, label %10
  ]

5:                                                ; preds = %2, %2
  %6 = tail call i32 @atoi(ptr nocapture noundef %1) #14
  %7 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = add nsw i32 %8, %6
  store i32 %9, ptr %7, align 4, !tbaa !45
  br label %16

10:                                               ; preds = %2, %2
  %11 = tail call double @atof(ptr noundef %1) #14
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = fadd float %14, %12
  store float %15, ptr %13, align 4, !tbaa !57
  br label %16

16:                                               ; preds = %2, %10, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_bproperty_set_valstr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !46
  switch i16 %6, label %20 [
    i16 0, label %7
    i16 1, label %7
    i16 2, label %11
    i16 5, label %11
    i16 3, label %16
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !45
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %9) #11
  br label %20

11:                                               ; preds = %4, %4
  %12 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = fpext float %13 to double
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %14) #11
  br label %20

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %18, i64 noundef 128) #11
  br label %20

20:                                               ; preds = %2, %4, %16, %11, %7
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize willreturn memory(read) }
attributes #15 = { nounwind optsize willreturn memory(none) }

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
!34 = !{!35, !36, i64 88}
!35 = !{!"bProperty", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 82, !40, i64 84, !36, i64 88}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!36, !36, i64 0}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = distinct !{!44, !43}
!45 = !{!35, !40, i64 84}
!46 = !{!35, !39, i64 80}
!47 = !{!35, !36, i64 8}
!48 = distinct !{!48, !43}
!49 = distinct !{!49, !43}
!50 = !{!37, !37, i64 0}
!51 = !{!39, !39, i64 0}
!52 = distinct !{!52, !43}
!53 = distinct !{!53, !43}
!54 = !{!"property.c:bproperty_get"}
!55 = !{!35, !36, i64 0}
!56 = distinct !{!56, !43}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !37, i64 0}
