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

; Function Attrs: nounwind uwtable
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
  tail call void %9(ptr noundef nonnull %3) #10
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %11(ptr noundef %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bproperty_free_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1, %14
  %5 = phi ptr [ %16, %14 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bProperty, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.bProperty, ptr %5, i64 0, i32 5
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %13(ptr noundef nonnull %7) #10
  br label %14

14:                                               ; preds = %4, %12
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %15(ptr noundef nonnull %5) #10
  %16 = tail call ptr @BLI_pophead(ptr noundef %0) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %4, !llvm.loop !42

18:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bproperty_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %3 = tail call ptr %2(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %8 = icmp eq ptr %5, %7
  %9 = select i1 %6, i1 true, i1 %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %12 = tail call ptr %11(ptr noundef nonnull %5) #10
  br label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 5
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %14, %13 ], [ %12, %10 ]
  %17 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 6
  store ptr %16, ptr %17, align 8, !tbaa !34
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bproperty_copy_list(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @BLI_pophead(ptr noundef %0) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %18, %2
  %6 = load ptr, ptr %1, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %42, label %22

8:                                                ; preds = %2, %18
  %9 = phi ptr [ %20, %18 ], [ %3, %2 ]
  %10 = getelementptr inbounds %struct.bProperty, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.bProperty, ptr %9, i64 0, i32 5
  %14 = icmp eq ptr %11, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %17(ptr noundef nonnull %11) #10
  br label %18

18:                                               ; preds = %16, %8
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %19(ptr noundef nonnull %9) #10
  %20 = tail call ptr @BLI_pophead(ptr noundef %0) #10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %5, label %8, !llvm.loop !42

22:                                               ; preds = %5, %37
  %23 = phi ptr [ %40, %37 ], [ %6, %5 ]
  %24 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %25 = tail call ptr %24(ptr noundef nonnull %23) #10
  %26 = getelementptr inbounds %struct.bProperty, ptr %23, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct.bProperty, ptr %23, i64 0, i32 5
  %30 = icmp eq ptr %27, %29
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %22
  %33 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %34 = tail call ptr %33(ptr noundef nonnull %27) #10
  br label %37

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.bProperty, ptr %25, i64 0, i32 5
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %34, %32 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.bProperty, ptr %25, i64 0, i32 6
  store ptr %38, ptr %39, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef %0, ptr noundef %25) #10
  %40 = load ptr, ptr %23, align 8, !tbaa !41
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %22, !llvm.loop !45

42:                                               ; preds = %37, %5
  ret void
}

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
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
  tail call void %9(ptr noundef nonnull %3) #10
  br label %10

10:                                               ; preds = %8, %1
  store ptr null, ptr %2, align 8, !tbaa !34
  store i32 0, ptr %5, align 4, !tbaa !46
  %11 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !47
  switch i16 %12, label %18 [
    i16 0, label %16
    i16 1, label %16
    i16 2, label %16
    i16 5, label %16
    i16 3, label %13
  ]

13:                                               ; preds = %10
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %15 = tail call ptr %14(i64 noundef 128, ptr noundef nonnull @.str) #10
  br label %16

16:                                               ; preds = %10, %10, %10, %10, %13
  %17 = phi ptr [ %15, %13 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ], [ %5, %10 ]
  store ptr %17, ptr %2, align 8, !tbaa !34
  br label %18

18:                                               ; preds = %16, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bproperty_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %3 = tail call ptr %2(i64 noundef 96, ptr noundef nonnull @.str.1) #10
  %4 = trunc i32 %0 to i16
  %5 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 3
  store i16 %4, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 5
  %10 = icmp eq ptr %7, %9
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %13(ptr noundef nonnull %7) #10
  br label %14

14:                                               ; preds = %12, %1
  store ptr null, ptr %6, align 8, !tbaa !34
  store i32 0, ptr %9, align 4, !tbaa !46
  %15 = load i16, ptr %5, align 8, !tbaa !47
  switch i16 %15, label %21 [
    i16 0, label %19
    i16 1, label %19
    i16 2, label %19
    i16 5, label %19
    i16 3, label %16
  ]

16:                                               ; preds = %14
  %17 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %18 = tail call ptr %17(i64 noundef 128, ptr noundef nonnull @.str) #10
  br label %19

19:                                               ; preds = %14, %14, %14, %14, %16
  %20 = phi ptr [ %18, %16 ], [ %9, %14 ], [ %9, %14 ], [ %9, %14 ], [ %9, %14 ]
  store ptr %20, ptr %6, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds %struct.bProperty, ptr %3, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %22, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false) #10
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bproperty_unique(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %11, %8 ], [ %1, %3 ]
  %10 = getelementptr inbounds %struct.bProperty, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !49

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %0, %3 ], [ %9, %8 ]
  %15 = icmp eq i32 %2, 0
  %16 = getelementptr inbounds %struct.bProperty, ptr %1, i64 0, i32 2
  %17 = icmp eq ptr %14, null
  br i1 %15, label %33, label %18

18:                                               ; preds = %13, %32
  br i1 %17, label %29, label %19

19:                                               ; preds = %18, %26
  %20 = phi ptr [ %27, %26 ], [ %14, %18 ]
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.bProperty, ptr %20, i64 0, i32 2
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %16) #11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22, %19
  %27 = load ptr, ptr %20, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %19, !llvm.loop !51

29:                                               ; preds = %22, %26, %18
  %30 = phi ptr [ null, %18 ], [ %20, %22 ], [ null, %26 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %90, label %32

32:                                               ; preds = %29
  tail call void @BKE_bproperty_unique(ptr noundef %14, ptr noundef nonnull %30, i32 noundef 0)
  br label %18, !llvm.loop !52

33:                                               ; preds = %13
  br i1 %17, label %90, label %34

34:                                               ; preds = %33, %42
  %35 = phi i1 [ %44, %42 ], [ %17, %33 ]
  %36 = phi ptr [ %43, %42 ], [ %14, %33 ]
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.bProperty, ptr %36, i64 0, i32 2
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %16) #11
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %34
  %43 = load ptr, ptr %36, align 8, !tbaa !50
  %44 = icmp eq ptr %43, null
  br i1 %44, label %90, label %34, !llvm.loop !51

45:                                               ; preds = %38
  br i1 %35, label %90, label %46

46:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  %47 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %16, i64 noundef 64) #10
  %48 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #11
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, -1
  %51 = icmp sgt i32 %50, -1
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = tail call ptr @__ctype_b_loc() #12
  br label %54

54:                                               ; preds = %52, %65
  %55 = phi i32 [ %50, %52 ], [ %66, %65 ]
  %56 = load ptr, ptr %53, align 8, !tbaa !41
  %57 = zext nneg i32 %55 to i64
  %58 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !53
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i16, ptr %56, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !54
  %63 = and i16 %62, 2048
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %54
  store i8 0, ptr %58, align 1, !tbaa !53
  %66 = add nsw i32 %55, -1
  %67 = icmp sgt i32 %55, 0
  br i1 %67, label %54, label %68, !llvm.loop !55

68:                                               ; preds = %54, %65, %46
  br label %69

69:                                               ; preds = %68, %87
  %70 = phi i32 [ %71, %87 ], [ 0, %68 ]
  %71 = add nuw nsw i32 %70, 1
  %72 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %6, i64 noundef 64, ptr noundef nonnull @.str.3, i32 noundef %70) #10
  %73 = trunc i64 %72 to i32
  %74 = sub i32 64, %73
  %75 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %4, i64 noundef 64, ptr noundef nonnull @.str.4, i32 noundef %74, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  br label %76

76:                                               ; preds = %69, %84
  %77 = phi i1 [ false, %69 ], [ %86, %84 ]
  %78 = phi ptr [ %14, %69 ], [ %85, %84 ]
  %79 = icmp eq ptr %78, %1
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.bProperty, ptr %78, i64 0, i32 2
  %82 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %81, ptr noundef nonnull dereferenceable(1) %4) #11
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %80, %76
  %85 = load ptr, ptr %78, align 8, !tbaa !50
  %86 = icmp eq ptr %85, null
  br i1 %86, label %88, label %76, !llvm.loop !51

87:                                               ; preds = %80
  br i1 %77, label %88, label %69, !llvm.loop !56

88:                                               ; preds = %87, %84
  %89 = call ptr @BLI_strncpy(ptr noundef nonnull %16, ptr noundef nonnull %4, i64 noundef 64) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  br label %90

90:                                               ; preds = %29, %42, %33, %45, %88
  ret void
}

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #5

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_bproperty_object_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 91
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #10
  ret ptr %4
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bproperty_object_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bProperty, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 91
  %5 = tail call ptr @BLI_findstring(ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef 16) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.bProperty, ptr %5, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.bProperty, ptr %5, i64 0, i32 5
  %12 = icmp eq ptr %9, %11
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %15(ptr noundef nonnull %9) #10
  br label %16

16:                                               ; preds = %7, %14
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  tail call void %17(ptr noundef nonnull %5) #10
  tail call void @BLI_remlink(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  br label %18

18:                                               ; preds = %16, %2
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %20 = tail call ptr %19(ptr noundef %1) #10
  %21 = getelementptr inbounds %struct.bProperty, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.bProperty, ptr %1, i64 0, i32 5
  %25 = icmp eq ptr %22, %24
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !41
  %29 = tail call ptr %28(ptr noundef nonnull %22) #10
  br label %32

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.bProperty, ptr %20, i64 0, i32 5
  br label %32

32:                                               ; preds = %27, %30
  %33 = phi ptr [ %29, %27 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct.bProperty, ptr %20, i64 0, i32 6
  store ptr %33, ptr %34, align 8, !tbaa !34
  tail call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %20) #10
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bproperty_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !47
  switch i16 %4, label %33 [
    i16 0, label %5
    i16 1, label %21
    i16 2, label %25
    i16 5, label %25
    i16 3, label %29
  ]

5:                                                ; preds = %2
  %6 = tail call i32 @BLI_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store i32 1, ptr %9, align 4, !tbaa !46
  br label %33

10:                                               ; preds = %5
  %11 = tail call i32 @BLI_strcasecmp(ptr noundef %1, ptr noundef nonnull @.str.6) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store i32 0, ptr %14, align 4, !tbaa !46
  br label %33

15:                                               ; preds = %10
  %16 = tail call i64 @strtol(ptr nocapture noundef nonnull %1, ptr noundef null, i32 noundef 10) #10
  %17 = and i64 %16, 4294967295
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store i32 %19, ptr %20, align 4, !tbaa !46
  br label %33

21:                                               ; preds = %2
  %22 = tail call i64 @strtol(ptr nocapture noundef nonnull %1, ptr noundef null, i32 noundef 10) #10
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store i32 %23, ptr %24, align 4, !tbaa !46
  br label %33

25:                                               ; preds = %2, %2
  %26 = tail call double @strtod(ptr nocapture noundef nonnull %1, ptr noundef null) #10
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  store float %27, ptr %28, align 4, !tbaa !57
  br label %33

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %1) #10
  br label %33

33:                                               ; preds = %8, %15, %13, %2, %29, %25, %21
  ret void
}

declare i32 @BLI_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local void @BKE_bproperty_add(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !47
  switch i16 %4, label %17 [
    i16 0, label %5
    i16 1, label %5
    i16 2, label %11
    i16 5, label %11
  ]

5:                                                ; preds = %2, %2
  %6 = tail call i64 @strtol(ptr nocapture noundef nonnull %1, ptr noundef null, i32 noundef 10) #10
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = add nsw i32 %9, %7
  store i32 %10, ptr %8, align 4, !tbaa !46
  br label %17

11:                                               ; preds = %2, %2
  %12 = tail call double @strtod(ptr nocapture noundef nonnull %1, ptr noundef null) #10
  %13 = fptrunc double %12 to float
  %14 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %15 = load float, ptr %14, align 4, !tbaa !57
  %16 = fadd float %15, %13
  store float %16, ptr %14, align 4, !tbaa !57
  br label %17

17:                                               ; preds = %2, %11, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_bproperty_set_valstr(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 3
  %6 = load i16, ptr %5, align 8, !tbaa !47
  switch i16 %6, label %20 [
    i16 0, label %7
    i16 1, label %7
    i16 2, label %11
    i16 5, label %11
    i16 3, label %16
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 4, !tbaa !46
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %9) #10
  br label %20

11:                                               ; preds = %4, %4
  %12 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 5
  %13 = load float, ptr %12, align 4, !tbaa !57
  %14 = fpext float %13 to double
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %14) #10
  br label %20

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.bProperty, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %18, i64 noundef 128) #10
  br label %20

20:                                               ; preds = %2, %4, %16, %11, %7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind willreturn memory(none) }

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
!34 = !{!35, !36, i64 88}
!35 = !{!"bProperty", !36, i64 0, !36, i64 8, !37, i64 16, !39, i64 80, !39, i64 82, !40, i64 84, !36, i64 88}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"short", !37, i64 0}
!40 = !{!"int", !37, i64 0}
!41 = !{!36, !36, i64 0}
!42 = distinct !{!42, !43, !44}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !43, !44}
!46 = !{!35, !40, i64 84}
!47 = !{!35, !39, i64 80}
!48 = !{!35, !36, i64 8}
!49 = distinct !{!49, !43, !44}
!50 = !{!35, !36, i64 0}
!51 = distinct !{!51, !43, !44}
!52 = distinct !{!52, !43, !44}
!53 = !{!37, !37, i64 0}
!54 = !{!39, !39, i64 0}
!55 = distinct !{!55, !43, !44}
!56 = distinct !{!56, !43, !44}
!57 = !{!58, !58, i64 0}
!58 = !{!"float", !37, i64 0}
