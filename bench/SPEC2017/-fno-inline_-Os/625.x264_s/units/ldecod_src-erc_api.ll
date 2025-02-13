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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ercInit(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 140
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @ercClose(ptr noundef %0, ptr noundef %6) #10
  %7 = mul nsw i32 %2, %1
  %8 = ashr i32 %7, 6
  %9 = sext i32 %8 to i64
  %10 = tail call noalias ptr @calloc(i64 noundef %9, i64 noundef 24) #11
  %11 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 139
  store ptr %10, ptr %11, align 8, !tbaa !46
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #12
  br label %14

14:                                               ; preds = %13, %4
  %15 = tail call ptr @ercOpen() #10
  store ptr %15, ptr %5, align 8, !tbaa !35
  tail call void @ercSetErrorConcealment(ptr noundef %15, i32 noundef %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @ercClose(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  tail call void @free(ptr noundef %10) #12
  %11 = load ptr, ptr %5, align 8, !tbaa !47
  tail call void @free(ptr noundef %11) #12
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  tail call void @free(ptr noundef %13) #12
  %14 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  tail call void @free(ptr noundef %15) #12
  %16 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  tail call void @free(ptr noundef %17) #12
  br label %18

18:                                               ; preds = %8, %4
  tail call void @free(ptr noundef nonnull %1) #12
  br label %19

19:                                               ; preds = %18, %2
  %20 = getelementptr inbounds %struct.video_par, ptr %0, i64 0, i32 139
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %21) #12
  store ptr null, ptr %20, align 8, !tbaa !46
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @ercOpen() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %3, %0
  store i32 0, ptr %1, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 2
  %6 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 7
  store ptr null, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  store i32 1, ptr %7, align 8, !tbaa !54
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @ercSetErrorConcealment(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 10
  store i32 %1, ptr %5, align 8, !tbaa !54
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ercReset(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %106, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %106, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !53
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %15) #12
  store ptr null, ptr %14, align 8, !tbaa !47
  %18 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  tail call void @free(ptr noundef %19) #12
  store ptr null, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  tail call void @free(ptr noundef %21) #12
  store ptr null, ptr %20, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !51
  tail call void @free(ptr noundef %23) #12
  store ptr null, ptr %22, align 8, !tbaa !51
  %24 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  tail call void @free(ptr noundef %25) #12
  store ptr null, ptr %24, align 8, !tbaa !49
  br label %26

26:                                               ; preds = %17, %13, %10
  %27 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !47
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = sext i32 %2 to i64
  %32 = mul nsw i64 %31, 6
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #13
  %34 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 5
  store ptr %33, ptr %34, align 8, !tbaa !49
  %35 = icmp eq ptr %33, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #12
  %37 = load ptr, ptr %34, align 8, !tbaa !49
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi ptr [ %37, %36 ], [ %33, %30 ]
  %40 = trunc i64 %32 to i32
  tail call fastcc void @fast_memset(ptr noundef %39, i32 noundef %40) #10
  %41 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 1
  store i32 %2, ptr %41, align 4, !tbaa !55
  %42 = shl nsw i32 %1, 2
  %43 = sext i32 %42 to i64
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #13
  store ptr %44, ptr %27, align 8, !tbaa !47
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #12
  br label %47

47:                                               ; preds = %46, %38
  %48 = tail call noalias ptr @malloc(i64 noundef %43) #13
  %49 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 7
  store ptr %48, ptr %49, align 8, !tbaa !52
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  tail call void @no_mem_exit(ptr noundef nonnull @.str.4) #12
  br label %52

52:                                               ; preds = %51, %47
  %53 = sext i32 %1 to i64
  %54 = tail call noalias ptr @malloc(i64 noundef %53) #13
  %55 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !50
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  tail call void @no_mem_exit(ptr noundef nonnull @.str.5) #12
  br label %58

58:                                               ; preds = %57, %52
  %59 = tail call noalias ptr @malloc(i64 noundef %53) #13
  %60 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 4
  store ptr %59, ptr %60, align 8, !tbaa !51
  %61 = icmp eq ptr %59, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #12
  br label %63

63:                                               ; preds = %62, %58
  store i32 %1, ptr %0, align 8, !tbaa !53
  %64 = load ptr, ptr %27, align 8, !tbaa !47
  br label %69

65:                                               ; preds = %26
  %66 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 7
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  store ptr %28, ptr %66, align 8, !tbaa !52
  store ptr %67, ptr %27, align 8, !tbaa !47
  %68 = shl nsw i32 %1, 2
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %68, %65 ], [ %42, %63 ]
  %71 = phi ptr [ %67, %65 ], [ %64, %63 ]
  tail call fastcc void @fast_memset(ptr noundef %71, i32 noundef %70) #10
  %72 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !50
  tail call fastcc void @fast_memset(ptr noundef %73, i32 noundef %1) #10
  %74 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !51
  tail call fastcc void @fast_memset(ptr noundef %75, i32 noundef %1) #10
  %76 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !55
  %78 = icmp eq i32 %77, %2
  br i1 %78, label %88, label %79

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !49
  tail call void @free(ptr noundef %81) #12
  %82 = sext i32 %2 to i64
  %83 = mul nsw i64 %82, 6
  %84 = tail call noalias ptr @malloc(i64 noundef %83) #13
  store ptr %84, ptr %80, align 8, !tbaa !49
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #12
  br label %87

87:                                               ; preds = %86, %79
  store i32 %2, ptr %76, align 4, !tbaa !55
  br label %88

88:                                               ; preds = %87, %69
  %89 = icmp sgt i32 %2, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 5
  %92 = load ptr, ptr %91, align 8, !tbaa !49
  %93 = trunc i32 %1 to i16
  %94 = add i16 %93, -1
  br label %95

95:                                               ; preds = %90, %95
  %96 = phi ptr [ %92, %90 ], [ %99, %95 ]
  %97 = phi i32 [ 0, %90 ], [ %101, %95 ]
  store i16 0, ptr %96, align 2, !tbaa !56
  %98 = getelementptr inbounds %struct.ercSegment_s, ptr %96, i64 0, i32 1
  store i16 %94, ptr %98, align 2, !tbaa !58
  %99 = getelementptr inbounds %struct.ercSegment_s, ptr %96, i64 1
  %100 = getelementptr inbounds %struct.ercSegment_s, ptr %96, i64 0, i32 2
  store i8 1, ptr %100, align 2, !tbaa !59
  %101 = add nuw nsw i32 %97, 1
  %102 = icmp eq i32 %101, %2
  br i1 %102, label %103, label %95, !llvm.loop !60

103:                                              ; preds = %95, %88
  %104 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 6
  store i32 0, ptr %104, align 8, !tbaa !62
  %105 = getelementptr inbounds %struct.ercVariables_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %105, align 4, !tbaa !63
  br label %106

106:                                              ; preds = %103, %6, %4
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @fast_memset(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !64 {
  %3 = sext i32 %1 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %3, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercStartSegment(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 8
  store i32 0, ptr %11, align 8, !tbaa !65
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.ercSegment_s, ptr %13, i64 %14, i32 2
  store i8 0, ptr %15, align 2, !tbaa !59
  %16 = trunc i32 %0 to i16
  %17 = getelementptr inbounds %struct.ercSegment_s, ptr %13, i64 %14
  store i16 %16, ptr %17, align 2, !tbaa !56
  br label %18

18:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercStopSegment(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #8 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %6
  %11 = trunc i32 %0 to i16
  %12 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.ercSegment_s, ptr %13, i64 %14, i32 1
  store i16 %11, ptr %15, align 2, !tbaa !58
  %16 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !62
  %18 = add nsw i32 %17, 1
  store i32 %18, ptr %16, align 8, !tbaa !62
  br label %19

19:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrSegmentLost(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !62
  %5 = add nsw i32 %4, -1
  %6 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !65
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !63
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !63
  store i32 1, ptr %10, align 8, !tbaa !65
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = sext i32 %5 to i64
  %21 = getelementptr inbounds %struct.ercSegment_s, ptr %19, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !56
  %23 = getelementptr inbounds %struct.ercSegment_s, ptr %19, i64 %20, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !58
  %25 = icmp sgt i16 %22, %24
  br i1 %25, label %68, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 2
  %28 = ashr i32 %0, 4
  %29 = ashr i32 %0, 3
  %30 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 3
  %31 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 4
  %32 = sext i16 %22 to i64
  br label %33

33:                                               ; preds = %26, %33
  %34 = phi i64 [ %32, %26 ], [ %62, %33 ]
  %35 = load ptr, ptr %27, align 8, !tbaa !47
  %36 = trunc i64 %34 to i32
  %37 = sdiv i32 %36, %28
  %38 = shl nsw i32 %37, 1
  %39 = mul nsw i32 %38, %29
  %40 = srem i32 %36, %28
  %41 = shl nsw i32 %40, 1
  %42 = add nsw i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %35, i64 %43
  store i8 1, ptr %44, align 1, !tbaa !66
  %45 = load ptr, ptr %27, align 8, !tbaa !47
  %46 = or disjoint i32 %42, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  store i8 1, ptr %48, align 1, !tbaa !66
  %49 = load ptr, ptr %27, align 8, !tbaa !47
  %50 = or disjoint i32 %38, 1
  %51 = mul nsw i32 %50, %29
  %52 = add nsw i32 %51, %41
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %49, i64 %53
  store i8 1, ptr %54, align 1, !tbaa !66
  %55 = load ptr, ptr %27, align 8, !tbaa !47
  %56 = getelementptr i8, ptr %55, i64 %53
  %57 = getelementptr i8, ptr %56, i64 1
  store i8 1, ptr %57, align 1, !tbaa !66
  %58 = load ptr, ptr %30, align 8, !tbaa !50
  %59 = getelementptr inbounds i8, ptr %58, i64 %34
  store i8 1, ptr %59, align 1, !tbaa !66
  %60 = load ptr, ptr %31, align 8, !tbaa !51
  %61 = getelementptr inbounds i8, ptr %60, i64 %34
  store i8 1, ptr %61, align 1, !tbaa !66
  %62 = add nsw i64 %34, 1
  %63 = load ptr, ptr %18, align 8, !tbaa !49
  %64 = getelementptr inbounds %struct.ercSegment_s, ptr %63, i64 %20, i32 1
  %65 = load i16, ptr %64, align 2, !tbaa !58
  %66 = sext i16 %65 to i64
  %67 = icmp slt i64 %34, %66
  br i1 %67, label %33, label %68, !llvm.loop !67

68:                                               ; preds = %33, %17
  %69 = phi ptr [ %19, %17 ], [ %63, %33 ]
  %70 = getelementptr inbounds %struct.ercSegment_s, ptr %69, i64 %20, i32 2
  store i8 1, ptr %70, align 2, !tbaa !59
  br label %71

71:                                               ; preds = %68, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrSegmentOK(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 10
  %4 = load i32, ptr %3, align 8, !tbaa !54
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %63, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !62
  %9 = add nsw i32 %8, -1
  %10 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.ercSegment_s, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !56
  %15 = getelementptr inbounds %struct.ercSegment_s, ptr %11, i64 %12, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !58
  %17 = icmp sgt i16 %14, %16
  br i1 %17, label %60, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 2
  %20 = ashr i32 %0, 4
  %21 = ashr i32 %0, 3
  %22 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 3
  %23 = getelementptr inbounds %struct.ercVariables_s, ptr %1, i64 0, i32 4
  %24 = sext i16 %14 to i64
  br label %25

25:                                               ; preds = %18, %25
  %26 = phi i64 [ %24, %18 ], [ %54, %25 ]
  %27 = load ptr, ptr %19, align 8, !tbaa !47
  %28 = trunc i64 %26 to i32
  %29 = sdiv i32 %28, %20
  %30 = shl nsw i32 %29, 1
  %31 = mul nsw i32 %30, %21
  %32 = srem i32 %28, %20
  %33 = shl nsw i32 %32, 1
  %34 = add nsw i32 %31, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %27, i64 %35
  store i8 3, ptr %36, align 1, !tbaa !66
  %37 = load ptr, ptr %19, align 8, !tbaa !47
  %38 = or disjoint i32 %34, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  store i8 3, ptr %40, align 1, !tbaa !66
  %41 = load ptr, ptr %19, align 8, !tbaa !47
  %42 = or disjoint i32 %30, 1
  %43 = mul nsw i32 %42, %21
  %44 = add nsw i32 %43, %33
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %41, i64 %45
  store i8 3, ptr %46, align 1, !tbaa !66
  %47 = load ptr, ptr %19, align 8, !tbaa !47
  %48 = getelementptr i8, ptr %47, i64 %45
  %49 = getelementptr i8, ptr %48, i64 1
  store i8 3, ptr %49, align 1, !tbaa !66
  %50 = load ptr, ptr %22, align 8, !tbaa !50
  %51 = getelementptr inbounds i8, ptr %50, i64 %26
  store i8 3, ptr %51, align 1, !tbaa !66
  %52 = load ptr, ptr %23, align 8, !tbaa !51
  %53 = getelementptr inbounds i8, ptr %52, i64 %26
  store i8 3, ptr %53, align 1, !tbaa !66
  %54 = add nsw i64 %26, 1
  %55 = load ptr, ptr %10, align 8, !tbaa !49
  %56 = getelementptr inbounds %struct.ercSegment_s, ptr %55, i64 %12, i32 1
  %57 = load i16, ptr %56, align 2, !tbaa !58
  %58 = sext i16 %57 to i64
  %59 = icmp slt i64 %26, %58
  br i1 %59, label %25, label %60, !llvm.loop !68

60:                                               ; preds = %25, %6
  %61 = phi ptr [ %11, %6 ], [ %55, %25 ]
  %62 = getelementptr inbounds %struct.ercSegment_s, ptr %61, i64 %12, i32 2
  store i8 0, ptr %62, align 2, !tbaa !59
  br label %63

63:                                               ; preds = %60, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ercMarkCurrMBConcealed(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) local_unnamed_addr #8 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !54
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %6
  %11 = icmp sgt i32 %1, -1
  %12 = select i1 %11, i32 %1, i32 0
  switch i32 %12, label %56 [
    i32 0, label %15
    i32 1, label %41
    i32 2, label %13
  ]

13:                                               ; preds = %10
  %14 = sext i32 %0 to i64
  br label %51

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = ashr i32 %2, 4
  %19 = sdiv i32 %0, %18
  %20 = shl i32 %19, 1
  %21 = ashr i32 %2, 3
  %22 = mul nsw i32 %20, %21
  %23 = srem i32 %0, %18
  %24 = shl nsw i32 %23, 1
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %17, i64 %26
  store i8 2, ptr %27, align 1, !tbaa !66
  %28 = load ptr, ptr %16, align 8, !tbaa !47
  %29 = or disjoint i32 %25, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %28, i64 %30
  store i8 2, ptr %31, align 1, !tbaa !66
  %32 = load ptr, ptr %16, align 8, !tbaa !47
  %33 = or disjoint i32 %20, 1
  %34 = mul nsw i32 %33, %21
  %35 = add nsw i32 %34, %24
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %32, i64 %36
  store i8 2, ptr %37, align 1, !tbaa !66
  %38 = load ptr, ptr %16, align 8, !tbaa !47
  %39 = getelementptr i8, ptr %38, i64 %36
  %40 = getelementptr i8, ptr %39, i64 1
  store i8 2, ptr %40, align 1, !tbaa !66
  br i1 %11, label %56, label %46

41:                                               ; preds = %10
  %42 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = sext i32 %0 to i64
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  store i8 2, ptr %45, align 1, !tbaa !66
  br i1 %11, label %56, label %51

46:                                               ; preds = %15
  %47 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !50
  %49 = sext i32 %0 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  store i8 2, ptr %50, align 1, !tbaa !66
  br label %51

51:                                               ; preds = %13, %46, %41
  %52 = phi i64 [ %14, %13 ], [ %49, %46 ], [ %44, %41 ]
  %53 = getelementptr inbounds %struct.ercVariables_s, ptr %3, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = getelementptr inbounds i8, ptr %54, i64 %52
  store i8 2, ptr %55, align 1, !tbaa !66
  br label %56

56:                                               ; preds = %10, %51, %15, %41, %6, %4
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize allocsize(0,1) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind optsize allocsize(0) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !37, i64 856504}
!36 = !{!"video_par", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 132120, !37, i64 699416, !38, i64 699424, !40, i64 848672, !40, i64 848676, !40, i64 848680, !40, i64 848684, !37, i64 848688, !37, i64 848696, !37, i64 848704, !40, i64 848712, !40, i64 848716, !40, i64 848720, !40, i64 848724, !40, i64 848728, !37, i64 848736, !37, i64 848744, !38, i64 848752, !40, i64 848776, !40, i64 848780, !40, i64 848784, !40, i64 848788, !40, i64 848792, !37, i64 848800, !38, i64 848808, !37, i64 848832, !37, i64 848840, !38, i64 848848, !40, i64 848872, !40, i64 848876, !37, i64 848880, !37, i64 848888, !38, i64 848896, !40, i64 848920, !37, i64 848928, !37, i64 848936, !40, i64 848944, !40, i64 848948, !40, i64 848952, !40, i64 848956, !40, i64 848960, !40, i64 848964, !40, i64 848968, !40, i64 848972, !40, i64 848976, !40, i64 848980, !40, i64 848984, !40, i64 848988, !40, i64 848992, !40, i64 848996, !40, i64 849000, !40, i64 849004, !40, i64 849008, !40, i64 849012, !40, i64 849016, !40, i64 849020, !40, i64 849024, !40, i64 849028, !40, i64 849032, !40, i64 849036, !41, i64 849040, !41, i64 849042, !38, i64 849044, !40, i64 849052, !40, i64 849056, !38, i64 849060, !38, i64 849072, !40, i64 849084, !40, i64 849088, !40, i64 849092, !40, i64 849096, !40, i64 849100, !40, i64 849104, !40, i64 849108, !40, i64 849112, !40, i64 849116, !40, i64 849120, !38, i64 849124, !38, i64 849148, !38, i64 849172, !40, i64 849196, !40, i64 849200, !40, i64 849204, !40, i64 849208, !40, i64 849212, !40, i64 849216, !40, i64 849220, !40, i64 849224, !40, i64 849228, !40, i64 849232, !40, i64 849236, !40, i64 849240, !40, i64 849244, !40, i64 849248, !40, i64 849252, !40, i64 849256, !40, i64 849260, !40, i64 849264, !40, i64 849268, !40, i64 849272, !40, i64 849276, !40, i64 849280, !40, i64 849284, !37, i64 849288, !37, i64 849296, !42, i64 849304, !42, i64 849624, !42, i64 849944, !42, i64 850264, !42, i64 850584, !42, i64 850904, !42, i64 851224, !42, i64 851544, !40, i64 851864, !40, i64 851868, !40, i64 851872, !45, i64 851880, !40, i64 851888, !38, i64 851892, !40, i64 855988, !40, i64 855992, !40, i64 855996, !40, i64 856000, !40, i64 856004, !40, i64 856008, !40, i64 856012, !37, i64 856016, !37, i64 856024, !37, i64 856032, !37, i64 856040, !37, i64 856048, !38, i64 856056, !37, i64 856456, !38, i64 856464, !37, i64 856488, !37, i64 856496, !37, i64 856504, !40, i64 856512, !37, i64 856520, !38, i64 856528, !37, i64 856608, !37, i64 856616, !37, i64 856624, !37, i64 856632, !40, i64 856640, !40, i64 856644, !40, i64 856648, !37, i64 856656, !37, i64 856664, !38, i64 856672, !38, i64 856688, !37, i64 856704, !37, i64 856712, !40, i64 856720, !37, i64 856728, !37, i64 856736, !37, i64 856744, !37, i64 856752, !37, i64 856760, !37, i64 856768, !37, i64 856776, !37, i64 856784, !37, i64 856792, !37, i64 856800, !37, i64 856808, !37, i64 856816, !40, i64 856824, !37, i64 856832, !40, i64 856840, !40, i64 856844, !40, i64 856848, !40, i64 856852, !40, i64 856856, !40, i64 856860, !40, i64 856864, !37, i64 856872}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!"image_data", !43, i64 0, !38, i64 136, !38, i64 160, !38, i64 184, !38, i64 208, !38, i64 232, !38, i64 256, !38, i64 280, !38, i64 292, !38, i64 304}
!43 = !{!"frame_format", !40, i64 0, !40, i64 4, !44, i64 8, !38, i64 16, !38, i64 28, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !38, i64 72, !40, i64 84, !38, i64 88, !38, i64 100, !38, i64 112, !40, i64 124, !40, i64 128}
!44 = !{!"double", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!36, !37, i64 856496}
!47 = !{!48, !37, i64 8}
!48 = !{!"ercVariables_s", !40, i64 0, !40, i64 4, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !40, i64 40, !37, i64 48, !40, i64 56, !40, i64 60, !40, i64 64}
!49 = !{!48, !37, i64 32}
!50 = !{!48, !37, i64 16}
!51 = !{!48, !37, i64 24}
!52 = !{!48, !37, i64 48}
!53 = !{!48, !40, i64 0}
!54 = !{!48, !40, i64 64}
!55 = !{!48, !40, i64 4}
!56 = !{!57, !41, i64 0}
!57 = !{!"ercSegment_s", !41, i64 0, !41, i64 2, !38, i64 4}
!58 = !{!57, !41, i64 2}
!59 = !{!57, !38, i64 4}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!48, !40, i64 40}
!63 = !{!48, !40, i64 60}
!64 = !{!"erc_api.c:fast_memset"}
!65 = !{!48, !40, i64 56}
!66 = !{!38, !38, i64 0}
!67 = distinct !{!67, !61}
!68 = distinct !{!68, !61}
