; ModuleID = 'blender/source/blender/blenkernel/intern/deform.c'
source_filename = "blender/source/blender/blenkernel/intern/deform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr }
%struct.bDeformGroup = type { ptr, ptr, [64 x i8], i8, [7 x i8] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.ListBase = type { ptr, ptr }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.MDeformWeight = type { i32, float }
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

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_defgroup_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.anon, align 8
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 88, ptr noundef nonnull @__func__.BKE_defgroup_new) #11
  %6 = getelementptr inbounds %struct.bDeformGroup, ptr %5, i64 0, i32 2
  %7 = tail call ptr @BLI_strncpy(ptr noundef nonnull %6, ptr noundef %1, i64 noundef 64) #11
  %8 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store ptr %0, ptr %3, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store ptr %5, ptr %9, align 8, !tbaa !40
  %10 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @defgroup_unique_check, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i8 noundef zeroext 46, ptr noundef nonnull %6, i32 noundef 64) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @defgroup_unique_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store ptr %1, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.bDeformGroup, ptr %0, i64 0, i32 2
  %6 = call zeroext i8 @BLI_uniquename_cb(ptr noundef nonnull @defgroup_unique_check, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, i8 noundef zeroext 46, ptr noundef nonnull %5, i32 noundef 64) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @defgroup_copy_list(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = load ptr, ptr %1, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %9, %5 ], [ %3, %2 ]
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 88, ptr noundef nonnull @.str) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %8, ptr noundef nonnull align 8 dereferenceable(88) %6, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef nonnull %8) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %5, !llvm.loop !41

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @defgroup_duplicate(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %5 = tail call ptr %4(i64 noundef 88, ptr noundef nonnull @.str) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
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
  tail call void @defvert_copy_index(ptr noundef %0, ptr noundef %1, i32 noundef %14)
  br label %15

15:                                               ; preds = %8, %13
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %8, !llvm.loop !45

18:                                               ; preds = %15, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @defvert_copy_index(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ne ptr %1, null
  %5 = icmp sgt i32 %2, -1
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %1, align 8, !tbaa !49
  br label %13

13:                                               ; preds = %11, %18
  %14 = phi i32 [ %19, %18 ], [ %9, %11 ]
  %15 = phi ptr [ %20, %18 ], [ %12, %11 ]
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = add i32 %14, -1
  %20 = getelementptr inbounds %struct.MDeformWeight, ptr %15, i64 1
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %13, !llvm.loop !53

22:                                               ; preds = %13, %18, %7, %3
  %23 = phi ptr [ null, %3 ], [ null, %7 ], [ null, %18 ], [ %15, %13 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %68, label %25

25:                                               ; preds = %22
  %26 = icmp sgt i32 %2, -1
  tail call void @llvm.assume(i1 %26)
  %27 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !46
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %0, align 8, !tbaa !49
  br label %32

32:                                               ; preds = %37, %30
  %33 = phi i32 [ %38, %37 ], [ %28, %30 ]
  %34 = phi ptr [ %39, %37 ], [ %31, %30 ]
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = icmp eq i32 %35, %2
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = add i32 %33, -1
  %39 = getelementptr inbounds %struct.MDeformWeight, ptr %34, i64 1
  %40 = icmp eq i32 %38, 0
  br i1 %40, label %41, label %32, !llvm.loop !53

41:                                               ; preds = %37, %32, %25
  %42 = phi ptr [ null, %25 ], [ null, %37 ], [ %34, %32 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %46 = add nsw i32 %28, 1
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  %49 = tail call ptr %45(i64 noundef %48, ptr noundef nonnull @.str.13) #11
  %50 = load ptr, ptr %0, align 8, !tbaa !49
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = load i32, ptr %27, align 8, !tbaa !46
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %49, ptr nonnull align 4 %50, i64 %55, i1 false)
  %56 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %57 = load ptr, ptr %0, align 8, !tbaa !49
  tail call void %56(ptr noundef %57) #11
  br label %58

58:                                               ; preds = %52, %44
  store ptr %49, ptr %0, align 8, !tbaa !49
  %59 = load i32, ptr %27, align 8, !tbaa !46
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.MDeformWeight, ptr %49, i64 %60
  %62 = getelementptr inbounds %struct.MDeformWeight, ptr %49, i64 %60, i32 1
  store float 0.000000e+00, ptr %62, align 4, !tbaa !54
  store i32 %2, ptr %61, align 4, !tbaa !50
  %63 = add nsw i32 %59, 1
  store i32 %63, ptr %27, align 8, !tbaa !46
  br label %64

64:                                               ; preds = %41, %58
  %65 = phi ptr [ %61, %58 ], [ %42, %41 ]
  %66 = getelementptr inbounds %struct.MDeformWeight, ptr %23, i64 0, i32 1
  %67 = load float, ptr %66, align 4, !tbaa !54
  br label %89

68:                                               ; preds = %22
  %69 = icmp ne ptr %0, null
  %70 = and i1 %69, %5
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %73 = load i32, ptr %72, align 8, !tbaa !46
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %0, align 8, !tbaa !49
  br label %77

77:                                               ; preds = %75, %82
  %78 = phi i32 [ %83, %82 ], [ %73, %75 ]
  %79 = phi ptr [ %84, %82 ], [ %76, %75 ]
  %80 = load i32, ptr %79, align 4, !tbaa !50
  %81 = icmp eq i32 %80, %2
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = add i32 %78, -1
  %84 = getelementptr inbounds %struct.MDeformWeight, ptr %79, i64 1
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %77, !llvm.loop !53

86:                                               ; preds = %77, %82, %71, %68
  %87 = phi ptr [ null, %68 ], [ null, %71 ], [ null, %82 ], [ %79, %77 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %86, %64
  %90 = phi ptr [ %65, %64 ], [ %87, %86 ]
  %91 = phi float [ %67, %64 ], [ 0.000000e+00, %86 ]
  %92 = getelementptr inbounds %struct.MDeformWeight, ptr %90, i64 0, i32 1
  store float %91, ptr %92, align 4, !tbaa !54
  br label %93

93:                                               ; preds = %89, %86
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @defvert_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  %12 = load ptr, ptr %1, align 8, !tbaa !49
  %13 = sext i32 %6 to i64
  %14 = shl nsw i64 %13, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %11, ptr align 4 %12, i64 %14, i1 false)
  br label %30

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %16) #11
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, ptr %5, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %25 = load ptr, ptr %1, align 8, !tbaa !49
  %26 = tail call ptr %24(ptr noundef %25) #11
  br label %27

27:                                               ; preds = %20, %23
  %28 = phi ptr [ %26, %23 ], [ null, %20 ]
  store ptr %28, ptr %0, align 8, !tbaa !49
  %29 = load i32, ptr %5, align 8, !tbaa !46
  store i32 %29, ptr %3, align 8, !tbaa !46
  br label %30

30:                                               ; preds = %8, %10, %27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @defvert_find_index(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp ne ptr %0, null
  %4 = icmp sgt i32 %1, -1
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %23, label %18

14:                                               ; preds = %18
  %15 = getelementptr inbounds %struct.MDeformWeight, ptr %19, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !50
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %23, label %18, !llvm.loop !53

18:                                               ; preds = %10, %14
  %19 = phi ptr [ %15, %14 ], [ %11, %10 ]
  %20 = phi i32 [ %21, %14 ], [ %8, %10 ]
  %21 = add i32 %20, -1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %14, !llvm.loop !53

23:                                               ; preds = %14, %10
  %24 = phi i1 [ %9, %10 ], [ %22, %14 ]
  %25 = phi ptr [ %11, %10 ], [ %15, %14 ]
  br i1 %24, label %26, label %27

26:                                               ; preds = %18, %6, %23, %2
  br label %27

27:                                               ; preds = %23, %26
  %28 = phi ptr [ %25, %23 ], [ null, %26 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @defvert_verify_index(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp slt i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %10, %17
  %13 = phi i32 [ %18, %17 ], [ %8, %10 ]
  %14 = phi ptr [ %19, %17 ], [ %11, %10 ]
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = add i32 %13, -1
  %19 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %12, !llvm.loop !53

21:                                               ; preds = %17, %12, %6
  %22 = phi ptr [ null, %6 ], [ null, %17 ], [ %14, %12 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %26 = add nsw i32 %8, 1
  %27 = sext i32 %26 to i64
  %28 = shl nsw i64 %27, 3
  %29 = tail call ptr %25(i64 noundef %28, ptr noundef nonnull @.str.13) #11
  %30 = load ptr, ptr %0, align 8, !tbaa !49
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load i32, ptr %7, align 8, !tbaa !46
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %29, ptr nonnull align 4 %30, i64 %35, i1 false)
  %36 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %37 = load ptr, ptr %0, align 8, !tbaa !49
  tail call void %36(ptr noundef %37) #11
  br label %38

38:                                               ; preds = %32, %24
  store ptr %29, ptr %0, align 8, !tbaa !49
  %39 = load i32, ptr %7, align 8, !tbaa !46
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.MDeformWeight, ptr %29, i64 %40
  %42 = getelementptr inbounds %struct.MDeformWeight, ptr %29, i64 %40, i32 1
  store float 0.000000e+00, ptr %42, align 4, !tbaa !54
  store i32 %1, ptr %41, align 4, !tbaa !50
  %43 = add nsw i32 %39, 1
  store i32 %43, ptr %7, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %21, %2, %38
  %45 = phi ptr [ %41, %38 ], [ null, %2 ], [ %22, %21 ]
  ret ptr %45
}

; Function Attrs: nounwind uwtable
define dso_local void @defvert_sync(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %92, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %92, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %4, align 8, !tbaa !46
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %92

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = icmp eq i8 %2, 0
  %17 = icmp eq ptr %0, null
  %18 = icmp ne ptr %0, null
  br label %19

19:                                               ; preds = %14, %87
  %20 = phi ptr [ %15, %14 ], [ %89, %87 ]
  %21 = phi i32 [ 0, %14 ], [ %88, %87 ]
  %22 = load i32, ptr %20, align 4, !tbaa !50
  br i1 %16, label %63, label %23

23:                                               ; preds = %19
  %24 = icmp slt i32 %22, 0
  %25 = or i1 %17, %24
  br i1 %25, label %80, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %8, align 8, !tbaa !46
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !49
  br label %31

31:                                               ; preds = %36, %29
  %32 = phi i32 [ %37, %36 ], [ %27, %29 ]
  %33 = phi ptr [ %38, %36 ], [ %30, %29 ]
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = icmp eq i32 %34, %22
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = add i32 %32, -1
  %38 = getelementptr inbounds %struct.MDeformWeight, ptr %33, i64 1
  %39 = icmp eq i32 %37, 0
  br i1 %39, label %40, label %31, !llvm.loop !53

40:                                               ; preds = %36, %31, %26
  %41 = phi ptr [ null, %26 ], [ null, %36 ], [ %33, %31 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %80

43:                                               ; preds = %40
  %44 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %45 = add nsw i32 %27, 1
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 3
  %48 = tail call ptr %44(i64 noundef %47, ptr noundef nonnull @.str.13) #11
  %49 = load ptr, ptr %0, align 8, !tbaa !49
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load i32, ptr %8, align 8, !tbaa !46
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %48, ptr nonnull align 4 %49, i64 %54, i1 false)
  %55 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %56 = load ptr, ptr %0, align 8, !tbaa !49
  tail call void %55(ptr noundef %56) #11
  br label %57

57:                                               ; preds = %51, %43
  store ptr %48, ptr %0, align 8, !tbaa !49
  %58 = load i32, ptr %8, align 8, !tbaa !46
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 %59
  %61 = getelementptr inbounds %struct.MDeformWeight, ptr %48, i64 %59, i32 1
  store float 0.000000e+00, ptr %61, align 4, !tbaa !54
  store i32 %22, ptr %60, align 4, !tbaa !50
  %62 = add nsw i32 %58, 1
  store i32 %62, ptr %8, align 8, !tbaa !46
  br label %80

63:                                               ; preds = %19
  %64 = icmp sgt i32 %22, -1
  %65 = and i1 %18, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i32, ptr %8, align 8, !tbaa !46
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr %0, align 8, !tbaa !49
  br label %71

71:                                               ; preds = %69, %76
  %72 = phi i32 [ %77, %76 ], [ %67, %69 ]
  %73 = phi ptr [ %78, %76 ], [ %70, %69 ]
  %74 = load i32, ptr %73, align 4, !tbaa !50
  %75 = icmp eq i32 %74, %22
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = add i32 %72, -1
  %78 = getelementptr inbounds %struct.MDeformWeight, ptr %73, i64 1
  %79 = icmp eq i32 %77, 0
  br i1 %79, label %80, label %71, !llvm.loop !53

80:                                               ; preds = %71, %76, %66, %63, %57, %40, %23
  %81 = phi ptr [ %60, %57 ], [ null, %23 ], [ %41, %40 ], [ null, %63 ], [ null, %66 ], [ null, %76 ], [ %73, %71 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.MDeformWeight, ptr %20, i64 0, i32 1
  %85 = load float, ptr %84, align 4, !tbaa !54
  %86 = getelementptr inbounds %struct.MDeformWeight, ptr %81, i64 0, i32 1
  store float %85, ptr %86, align 4, !tbaa !54
  br label %87

87:                                               ; preds = %83, %80
  %88 = add nuw nsw i32 %21, 1
  %89 = getelementptr inbounds %struct.MDeformWeight, ptr %20, i64 1
  %90 = load i32, ptr %4, align 8, !tbaa !46
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %19, label %92, !llvm.loop !55

92:                                               ; preds = %87, %11, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @defvert_sync_mapped(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !46
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %99, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !46
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %99, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %6, align 8, !tbaa !46
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !49
  %18 = icmp eq i8 %4, 0
  %19 = icmp eq ptr %0, null
  %20 = icmp ne ptr %0, null
  br label %21

21:                                               ; preds = %16, %94
  %22 = phi ptr [ %17, %16 ], [ %96, %94 ]
  %23 = phi i32 [ 0, %16 ], [ %95, %94 ]
  %24 = load i32, ptr %22, align 4, !tbaa !50
  %25 = icmp slt i32 %24, %3
  br i1 %25, label %26, label %94

26:                                               ; preds = %21
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds i32, ptr %2, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !56
  br i1 %18, label %70, label %30

30:                                               ; preds = %26
  %31 = icmp slt i32 %29, 0
  %32 = or i1 %19, %31
  br i1 %32, label %87, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %10, align 8, !tbaa !46
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %0, align 8, !tbaa !49
  br label %38

38:                                               ; preds = %43, %36
  %39 = phi i32 [ %44, %43 ], [ %34, %36 ]
  %40 = phi ptr [ %45, %43 ], [ %37, %36 ]
  %41 = load i32, ptr %40, align 4, !tbaa !50
  %42 = icmp eq i32 %41, %29
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = add i32 %39, -1
  %45 = getelementptr inbounds %struct.MDeformWeight, ptr %40, i64 1
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %38, !llvm.loop !53

47:                                               ; preds = %43, %38, %33
  %48 = phi ptr [ null, %33 ], [ null, %43 ], [ %40, %38 ]
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %52 = add nsw i32 %34, 1
  %53 = sext i32 %52 to i64
  %54 = shl nsw i64 %53, 3
  %55 = tail call ptr %51(i64 noundef %54, ptr noundef nonnull @.str.13) #11
  %56 = load ptr, ptr %0, align 8, !tbaa !49
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = load i32, ptr %10, align 8, !tbaa !46
  %60 = sext i32 %59 to i64
  %61 = shl nsw i64 %60, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %55, ptr nonnull align 4 %56, i64 %61, i1 false)
  %62 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %63 = load ptr, ptr %0, align 8, !tbaa !49
  tail call void %62(ptr noundef %63) #11
  br label %64

64:                                               ; preds = %58, %50
  store ptr %55, ptr %0, align 8, !tbaa !49
  %65 = load i32, ptr %10, align 8, !tbaa !46
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.MDeformWeight, ptr %55, i64 %66
  %68 = getelementptr inbounds %struct.MDeformWeight, ptr %55, i64 %66, i32 1
  store float 0.000000e+00, ptr %68, align 4, !tbaa !54
  store i32 %29, ptr %67, align 4, !tbaa !50
  %69 = add nsw i32 %65, 1
  store i32 %69, ptr %10, align 8, !tbaa !46
  br label %87

70:                                               ; preds = %26
  %71 = icmp sgt i32 %29, -1
  %72 = and i1 %20, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load i32, ptr %10, align 8, !tbaa !46
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %0, align 8, !tbaa !49
  br label %78

78:                                               ; preds = %76, %83
  %79 = phi i32 [ %84, %83 ], [ %74, %76 ]
  %80 = phi ptr [ %85, %83 ], [ %77, %76 ]
  %81 = load i32, ptr %80, align 4, !tbaa !50
  %82 = icmp eq i32 %81, %29
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = add i32 %79, -1
  %85 = getelementptr inbounds %struct.MDeformWeight, ptr %80, i64 1
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %87, label %78, !llvm.loop !53

87:                                               ; preds = %78, %83, %73, %70, %64, %47, %30
  %88 = phi ptr [ %67, %64 ], [ null, %30 ], [ %48, %47 ], [ null, %70 ], [ null, %73 ], [ null, %83 ], [ %80, %78 ]
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.MDeformWeight, ptr %22, i64 0, i32 1
  %92 = load float, ptr %91, align 4, !tbaa !54
  %93 = getelementptr inbounds %struct.MDeformWeight, ptr %88, i64 0, i32 1
  store float %92, ptr %93, align 4, !tbaa !54
  br label %94

94:                                               ; preds = %87, %90, %21
  %95 = add nuw nsw i32 %23, 1
  %96 = getelementptr inbounds %struct.MDeformWeight, ptr %22, i64 1
  %97 = load i32, ptr %6, align 8, !tbaa !46
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %21, label %99, !llvm.loop !57

99:                                               ; preds = %94, %13, %9, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_remap(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i32 [ %19, %18 ], [ %5, %7 ]
  %11 = phi ptr [ %20, %18 ], [ %8, %7 ]
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %1, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !56
  store i32 %17, ptr %11, align 4, !tbaa !50
  br label %18

18:                                               ; preds = %9, %14
  %19 = add i32 %10, -1
  %20 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 1
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %9, !llvm.loop !58

22:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_normalize_subset(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  switch i32 %5, label %17 [
    i32 0, label %67
    i32 1, label %6
  ]

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !49
  %8 = load i32, ptr %7, align 4, !tbaa !50
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
  store float 1.000000e+00, ptr %16, align 4, !tbaa !54
  br label %67

17:                                               ; preds = %3
  %18 = load ptr, ptr %0, align 8, !tbaa !49
  br label %19

19:                                               ; preds = %17, %34
  %20 = phi ptr [ %18, %17 ], [ %37, %34 ]
  %21 = phi float [ 0.000000e+00, %17 ], [ %35, %34 ]
  %22 = phi i32 [ %5, %17 ], [ %36, %34 ]
  %23 = load i32, ptr %20, align 4, !tbaa !50
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
  %32 = load float, ptr %31, align 4, !tbaa !54
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
  %47 = load i32, ptr %45, align 4, !tbaa !50
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
  %56 = load float, ptr %55, align 4, !tbaa !54
  %57 = fmul float %42, %56
  store float %57, ptr %55, align 4, !tbaa !54
  %58 = fcmp olt float %57, 0.000000e+00
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = fcmp ogt float %57, 1.000000e+00
  br i1 %60, label %61, label %63

61:                                               ; preds = %59, %54
  %62 = phi float [ 0.000000e+00, %54 ], [ 1.000000e+00, %59 ]
  store float %62, ptr %55, align 4, !tbaa !54
  br label %63

63:                                               ; preds = %61, %44, %49, %59
  %64 = add i32 %46, -1
  %65 = getelementptr inbounds %struct.MDeformWeight, ptr %45, i64 1
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %67, label %44, !llvm.loop !60

67:                                               ; preds = %63, %41, %39, %6, %10, %15, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_normalize(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !46
  switch i32 %3, label %7 [
    i32 0, label %39
    i32 1, label %4
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.MDeformWeight, ptr %5, i64 0, i32 1
  store float 1.000000e+00, ptr %6, align 4, !tbaa !54
  br label %39

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi ptr [ %8, %7 ], [ %17, %9 ]
  %11 = phi float [ 0.000000e+00, %7 ], [ %15, %9 ]
  %12 = phi i32 [ %3, %7 ], [ %16, %9 ]
  %13 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 0, i32 1
  %14 = load float, ptr %13, align 4, !tbaa !54
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
  %28 = load float, ptr %27, align 4, !tbaa !54
  %29 = fmul float %22, %28
  store float %29, ptr %27, align 4, !tbaa !54
  %30 = fcmp olt float %29, 0.000000e+00
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = fcmp ogt float %29, 1.000000e+00
  br i1 %32, label %33, label %35

33:                                               ; preds = %31, %24
  %34 = phi float [ 0.000000e+00, %24 ], [ 1.000000e+00, %31 ]
  store float %34, ptr %27, align 4, !tbaa !54
  br label %35

35:                                               ; preds = %33, %31
  %36 = add i32 %26, -1
  %37 = getelementptr inbounds %struct.MDeformWeight, ptr %25, i64 1
  %38 = icmp eq i32 %36, 0
  br i1 %38, label %39, label %24, !llvm.loop !62

39:                                               ; preds = %35, %21, %19, %1, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_normalize_lock_single(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !46
  switch i32 %6, label %20 [
    i32 0, label %85
    i32 1, label %7
  ]

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = load i32, ptr %8, align 4, !tbaa !50
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
  store float 1.000000e+00, ptr %19, align 4, !tbaa !54
  br label %85

20:                                               ; preds = %4
  %21 = load ptr, ptr %0, align 8, !tbaa !49
  br label %22

22:                                               ; preds = %20, %47
  %23 = phi ptr [ null, %20 ], [ %50, %47 ]
  %24 = phi float [ 1.000000e+00, %20 ], [ %49, %47 ]
  %25 = phi float [ 0.000000e+00, %20 ], [ %48, %47 ]
  %26 = phi i32 [ %6, %20 ], [ %51, %47 ]
  %27 = phi ptr [ %21, %20 ], [ %52, %47 ]
  %28 = load i32, ptr %27, align 4, !tbaa !50
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
  %38 = load float, ptr %37, align 4, !tbaa !54
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
  %63 = load i32, ptr %62, align 4, !tbaa !50
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
  %74 = load float, ptr %73, align 4, !tbaa !54
  %75 = fmul float %58, %74
  store float %75, ptr %73, align 4, !tbaa !54
  %76 = fcmp olt float %75, 0.000000e+00
  br i1 %76, label %79, label %77

77:                                               ; preds = %72
  %78 = fcmp ogt float %75, 1.000000e+00
  br i1 %78, label %79, label %81

79:                                               ; preds = %77, %72
  %80 = phi float [ 0.000000e+00, %72 ], [ 1.000000e+00, %77 ]
  store float %80, ptr %73, align 4, !tbaa !54
  br label %81

81:                                               ; preds = %79, %60, %65, %77
  %82 = add i32 %61, -1
  %83 = getelementptr inbounds %struct.MDeformWeight, ptr %62, i64 1
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %85, label %60, !llvm.loop !64

85:                                               ; preds = %81, %56, %54, %7, %11, %18, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_normalize_lock_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !46
  switch i32 %7, label %24 [
    i32 0, label %96
    i32 1, label %8
  ]

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 8, !tbaa !49
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = icmp slt i32 %10, %2
  br i1 %11, label %12, label %96

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !44
  %16 = icmp ne i8 %15, 0
  %17 = icmp sgt i32 %4, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %96

19:                                               ; preds = %12
  %20 = load i8, ptr %3, align 1, !tbaa !44
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %96, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.MDeformWeight, ptr %9, i64 0, i32 1
  store float 1.000000e+00, ptr %23, align 4, !tbaa !54
  br label %96

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %24, %52
  %27 = phi ptr [ %25, %24 ], [ %56, %52 ]
  %28 = phi float [ 0.000000e+00, %24 ], [ %54, %52 ]
  %29 = phi float [ 0.000000e+00, %24 ], [ %53, %52 ]
  %30 = phi i32 [ %7, %24 ], [ %55, %52 ]
  %31 = load i32, ptr %27, align 4, !tbaa !50
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
  %46 = load float, ptr %45, align 4, !tbaa !54
  %47 = fadd float %29, %46
  br label %52

48:                                               ; preds = %40, %38
  %49 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 0, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !54
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
  br i1 %59, label %60, label %96

60:                                               ; preds = %58
  %61 = fsub float 1.000000e+00, %54
  %62 = fcmp olt float %61, 0.000000e+00
  %63 = select i1 %62, float 0.000000e+00, float %61
  %64 = fdiv float 1.000000e+00, %53
  %65 = fmul float %64, %63
  %66 = icmp eq i32 %7, 0
  br i1 %66, label %96, label %67

67:                                               ; preds = %60, %92
  %68 = phi ptr [ %94, %92 ], [ %25, %60 ]
  %69 = phi i32 [ %93, %92 ], [ %7, %60 ]
  %70 = load i32, ptr %68, align 4, !tbaa !50
  %71 = icmp slt i32 %70, %2
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = sext i32 %70 to i64
  %74 = getelementptr inbounds i8, ptr %1, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !44
  %76 = icmp ne i8 %75, 0
  %77 = icmp slt i32 %70, %4
  %78 = and i1 %77, %76
  br i1 %78, label %79, label %92

79:                                               ; preds = %72
  %80 = getelementptr inbounds i8, ptr %3, i64 %73
  %81 = load i8, ptr %80, align 1, !tbaa !44
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.MDeformWeight, ptr %68, i64 0, i32 1
  %85 = load float, ptr %84, align 4, !tbaa !54
  %86 = fmul float %65, %85
  store float %86, ptr %84, align 4, !tbaa !54
  %87 = fcmp olt float %86, 0.000000e+00
  br i1 %87, label %90, label %88

88:                                               ; preds = %83
  %89 = fcmp ogt float %86, 1.000000e+00
  br i1 %89, label %90, label %92

90:                                               ; preds = %88, %83
  %91 = phi float [ 0.000000e+00, %83 ], [ 1.000000e+00, %88 ]
  store float %91, ptr %84, align 4, !tbaa !54
  br label %92

92:                                               ; preds = %90, %67, %72, %88, %79
  %93 = add i32 %69, -1
  %94 = getelementptr inbounds %struct.MDeformWeight, ptr %68, i64 1
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %96, label %67, !llvm.loop !66

96:                                               ; preds = %92, %60, %58, %8, %12, %22, %19, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @defvert_flip(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  br label %9

9:                                                ; preds = %7, %20
  %10 = phi i32 [ %22, %20 ], [ 0, %7 ]
  %11 = phi ptr [ %21, %20 ], [ %8, %7 ]
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = sext i32 %12 to i64
  %16 = getelementptr inbounds i32, ptr %1, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 %17, ptr %11, align 4, !tbaa !50
  br label %20

20:                                               ; preds = %9, %19, %14
  %21 = getelementptr inbounds %struct.MDeformWeight, ptr %11, i64 1
  %22 = add nuw nsw i32 %10, 1
  %23 = icmp eq i32 %22, %5
  br i1 %23, label %24, label %9, !llvm.loop !67

24:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @defvert_flip_merged(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %72

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = zext nneg i32 %5 to i64
  br label %10

10:                                               ; preds = %7, %67
  %11 = phi i64 [ 0, %7 ], [ %70, %67 ]
  %12 = phi ptr [ %8, %7 ], [ %69, %67 ]
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = icmp slt i32 %13, %2
  br i1 %14, label %15, label %67

15:                                               ; preds = %10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds i32, ptr %1, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %67

20:                                               ; preds = %15
  %21 = load i32, ptr %4, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !49
  br label %25

25:                                               ; preds = %30, %23
  %26 = phi i32 [ %31, %30 ], [ %21, %23 ]
  %27 = phi ptr [ %32, %30 ], [ %24, %23 ]
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = icmp eq i32 %28, %18
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = add i32 %26, -1
  %32 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 1
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %25, !llvm.loop !53

34:                                               ; preds = %30, %25, %20
  %35 = phi ptr [ null, %20 ], [ null, %30 ], [ %27, %25 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %39 = add nsw i32 %21, 1
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 3
  %42 = tail call ptr %38(i64 noundef %41, ptr noundef nonnull @.str.13) #11
  %43 = load ptr, ptr %0, align 8, !tbaa !49
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load i32, ptr %4, align 8, !tbaa !46
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %42, ptr nonnull align 4 %43, i64 %48, i1 false)
  %49 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %50 = load ptr, ptr %0, align 8, !tbaa !49
  tail call void %49(ptr noundef %50) #11
  br label %51

51:                                               ; preds = %45, %37
  store ptr %42, ptr %0, align 8, !tbaa !49
  %52 = load i32, ptr %4, align 8, !tbaa !46
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.MDeformWeight, ptr %42, i64 %53
  %55 = getelementptr inbounds %struct.MDeformWeight, ptr %42, i64 %53, i32 1
  store float 0.000000e+00, ptr %55, align 4, !tbaa !54
  store i32 %18, ptr %54, align 4, !tbaa !50
  %56 = add nsw i32 %52, 1
  store i32 %56, ptr %4, align 8, !tbaa !46
  br label %57

57:                                               ; preds = %34, %51
  %58 = phi ptr [ %54, %51 ], [ %35, %34 ]
  %59 = load ptr, ptr %0, align 8, !tbaa !49
  %60 = getelementptr inbounds %struct.MDeformWeight, ptr %59, i64 %11
  %61 = getelementptr inbounds %struct.MDeformWeight, ptr %58, i64 0, i32 1
  %62 = load float, ptr %61, align 4, !tbaa !54
  %63 = getelementptr inbounds %struct.MDeformWeight, ptr %59, i64 %11, i32 1
  %64 = load float, ptr %63, align 4, !tbaa !54
  %65 = fadd float %62, %64
  %66 = fmul float %65, 5.000000e-01
  store float %66, ptr %61, align 4, !tbaa !54
  store float %66, ptr %63, align 4, !tbaa !54
  br label %67

67:                                               ; preds = %10, %57, %15
  %68 = phi ptr [ %60, %57 ], [ %12, %15 ], [ %12, %10 ]
  %69 = getelementptr inbounds %struct.MDeformWeight, ptr %68, i64 1
  %70 = add nuw nsw i64 %11, 1
  %71 = icmp eq i64 %70, %9
  br i1 %71, label %72, label %10, !llvm.loop !68

72:                                               ; preds = %67, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @defgroup_find_name(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %4 = tail call ptr @BLI_findstring(ptr noundef nonnull %3, ptr noundef %1, i32 noundef 16) #11
  ret ptr %4
}

declare ptr @BLI_findstring(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @defgroup_name_index(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_findstringindex(ptr noundef nonnull %5, ptr noundef nonnull %1, i32 noundef 16) #11
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi i32 [ %6, %4 ], [ -1, %2 ]
  ret i32 %8
}

declare i32 @BLI_findstringindex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @defgroup_flip_map(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call i32 @BLI_countlist(ptr noundef nonnull %5) #11
  store i32 %6, ptr %1, align 4, !tbaa !56
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %10 = sext i32 %6 to i64
  %11 = shl nsw i64 %10, 2
  %12 = tail call ptr %9(i64 noundef %11, ptr noundef nonnull @__func__.defgroup_flip_map) #11
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
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %32, i8 noundef zeroext 0)
  %33 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %32) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = call i32 @BLI_findstringindex(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 16) #11
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
  br i1 %45, label %46, label %22, !llvm.loop !69

46:                                               ; preds = %42, %17
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %47

47:                                               ; preds = %3, %46
  %48 = phi ptr [ %12, %46 ], [ null, %3 ]
  ret ptr %48
}

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_deform_flip_side_name(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %8 = tail call ptr @BLI_strncpy(ptr noundef %0, ptr noundef %1, i64 noundef 64) #11
  %9 = tail call i64 @BLI_strnlen(ptr noundef %1, i64 noundef 64) #11
  %10 = trunc i64 %9 to i32
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %120, label %12

12:                                               ; preds = %3
  %13 = tail call ptr @__ctype_b_loc() #13
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = add i64 %9, 4294967295
  %16 = and i64 %15, 4294967295
  %17 = getelementptr inbounds i8, ptr %0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !44
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds i16, ptr %14, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !70
  %22 = and i16 %21, 2048
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %12
  %25 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !44
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds i16, ptr %14, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !70
  %33 = and i16 %32, 2048
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %27
  %36 = icmp eq i8 %2, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call ptr @BLI_strncpy(ptr noundef nonnull %7, ptr noundef nonnull %25, i64 noundef 64) #11
  br label %39

39:                                               ; preds = %37, %35
  store i8 0, ptr %25, align 1, !tbaa !44
  %40 = call i64 @BLI_strnlen(ptr noundef %0, i64 noundef 64) #11
  %41 = trunc i64 %40 to i32
  br label %42

42:                                               ; preds = %24, %27, %39, %12
  %43 = phi i32 [ %41, %39 ], [ %10, %27 ], [ %10, %24 ], [ %10, %12 ]
  %44 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef %0, i64 noundef 64) #11
  %45 = sext i32 %43 to i64
  %46 = getelementptr i8, ptr %0, i64 %45
  %47 = getelementptr i8, ptr %46, i64 -2
  %48 = load i8, ptr %47, align 1, !tbaa !44
  switch i8 %48, label %62 [
    i8 46, label %49
    i8 45, label %49
    i8 32, label %49
    i8 95, label %49
  ]

49:                                               ; preds = %42, %42, %42, %42
  %50 = add nsw i32 %43, -1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !44
  switch i8 %53, label %62 [
    i8 108, label %54
    i8 114, label %56
    i8 76, label %58
    i8 82, label %60
  ]

54:                                               ; preds = %49
  %55 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %51
  store i8 0, ptr %55, align 1, !tbaa !44
  store i16 114, ptr %6, align 16
  br label %75

56:                                               ; preds = %49
  %57 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %51
  store i8 0, ptr %57, align 1, !tbaa !44
  store i16 108, ptr %6, align 16
  br label %75

58:                                               ; preds = %49
  %59 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %51
  store i8 0, ptr %59, align 1, !tbaa !44
  store i16 82, ptr %6, align 16
  br label %75

60:                                               ; preds = %49
  %61 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 %51
  store i8 0, ptr %61, align 1, !tbaa !44
  store i16 76, ptr %6, align 16
  br label %75

62:                                               ; preds = %42, %49
  %63 = getelementptr inbounds i8, ptr %0, i64 1
  %64 = load i8, ptr %63, align 1, !tbaa !44
  switch i8 %64, label %75 [
    i8 46, label %65
    i8 45, label %65
    i8 32, label %65
    i8 95, label %65
  ]

65:                                               ; preds = %62, %62, %62, %62
  %66 = load i8, ptr %0, align 1, !tbaa !44
  switch i8 %66, label %75 [
    i8 108, label %67
    i8 114, label %69
    i8 76, label %71
    i8 82, label %73
  ]

67:                                               ; preds = %65
  store i16 114, ptr %6, align 16
  %68 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %63, i64 noundef 64) #11
  store i8 0, ptr %4, align 16, !tbaa !44
  br label %75

69:                                               ; preds = %65
  store i16 108, ptr %6, align 16
  %70 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %63, i64 noundef 64) #11
  store i8 0, ptr %4, align 16, !tbaa !44
  br label %75

71:                                               ; preds = %65
  store i16 82, ptr %6, align 16
  %72 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %63, i64 noundef 64) #11
  store i8 0, ptr %4, align 16, !tbaa !44
  br label %75

73:                                               ; preds = %65
  store i16 76, ptr %6, align 16
  %74 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %63, i64 noundef 64) #11
  store i8 0, ptr %4, align 16, !tbaa !44
  br label %75

75:                                               ; preds = %62, %60, %58, %56, %54, %65, %67, %69, %71, %73
  %76 = phi i1 [ false, %73 ], [ false, %71 ], [ false, %69 ], [ false, %67 ], [ true, %65 ], [ false, %54 ], [ false, %56 ], [ false, %58 ], [ false, %60 ], [ true, %62 ]
  %77 = icmp sgt i32 %43, 5
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %118

79:                                               ; preds = %75
  %80 = call ptr @BLI_strcasestr(ptr noundef nonnull %4, ptr noundef nonnull @.str.6) #11
  %81 = icmp eq ptr %80, %4
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = zext nneg i32 %43 to i64
  %84 = getelementptr inbounds i8, ptr %4, i64 %83
  %85 = getelementptr inbounds i8, ptr %84, i64 -5
  %86 = icmp eq ptr %80, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %82, %79
  %88 = load i8, ptr %80, align 1, !tbaa !44
  %89 = icmp eq i8 %88, 114
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %80, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !44
  %93 = icmp eq i8 %92, 73
  %94 = select i1 %93, ptr @.str.8, ptr @.str.9
  br label %95

95:                                               ; preds = %87, %90
  %96 = phi ptr [ %94, %90 ], [ @.str.7, %87 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %6, ptr noundef nonnull align 1 dereferenceable(5) %96, i64 5, i1 false) #11
  store i8 0, ptr %80, align 1, !tbaa !44
  %97 = getelementptr inbounds i8, ptr %80, i64 5
  br label %115

98:                                               ; preds = %82
  %99 = call ptr @BLI_strcasestr(ptr noundef nonnull %4, ptr noundef nonnull @.str.7) #11
  %100 = icmp eq ptr %99, %4
  %101 = getelementptr inbounds i8, ptr %84, i64 -4
  %102 = icmp eq ptr %99, %101
  %103 = select i1 %100, i1 true, i1 %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %98
  %105 = load i8, ptr %99, align 1, !tbaa !44
  %106 = icmp eq i8 %105, 108
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds i8, ptr %99, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !44
  %110 = icmp eq i8 %109, 69
  %111 = select i1 %110, ptr @.str.10, ptr @.str.11
  br label %112

112:                                              ; preds = %104, %107
  %113 = phi ptr [ %111, %107 ], [ @.str.6, %104 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %6, ptr noundef nonnull align 1 dereferenceable(6) %113, i64 6, i1 false) #11
  store i8 0, ptr %99, align 1, !tbaa !44
  %114 = getelementptr inbounds i8, ptr %99, i64 4
  br label %115

115:                                              ; preds = %112, %95
  %116 = phi ptr [ %97, %95 ], [ %114, %112 ]
  %117 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull %116, i64 noundef 64) #11
  br label %118

118:                                              ; preds = %115, %98, %75
  %119 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %0, i64 noundef 64, ptr noundef nonnull @.str.12, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #11
  br label %120

120:                                              ; preds = %3, %118
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local ptr @defgroup_flip_map_single(ptr noundef %0, ptr nocapture noundef writeonly %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [64 x i8], align 16
  %6 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %7 = tail call i32 @BLI_countlist(ptr noundef nonnull %6) #11
  store i32 %7, ptr %1, align 4, !tbaa !56
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  %10 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %11 = sext i32 %7 to i64
  %12 = shl nsw i64 %11, 2
  %13 = tail call ptr %10(i64 noundef %12, ptr noundef nonnull @__func__.defgroup_flip_map_single) #11
  %14 = icmp sgt i32 %7, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = icmp eq i8 %2, 0
  %17 = zext nneg i32 %7 to i64
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %23, %18 ]
  %20 = trunc i64 %19 to i32
  %21 = select i1 %16, i32 -1, i32 %20
  %22 = getelementptr inbounds i32, ptr %13, i64 %19
  store i32 %21, ptr %22, align 4, !tbaa !56
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %17
  br i1 %24, label %25, label %18, !llvm.loop !72

25:                                               ; preds = %18, %9
  %26 = tail call ptr @BLI_findlink(ptr noundef nonnull %6, i32 noundef %3) #11
  %27 = getelementptr inbounds %struct.bDeformGroup, ptr %26, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %5, ptr noundef nonnull %27, i8 noundef zeroext 0)
  %28 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %27) #12
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = call i32 @BLI_findstringindex(ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 16) #11
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = sext i32 %3 to i64
  %35 = getelementptr inbounds i32, ptr %13, i64 %34
  store i32 %31, ptr %35, align 4, !tbaa !56
  %36 = sext i32 %31 to i64
  %37 = getelementptr inbounds i32, ptr %13, i64 %36
  store i32 %3, ptr %37, align 4, !tbaa !56
  br label %38

38:                                               ; preds = %30, %33, %25
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  br label %39

39:                                               ; preds = %4, %38
  %40 = phi ptr [ %13, %38 ], [ null, %4 ]
  ret ptr %40
}

declare ptr @BLI_findlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @defgroup_flip_index(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 25
  %6 = tail call ptr @BLI_findlink(ptr noundef nonnull %5, i32 noundef %1) #11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #11
  %9 = getelementptr inbounds %struct.bDeformGroup, ptr %6, i64 0, i32 2
  call void @BKE_deform_flip_side_name(ptr noundef nonnull %4, ptr noundef nonnull %9, i8 noundef zeroext 0)
  %10 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %9) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = call i32 @BLI_findstringindex(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef 16) #11
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi i32 [ -1, %8 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #11
  br label %16

16:                                               ; preds = %14, %3
  %17 = phi i32 [ %15, %14 ], [ -1, %3 ]
  %18 = icmp eq i32 %17, -1
  %19 = icmp ne i8 %2, 0
  %20 = and i1 %19, %18
  %21 = select i1 %20, i32 %1, i32 %17
  ret i32 %21
}

declare zeroext i8 @BLI_uniquename_cb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @defgroup_unique_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.anon.0, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = load ptr, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 25
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %16
  %10 = phi ptr [ %17, %16 ], [ %7, %2 ]
  %11 = icmp eq ptr %10, %4
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.bDeformGroup, ptr %10, i64 0, i32 2
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %9
  %17 = load ptr, ptr %10, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !73

19:                                               ; preds = %12, %16, %2
  %20 = phi i8 [ 0, %2 ], [ 1, %12 ], [ 0, %16 ]
  ret i8 %20
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_deform_split_suffix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @BLI_strnlen(ptr noundef %0, i64 noundef 64) #11
  store i8 0, ptr %2, align 1, !tbaa !44
  store i8 0, ptr %1, align 1, !tbaa !44
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %3, %23
  %7 = phi i64 [ %24, %23 ], [ %4, %3 ]
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !44
  switch i8 %9, label %10 [
    i8 46, label %13
    i8 45, label %13
    i8 32, label %13
  ]

10:                                               ; preds = %6
  %11 = icmp eq i8 %9, 95
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %6, %6, %10
  %14 = phi i8 [ 1, %6 ], [ %12, %10 ], [ 1, %6 ], [ 1, %6 ]
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %0, i64 %7
  %18 = add i64 %7, 1
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %18) #11
  %20 = add i64 %4, 1
  %21 = sub i64 %20, %7
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef nonnull %17, i64 noundef %21) #11
  br label %28

23:                                               ; preds = %13
  %24 = add i64 %7, -1
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %6, !llvm.loop !74

26:                                               ; preds = %23, %3
  %27 = add i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr align 1 %0, i64 %27, i1 false)
  br label %28

28:                                               ; preds = %26, %16
  ret void
}

declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BKE_deform_split_prefix(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i64 @BLI_strnlen(ptr noundef %0, i64 noundef 64) #11
  store i8 0, ptr %1, align 1, !tbaa !44
  store i8 0, ptr %2, align 1, !tbaa !44
  %5 = icmp ugt i64 %4, 1
  br i1 %5, label %6, label %26

6:                                                ; preds = %3, %23
  %7 = phi i64 [ %24, %23 ], [ 1, %3 ]
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !44
  switch i8 %9, label %10 [
    i8 46, label %13
    i8 45, label %13
    i8 32, label %13
  ]

10:                                               ; preds = %6
  %11 = icmp eq i8 %9, 95
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %6, %6, %6, %10
  %14 = phi i8 [ 1, %6 ], [ %12, %10 ], [ 1, %6 ], [ 1, %6 ]
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %0, i64 %7
  %18 = add i64 %7, 2
  %19 = tail call ptr @BLI_strncpy(ptr noundef nonnull %1, ptr noundef %0, i64 noundef %18) #11
  %20 = getelementptr i8, ptr %17, i64 1
  %21 = sub i64 %4, %7
  %22 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %20, i64 noundef %21) #11
  br label %28

23:                                               ; preds = %13
  %24 = add nuw i64 %7, 1
  %25 = icmp eq i64 %24, %4
  br i1 %25, label %26, label %6, !llvm.loop !75

26:                                               ; preds = %23, %3
  %27 = tail call ptr @BLI_strncpy(ptr noundef nonnull %2, ptr noundef %0, i64 noundef %4) #11
  br label %28

28:                                               ; preds = %26, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

declare ptr @BLI_strcasestr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local float @defvert_find_weight(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp ne ptr %0, null
  %4 = icmp sgt i32 %1, -1
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  br label %12

12:                                               ; preds = %10, %17
  %13 = phi i32 [ %18, %17 ], [ %8, %10 ]
  %14 = phi ptr [ %19, %17 ], [ %11, %10 ]
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = add i32 %13, -1
  %19 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %12, !llvm.loop !53

21:                                               ; preds = %12, %17, %6, %2
  %22 = phi ptr [ null, %2 ], [ null, %6 ], [ null, %17 ], [ %14, %12 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.MDeformWeight, ptr %22, i64 0, i32 1
  %26 = load float, ptr %25, align 4, !tbaa !54
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi float [ %26, %24 ], [ 0.000000e+00, %21 ]
  ret float %28
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local float @defvert_array_find_weight_safe(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = icmp eq i32 %2, -1
  %5 = icmp eq ptr %0, null
  %6 = or i1 %5, %4
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %2, -1
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  %10 = sext i32 %1 to i64
  %11 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %10, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !46
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %10
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  br label %17

17:                                               ; preds = %14, %22
  %18 = phi i32 [ %23, %22 ], [ %12, %14 ]
  %19 = phi ptr [ %24, %22 ], [ %16, %14 ]
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = add i32 %18, -1
  %24 = getelementptr inbounds %struct.MDeformWeight, ptr %19, i64 1
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %26, label %17, !llvm.loop !53

26:                                               ; preds = %17, %22, %9, %7
  %27 = phi ptr [ null, %7 ], [ null, %9 ], [ null, %22 ], [ %19, %17 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.MDeformWeight, ptr %27, i64 0, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !54
  br label %32

32:                                               ; preds = %29, %26, %3
  %33 = phi float [ 1.000000e+00, %3 ], [ %31, %29 ], [ 0.000000e+00, %26 ]
  ret float %33
}

; Function Attrs: nounwind uwtable
define dso_local void @defvert_add_index_notest(ptr noundef %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp slt i32 %1, 0
  %6 = or i1 %4, %5
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !46
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr %8(i64 noundef %13, ptr noundef nonnull @.str.14) #11
  %15 = load ptr, ptr %0, align 8, !tbaa !49
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %9, align 8, !tbaa !46
  %19 = sext i32 %18 to i64
  %20 = shl nsw i64 %19, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %14, ptr nonnull align 4 %15, i64 %20, i1 false)
  %21 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %22 = load ptr, ptr %0, align 8, !tbaa !49
  tail call void %21(ptr noundef %22) #11
  br label %23

23:                                               ; preds = %17, %7
  store ptr %14, ptr %0, align 8, !tbaa !49
  %24 = load i32, ptr %9, align 8, !tbaa !46
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 %25
  %27 = getelementptr inbounds %struct.MDeformWeight, ptr %14, i64 %25, i32 1
  store float %2, ptr %27, align 4, !tbaa !54
  store i32 %1, ptr %26, align 4, !tbaa !50
  %28 = add nsw i32 %24, 1
  store i32 %28, ptr %9, align 8, !tbaa !46
  br label %29

29:                                               ; preds = %3, %23
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @defvert_remove_group(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %49

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !49
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 3
  %12 = trunc i64 %11 to i32
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %49, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp sgt i32 %16, %12
  br i1 %17, label %18, label %49

18:                                               ; preds = %14
  %19 = add nsw i32 %16, -1
  store i32 %19, ptr %15, align 8, !tbaa !46
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %23 = zext nneg i32 %19 to i64
  %24 = shl nuw nsw i64 %23, 3
  %25 = tail call ptr %22(i64 noundef %24, ptr noundef nonnull @__func__.defvert_remove_group) #11
  %26 = load ptr, ptr %0, align 8, !tbaa !49
  %27 = icmp eq ptr %26, null
  br i1 %27, label %47, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %15, align 8, !tbaa !46
  %30 = icmp eq i32 %29, %12
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = and i64 %11, 4294967295
  %33 = getelementptr inbounds %struct.MDeformWeight, ptr %26, i64 %32
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds %struct.MDeformWeight, ptr %26, i64 %34
  %36 = load i64, ptr %35, align 4
  store i64 %36, ptr %33, align 4
  br label %37

37:                                               ; preds = %31, %28
  %38 = load ptr, ptr %0, align 8, !tbaa !49
  %39 = load i32, ptr %15, align 8, !tbaa !46
  %40 = sext i32 %39 to i64
  %41 = shl nsw i64 %40, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %25, ptr align 4 %38, i64 %41, i1 false)
  %42 = load ptr, ptr %0, align 8, !tbaa !49
  br label %43

43:                                               ; preds = %18, %37
  %44 = phi ptr [ %42, %37 ], [ %7, %18 ]
  %45 = phi ptr [ %25, %37 ], [ null, %18 ]
  %46 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %46(ptr noundef %44) #11
  br label %47

47:                                               ; preds = %43, %21
  %48 = phi ptr [ %25, %21 ], [ %45, %43 ]
  store ptr %48, ptr %0, align 8, !tbaa !49
  br label %49

49:                                               ; preds = %47, %14, %6, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @defvert_clear(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %5(ptr noundef nonnull %2) #11
  store ptr null, ptr %0, align 8, !tbaa !49
  br label %6

6:                                                ; preds = %4, %1
  %7 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !46
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @defvert_find_shared(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %51, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !49
  %12 = icmp ne ptr %1, null
  br label %13

13:                                               ; preds = %10, %44
  %14 = phi i1 [ false, %10 ], [ %47, %44 ]
  %15 = phi i32 [ %4, %10 ], [ %45, %44 ]
  %16 = phi ptr [ %11, %10 ], [ %46, %44 ]
  %17 = getelementptr inbounds %struct.MDeformWeight, ptr %16, i64 0, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !54
  %19 = fcmp ogt float %18, 0.000000e+00
  br i1 %19, label %20, label %44

20:                                               ; preds = %13
  %21 = load i32, ptr %16, align 4, !tbaa !50
  %22 = icmp sgt i32 %21, -1
  %23 = and i1 %12, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load ptr, ptr %1, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %24, %31
  %27 = phi i32 [ %8, %24 ], [ %32, %31 ]
  %28 = phi ptr [ %25, %24 ], [ %33, %31 ]
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = icmp eq i32 %29, %21
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = add i32 %27, -1
  %33 = getelementptr inbounds %struct.MDeformWeight, ptr %28, i64 1
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %35, label %26, !llvm.loop !53

35:                                               ; preds = %31, %26, %20
  %36 = phi ptr [ null, %20 ], [ %28, %26 ], [ null, %31 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.MDeformWeight, ptr %36, i64 0, i32 1
  %40 = load float, ptr %39, align 4, !tbaa !54
  br label %41

41:                                               ; preds = %35, %38
  %42 = phi float [ %40, %38 ], [ 0.000000e+00, %35 ]
  %43 = fcmp ogt float %42, 0.000000e+00
  br i1 %43, label %48, label %44

44:                                               ; preds = %13, %41
  %45 = add i32 %15, -1
  %46 = getelementptr inbounds %struct.MDeformWeight, ptr %16, i64 1
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %48, label %13, !llvm.loop !76

48:                                               ; preds = %41, %44
  %49 = phi i1 [ %14, %41 ], [ %47, %44 ]
  %50 = phi i32 [ %21, %41 ], [ undef, %44 ]
  br i1 %49, label %51, label %52

51:                                               ; preds = %48, %6, %2
  br label %52

52:                                               ; preds = %48, %51
  %53 = phi i32 [ %50, %48 ], [ -1, %51 ]
  ret i32 %53
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @defvert_is_weight_zero(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !46
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !49
  br label %8

8:                                                ; preds = %6, %17
  %9 = phi i32 [ %18, %17 ], [ %4, %6 ]
  %10 = phi ptr [ %19, %17 ], [ %7, %6 ]
  %11 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !54
  %13 = fcmp une float %12, 0.000000e+00
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load i32, ptr %10, align 4, !tbaa !50
  %16 = icmp slt i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %8, %14
  %18 = add i32 %9, -1
  %19 = getelementptr inbounds %struct.MDeformWeight, ptr %10, i64 1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %8, !llvm.loop !77

21:                                               ; preds = %14, %17, %2
  %22 = phi i8 [ 1, %2 ], [ 0, %14 ], [ 1, %17 ]
  ret i8 %22
}

; Function Attrs: nounwind uwtable
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
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = icmp eq ptr %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %20 = getelementptr inbounds %struct.MDeformVert, ptr %1, i64 %14, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = tail call ptr %19(i64 noundef %23, ptr noundef nonnull @.str.15) #11
  %25 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %14
  store ptr %24, ptr %25, align 8, !tbaa !49
  %26 = load ptr, ptr %15, align 8, !tbaa !49
  %27 = load i32, ptr %20, align 8, !tbaa !46
  %28 = sext i32 %27 to i64
  %29 = shl nsw i64 %28, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %24, ptr align 4 %26, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %13, %18
  %31 = add nuw nsw i64 %14, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %13, !llvm.loop !78

33:                                               ; preds = %30, %7, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_defvert_array_free_elems(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp sgt i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi i64 [ 0, %6 ], [ %16, %15 ]
  %10 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #11
  br label %15

15:                                               ; preds = %8, %13
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %8, !llvm.loop !79

18:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @BKE_defvert_array_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %20, label %4

4:                                                ; preds = %2
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = zext nneg i32 %1 to i64
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi i64 [ 0, %6 ], [ %16, %15 ]
  %10 = getelementptr inbounds %struct.MDeformVert, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #11
  br label %15

15:                                               ; preds = %13, %8
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %8, !llvm.loop !79

18:                                               ; preds = %15, %4
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %19(ptr noundef nonnull %0) #11
  br label %20

20:                                               ; preds = %2, %18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

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
!38 = !{!39, !35, i64 0}
!39 = !{!"", !35, i64 0, !35, i64 8}
!40 = !{!39, !35, i64 8}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!36, !36, i64 0}
!45 = distinct !{!45, !42, !43}
!46 = !{!47, !48, i64 8}
!47 = !{!"MDeformVert", !35, i64 0, !48, i64 8, !48, i64 12}
!48 = !{!"int", !36, i64 0}
!49 = !{!47, !35, i64 0}
!50 = !{!51, !48, i64 0}
!51 = !{!"MDeformWeight", !48, i64 0, !52, i64 4}
!52 = !{!"float", !36, i64 0}
!53 = distinct !{!53, !42, !43}
!54 = !{!51, !52, i64 4}
!55 = distinct !{!55, !42, !43}
!56 = !{!48, !48, i64 0}
!57 = distinct !{!57, !42, !43}
!58 = distinct !{!58, !42, !43}
!59 = distinct !{!59, !42, !43}
!60 = distinct !{!60, !42, !43}
!61 = distinct !{!61, !42, !43}
!62 = distinct !{!62, !42, !43}
!63 = distinct !{!63, !42, !43}
!64 = distinct !{!64, !42, !43}
!65 = distinct !{!65, !42, !43}
!66 = distinct !{!66, !42, !43}
!67 = distinct !{!67, !42, !43}
!68 = distinct !{!68, !42, !43}
!69 = distinct !{!69, !42, !43}
!70 = !{!71, !71, i64 0}
!71 = !{!"short", !36, i64 0}
!72 = distinct !{!72, !42, !43}
!73 = distinct !{!73, !42, !43}
!74 = distinct !{!74, !42, !43}
!75 = distinct !{!75, !42, !43}
!76 = distinct !{!76, !42, !43}
!77 = distinct !{!77, !42, !43}
!78 = distinct !{!78, !42, !43}
!79 = distinct !{!79, !42, !43}
