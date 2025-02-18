; ModuleID = 'ldecod_src/erc_api.c'
source_filename = "ldecod_src/erc_api.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.ercVariables_s = type { i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32 }
%struct.ercSegment_s = type { i16, i16, i8 }

@.str = private unnamed_addr constant [25 x i8] c"ercInit: erc_object_list\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ercOpen: errorVar\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ercReset: errorVar->segments\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->yCondition\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"ercReset: errorVar->prevFrameYCondition\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->uCondition\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"ercReset: errorVar->vCondition\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ercInit(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 140
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  tail call void @ercClose(ptr noundef %0, ptr noundef %6)
  %7 = mul nsw i32 %2, %1
  %8 = ashr i32 %7, 6
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 24) #10
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 139
  store ptr %10, ptr %11, align 8, !tbaa !45
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #11
  br label %14

14:                                               ; preds = %13, %4
  %15 = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #11
  br label %18

18:                                               ; preds = %14, %17
  store i32 0, ptr %15, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.ercVariables_s, ptr %15, i64 0, i32 2
  %20 = getelementptr inbounds %struct.ercVariables_s, ptr %15, i64 0, i32 7
  store ptr null, ptr %20, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.ercVariables_s, ptr %15, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %19, i8 0, i64 36, i1 false)
  store i32 1, ptr %21, align 8, !tbaa !49
  store ptr %15, ptr %5, align 8, !tbaa !34
  store i32 %3, ptr %21, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @ercClose(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !51
  tail call void @free(ptr noundef %10) #11
  %11 = load ptr, ptr %5, align 8, !tbaa !50
  tail call void @free(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  tail call void @free(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  tail call void @free(ptr noundef %15) #11
  %16 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  tail call void @free(ptr noundef %17) #11
  br label %18

18:                                               ; preds = %8, %4
  tail call void @free(ptr noundef %1) #11
  br label %19

19:                                               ; preds = %18, %2
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 139
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @free(ptr noundef %21) #11
  store ptr null, ptr %20, align 8, !tbaa !45
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @ercOpen() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #12
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #11
  br label %4

4:                                                ; preds = %3, %0
  store i32 0, ptr %1, align 8, !tbaa !46
  %5 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 7
  store ptr null, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  store i32 1, ptr %7, align 8, !tbaa !49
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ercSetErrorConcealment(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 10
  store i32 %1, ptr %5, align 8, !tbaa !49
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ercReset(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %107, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %107, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !46
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef %15) #11
  store ptr null, ptr %14, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  tail call void @free(ptr noundef %19) #11
  store ptr null, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  tail call void @free(ptr noundef %21) #11
  store ptr null, ptr %20, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  tail call void @free(ptr noundef %23) #11
  store ptr null, ptr %22, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  tail call void @free(ptr noundef %25) #11
  store ptr null, ptr %24, align 8, !tbaa !51
  br label %26

26:                                               ; preds = %17, %13, %10
  %27 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %26
  %31 = sext i32 %2 to i64
  %32 = mul nsw i64 %31, 6
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #12
  %34 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 5
  store ptr %33, ptr %34, align 8, !tbaa !51
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #11
  br label %37

37:                                               ; preds = %36, %30
  %38 = load ptr, ptr %34, align 8, !tbaa !51
  %39 = mul i64 %31, 25769803776
  %40 = ashr exact i64 %39, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %38, i8 0, i64 %40, i1 false)
  %41 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 1
  store i32 %2, ptr %41, align 4, !tbaa !54
  %42 = shl nsw i32 %1, 2
  %43 = sext i32 %42 to i64
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #12
  store ptr %44, ptr %27, align 8, !tbaa !50
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #11
  br label %47

47:                                               ; preds = %46, %37
  %48 = tail call noalias ptr @malloc(i64 noundef %43) #12
  %49 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 7
  store ptr %48, ptr %49, align 8, !tbaa !48
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #11
  br label %52

52:                                               ; preds = %51, %47
  %53 = sext i32 %1 to i64
  %54 = tail call noalias ptr @malloc(i64 noundef %53) #12
  %55 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !52
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #11
  br label %58

58:                                               ; preds = %57, %52
  %59 = tail call noalias ptr @malloc(i64 noundef %53) #12
  %60 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 4
  store ptr %59, ptr %60, align 8, !tbaa !53
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #11
  br label %63

63:                                               ; preds = %62, %58
  store i32 %1, ptr %0, align 8, !tbaa !46
  br label %67

64:                                               ; preds = %26
  %65 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  store ptr %28, ptr %65, align 8, !tbaa !48
  store ptr %66, ptr %27, align 8, !tbaa !50
  br label %67

67:                                               ; preds = %64, %63
  %68 = load ptr, ptr %27, align 8, !tbaa !50
  %69 = shl nsw i32 %1, 2
  %70 = sext i32 %69 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %68, i8 0, i64 %70, i1 false)
  %71 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %72, i8 0, i64 %73, i1 false)
  %74 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 1 %75, i8 0, i64 %73, i1 false)
  %76 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !54
  %78 = icmp eq i32 %77, %2
  br i1 %78, label %88, label %79

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !51
  tail call void @free(ptr noundef %81) #11
  store ptr null, ptr %80, align 8, !tbaa !51
  %82 = sext i32 %2 to i64
  %83 = mul nsw i64 %82, 6
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #12
  store ptr %84, ptr %80, align 8, !tbaa !51
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #11
  br label %87

87:                                               ; preds = %86, %79
  store i32 %2, ptr %76, align 4, !tbaa !54
  br label %88

88:                                               ; preds = %87, %67
  %89 = load i32, ptr %76, align 4, !tbaa !54
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 5
  %93 = load ptr, ptr %92, align 8, !tbaa !51
  %94 = trunc i32 %1 to i16
  %95 = add i16 %94, -1
  br label %96

96:                                               ; preds = %91, %96
  %97 = phi ptr [ %93, %91 ], [ %100, %96 ]
  %98 = phi i32 [ 0, %91 ], [ %102, %96 ]
  store i16 0, ptr %97, align 2, !tbaa !55
  %99 = getelementptr inbounds %struct.ercSegment_s, ptr %97, i64 0, i32 1
  store i16 %95, ptr %99, align 2, !tbaa !57
  %100 = getelementptr inbounds %struct.ercSegment_s, ptr %97, i64 1
  %101 = getelementptr inbounds %struct.ercSegment_s, ptr %97, i64 0, i32 2
  store i8 1, ptr %101, align 2, !tbaa !58
  %102 = add nuw nsw i32 %98, 1
  %103 = icmp eq i32 %102, %89
  br i1 %103, label %104, label %96, !llvm.loop !59

104:                                              ; preds = %96, %88
  %105 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %105, align 8, !tbaa !62
  %106 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %106, align 4, !tbaa !63
  br label %107

107:                                              ; preds = %104, %6, %4
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercStartSegment(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 8
  store i32 0, ptr %11, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.ercSegment_s, ptr %13, i64 %14, i32 2
  store i8 0, ptr %15, align 2, !tbaa !58
  %16 = trunc i32 %0 to i16
  %17 = getelementptr inbounds %struct.ercSegment_s, ptr %13, i64 %14
  store i16 %16, ptr %17, align 2, !tbaa !55
  br label %18

18:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercStopSegment(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #7 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = trunc i32 %0 to i16
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.ercSegment_s, ptr %13, i64 %14, i32 1
  store i16 %11, ptr %15, align 2, !tbaa !57
  %16 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !62
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !62
  br label %19

19:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrSegmentLost(i32 noundef %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = add nsw i32 %4, -1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %74, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !63
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !63
  store i32 1, ptr %12, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !51
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds %struct.ercSegment_s, ptr %21, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !55
  %25 = getelementptr inbounds %struct.ercSegment_s, ptr %21, i64 %22, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !57
  %27 = icmp sgt i16 %24, %26
  br i1 %27, label %71, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 2
  %30 = ashr i32 %0, 4
  %31 = ashr i32 %0, 3
  %32 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 3
  %33 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 4
  %34 = sext i16 %24 to i64
  br label %35

35:                                               ; preds = %28, %35
  %36 = phi i64 [ %34, %28 ], [ %65, %35 ]
  %37 = load ptr, ptr %29, align 8, !tbaa !50
  %38 = trunc i64 %36 to i32
  %39 = sdiv i32 %38, %30
  %40 = shl nsw i32 %39, 1
  %41 = mul nsw i32 %40, %31
  %42 = trunc i64 %36 to i32
  %43 = srem i32 %42, %30
  %44 = shl nsw i32 %43, 1
  %45 = add nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %37, i64 %46
  store i8 1, ptr %47, align 1, !tbaa !65
  %48 = load ptr, ptr %29, align 8, !tbaa !50
  %49 = or disjoint i32 %45, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %48, i64 %50
  store i8 1, ptr %51, align 1, !tbaa !65
  %52 = load ptr, ptr %29, align 8, !tbaa !50
  %53 = or disjoint i32 %40, 1
  %54 = mul nsw i32 %53, %31
  %55 = add nsw i32 %54, %44
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %52, i64 %56
  store i8 1, ptr %57, align 1, !tbaa !65
  %58 = load ptr, ptr %29, align 8, !tbaa !50
  %59 = getelementptr i8, ptr %58, i64 %56
  %60 = getelementptr i8, ptr %59, i64 1
  store i8 1, ptr %60, align 1, !tbaa !65
  %61 = load ptr, ptr %32, align 8, !tbaa !52
  %62 = getelementptr inbounds i8, ptr %61, i64 %36
  store i8 1, ptr %62, align 1, !tbaa !65
  %63 = load ptr, ptr %33, align 8, !tbaa !53
  %64 = getelementptr inbounds i8, ptr %63, i64 %36
  store i8 1, ptr %64, align 1, !tbaa !65
  %65 = add nsw i64 %36, 1
  %66 = load ptr, ptr %20, align 8, !tbaa !51
  %67 = getelementptr inbounds %struct.ercSegment_s, ptr %66, i64 %22, i32 1
  %68 = load i16, ptr %67, align 2, !tbaa !57
  %69 = sext i16 %68 to i64
  %70 = icmp slt i64 %36, %69
  br i1 %70, label %35, label %71, !llvm.loop !66

71:                                               ; preds = %35, %19
  %72 = phi ptr [ %21, %19 ], [ %66, %35 ]
  %73 = getelementptr inbounds %struct.ercSegment_s, ptr %72, i64 %22, i32 2
  store i8 1, ptr %73, align 2, !tbaa !58
  br label %74

74:                                               ; preds = %71, %7, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrSegmentOK(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = add nsw i32 %4, -1
  %6 = icmp eq ptr %1, null
  br i1 %6, label %66, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !49
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %66, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = sext i32 %5 to i64
  %15 = getelementptr inbounds %struct.ercSegment_s, ptr %13, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !55
  %17 = getelementptr inbounds %struct.ercSegment_s, ptr %13, i64 %14, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !57
  %19 = icmp sgt i16 %16, %18
  br i1 %19, label %63, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 2
  %22 = ashr i32 %0, 4
  %23 = ashr i32 %0, 3
  %24 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 3
  %25 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 4
  %26 = sext i16 %16 to i64
  br label %27

27:                                               ; preds = %20, %27
  %28 = phi i64 [ %26, %20 ], [ %57, %27 ]
  %29 = load ptr, ptr %21, align 8, !tbaa !50
  %30 = trunc i64 %28 to i32
  %31 = sdiv i32 %30, %22
  %32 = shl nsw i32 %31, 1
  %33 = mul nsw i32 %32, %23
  %34 = trunc i64 %28 to i32
  %35 = srem i32 %34, %22
  %36 = shl nsw i32 %35, 1
  %37 = add nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %29, i64 %38
  store i8 3, ptr %39, align 1, !tbaa !65
  %40 = load ptr, ptr %21, align 8, !tbaa !50
  %41 = or disjoint i32 %37, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  store i8 3, ptr %43, align 1, !tbaa !65
  %44 = load ptr, ptr %21, align 8, !tbaa !50
  %45 = or disjoint i32 %32, 1
  %46 = mul nsw i32 %45, %23
  %47 = add nsw i32 %46, %36
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, ptr %44, i64 %48
  store i8 3, ptr %49, align 1, !tbaa !65
  %50 = load ptr, ptr %21, align 8, !tbaa !50
  %51 = getelementptr i8, ptr %50, i64 %48
  %52 = getelementptr i8, ptr %51, i64 1
  store i8 3, ptr %52, align 1, !tbaa !65
  %53 = load ptr, ptr %24, align 8, !tbaa !52
  %54 = getelementptr inbounds i8, ptr %53, i64 %28
  store i8 3, ptr %54, align 1, !tbaa !65
  %55 = load ptr, ptr %25, align 8, !tbaa !53
  %56 = getelementptr inbounds i8, ptr %55, i64 %28
  store i8 3, ptr %56, align 1, !tbaa !65
  %57 = add nsw i64 %28, 1
  %58 = load ptr, ptr %12, align 8, !tbaa !51
  %59 = getelementptr inbounds %struct.ercSegment_s, ptr %58, i64 %14, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !57
  %61 = sext i16 %60 to i64
  %62 = icmp slt i64 %28, %61
  br i1 %62, label %27, label %63, !llvm.loop !67

63:                                               ; preds = %27, %11
  %64 = phi ptr [ %13, %11 ], [ %58, %27 ]
  %65 = getelementptr inbounds %struct.ercSegment_s, ptr %64, i64 %14, i32 2
  store i8 0, ptr %65, align 2, !tbaa !58
  br label %66

66:                                               ; preds = %63, %7, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrMBConcealed(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) local_unnamed_addr #7 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !49
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %6
  %11 = icmp sgt i32 %1, -1
  %12 = select i1 %11, i32 %1, i32 0
  switch i32 %12, label %54 [
    i32 0, label %13
    i32 1, label %39
    i32 2, label %49
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  %16 = ashr i32 %2, 4
  %17 = sdiv i32 %0, %16
  %18 = shl i32 %17, 1
  %19 = ashr i32 %2, 3
  %20 = mul nsw i32 %18, %19
  %21 = srem i32 %0, %16
  %22 = shl nsw i32 %21, 1
  %23 = add nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %15, i64 %24
  store i8 2, ptr %25, align 1, !tbaa !65
  %26 = load ptr, ptr %14, align 8, !tbaa !50
  %27 = or disjoint i32 %23, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  store i8 2, ptr %29, align 1, !tbaa !65
  %30 = load ptr, ptr %14, align 8, !tbaa !50
  %31 = or disjoint i32 %18, 1
  %32 = mul nsw i32 %31, %19
  %33 = add nsw i32 %32, %22
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %30, i64 %34
  store i8 2, ptr %35, align 1, !tbaa !65
  %36 = load ptr, ptr %14, align 8, !tbaa !50
  %37 = getelementptr i8, ptr %36, i64 %34
  %38 = getelementptr i8, ptr %37, i64 1
  store i8 2, ptr %38, align 1, !tbaa !65
  br i1 %11, label %54, label %44

39:                                               ; preds = %10
  %40 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = sext i32 %0 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  store i8 2, ptr %43, align 1, !tbaa !65
  br i1 %11, label %54, label %49

44:                                               ; preds = %13
  %45 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = sext i32 %0 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  store i8 2, ptr %48, align 1, !tbaa !65
  br label %49

49:                                               ; preds = %44, %39, %10
  %50 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = sext i32 %0 to i64
  %53 = getelementptr inbounds i8, ptr %51, i64 %52
  store i8 2, ptr %53, align 1, !tbaa !65
  br label %54

54:                                               ; preds = %10, %49, %13, %39, %6, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 856504}
!35 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !40, i64 849040, !40, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !41, i64 849304, !41, i64 849624, !41, i64 849944, !41, i64 850264, !41, i64 850584, !41, i64 850904, !41, i64 851224, !41, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !44, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!"image_data", !42, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!42 = !{!"frame_format", !39, i64 0, !39, i64 4, !43, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!43 = !{!"double", !37, i64 0}
!44 = !{!"long", !37, i64 0}
!45 = !{!35, !36, i64 856496}
!46 = !{!47, !39, i64 0}
!47 = !{!"ercVariables_s", !39, i64 0, !39, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !39, i64 40, !36, i64 48, !39, i64 56, !39, i64 60, !39, i64 64}
!48 = !{!47, !36, i64 48}
!49 = !{!47, !39, i64 64}
!50 = !{!47, !36, i64 8}
!51 = !{!47, !36, i64 32}
!52 = !{!47, !36, i64 16}
!53 = !{!47, !36, i64 24}
!54 = !{!47, !39, i64 4}
!55 = !{!56, !40, i64 0}
!56 = !{!"ercSegment_s", !40, i64 0, !40, i64 2, !37, i64 4}
!57 = !{!56, !40, i64 2}
!58 = !{!56, !37, i64 4}
!59 = distinct !{!59, !60, !61}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!47, !39, i64 40}
!63 = !{!47, !39, i64 60}
!64 = !{!47, !39, i64 56}
!65 = !{!37, !37, i64 0}
!66 = distinct !{!66, !60, !61}
!67 = distinct !{!67, !60, !61}
