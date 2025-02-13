; ModuleID = 'ldecod_src/memalloc.c'
source_filename = "ldecod_src/memalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.distortion_data = type { [4 x [4 x i32]], [4 x [4 x i64]], [2 x [2 x i64]], [2 x [2 x i32]], i32, i32, double }
%struct.lambda_params = type { double, [3 x double], [3 x i32] }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.level_quant_params = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgTopField\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"init_top_bot_planes: imgBotField\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"get_mem2Ddist: array2D\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"get_mem2Dlm: array2D\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"free_mem2Ddist: trying to free unused memory\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"free_mem2Dlm: trying to free unused memory\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"get_mem2Dmv: array2D\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"get_mem2Dmp: array2D\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"get_mem3Dmp: array3D\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"free_mem2Dmp: trying to free unused memory\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"free_mem3Dmp: trying to free unused memory\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"get_mem2Dquant: array2D\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"get_mem3Dquant: array3D\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"get_mem4Dquant: array4D\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"get_mem5Dquant: array5D\00", align 1
@.str.15 = private unnamed_addr constant [46 x i8] c"free_mem2Dquant: trying to free unused memory\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"free_mem3Dquant: trying to free unused memory\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"free_mem4Dquant: trying to free unused memory\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"free_mem5Dquant: trying to free unused memory\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"get_mem2D_spp: array2D\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"get_mem3D_spp: array3D\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"get_mem3Dmv: array3D\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"get_mem4Dpel: array4D\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"get_mem5Dpel: array5D\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"get_mem5Dpel: array6D\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"get_mem7Dmv: array7D\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"free_mem2D_spp: trying to free unused memory\00", align 1
@.str.27 = private unnamed_addr constant [45 x i8] c"free_mem3D_spp: trying to free unused memory\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"free_mem2Dmv: trying to free unused memory\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"free_mem3Dmv: trying to free unused memory\00", align 1
@.str.30 = private unnamed_addr constant [43 x i8] c"free_mem4Dmv: trying to free unused memory\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"free_mem5Dmv: trying to free unused memory\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"free_mem6Dmv: trying to free unused memory\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"free_mem7Dmv: trying to free unused memory\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"get_mem1Dpel: arra12D\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"get_mem2Dpel: array2D\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"get_mem2DpelWithPad: array2D\00", align 1
@.str.37 = private unnamed_addr constant [22 x i8] c"get_mem3Dpel: array3D\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"get_mem3DpelWithPad: array3D\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"get_mem3DpelWithPadSeparately: array3D\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"get_mem4DpelWithPad: array4D\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"get_mem4DpelWithPadSeparately: array4D\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"get_mem5DpelWithPad: array5D\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"get_mem5DpelWithPadSeparately: array5D\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"free_mem1Dpel: trying to free unused memory\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"free_mem2Dpel: trying to free unused memory\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c"free_mem2DpelWithPad: trying to free unused memory\00", align 1
@.str.47 = private unnamed_addr constant [44 x i8] c"free_mem3Dpel: trying to free unused memory\00", align 1
@.str.48 = private unnamed_addr constant [61 x i8] c"free_mem3DpelWithPadSeparately: trying to free unused memory\00", align 1
@.str.49 = private unnamed_addr constant [44 x i8] c"free_mem4Dpel: trying to free unused memory\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"free_mem4DpelWithPad: trying to free unused memory\00", align 1
@.str.51 = private unnamed_addr constant [61 x i8] c"free_mem4DpelWithPadSeparately: trying to free unused memory\00", align 1
@.str.52 = private unnamed_addr constant [44 x i8] c"free_mem5Dpel: trying to free unused memory\00", align 1
@.str.53 = private unnamed_addr constant [51 x i8] c"free_mem5DpelWithPad: trying to free unused memory\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"get_mem2D: array2D\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"get_mem2Dint: array2D\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"get_mem2DintWithPad: array2D\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"get_mem2Dint64: array2D\00", align 1
@.str.58 = private unnamed_addr constant [26 x i8] c"get_mem2Ddistblk: array2D\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"get_mem3D: array3D\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"get_mem4D: array4D\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"get_mem3Dint: array3D\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"get_mem3Dint64: array3D\00", align 1
@.str.63 = private unnamed_addr constant [26 x i8] c"get_mem3Ddistblk: array3D\00", align 1
@.str.64 = private unnamed_addr constant [22 x i8] c"get_mem4Dint: array4D\00", align 1
@.str.65 = private unnamed_addr constant [24 x i8] c"get_mem4Dint64: array4D\00", align 1
@.str.66 = private unnamed_addr constant [26 x i8] c"get_mem4Ddistblk: array4D\00", align 1
@.str.67 = private unnamed_addr constant [22 x i8] c"get_mem5Dint: array5D\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"free_mem2D: trying to free unused memory\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"free_mem2Dint: trying to free unused memory\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"free_mem2DintWithPad: trying to free unused memory\00", align 1
@.str.71 = private unnamed_addr constant [46 x i8] c"free_mem2Dint64: trying to free unused memory\00", align 1
@.str.72 = private unnamed_addr constant [41 x i8] c"free_mem3D: trying to free unused memory\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"free_mem4D: trying to free unused memory\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"free_mem3Dint: trying to free unused memory\00", align 1
@.str.75 = private unnamed_addr constant [46 x i8] c"free_mem3Dint64: trying to free unused memory\00", align 1
@.str.76 = private unnamed_addr constant [48 x i8] c"free_mem3Ddistblk: trying to free unused memory\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"free_mem4Dint: trying to free unused memory\00", align 1
@.str.78 = private unnamed_addr constant [46 x i8] c"free_mem4Dint64: trying to free unused memory\00", align 1
@.str.79 = private unnamed_addr constant [48 x i8] c"free_mem4Ddistblk: trying to free unused memory\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"free_mem5Dint: trying to free unused memory\00", align 1
@errortext = external global [300 x i8], align 16
@.str.81 = private unnamed_addr constant [30 x i8] c"Could not allocate memory: %s\00", align 1
@.str.82 = private unnamed_addr constant [25 x i8] c"get_mem2Duint16: array2D\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"get_mem3Duint16: array3D\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"get_mem4Duint16: array4D\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"get_mem2Dshort: array2D\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"get_mem3Dshort: array3D\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"get_mem4Dshort: array4D\00", align 1
@.str.88 = private unnamed_addr constant [24 x i8] c"get_mem5Dshort: array5D\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"get_mem6Dshort: array6D\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"get_mem7Dshort: array7D\00", align 1
@.str.91 = private unnamed_addr constant [47 x i8] c"free_mem2Duint16: trying to free unused memory\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"free_mem3Duint16: trying to free unused memory\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"free_mem4Duint16: trying to free unused memory\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"free_mem2Dshort: trying to free unused memory\00", align 1
@.str.95 = private unnamed_addr constant [46 x i8] c"free_mem3Dshort: trying to free unused memory\00", align 1
@.str.96 = private unnamed_addr constant [46 x i8] c"free_mem4Dshort: trying to free unused memory\00", align 1
@.str.97 = private unnamed_addr constant [46 x i8] c"free_mem5Dshort: trying to free unused memory\00", align 1
@.str.98 = private unnamed_addr constant [46 x i8] c"free_mem6Dshort: trying to free unused memory\00", align 1
@.str.99 = private unnamed_addr constant [46 x i8] c"free_mem7Dshort: trying to free unused memory\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"get_mem2Ddouble: array2D\00", align 1
@.str.101 = private unnamed_addr constant [26 x i8] c"get_mem1Dodouble: array2D\00", align 1
@.str.102 = private unnamed_addr constant [26 x i8] c"get_mem2Dodouble: array2D\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"get_mem3Dodouble: array3D\00", align 1
@.str.104 = private unnamed_addr constant [31 x i8] c"get_offset_mem2Dshort: array2D\00", align 1
@.str.105 = private unnamed_addr constant [23 x i8] c"get_mem3Doint: array3D\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"get_mem3Ddouble: array3D\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c"free_mem2Ddouble: trying to free unused memory\00", align 1
@.str.108 = private unnamed_addr constant [48 x i8] c"free_mem1Dodouble: trying to free unused memory\00", align 1
@.str.109 = private unnamed_addr constant [48 x i8] c"free_mem2Dodouble: trying to free unused memory\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"free_mem3Dodouble: trying to free unused memory\00", align 1
@.str.111 = private unnamed_addr constant [45 x i8] c"free_mem3Doint: trying to free unused memory\00", align 1
@.str.112 = private unnamed_addr constant [45 x i8] c"free_mem2Doint: trying to free unused memory\00", align 1
@.str.113 = private unnamed_addr constant [53 x i8] c"free_offset_mem2Dshort: trying to free unused memory\00", align 1
@.str.114 = private unnamed_addr constant [22 x i8] c"get_mem2Dolm: array2D\00", align 1
@.str.115 = private unnamed_addr constant [44 x i8] c"free_mem2Dolm: trying to free unused memory\00", align 1
@.str.116 = private unnamed_addr constant [48 x i8] c"free_mem2Ddistblk: trying to free unused memory\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @init_top_bot_planes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = ashr i32 %1, 1
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %2, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #9
  br label %11

11:                                               ; preds = %10, %4
  %12 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %12, ptr %3, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #9
  br label %15

15:                                               ; preds = %14, %11
  %16 = icmp sgt i32 %5, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %15
  %18 = zext nneg i32 %5 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %31, %19 ]
  %21 = shl nuw nsw i64 %20, 1
  %22 = getelementptr inbounds ptr, ptr %0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = load ptr, ptr %2, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %20
  store ptr %23, ptr %25, align 8, !tbaa !6
  %26 = or disjoint i64 %21, 1
  %27 = getelementptr inbounds ptr, ptr %0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = load ptr, ptr %3, align 8, !tbaa !6
  %30 = getelementptr inbounds ptr, ptr %29, i64 %20
  store ptr %28, ptr %30, align 8, !tbaa !6
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, %18
  br i1 %32, label %33, label %19, !llvm.loop !10

33:                                               ; preds = %19, %15
  %34 = shl i32 %1, 3
  ret i32 %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @no_mem_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef %0) #10
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_top_bot_planes(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #10
  tail call void @free(ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem2Ddist(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 256) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.2) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.distortion_data, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !12

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 8
  %33 = or disjoint i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem2Dlm(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 48) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.3) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.lambda_params, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !13

31:                                               ; preds = %22, %17
  %32 = mul i32 %2, 48
  %33 = or disjoint i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Ddist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dlm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem2Dmp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 32) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.7) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.pic_motion_params, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !14

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 5
  %33 = or disjoint i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Dmp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.8) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dmp(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !15

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dmp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Dmp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Dmp(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.10, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Dquant(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 12) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.level_quant_params, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !16

31:                                               ; preds = %22, %17
  %32 = mul i32 %2, 12
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Dquant(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dquant(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !17

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4Dquant(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.13) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3Dquant(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !18

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem5Dquant(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.14) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dquant(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !6
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !6
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !19

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dquant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Dquant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Dquant(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4Dquant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3Dquant(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.17, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem5Dquant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem4Dquant(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.18, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2D_spp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.19) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds ptr, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !20

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 3
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3D_spp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.20) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2D_spp(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !21

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 4) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.6) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.MotionVector, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !22

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 2
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.21) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dmv(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !23

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3Dmv(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !24

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem5Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.23) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dmv(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !6
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !6
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !25

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem6Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  store ptr %10, ptr %0, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  tail call void @no_mem_exit(ptr noundef nonnull @.str.24) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %10, %7 ]
  %16 = mul nsw i32 %2, %1
  %17 = tail call i32 @get_mem5Dmv(ptr noundef %15, i32 noundef %16, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #9
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds ptr, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !26

31:                                               ; preds = %22, %14
  %32 = trunc i64 %9 to i32
  %33 = add nsw i32 %17, %32
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem7Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  tail call void @no_mem_exit(ptr noundef nonnull @.str.25) #9
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %17 = mul nsw i32 %2, %1
  %18 = tail call i32 @get_mem6Dmv(ptr noundef %16, i32 noundef %17, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #9
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !27

32:                                               ; preds = %23, %15
  %33 = trunc i64 %10 to i32
  %34 = add nsw i32 %18, %33
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2D_spp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3D_spp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2D_spp(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.27, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Dmv(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.29, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3Dmv(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem5Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem4Dmv(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem6Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem5Dmv(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.32, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem7Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem6Dmv(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.33, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem1Dpel(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = tail call noalias ptr @calloc(i64 noundef %3, i64 noundef 2) #11
  store ptr %4, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.34) #9
  br label %7

7:                                                ; preds = %6, %2
  %8 = shl i32 %1, 1
  %9 = add i32 %8, 8
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Dpel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.35) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 2) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.35) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i16, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !28

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 1
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem2DpelWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, %1
  %8 = shl nsw i32 %4, 1
  %9 = add nsw i32 %8, %2
  %10 = sext i32 %7 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.36) #9
  %15 = load ptr, ptr %0, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %12, %5 ]
  %18 = mul nsw i32 %9, %7
  %19 = sext i32 %18 to i64
  %20 = tail call noalias ptr @calloc(i64 noundef %19, i64 noundef 2) #11
  store ptr %20, ptr %17, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void @no_mem_exit(ptr noundef nonnull @.str.36) #9
  br label %23

23:                                               ; preds = %22, %16
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = sext i32 %4 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  store ptr %27, ptr %24, align 8, !tbaa !6
  %28 = icmp sgt i32 %7, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load ptr, ptr %0, align 8, !tbaa !6
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = sext i32 %9 to i64
  %33 = zext nneg i32 %7 to i64
  br label %34

34:                                               ; preds = %29, %34
  %35 = phi i64 [ 1, %29 ], [ %40, %34 ]
  %36 = phi ptr [ %31, %29 ], [ %37, %34 ]
  %37 = getelementptr inbounds i16, ptr %36, i64 %32
  %38 = load ptr, ptr %0, align 8, !tbaa !6
  %39 = getelementptr inbounds ptr, ptr %38, i64 %35
  store ptr %37, ptr %39, align 8, !tbaa !6
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %33
  br i1 %41, label %42, label %34, !llvm.loop !29

42:                                               ; preds = %34, %23
  %43 = load ptr, ptr %0, align 8, !tbaa !6
  %44 = sext i32 %3 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  store ptr %45, ptr %0, align 8, !tbaa !6
  %46 = shl i32 %9, 1
  %47 = add i32 %46, 8
  %48 = mul i32 %47, %7
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Dpel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.37) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dpel(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !30

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3DpelWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.38) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  %15 = mul nsw i32 %2, %1
  %16 = shl i32 %1, 1
  %17 = add i32 %16, -2
  %18 = mul nsw i32 %17, %4
  %19 = add nsw i32 %18, %15
  %20 = tail call i32 @get_mem2DpelWithPad(ptr noundef %14, i32 noundef %19, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %21 = icmp sgt i32 %1, 1
  br i1 %21, label %22, label %36

22:                                               ; preds = %13
  %23 = shl nsw i32 %4, 1
  %24 = add nsw i32 %23, %2
  %25 = sext i32 %24 to i64
  %26 = zext nneg i32 %1 to i64
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi i64 [ 1, %22 ], [ %34, %27 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !6
  %30 = getelementptr ptr, ptr %29, i64 %28
  %31 = getelementptr ptr, ptr %30, i64 -1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds ptr, ptr %32, i64 %25
  store ptr %33, ptr %30, align 8, !tbaa !6
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %27, !llvm.loop !31

36:                                               ; preds = %27, %13
  %37 = trunc i64 %8 to i32
  %38 = add nsw i32 %20, %37
  ret i32 %38
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3DpelWithPadSeparately(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = trunc i64 %8 to i32
  %10 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %10, ptr %0, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.39) #9
  br label %13

13:                                               ; preds = %12, %6
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %13
  %16 = zext nneg i32 %1 to i64
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %24, %17 ]
  %19 = phi i32 [ %9, %15 ], [ %23, %17 ]
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = getelementptr inbounds ptr, ptr %20, i64 %18
  %22 = tail call i32 @get_mem2DpelWithPad(ptr noundef %21, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %23 = add nsw i32 %22, %19
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, %16
  br i1 %25, label %26, label %17, !llvm.loop !32

26:                                               ; preds = %17, %13
  %27 = phi i32 [ %9, %13 ], [ %23, %17 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4Dpel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.22) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3Dpel(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !33

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4DpelWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  store ptr %10, ptr %0, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  tail call void @no_mem_exit(ptr noundef nonnull @.str.40) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %10, %7 ]
  %16 = mul nsw i32 %2, %1
  %17 = tail call i32 @get_mem3DpelWithPad(ptr noundef %15, i32 noundef %16, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #9
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds ptr, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !34

31:                                               ; preds = %22, %14
  %32 = trunc i64 %9 to i32
  %33 = add nsw i32 %17, %32
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4DpelWithPadSeparately(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  store ptr %10, ptr %0, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  tail call void @no_mem_exit(ptr noundef nonnull @.str.41) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %10, %7 ]
  %16 = mul nsw i32 %2, %1
  %17 = tail call i32 @get_mem3DpelWithPadSeparately(ptr noundef %15, i32 noundef %16, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #9
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds ptr, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !35

31:                                               ; preds = %22, %14
  %32 = trunc i64 %9 to i32
  %33 = add nsw i32 %17, %32
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem5Dpel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.23) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dpel(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !6
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !6
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !36

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem5DpelWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  tail call void @no_mem_exit(ptr noundef nonnull @.str.42) #9
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %17 = mul nsw i32 %2, %1
  %18 = tail call i32 @get_mem4DpelWithPad(ptr noundef %16, i32 noundef %17, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #9
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !37

32:                                               ; preds = %23, %15
  %33 = trunc i64 %10 to i32
  %34 = add nsw i32 %18, %33
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem5DpelWithPadSeparately(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  tail call void @no_mem_exit(ptr noundef nonnull @.str.43) #9
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %17 = mul nsw i32 %2, %1
  %18 = tail call i32 @get_mem4DpelWithPadSeparately(ptr noundef %16, i32 noundef %17, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #9
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !38

32:                                               ; preds = %23, %15
  %33 = trunc i64 %10 to i32
  %34 = add nsw i32 %18, %33
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem1Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #10
  br label %5

4:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.44, i32 noundef 100) #10
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2DpelWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = sub nsw i32 0, %1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = sext i32 %2 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  tail call void @free(ptr noundef %15) #10
  br label %19

16:                                               ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #10
  %17 = sub nsw i32 0, %1
  %18 = sext i32 %17 to i64
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi i64 [ %18, %16 ], [ %10, %8 ]
  %21 = getelementptr inbounds ptr, ptr %0, i64 %20
  tail call void @free(ptr noundef %21) #10
  br label %23

22:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #10
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Dpel(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3DpelWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2DpelWithPad(ptr noundef %6, i32 noundef %1, i32 noundef %2) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3DpelWithPadSeparately(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %8, %16
  %11 = phi i64 [ 0, %8 ], [ %17, %16 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @free_mem2DpelWithPad(ptr noundef nonnull %13, i32 noundef %2, i32 noundef %3) #9
  store ptr null, ptr %12, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %10, %15
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %10, !llvm.loop !39

19:                                               ; preds = %16, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %21

20:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.48, i32 noundef 100) #10
  br label %21

21:                                               ; preds = %20, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3Dpel(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.49, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4DpelWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3DpelWithPad(ptr noundef %6, i32 noundef %1, i32 noundef %2) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.50, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4DpelWithPadSeparately(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3DpelWithPadSeparately(ptr noundef %7, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %9

8:                                                ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.51, i32 noundef 100) #10
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem5Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem4Dpel(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.52, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem5DpelWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem4DpelWithPad(ptr noundef %6, i32 noundef %1, i32 noundef %2) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.53, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem5DpelWithPadSeparately(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem4DpelWithPadSeparately(ptr noundef %7, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %9

8:                                                ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.53, i32 noundef 100) #10
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @new_mem2D(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.54) #9
  br label %8

8:                                                ; preds = %7, %2
  %9 = mul nsw i32 %1, %0
  %10 = sext i32 %9 to i64
  %11 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 1) #11
  store ptr %11, ptr %5, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @no_mem_exit(ptr noundef nonnull @.str.54) #9
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp sgt i32 %0, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = sext i32 %1 to i64
  %18 = zext nneg i32 %0 to i64
  %19 = load ptr, ptr %5, align 8
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %19, %16 ], [ %24, %20 ]
  %22 = phi i64 [ 1, %16 ], [ %25, %20 ]
  %23 = getelementptr ptr, ptr %5, i64 %22
  %24 = getelementptr inbounds i8, ptr %21, i64 %17
  store ptr %24, ptr %23, align 8, !tbaa !6
  %25 = add nuw nsw i64 %22, 1
  %26 = icmp eq i64 %25, %18
  br i1 %26, label %27, label %20, !llvm.loop !40

27:                                               ; preds = %20, %14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2D(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.54) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 1) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.54) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i8, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !41

31:                                               ; preds = %22, %17
  %32 = add i32 %2, 8
  %33 = mul i32 %32, %1
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @new_mem2Dint(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.55) #9
  br label %8

8:                                                ; preds = %7, %2
  %9 = mul nsw i32 %1, %0
  %10 = sext i32 %9 to i64
  %11 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 4) #11
  store ptr %11, ptr %5, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @no_mem_exit(ptr noundef nonnull @.str.55) #9
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp sgt i32 %0, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = sext i32 %1 to i64
  %18 = zext nneg i32 %0 to i64
  %19 = load ptr, ptr %5, align 8
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %19, %16 ], [ %24, %20 ]
  %22 = phi i64 [ 1, %16 ], [ %25, %20 ]
  %23 = getelementptr ptr, ptr %5, i64 %22
  %24 = getelementptr inbounds i32, ptr %21, i64 %17
  store ptr %24, ptr %23, align 8, !tbaa !6
  %25 = add nuw nsw i64 %22, 1
  %26 = icmp eq i64 %25, %18
  br i1 %26, label %27, label %20, !llvm.loop !42

27:                                               ; preds = %20, %14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Dint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.55) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 4) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.55) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i32, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !43

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 2
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem2DintWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, %1
  %8 = shl nsw i32 %4, 1
  %9 = add nsw i32 %8, %2
  %10 = sext i32 %7 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.56) #9
  %15 = load ptr, ptr %0, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %12, %5 ]
  %18 = mul nsw i32 %9, %7
  %19 = sext i32 %18 to i64
  %20 = tail call noalias ptr @calloc(i64 noundef %19, i64 noundef 4) #11
  store ptr %20, ptr %17, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call void @no_mem_exit(ptr noundef nonnull @.str.56) #9
  br label %23

23:                                               ; preds = %22, %16
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = sext i32 %4 to i64
  %27 = getelementptr inbounds i32, ptr %25, i64 %26
  store ptr %27, ptr %24, align 8, !tbaa !6
  %28 = icmp sgt i32 %7, 1
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load ptr, ptr %0, align 8, !tbaa !6
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = sext i32 %9 to i64
  %33 = zext nneg i32 %7 to i64
  br label %34

34:                                               ; preds = %29, %34
  %35 = phi i64 [ 1, %29 ], [ %40, %34 ]
  %36 = phi ptr [ %31, %29 ], [ %37, %34 ]
  %37 = getelementptr inbounds i32, ptr %36, i64 %32
  %38 = load ptr, ptr %0, align 8, !tbaa !6
  %39 = getelementptr inbounds ptr, ptr %38, i64 %35
  store ptr %37, ptr %39, align 8, !tbaa !6
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %33
  br i1 %41, label %42, label %34, !llvm.loop !44

42:                                               ; preds = %34, %23
  %43 = load ptr, ptr %0, align 8, !tbaa !6
  %44 = sext i32 %3 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  store ptr %45, ptr %0, align 8, !tbaa !6
  %46 = shl i32 %9, 2
  %47 = add i32 %46, 8
  %48 = mul i32 %47, %7
  ret i32 %48
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Dint64(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.57) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.57) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i64, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !45

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 3
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Ddistblk(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.58) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.58) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i64, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !46

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 3
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3D(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.59) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2D(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !47

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4D(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.60) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3D(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !48

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Dint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.61) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dint(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !49

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Dint64(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.62) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dint64(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !50

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Ddistblk(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.63) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Ddistblk(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !51

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4Dint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.64) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3Dint(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !52

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4Dint64(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.65) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3Dint64(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !53

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4Ddistblk(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.66) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3Ddistblk(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !54

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem5Dint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.67) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dint(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !6
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !6
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !55

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2DintWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = sub nsw i32 0, %1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = sext i32 %2 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  tail call void @free(ptr noundef %15) #10
  br label %19

16:                                               ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.70, i32 noundef 100) #10
  %17 = sub nsw i32 0, %1
  %18 = sext i32 %17 to i64
  br label %19

19:                                               ; preds = %16, %8
  %20 = phi i64 [ %18, %16 ], [ %10, %8 ]
  %21 = getelementptr inbounds ptr, ptr %0, i64 %20
  tail call void @free(ptr noundef %21) #10
  br label %23

22:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.70, i32 noundef 100) #10
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dint64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2D(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.72, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3D(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.73, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Dint(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.74, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Dint64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Dint64(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.75, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Ddistblk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Ddistblk(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.76, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Ddistblk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3Dint(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.77, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4Dint64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3Dint64(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.78, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4Ddistblk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3Ddistblk(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.79, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem5Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem4Dint(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.80, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @new_mem2Duint16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @no_mem_exit(ptr noundef nonnull @.str.82) #9
  br label %8

8:                                                ; preds = %7, %2
  %9 = mul nsw i32 %1, %0
  %10 = sext i32 %9 to i64
  %11 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 2) #11
  store ptr %11, ptr %5, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void @no_mem_exit(ptr noundef nonnull @.str.82) #9
  br label %14

14:                                               ; preds = %13, %8
  %15 = icmp sgt i32 %0, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = sext i32 %1 to i64
  %18 = zext nneg i32 %0 to i64
  %19 = load ptr, ptr %5, align 8
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi ptr [ %19, %16 ], [ %24, %20 ]
  %22 = phi i64 [ 1, %16 ], [ %25, %20 ]
  %23 = getelementptr ptr, ptr %5, i64 %22
  %24 = getelementptr inbounds i16, ptr %21, i64 %17
  store ptr %24, ptr %23, align 8, !tbaa !6
  %25 = add nuw nsw i64 %22, 1
  %26 = icmp eq i64 %25, %18
  br i1 %26, label %27, label %20, !llvm.loop !56

27:                                               ; preds = %20, %14
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Duint16(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.82) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 2) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.82) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i16, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !57

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 1
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Duint16(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.83) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Duint16(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !58

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4Duint16(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.84) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3Duint16(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !59

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.85) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 2) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.85) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds i16, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !60

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 1
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.86) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dshort(ptr noundef %12, i32 noundef %13, i32 noundef %3) #9
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !6
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !61

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem4Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.87) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = tail call i32 @get_mem3Dshort(ptr noundef %13, i32 noundef %14, i32 noundef %3, i32 noundef %4) #9
  %16 = icmp sgt i32 %1, 1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ 1, %17 ], [ %27, %20 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = getelementptr ptr, ptr %22, i64 %21
  %24 = getelementptr ptr, ptr %23, i64 -1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds ptr, ptr %25, i64 %18
  store ptr %26, ptr %23, align 8, !tbaa !6
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %29, label %20, !llvm.loop !62

29:                                               ; preds = %20, %12
  %30 = trunc i64 %7 to i32
  %31 = add nsw i32 %15, %30
  ret i32 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem5Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  tail call void @no_mem_exit(ptr noundef nonnull @.str.88) #9
  %12 = load ptr, ptr %0, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi ptr [ %12, %11 ], [ %9, %6 ]
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dshort(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5) #9
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !6
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !6
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !63

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem6Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  store ptr %10, ptr %0, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  tail call void @no_mem_exit(ptr noundef nonnull @.str.89) #9
  %13 = load ptr, ptr %0, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi ptr [ %13, %12 ], [ %10, %7 ]
  %16 = mul nsw i32 %2, %1
  %17 = tail call i32 @get_mem5Dshort(ptr noundef %15, i32 noundef %16, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #9
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds ptr, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !64

31:                                               ; preds = %22, %14
  %32 = trunc i64 %9 to i32
  %33 = add nsw i32 %17, %32
  ret i32 %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem7Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  tail call void @no_mem_exit(ptr noundef nonnull @.str.90) #9
  %14 = load ptr, ptr %0, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi ptr [ %14, %13 ], [ %11, %8 ]
  %17 = mul nsw i32 %2, %1
  %18 = tail call i32 @get_mem6Dshort(ptr noundef %16, i32 noundef %17, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #9
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !6
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !6
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !65

32:                                               ; preds = %23, %15
  %33 = trunc i64 %10 to i32
  %34 = add nsw i32 %18, %33
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Duint16(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Duint16(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Duint16(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.92, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4Duint16(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3Duint16(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.93, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Dshort(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.95, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem4Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem3Dshort(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.96, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem5Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem4Dshort(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.97, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem6Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem5Dshort(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.98, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem7Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem6Dshort(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.99, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Ddouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.100) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #11
  store ptr %14, ptr %11, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void @no_mem_exit(ptr noundef nonnull @.str.100) #9
  br label %17

17:                                               ; preds = %16, %10
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !6
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = getelementptr inbounds double, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !6
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !66

31:                                               ; preds = %22, %17
  %32 = shl i32 %2, 3
  %33 = add i32 %32, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem1Dodouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  tail call void @no_mem_exit(ptr noundef nonnull @.str.101) #9
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi ptr [ %9, %8 ], [ %6, %3 ]
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds double, ptr %11, i64 %12
  store ptr %13, ptr %0, align 8, !tbaa !6
  %14 = trunc i64 %5 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Dodouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.102) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #11
  store ptr %15, ptr %12, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.102) #9
  br label %18

18:                                               ; preds = %17, %11
  %19 = load ptr, ptr %0, align 8, !tbaa !6
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = sext i32 %3 to i64
  %22 = getelementptr inbounds double, ptr %20, i64 %21
  store ptr %22, ptr %19, align 8, !tbaa !6
  %23 = icmp sgt i32 %1, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = sext i32 %2 to i64
  %26 = zext nneg i32 %1 to i64
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i64 [ 1, %24 ], [ %34, %27 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !6
  %30 = getelementptr ptr, ptr %29, i64 %28
  %31 = getelementptr ptr, ptr %30, i64 -1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds double, ptr %32, i64 %25
  store ptr %33, ptr %30, align 8, !tbaa !6
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %27, !llvm.loop !67

36:                                               ; preds = %27, %18
  %37 = shl i32 %2, 3
  %38 = add i32 %37, 8
  %39 = mul i32 %38, %1
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem3Dodouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.103) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = tail call noalias ptr @calloc(i64 noundef %15, i64 noundef 8) #11
  store ptr %16, ptr %13, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @no_mem_exit(ptr noundef nonnull @.str.103) #9
  br label %19

19:                                               ; preds = %18, %12
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = sext i32 %4 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  store ptr %23, ptr %20, align 8, !tbaa !6
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = sext i32 %2 to i64
  %27 = zext nneg i32 %1 to i64
  br label %38

28:                                               ; preds = %38, %19
  %29 = icmp sgt i32 %1, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %28
  %31 = sub i32 0, %4
  %32 = sub nsw i32 %2, %4
  %33 = icmp sgt i32 %2, 0
  %34 = sext i32 %3 to i64
  %35 = sext i32 %31 to i64
  %36 = sext i32 %32 to i64
  %37 = zext nneg i32 %1 to i64
  br label %47

38:                                               ; preds = %25, %38
  %39 = phi i64 [ 1, %25 ], [ %45, %38 ]
  %40 = load ptr, ptr %0, align 8, !tbaa !6
  %41 = getelementptr ptr, ptr %40, i64 %39
  %42 = getelementptr ptr, ptr %41, i64 -1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %43, i64 %26
  store ptr %44, ptr %41, align 8, !tbaa !6
  %45 = add nuw nsw i64 %39, 1
  %46 = icmp eq i64 %45, %27
  br i1 %46, label %28, label %38, !llvm.loop !68

47:                                               ; preds = %30, %61
  %48 = phi i64 [ 0, %30 ], [ %62, %61 ]
  br i1 %33, label %49, label %61

49:                                               ; preds = %47, %58
  %50 = phi i64 [ %59, %58 ], [ %35, %47 ]
  %51 = tail call noalias ptr @calloc(i64 noundef %34, i64 noundef 8) #11
  %52 = load ptr, ptr %0, align 8, !tbaa !6
  %53 = getelementptr inbounds ptr, ptr %52, i64 %48
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds ptr, ptr %54, i64 %50
  store ptr %51, ptr %55, align 8, !tbaa !6
  %56 = icmp eq ptr %51, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  tail call void @no_mem_exit(ptr noundef nonnull @.str.103) #9
  br label %58

58:                                               ; preds = %49, %57
  %59 = add nsw i64 %50, 1
  %60 = icmp slt i64 %59, %36
  br i1 %60, label %49, label %61, !llvm.loop !69

61:                                               ; preds = %58, %47
  %62 = add nuw nsw i64 %48, 1
  %63 = icmp eq i64 %62, %37
  br i1 %63, label %64, label %47, !llvm.loop !70

64:                                               ; preds = %61, %28
  %65 = shl i32 %3, 3
  %66 = add i32 %65, 8
  %67 = mul i32 %66, %2
  %68 = add i32 %67, 8
  %69 = mul i32 %68, %1
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_offset_mem2Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.104) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = tail call noalias ptr @calloc(i64 noundef %15, i64 noundef 2) #11
  store ptr %16, ptr %13, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @no_mem_exit(ptr noundef nonnull @.str.104) #9
  br label %19

19:                                               ; preds = %18, %12
  %20 = mul nsw i32 %3, %2
  %21 = add nsw i32 %20, %4
  %22 = load ptr, ptr %0, align 8, !tbaa !6
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  store ptr %25, ptr %22, align 8, !tbaa !6
  %26 = icmp sgt i32 %3, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = xor i32 %3, -1
  %29 = sext i32 %2 to i64
  %30 = sub nsw i64 0, %29
  %31 = sext i32 %28 to i64
  br label %38

32:                                               ; preds = %38, %19
  %33 = sub nsw i32 %2, %3
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = sext i32 %2 to i64
  %37 = zext nneg i32 %33 to i64
  br label %47

38:                                               ; preds = %27, %38
  %39 = phi i64 [ -1, %27 ], [ %45, %38 ]
  %40 = load ptr, ptr %0, align 8, !tbaa !6
  %41 = getelementptr ptr, ptr %40, i64 %39
  %42 = getelementptr ptr, ptr %41, i64 1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds i16, ptr %43, i64 %30
  store ptr %44, ptr %41, align 8, !tbaa !6
  %45 = add nsw i64 %39, -1
  %46 = icmp sgt i64 %45, %31
  br i1 %46, label %38, label %32, !llvm.loop !71

47:                                               ; preds = %35, %47
  %48 = phi i64 [ 1, %35 ], [ %54, %47 ]
  %49 = load ptr, ptr %0, align 8, !tbaa !6
  %50 = getelementptr ptr, ptr %49, i64 %48
  %51 = getelementptr ptr, ptr %50, i64 -1
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = getelementptr inbounds i16, ptr %52, i64 %36
  store ptr %53, ptr %50, align 8, !tbaa !6
  %54 = add nuw nsw i64 %48, 1
  %55 = icmp eq i64 %54, %37
  br i1 %55, label %56, label %47, !llvm.loop !72

56:                                               ; preds = %47, %32
  %57 = shl i32 %2, 1
  %58 = add i32 %57, 8
  %59 = mul i32 %58, %1
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem3Doint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  tail call void @no_mem_exit(ptr noundef nonnull @.str.105) #9
  %11 = load ptr, ptr %0, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %10, %5
  %13 = phi ptr [ %11, %10 ], [ %8, %5 ]
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = tail call noalias ptr @calloc(i64 noundef %15, i64 noundef 8) #11
  store ptr %16, ptr %13, align 8, !tbaa !6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call void @no_mem_exit(ptr noundef nonnull @.str.105) #9
  br label %19

19:                                               ; preds = %18, %12
  %20 = load ptr, ptr %0, align 8, !tbaa !6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = sext i32 %4 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  store ptr %23, ptr %20, align 8, !tbaa !6
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = sext i32 %2 to i64
  %27 = zext nneg i32 %1 to i64
  br label %38

28:                                               ; preds = %38, %19
  %29 = icmp sgt i32 %1, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %28
  %31 = sub i32 0, %4
  %32 = sub nsw i32 %2, %4
  %33 = icmp sgt i32 %2, 0
  %34 = sext i32 %3 to i64
  %35 = sext i32 %31 to i64
  %36 = sext i32 %32 to i64
  %37 = zext nneg i32 %1 to i64
  br label %47

38:                                               ; preds = %25, %38
  %39 = phi i64 [ 1, %25 ], [ %45, %38 ]
  %40 = load ptr, ptr %0, align 8, !tbaa !6
  %41 = getelementptr ptr, ptr %40, i64 %39
  %42 = getelementptr ptr, ptr %41, i64 -1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds ptr, ptr %43, i64 %26
  store ptr %44, ptr %41, align 8, !tbaa !6
  %45 = add nuw nsw i64 %39, 1
  %46 = icmp eq i64 %45, %27
  br i1 %46, label %28, label %38, !llvm.loop !73

47:                                               ; preds = %30, %61
  %48 = phi i64 [ 0, %30 ], [ %62, %61 ]
  br i1 %33, label %49, label %61

49:                                               ; preds = %47, %58
  %50 = phi i64 [ %59, %58 ], [ %35, %47 ]
  %51 = tail call noalias ptr @calloc(i64 noundef %34, i64 noundef 4) #11
  %52 = load ptr, ptr %0, align 8, !tbaa !6
  %53 = getelementptr inbounds ptr, ptr %52, i64 %48
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  %55 = getelementptr inbounds ptr, ptr %54, i64 %50
  store ptr %51, ptr %55, align 8, !tbaa !6
  %56 = icmp eq ptr %51, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  tail call void @no_mem_exit(ptr noundef nonnull @.str.105) #9
  br label %58

58:                                               ; preds = %49, %57
  %59 = add nsw i64 %50, 1
  %60 = icmp slt i64 %59, %36
  br i1 %60, label %49, label %61, !llvm.loop !74

61:                                               ; preds = %58, %47
  %62 = add nuw nsw i64 %48, 1
  %63 = icmp eq i64 %62, %37
  br i1 %63, label %64, label %47, !llvm.loop !75

64:                                               ; preds = %61, %28
  %65 = shl i32 %3, 2
  %66 = add i32 %65, 8
  %67 = mul i32 %66, %2
  %68 = add i32 %67, 8
  %69 = mul i32 %68, %1
  ret i32 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @get_mem2Doint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.55) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 4) #11
  store ptr %15, ptr %12, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.55) #9
  br label %18

18:                                               ; preds = %17, %11
  %19 = load ptr, ptr %0, align 8, !tbaa !6
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = sext i32 %3 to i64
  %22 = getelementptr inbounds i32, ptr %20, i64 %21
  store ptr %22, ptr %19, align 8, !tbaa !6
  %23 = icmp sgt i32 %1, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = sext i32 %2 to i64
  %26 = zext nneg i32 %1 to i64
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i64 [ 1, %24 ], [ %34, %27 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !6
  %30 = getelementptr ptr, ptr %29, i64 %28
  %31 = getelementptr ptr, ptr %30, i64 -1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds i32, ptr %32, i64 %25
  store ptr %33, ptr %30, align 8, !tbaa !6
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %27, !llvm.loop !76

36:                                               ; preds = %27, %18
  %37 = shl i32 %2, 2
  %38 = add i32 %37, 8
  %39 = mul i32 %38, %1
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem3Ddouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.106) #9
  br label %11

11:                                               ; preds = %10, %4
  %12 = mul nsw i32 %2, %1
  %13 = call i32 @get_mem2Ddouble(ptr noundef nonnull %5, i32 noundef %12, i32 noundef %3) #9
  %14 = icmp sgt i32 %1, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !tbaa !6
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ 0, %15 ], [ %25, %19 ]
  %21 = mul nsw i64 %20, %17
  %22 = getelementptr inbounds ptr, ptr %16, i64 %21
  %23 = load ptr, ptr %0, align 8, !tbaa !6
  %24 = getelementptr inbounds ptr, ptr %23, i64 %20
  store ptr %22, ptr %24, align 8, !tbaa !6
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, %18
  br i1 %26, label %27, label %19, !llvm.loop !77

27:                                               ; preds = %19, %11
  %28 = trunc i64 %7 to i32
  %29 = add nsw i32 %13, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Ddouble(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #10
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #10
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef nonnull %0) #10
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #10
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem1Dodouble(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = sub nsw i64 0, %5
  %7 = getelementptr inbounds double, ptr %0, i64 %6
  tail call void @free(ptr noundef %7) #10
  br label %9

8:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.108, i32 noundef 100) #10
  br label %9

9:                                                ; preds = %8, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dodouble(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = sext i32 %1 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds double, ptr %5, i64 %7
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @free(ptr noundef %8) #10
  br label %12

11:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.109, i32 noundef 100) #10
  br label %12

12:                                               ; preds = %11, %10
  tail call void @free(ptr noundef nonnull %0) #10
  br label %14

13:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.109, i32 noundef 100) #10
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Dodouble(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %6
  %9 = sub i32 0, %3
  %10 = sub nsw i32 %2, %3
  %11 = icmp sgt i32 %2, 0
  %12 = sext i32 %9 to i64
  %13 = sext i32 %10 to i64
  %14 = zext nneg i32 %1 to i64
  br label %15

15:                                               ; preds = %8, %30
  %16 = phi i64 [ 0, %8 ], [ %31, %30 ]
  br i1 %11, label %17, label %30

17:                                               ; preds = %15
  %18 = getelementptr inbounds ptr, ptr %0, i64 %16
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi i64 [ %12, %17 ], [ %28, %27 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !6
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %23) #10
  br label %27

26:                                               ; preds = %19
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #10
  br label %27

27:                                               ; preds = %25, %26
  %28 = add nsw i64 %20, 1
  %29 = icmp slt i64 %28, %13
  br i1 %29, label %19, label %30, !llvm.loop !78

30:                                               ; preds = %27, %15
  %31 = add nuw nsw i64 %16, 1
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %33, label %15, !llvm.loop !79

33:                                               ; preds = %30, %6
  %34 = load ptr, ptr %0, align 8, !tbaa !6
  %35 = sext i32 %3 to i64
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %37, ptr %0, align 8, !tbaa !6
  %38 = icmp eq ptr %34, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void @free(ptr noundef %37) #10
  br label %41

40:                                               ; preds = %33
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #10
  br label %41

41:                                               ; preds = %40, %39
  tail call void @free(ptr noundef nonnull %0) #10
  br label %43

42:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #10
  br label %43

43:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Doint(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %42, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %6
  %9 = sub i32 0, %3
  %10 = sub nsw i32 %2, %3
  %11 = icmp sgt i32 %2, 0
  %12 = sext i32 %9 to i64
  %13 = sext i32 %10 to i64
  %14 = zext nneg i32 %1 to i64
  br label %15

15:                                               ; preds = %8, %30
  %16 = phi i64 [ 0, %8 ], [ %31, %30 ]
  br i1 %11, label %17, label %30

17:                                               ; preds = %15
  %18 = getelementptr inbounds ptr, ptr %0, i64 %16
  br label %19

19:                                               ; preds = %17, %27
  %20 = phi i64 [ %12, %17 ], [ %28, %27 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !6
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @free(ptr noundef nonnull %23) #10
  br label %27

26:                                               ; preds = %19
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #10
  br label %27

27:                                               ; preds = %25, %26
  %28 = add nsw i64 %20, 1
  %29 = icmp slt i64 %28, %13
  br i1 %29, label %19, label %30, !llvm.loop !80

30:                                               ; preds = %27, %15
  %31 = add nuw nsw i64 %16, 1
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %33, label %15, !llvm.loop !81

33:                                               ; preds = %30, %6
  %34 = load ptr, ptr %0, align 8, !tbaa !6
  %35 = sext i32 %3 to i64
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %37, ptr %0, align 8, !tbaa !6
  %38 = icmp eq ptr %34, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void @free(ptr noundef %37) #10
  br label %41

40:                                               ; preds = %33
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #10
  br label %41

41:                                               ; preds = %40, %39
  tail call void @free(ptr noundef nonnull %0) #10
  br label %43

42:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #10
  br label %43

43:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Doint(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = sext i32 %1 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @free(ptr noundef %8) #10
  br label %12

11:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.112, i32 noundef 100) #10
  br label %12

12:                                               ; preds = %11, %10
  tail call void @free(ptr noundef nonnull %0) #10
  br label %14

13:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.112, i32 noundef 100) #10
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_offset_mem2Dshort(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = mul nsw i32 %2, %1
  %8 = add nsw i32 %7, %3
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  %10 = sext i32 %8 to i64
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds i16, ptr %9, i64 %11
  store ptr %12, ptr %0, align 8, !tbaa !6
  %13 = icmp eq ptr %9, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @free(ptr noundef %12) #10
  br label %16

15:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.113, i32 noundef 100) #10
  br label %16

16:                                               ; preds = %15, %14
  tail call void @free(ptr noundef nonnull %0) #10
  br label %18

17:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.113, i32 noundef 100) #10
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem3Ddouble(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  tail call void @free_mem2Ddouble(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %0) #10
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.72, i32 noundef 100) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_mem2Dolm(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  tail call void @no_mem_exit(ptr noundef nonnull @.str.114) #9
  %10 = load ptr, ptr %0, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %9, %4
  %12 = phi ptr [ %10, %9 ], [ %7, %4 ]
  %13 = mul nsw i32 %2, %1
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 48) #11
  store ptr %15, ptr %12, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  tail call void @no_mem_exit(ptr noundef nonnull @.str.114) #9
  br label %18

18:                                               ; preds = %17, %11
  %19 = load ptr, ptr %0, align 8, !tbaa !6
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = sext i32 %3 to i64
  %22 = getelementptr inbounds %struct.lambda_params, ptr %20, i64 %21
  store ptr %22, ptr %19, align 8, !tbaa !6
  %23 = icmp sgt i32 %1, 1
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = sext i32 %2 to i64
  %26 = zext nneg i32 %1 to i64
  br label %27

27:                                               ; preds = %24, %27
  %28 = phi i64 [ 1, %24 ], [ %34, %27 ]
  %29 = load ptr, ptr %0, align 8, !tbaa !6
  %30 = getelementptr ptr, ptr %29, i64 %28
  %31 = getelementptr ptr, ptr %30, i64 -1
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.lambda_params, ptr %32, i64 %25
  store ptr %33, ptr %30, align 8, !tbaa !6
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %27, !llvm.loop !82

36:                                               ; preds = %27, %18
  %37 = mul i32 %2, 48
  %38 = or disjoint i32 %37, 8
  %39 = mul i32 %38, %1
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_mem2Dolm(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = sext i32 %1 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds %struct.lambda_params, ptr %5, i64 %7
  store ptr %8, ptr %0, align 8, !tbaa !6
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @free(ptr noundef %8) #10
  br label %12

11:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.115, i32 noundef 100) #10
  br label %12

12:                                               ; preds = %11, %10
  tail call void @free(ptr noundef nonnull %0) #10
  br label %14

13:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.115, i32 noundef 100) #10
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize allocsize(0) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind optsize allocsize(0,1) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !11}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !11}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
