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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @init_top_bot_planes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = ashr i32 %1, 1
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %2, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %4
  %13 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %13, ptr %3, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.1) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %17

17:                                               ; preds = %15, %12
  %18 = icmp sgt i32 %5, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %17
  %20 = zext nneg i32 %5 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %33, %21 ]
  %23 = shl nuw nsw i64 %22, 1
  %24 = getelementptr inbounds ptr, ptr %0, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = load ptr, ptr %2, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 %22
  store ptr %25, ptr %27, align 8, !tbaa !34
  %28 = or disjoint i64 %23, 1
  %29 = getelementptr inbounds ptr, ptr %0, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = load ptr, ptr %3, align 8, !tbaa !34
  %32 = getelementptr inbounds ptr, ptr %31, i64 %22
  store ptr %30, ptr %32, align 8, !tbaa !34
  %33 = add nuw nsw i64 %22, 1
  %34 = icmp eq i64 %33, %20
  br i1 %34, label %35, label %21, !llvm.loop !38

35:                                               ; preds = %21, %17
  %36 = shl i32 %1, 3
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @no_mem_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef %0) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @free_top_bot_planes(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  tail call void @free(ptr noundef %0) #9
  tail call void @free(ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2Ddist(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.2) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 256) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.2) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.distortion_data, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !41

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 8
  %34 = or disjoint i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2Dlm(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 48) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.3) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.lambda_params, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !42

32:                                               ; preds = %23, %18
  %33 = mul i32 %2, 48
  %34 = or disjoint i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Ddist(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.4, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

declare void @error(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dlm(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.5, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2Dmp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.6) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 32) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.7) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.pic_motion_params, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !43

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 5
  %34 = or disjoint i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dmp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.8) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dmp(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !44

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dmp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dmp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.9, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.10, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dquant(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.11) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 12) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.11) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.level_quant_params, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !45

32:                                               ; preds = %23, %18
  %33 = mul i32 %2, 12
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dquant(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.12) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dquant(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !46

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dquant(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.13) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.12) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2Dquant(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !46

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !47

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dquant(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.14) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %6
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dquant(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !34
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !48

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dquant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dquant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.15, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.16, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dquant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3Dquant(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.17, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dquant(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @free_mem3Dquant(ptr noundef %7)
  tail call void @free(ptr noundef %4) #9
  br label %9

8:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.17, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %6, %8
  tail call void @free(ptr noundef %0) #9
  br label %11

10:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.18, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2D_spp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.19) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 8) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.19) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !49

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 3
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3D_spp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.20) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2D_spp(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !50

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.6) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 4) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.6) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.MotionVector, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !51

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 2
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.21) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dmv(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !52

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.22) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.21) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2Dmv(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !52

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !53

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.23) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %6
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dmv(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !34
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !54

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem6Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  store ptr %10, ptr %0, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.24) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %12, %7
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = mul nsw i32 %2, %1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #8
  store ptr %19, ptr %15, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.23) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %23

23:                                               ; preds = %21, %14
  %24 = load ptr, ptr %15, align 8, !tbaa !34
  %25 = mul nsw i32 %16, %3
  %26 = tail call i32 @get_mem4Dmv(ptr noundef %24, i32 noundef %25, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %27 = icmp sgt i32 %16, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = sext i32 %3 to i64
  %30 = zext nneg i32 %16 to i64
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i64 [ 1, %28 ], [ %38, %31 ]
  %33 = load ptr, ptr %15, align 8, !tbaa !34
  %34 = getelementptr ptr, ptr %33, i64 %32
  %35 = getelementptr ptr, ptr %34, i64 -1
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds ptr, ptr %36, i64 %29
  store ptr %37, ptr %34, align 8, !tbaa !34
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp eq i64 %38, %30
  br i1 %39, label %40, label %31, !llvm.loop !54

40:                                               ; preds = %31, %23
  %41 = icmp sgt i32 %1, 1
  br i1 %41, label %42, label %54

42:                                               ; preds = %40
  %43 = sext i32 %2 to i64
  %44 = zext nneg i32 %1 to i64
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i64 [ 1, %42 ], [ %52, %45 ]
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = getelementptr ptr, ptr %47, i64 %46
  %49 = getelementptr ptr, ptr %48, i64 -1
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds ptr, ptr %50, i64 %43
  store ptr %51, ptr %48, align 8, !tbaa !34
  %52 = add nuw nsw i64 %46, 1
  %53 = icmp eq i64 %52, %44
  br i1 %53, label %54, label %45, !llvm.loop !55

54:                                               ; preds = %45, %40
  %55 = trunc i64 %18 to i32
  %56 = trunc i64 %9 to i32
  %57 = add i32 %55, %56
  %58 = add i32 %57, %26
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem7Dmv(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.25) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = mul nsw i32 %2, %1
  %18 = tail call i32 @get_mem6Dmv(ptr noundef %16, i32 noundef %17, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !56

32:                                               ; preds = %23, %15
  %33 = trunc i64 %10 to i32
  %34 = add nsw i32 %18, %33
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2D_spp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3D_spp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.26, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.27, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.28, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.29, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3Dmv(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @free_mem3Dmv(ptr noundef %7)
  tail call void @free(ptr noundef %4) #9
  br label %9

8:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %6, %8
  tail call void @free(ptr noundef %0) #9
  br label %11

10:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem6Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @free_mem3Dmv(ptr noundef %10)
  tail call void @free(ptr noundef %7) #9
  br label %12

11:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.30, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %11, %9
  tail call void @free(ptr noundef %4) #9
  br label %14

13:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.31, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %12, %13
  tail call void @free(ptr noundef %0) #9
  br label %16

15:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.32, i32 noundef 100) #9
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem7Dmv(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem6Dmv(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.33, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem1Dpel(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = tail call noalias ptr @calloc(i64 noundef %3, i64 noundef 2) #10
  store ptr %4, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.34) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %6, %2
  %9 = shl i32 %1, 1
  %10 = add i32 %9, 8
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dpel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.35) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 2) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.35) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i16, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !57

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 1
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2DpelWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, %1
  %8 = shl nsw i32 %4, 1
  %9 = add nsw i32 %8, %2
  %10 = sext i32 %7 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.36) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %16

16:                                               ; preds = %14, %5
  %17 = mul nsw i32 %9, %7
  %18 = sext i32 %17 to i64
  %19 = tail call noalias ptr @calloc(i64 noundef %18, i64 noundef 2) #10
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %19, ptr %20, align 8, !tbaa !34
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.36) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %24

24:                                               ; preds = %22, %16
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = sext i32 %4 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  store ptr %28, ptr %25, align 8, !tbaa !34
  %29 = icmp sgt i32 %7, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = sext i32 %9 to i64
  %34 = zext nneg i32 %7 to i64
  br label %35

35:                                               ; preds = %30, %35
  %36 = phi i64 [ 1, %30 ], [ %41, %35 ]
  %37 = phi ptr [ %32, %30 ], [ %38, %35 ]
  %38 = getelementptr inbounds i16, ptr %37, i64 %33
  %39 = load ptr, ptr %0, align 8, !tbaa !34
  %40 = getelementptr inbounds ptr, ptr %39, i64 %36
  store ptr %38, ptr %40, align 8, !tbaa !34
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %34
  br i1 %42, label %43, label %35, !llvm.loop !58

43:                                               ; preds = %35, %24
  %44 = load ptr, ptr %0, align 8, !tbaa !34
  %45 = sext i32 %3 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  store ptr %46, ptr %0, align 8, !tbaa !34
  %47 = shl i32 %9, 1
  %48 = add i32 %47, 8
  %49 = mul i32 %48, %7
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dpel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.37) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dpel(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !59

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3DpelWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.38) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %6
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = mul nsw i32 %2, %1
  %16 = shl i32 %1, 1
  %17 = add i32 %16, -2
  %18 = mul nsw i32 %17, %4
  %19 = add nsw i32 %18, %15
  %20 = tail call i32 @get_mem2DpelWithPad(ptr noundef %14, i32 noundef %19, i32 noundef %3, i32 noundef %4, i32 noundef %5)
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
  %29 = load ptr, ptr %0, align 8, !tbaa !34
  %30 = getelementptr ptr, ptr %29, i64 %28
  %31 = getelementptr ptr, ptr %30, i64 -1
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds ptr, ptr %32, i64 %25
  store ptr %33, ptr %30, align 8, !tbaa !34
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %27, !llvm.loop !60

36:                                               ; preds = %27, %13
  %37 = trunc i64 %8 to i32
  %38 = add nsw i32 %20, %37
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3DpelWithPadSeparately(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = trunc i64 %8 to i32
  %10 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %10, ptr %0, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.39) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %12, %6
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %14
  %17 = zext nneg i32 %1 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %25, %18 ]
  %20 = phi i32 [ %9, %16 ], [ %24, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr inbounds ptr, ptr %21, i64 %19
  %23 = tail call i32 @get_mem2DpelWithPad(ptr noundef %22, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %24 = add nsw i32 %23, %20
  %25 = add nuw nsw i64 %19, 1
  %26 = icmp eq i64 %25, %17
  br i1 %26, label %27, label %18, !llvm.loop !61

27:                                               ; preds = %18, %14
  %28 = phi i32 [ %9, %14 ], [ %24, %18 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dpel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.22) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.37) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2Dpel(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !59

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !62

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem4DpelWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  store ptr %10, ptr %0, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.40) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %12, %7
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = mul nsw i32 %2, %1
  %17 = tail call i32 @get_mem3DpelWithPad(ptr noundef %15, i32 noundef %16, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %18 = icmp sgt i32 %1, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = sext i32 %2 to i64
  %21 = zext nneg i32 %1 to i64
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 1, %19 ], [ %29, %22 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr ptr, ptr %24, i64 %23
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds ptr, ptr %27, i64 %20
  store ptr %28, ptr %25, align 8, !tbaa !34
  %29 = add nuw nsw i64 %23, 1
  %30 = icmp eq i64 %29, %21
  br i1 %30, label %31, label %22, !llvm.loop !63

31:                                               ; preds = %22, %14
  %32 = trunc i64 %9 to i32
  %33 = add nsw i32 %17, %32
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem4DpelWithPadSeparately(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  store ptr %10, ptr %0, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.41) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %12, %7
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = mul nsw i32 %2, %1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = trunc i64 %18 to i32
  %20 = tail call noalias ptr @malloc(i64 noundef %18) #8
  store ptr %20, ptr %15, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.39) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %24

24:                                               ; preds = %22, %14
  %25 = icmp sgt i32 %16, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = zext nneg i32 %16 to i64
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %35, %28 ]
  %30 = phi i32 [ %19, %26 ], [ %34, %28 ]
  %31 = load ptr, ptr %15, align 8, !tbaa !34
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  %33 = tail call i32 @get_mem2DpelWithPad(ptr noundef %32, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %34 = add nsw i32 %33, %30
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %27
  br i1 %36, label %37, label %28, !llvm.loop !61

37:                                               ; preds = %28, %24
  %38 = phi i32 [ %19, %24 ], [ %34, %28 ]
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !64

52:                                               ; preds = %43, %37
  %53 = trunc i64 %9 to i32
  %54 = add nsw i32 %38, %53
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dpel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.23) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %6
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dpel(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !34
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !65

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5DpelWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.42) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = mul nsw i32 %2, %1
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #8
  store ptr %20, ptr %16, align 8, !tbaa !34
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.40) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %24

24:                                               ; preds = %22, %15
  %25 = load ptr, ptr %16, align 8, !tbaa !34
  %26 = mul nsw i32 %17, %3
  %27 = tail call i32 @get_mem3DpelWithPad(ptr noundef %25, i32 noundef %26, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %28 = icmp sgt i32 %17, 1
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = sext i32 %3 to i64
  %31 = zext nneg i32 %17 to i64
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i64 [ 1, %29 ], [ %39, %32 ]
  %34 = load ptr, ptr %16, align 8, !tbaa !34
  %35 = getelementptr ptr, ptr %34, i64 %33
  %36 = getelementptr ptr, ptr %35, i64 -1
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = getelementptr inbounds ptr, ptr %37, i64 %30
  store ptr %38, ptr %35, align 8, !tbaa !34
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %31
  br i1 %40, label %41, label %32, !llvm.loop !63

41:                                               ; preds = %32, %24
  %42 = icmp sgt i32 %1, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = sext i32 %2 to i64
  %45 = zext nneg i32 %1 to i64
  br label %46

46:                                               ; preds = %43, %46
  %47 = phi i64 [ 1, %43 ], [ %53, %46 ]
  %48 = load ptr, ptr %0, align 8, !tbaa !34
  %49 = getelementptr ptr, ptr %48, i64 %47
  %50 = getelementptr ptr, ptr %49, i64 -1
  %51 = load ptr, ptr %50, align 8, !tbaa !34
  %52 = getelementptr inbounds ptr, ptr %51, i64 %44
  store ptr %52, ptr %49, align 8, !tbaa !34
  %53 = add nuw nsw i64 %47, 1
  %54 = icmp eq i64 %53, %45
  br i1 %54, label %55, label %46, !llvm.loop !66

55:                                               ; preds = %46, %41
  %56 = trunc i64 %19 to i32
  %57 = trunc i64 %10 to i32
  %58 = add i32 %56, %57
  %59 = add i32 %58, %27
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5DpelWithPadSeparately(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.43) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = mul nsw i32 %2, %1
  %18 = tail call i32 @get_mem4DpelWithPadSeparately(ptr noundef %16, i32 noundef %17, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !67

32:                                               ; preds = %23, %15
  %33 = trunc i64 %10 to i32
  %34 = add nsw i32 %18, %33
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem1Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef %0) #9
  br label %5

4:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.44, i32 noundef 100) #9
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2DpelWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = sub nsw i32 0, %1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = sext i32 %2 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  tail call void @free(ptr noundef %15) #9
  br label %17

16:                                               ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %17

17:                                               ; preds = %16, %8
  %18 = sub nsw i32 0, %1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  tail call void @free(ptr noundef %20) #9
  br label %22

21:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %22

22:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.45, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3DpelWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = sub nsw i32 0, %1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %6, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = sext i32 %2 to i64
  %17 = sub nsw i64 0, %16
  %18 = getelementptr inbounds i16, ptr %15, i64 %17
  tail call void @free(ptr noundef %18) #9
  br label %20

19:                                               ; preds = %8
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %20

20:                                               ; preds = %19, %11
  %21 = sub nsw i32 0, %1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %6, i64 %22
  tail call void @free(ptr noundef %23) #9
  br label %25

24:                                               ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %25

25:                                               ; preds = %20, %24
  tail call void @free(ptr noundef %0) #9
  br label %27

26:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.47, i32 noundef 100) #9
  br label %27

27:                                               ; preds = %26, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3DpelWithPadSeparately(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %2
  %10 = sext i32 %9 to i64
  %11 = sext i32 %3 to i64
  %12 = sub nsw i64 0, %11
  %13 = sub nsw i32 0, %2
  %14 = sext i32 %13 to i64
  %15 = zext nneg i32 %1 to i64
  br label %16

16:                                               ; preds = %8, %31
  %17 = phi i64 [ 0, %8 ], [ %32, %31 ]
  %18 = getelementptr inbounds ptr, ptr %0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %19, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds ptr, ptr %19, i64 %10
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds i16, ptr %26, i64 %12
  tail call void @free(ptr noundef %27) #9
  br label %29

28:                                               ; preds = %21
  tail call void @error(ptr noundef nonnull @.str.46, i32 noundef 100) #9
  br label %29

29:                                               ; preds = %28, %24
  %30 = getelementptr inbounds ptr, ptr %19, i64 %14
  tail call void @free(ptr noundef %30) #9
  store ptr null, ptr %18, align 8, !tbaa !34
  br label %31

31:                                               ; preds = %16, %29
  %32 = add nuw nsw i64 %17, 1
  %33 = icmp eq i64 %32, %15
  br i1 %33, label %34, label %16, !llvm.loop !68

34:                                               ; preds = %31, %6
  tail call void @free(ptr noundef %0) #9
  br label %36

35:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.48, i32 noundef 100) #9
  br label %36

36:                                               ; preds = %35, %34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3Dpel(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.49, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4DpelWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3DpelWithPad(ptr noundef %6, i32 noundef %1, i32 noundef %2)
  tail call void @free(ptr noundef %0) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.50, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4DpelWithPadSeparately(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3DpelWithPadSeparately(ptr noundef %7, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  tail call void @free(ptr noundef %0) #9
  br label %9

8:                                                ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.51, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dpel(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @free_mem3Dpel(ptr noundef %7)
  tail call void @free(ptr noundef %4) #9
  br label %9

8:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.49, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %6, %8
  tail call void @free(ptr noundef %0) #9
  br label %11

10:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.52, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5DpelWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !34
  tail call void @free_mem3DpelWithPad(ptr noundef %9, i32 noundef %1, i32 noundef %2)
  tail call void @free(ptr noundef %6) #9
  br label %11

10:                                               ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.50, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %8, %10
  tail call void @free(ptr noundef %0) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.53, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5DpelWithPadSeparately(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @free_mem3DpelWithPadSeparately(ptr noundef %10, i32 noundef %1, i32 noundef %2, i32 noundef %3)
  tail call void @free(ptr noundef %7) #9
  br label %12

11:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.51, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %9, %11
  tail call void @free(ptr noundef %0) #9
  br label %14

13:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.53, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @new_mem2D(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.54) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = mul nsw i32 %1, %0
  %11 = sext i32 %10 to i64
  %12 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 1) #10
  store ptr %12, ptr %5, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.54) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %16

16:                                               ; preds = %14, %9
  %17 = icmp sgt i32 %0, 1
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = sext i32 %1 to i64
  %20 = zext nneg i32 %0 to i64
  %21 = load ptr, ptr %5, align 8
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %21, %18 ], [ %26, %22 ]
  %24 = phi i64 [ 1, %18 ], [ %27, %22 ]
  %25 = getelementptr ptr, ptr %5, i64 %24
  %26 = getelementptr inbounds i8, ptr %23, i64 %19
  store ptr %26, ptr %25, align 8, !tbaa !34
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %20
  br i1 %28, label %29, label %22, !llvm.loop !69

29:                                               ; preds = %22, %16
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2D(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.54) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 1) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.54) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i8, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !70

32:                                               ; preds = %23, %18
  %33 = add i32 %2, 8
  %34 = mul i32 %33, %1
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @new_mem2Dint(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = mul nsw i32 %1, %0
  %11 = sext i32 %10 to i64
  %12 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 4) #10
  store ptr %12, ptr %5, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %16

16:                                               ; preds = %14, %9
  %17 = icmp sgt i32 %0, 1
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = sext i32 %1 to i64
  %20 = zext nneg i32 %0 to i64
  %21 = load ptr, ptr %5, align 8
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %21, %18 ], [ %26, %22 ]
  %24 = phi i64 [ 1, %18 ], [ %27, %22 ]
  %25 = getelementptr ptr, ptr %5, i64 %24
  %26 = getelementptr inbounds i32, ptr %23, i64 %19
  store ptr %26, ptr %25, align 8, !tbaa !34
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %20
  br i1 %28, label %29, label %22, !llvm.loop !71

29:                                               ; preds = %22, %16
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 4) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i32, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !72

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 2
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2DintWithPad(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, %1
  %8 = shl nsw i32 %4, 1
  %9 = add nsw i32 %8, %2
  %10 = sext i32 %7 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #8
  store ptr %12, ptr %0, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.56) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %16

16:                                               ; preds = %14, %5
  %17 = mul nsw i32 %9, %7
  %18 = sext i32 %17 to i64
  %19 = tail call noalias ptr @calloc(i64 noundef %18, i64 noundef 4) #10
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %19, ptr %20, align 8, !tbaa !34
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.56) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %24

24:                                               ; preds = %22, %16
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = sext i32 %4 to i64
  %28 = getelementptr inbounds i32, ptr %26, i64 %27
  store ptr %28, ptr %25, align 8, !tbaa !34
  %29 = icmp sgt i32 %7, 1
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load ptr, ptr %0, align 8, !tbaa !34
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = sext i32 %9 to i64
  %34 = zext nneg i32 %7 to i64
  br label %35

35:                                               ; preds = %30, %35
  %36 = phi i64 [ 1, %30 ], [ %41, %35 ]
  %37 = phi ptr [ %32, %30 ], [ %38, %35 ]
  %38 = getelementptr inbounds i32, ptr %37, i64 %33
  %39 = load ptr, ptr %0, align 8, !tbaa !34
  %40 = getelementptr inbounds ptr, ptr %39, i64 %36
  store ptr %38, ptr %40, align 8, !tbaa !34
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %34
  br i1 %42, label %43, label %35, !llvm.loop !73

43:                                               ; preds = %35, %24
  %44 = load ptr, ptr %0, align 8, !tbaa !34
  %45 = sext i32 %3 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  store ptr %46, ptr %0, align 8, !tbaa !34
  %47 = shl i32 %9, 2
  %48 = add i32 %47, 8
  %49 = mul i32 %48, %7
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dint64(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.57) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 8) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.57) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i64, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !74

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 3
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Ddistblk(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 8) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.58) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i64, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !75

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 3
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3D(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.59) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2D(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !76

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4D(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.60) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.59) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2D(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !76

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !77

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.61) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dint(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !78

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dint64(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.62) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dint64(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !79

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Ddistblk(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.63) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Ddistblk(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !80

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.64) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.61) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2Dint(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !78

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !81

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dint64(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.65) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.62) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2Dint64(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !79

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !82

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Ddistblk(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.66) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.63) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2Ddistblk(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !80

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !83

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.67) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %6
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dint(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !34
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !84

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2DintWithPad(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = sub nsw i32 0, %1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = sext i32 %2 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds i32, ptr %12, i64 %14
  tail call void @free(ptr noundef %15) #9
  br label %17

16:                                               ; preds = %5
  tail call void @error(ptr noundef nonnull @.str.70, i32 noundef 100) #9
  br label %17

17:                                               ; preds = %16, %8
  %18 = sub nsw i32 0, %1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  tail call void @free(ptr noundef %20) #9
  br label %22

21:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.70, i32 noundef 100) #9
  br label %22

22:                                               ; preds = %21, %17
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dint64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.68, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.72, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4D(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3D(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.73, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.69, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.74, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dint64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.71, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.75, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Ddistblk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.76, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Ddistblk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.116, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3Dint(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.77, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dint64(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3Dint64(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.78, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Ddistblk(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3Ddistblk(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.79, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dint(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @free_mem3Dint(ptr noundef %7)
  tail call void @free(ptr noundef %4) #9
  br label %9

8:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.77, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %6, %8
  tail call void @free(ptr noundef %0) #9
  br label %11

10:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.80, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @new_mem2Duint16(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = shl nsw i64 %3, 3
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %7, %2
  %10 = mul nsw i32 %1, %0
  %11 = sext i32 %10 to i64
  %12 = tail call noalias ptr @calloc(i64 noundef %11, i64 noundef 2) #10
  store ptr %12, ptr %5, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %16

16:                                               ; preds = %14, %9
  %17 = icmp sgt i32 %0, 1
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = sext i32 %1 to i64
  %20 = zext nneg i32 %0 to i64
  %21 = load ptr, ptr %5, align 8
  br label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %21, %18 ], [ %26, %22 ]
  %24 = phi i64 [ 1, %18 ], [ %27, %22 ]
  %25 = getelementptr ptr, ptr %5, i64 %24
  %26 = getelementptr inbounds i16, ptr %23, i64 %19
  store ptr %26, ptr %25, align 8, !tbaa !34
  %27 = add nuw nsw i64 %24, 1
  %28 = icmp eq i64 %27, %20
  br i1 %28, label %29, label %22, !llvm.loop !85

29:                                               ; preds = %22, %16
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Duint16(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 2) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i16, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !86

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 1
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Duint16(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Duint16(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !87

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Duint16(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.84) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.83) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2Duint16(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !87

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !88

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.85) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 2) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.85) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds i16, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !89

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 1
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.86) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = load ptr, ptr %0, align 8, !tbaa !34
  %13 = mul nsw i32 %2, %1
  %14 = tail call i32 @get_mem2Dshort(ptr noundef %12, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = sext i32 %2 to i64
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ 1, %16 ], [ %26, %19 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = getelementptr ptr, ptr %21, i64 %20
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  store ptr %25, ptr %22, align 8, !tbaa !34
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !90

28:                                               ; preds = %19, %11
  %29 = trunc i64 %6 to i32
  %30 = add nsw i32 %14, %29
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem4Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.87) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %0, align 8, !tbaa !34
  %14 = mul nsw i32 %2, %1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #8
  store ptr %17, ptr %13, align 8, !tbaa !34
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.86) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %21

21:                                               ; preds = %19, %12
  %22 = load ptr, ptr %13, align 8, !tbaa !34
  %23 = mul nsw i32 %14, %3
  %24 = tail call i32 @get_mem2Dshort(ptr noundef %22, i32 noundef %23, i32 noundef %4)
  %25 = icmp sgt i32 %14, 1
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = sext i32 %3 to i64
  %28 = zext nneg i32 %14 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 1, %26 ], [ %36, %29 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !34
  %32 = getelementptr ptr, ptr %31, i64 %30
  %33 = getelementptr ptr, ptr %32, i64 -1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = getelementptr inbounds ptr, ptr %34, i64 %27
  store ptr %35, ptr %32, align 8, !tbaa !34
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !90

38:                                               ; preds = %29, %21
  %39 = icmp sgt i32 %1, 1
  br i1 %39, label %40, label %52

40:                                               ; preds = %38
  %41 = sext i32 %2 to i64
  %42 = zext nneg i32 %1 to i64
  br label %43

43:                                               ; preds = %40, %43
  %44 = phi i64 [ 1, %40 ], [ %50, %43 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !34
  %46 = getelementptr ptr, ptr %45, i64 %44
  %47 = getelementptr ptr, ptr %46, i64 -1
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = getelementptr inbounds ptr, ptr %48, i64 %41
  store ptr %49, ptr %46, align 8, !tbaa !34
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %42
  br i1 %51, label %52, label %43, !llvm.loop !91

52:                                               ; preds = %43, %38
  %53 = trunc i64 %16 to i32
  %54 = trunc i64 %7 to i32
  %55 = add i32 %53, %54
  %56 = add i32 %55, %24
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem5Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %1 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #8
  store ptr %9, ptr %0, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.88) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %6
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  %15 = mul nsw i32 %2, %1
  %16 = tail call i32 @get_mem4Dshort(ptr noundef %14, i32 noundef %15, i32 noundef %3, i32 noundef %4, i32 noundef %5)
  %17 = icmp sgt i32 %1, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = sext i32 %2 to i64
  %20 = zext nneg i32 %1 to i64
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ 1, %18 ], [ %28, %21 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = getelementptr ptr, ptr %23, i64 %22
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = getelementptr inbounds ptr, ptr %26, i64 %19
  store ptr %27, ptr %24, align 8, !tbaa !34
  %28 = add nuw nsw i64 %22, 1
  %29 = icmp eq i64 %28, %20
  br i1 %29, label %30, label %21, !llvm.loop !92

30:                                               ; preds = %21, %13
  %31 = trunc i64 %8 to i32
  %32 = add nsw i32 %16, %31
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem6Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %1 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #8
  store ptr %10, ptr %0, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.89) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %12, %7
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  %16 = mul nsw i32 %2, %1
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 3
  %19 = tail call noalias ptr @malloc(i64 noundef %18) #8
  store ptr %19, ptr %15, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.88) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %23

23:                                               ; preds = %21, %14
  %24 = load ptr, ptr %15, align 8, !tbaa !34
  %25 = mul nsw i32 %16, %3
  %26 = tail call i32 @get_mem4Dshort(ptr noundef %24, i32 noundef %25, i32 noundef %4, i32 noundef %5, i32 noundef %6)
  %27 = icmp sgt i32 %16, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = sext i32 %3 to i64
  %30 = zext nneg i32 %16 to i64
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i64 [ 1, %28 ], [ %38, %31 ]
  %33 = load ptr, ptr %15, align 8, !tbaa !34
  %34 = getelementptr ptr, ptr %33, i64 %32
  %35 = getelementptr ptr, ptr %34, i64 -1
  %36 = load ptr, ptr %35, align 8, !tbaa !34
  %37 = getelementptr inbounds ptr, ptr %36, i64 %29
  store ptr %37, ptr %34, align 8, !tbaa !34
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp eq i64 %38, %30
  br i1 %39, label %40, label %31, !llvm.loop !92

40:                                               ; preds = %31, %23
  %41 = icmp sgt i32 %1, 1
  br i1 %41, label %42, label %54

42:                                               ; preds = %40
  %43 = sext i32 %2 to i64
  %44 = zext nneg i32 %1 to i64
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i64 [ 1, %42 ], [ %52, %45 ]
  %47 = load ptr, ptr %0, align 8, !tbaa !34
  %48 = getelementptr ptr, ptr %47, i64 %46
  %49 = getelementptr ptr, ptr %48, i64 -1
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = getelementptr inbounds ptr, ptr %50, i64 %43
  store ptr %51, ptr %48, align 8, !tbaa !34
  %52 = add nuw nsw i64 %46, 1
  %53 = icmp eq i64 %52, %44
  br i1 %53, label %54, label %45, !llvm.loop !93

54:                                               ; preds = %45, %40
  %55 = trunc i64 %18 to i32
  %56 = trunc i64 %9 to i32
  %57 = add i32 %55, %56
  %58 = add i32 %57, %26
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem7Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = sext i32 %1 to i64
  %10 = shl nsw i64 %9, 3
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #8
  store ptr %11, ptr %0, align 8, !tbaa !34
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.90) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  %17 = mul nsw i32 %2, %1
  %18 = tail call i32 @get_mem6Dshort(ptr noundef %16, i32 noundef %17, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds ptr, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !94

32:                                               ; preds = %23, %15
  %33 = trunc i64 %10 to i32
  %34 = add nsw i32 %18, %33
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Duint16(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Duint16(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.91, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.92, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Duint16(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3Duint16(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.93, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.94, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.95, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem4Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem3Dshort(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.96, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem5Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  tail call void @free_mem3Dshort(ptr noundef %7)
  tail call void @free(ptr noundef %4) #9
  br label %9

8:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.96, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %6, %8
  tail call void @free(ptr noundef %0) #9
  br label %11

10:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.97, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem6Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %7, align 8, !tbaa !34
  tail call void @free_mem3Dshort(ptr noundef %10)
  tail call void @free(ptr noundef %7) #9
  br label %12

11:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.96, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %11, %9
  tail call void @free(ptr noundef %4) #9
  br label %14

13:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.97, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %12, %13
  tail call void @free(ptr noundef %0) #9
  br label %16

15:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.98, i32 noundef 100) #9
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem7Dshort(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @free_mem6Dshort(ptr noundef %4)
  tail call void @free(ptr noundef %0) #9
  br label %6

5:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.99, i32 noundef 100) #9
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Ddouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.100) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = mul nsw i32 %2, %1
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @calloc(i64 noundef %12, i64 noundef 8) #10
  %14 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %13, ptr %14, align 8, !tbaa !34
  %15 = icmp eq ptr %13, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.100) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %16, %10
  %19 = icmp sgt i32 %1, 1
  br i1 %19, label %20, label %32

20:                                               ; preds = %18
  %21 = sext i32 %2 to i64
  %22 = zext nneg i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ 1, %20 ], [ %30, %23 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !34
  %26 = getelementptr ptr, ptr %25, i64 %24
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = getelementptr inbounds double, ptr %28, i64 %21
  store ptr %29, ptr %26, align 8, !tbaa !34
  %30 = add nuw nsw i64 %24, 1
  %31 = icmp eq i64 %30, %22
  br i1 %31, label %32, label %23, !llvm.loop !95

32:                                               ; preds = %23, %18
  %33 = shl i32 %2, 3
  %34 = add i32 %33, 8
  %35 = mul i32 %34, %1
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem1Dodouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %1 to i64
  %5 = shl nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #8
  store ptr %6, ptr %0, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.101) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %8, %3
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds double, ptr %11, i64 %12
  store ptr %13, ptr %0, align 8, !tbaa !34
  %14 = trunc i64 %5 to i32
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Dodouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.102) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 8) #10
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %14, ptr %15, align 8, !tbaa !34
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.102) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %19

19:                                               ; preds = %17, %11
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds double, ptr %21, i64 %22
  store ptr %23, ptr %20, align 8, !tbaa !34
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = sext i32 %2 to i64
  %27 = zext nneg i32 %1 to i64
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 1, %25 ], [ %35, %28 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !34
  %31 = getelementptr ptr, ptr %30, i64 %29
  %32 = getelementptr ptr, ptr %31, i64 -1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds double, ptr %33, i64 %26
  store ptr %34, ptr %31, align 8, !tbaa !34
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %27
  br i1 %36, label %37, label %28, !llvm.loop !96

37:                                               ; preds = %28, %19
  %38 = shl i32 %2, 3
  %39 = add i32 %38, 8
  %40 = mul i32 %39, %1
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem3Dodouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.103) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = mul nsw i32 %2, %1
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #10
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %15, ptr %16, align 8, !tbaa !34
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.103) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %20

20:                                               ; preds = %18, %12
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = sext i32 %4 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %24, ptr %21, align 8, !tbaa !34
  %25 = icmp sgt i32 %1, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = sext i32 %2 to i64
  %28 = zext nneg i32 %1 to i64
  br label %39

29:                                               ; preds = %39, %20
  %30 = icmp sgt i32 %1, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %29
  %32 = sub i32 0, %4
  %33 = sub nsw i32 %2, %4
  %34 = icmp sgt i32 %2, 0
  %35 = sext i32 %3 to i64
  %36 = sext i32 %32 to i64
  %37 = sext i32 %33 to i64
  %38 = zext nneg i32 %1 to i64
  br label %48

39:                                               ; preds = %26, %39
  %40 = phi i64 [ 1, %26 ], [ %46, %39 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !34
  %42 = getelementptr ptr, ptr %41, i64 %40
  %43 = getelementptr ptr, ptr %42, i64 -1
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds ptr, ptr %44, i64 %27
  store ptr %45, ptr %42, align 8, !tbaa !34
  %46 = add nuw nsw i64 %40, 1
  %47 = icmp eq i64 %46, %28
  br i1 %47, label %29, label %39, !llvm.loop !97

48:                                               ; preds = %31, %63
  %49 = phi i64 [ 0, %31 ], [ %64, %63 ]
  br i1 %34, label %50, label %63

50:                                               ; preds = %48, %60
  %51 = phi i64 [ %61, %60 ], [ %36, %48 ]
  %52 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 8) #10
  %53 = load ptr, ptr %0, align 8, !tbaa !34
  %54 = getelementptr inbounds ptr, ptr %53, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = getelementptr inbounds ptr, ptr %55, i64 %51
  store ptr %52, ptr %56, align 8, !tbaa !34
  %57 = icmp eq ptr %52, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.103) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %60

60:                                               ; preds = %50, %58
  %61 = add nsw i64 %51, 1
  %62 = icmp slt i64 %61, %37
  br i1 %62, label %50, label %63, !llvm.loop !98

63:                                               ; preds = %60, %48
  %64 = add nuw nsw i64 %49, 1
  %65 = icmp eq i64 %64, %38
  br i1 %65, label %66, label %48, !llvm.loop !99

66:                                               ; preds = %63, %29
  %67 = shl i32 %3, 3
  %68 = add i32 %67, 8
  %69 = mul i32 %68, %2
  %70 = add i32 %69, 8
  %71 = mul i32 %70, %1
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_offset_mem2Dshort(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.104) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = mul nsw i32 %2, %1
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 2) #10
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %15, ptr %16, align 8, !tbaa !34
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.104) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %20

20:                                               ; preds = %18, %12
  %21 = mul nsw i32 %3, %2
  %22 = add nsw i32 %21, %4
  %23 = load ptr, ptr %0, align 8, !tbaa !34
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i16, ptr %24, i64 %25
  store ptr %26, ptr %23, align 8, !tbaa !34
  %27 = icmp sgt i32 %3, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = xor i32 %3, -1
  %30 = sext i32 %2 to i64
  %31 = sub nsw i64 0, %30
  %32 = sext i32 %29 to i64
  br label %39

33:                                               ; preds = %39, %20
  %34 = sub nsw i32 %2, %3
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %57

36:                                               ; preds = %33
  %37 = sext i32 %2 to i64
  %38 = zext nneg i32 %34 to i64
  br label %48

39:                                               ; preds = %28, %39
  %40 = phi i64 [ -1, %28 ], [ %46, %39 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !34
  %42 = getelementptr ptr, ptr %41, i64 %40
  %43 = getelementptr ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds i16, ptr %44, i64 %31
  store ptr %45, ptr %42, align 8, !tbaa !34
  %46 = add nsw i64 %40, -1
  %47 = icmp sgt i64 %46, %32
  br i1 %47, label %39, label %33, !llvm.loop !100

48:                                               ; preds = %36, %48
  %49 = phi i64 [ 1, %36 ], [ %55, %48 ]
  %50 = load ptr, ptr %0, align 8, !tbaa !34
  %51 = getelementptr ptr, ptr %50, i64 %49
  %52 = getelementptr ptr, ptr %51, i64 -1
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = getelementptr inbounds i16, ptr %53, i64 %37
  store ptr %54, ptr %51, align 8, !tbaa !34
  %55 = add nuw nsw i64 %49, 1
  %56 = icmp eq i64 %55, %38
  br i1 %56, label %57, label %48, !llvm.loop !101

57:                                               ; preds = %48, %33
  %58 = shl i32 %2, 1
  %59 = add i32 %58, 8
  %60 = mul i32 %59, %1
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem3Doint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.105) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %5
  %13 = mul nsw i32 %2, %1
  %14 = sext i32 %13 to i64
  %15 = tail call noalias ptr @calloc(i64 noundef %14, i64 noundef 8) #10
  %16 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %15, ptr %16, align 8, !tbaa !34
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.105) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %20

20:                                               ; preds = %18, %12
  %21 = load ptr, ptr %0, align 8, !tbaa !34
  %22 = load ptr, ptr %21, align 8, !tbaa !34
  %23 = sext i32 %4 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %24, ptr %21, align 8, !tbaa !34
  %25 = icmp sgt i32 %1, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = sext i32 %2 to i64
  %28 = zext nneg i32 %1 to i64
  br label %39

29:                                               ; preds = %39, %20
  %30 = icmp sgt i32 %1, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %29
  %32 = sub i32 0, %4
  %33 = sub nsw i32 %2, %4
  %34 = icmp sgt i32 %2, 0
  %35 = sext i32 %3 to i64
  %36 = sext i32 %32 to i64
  %37 = sext i32 %33 to i64
  %38 = zext nneg i32 %1 to i64
  br label %48

39:                                               ; preds = %26, %39
  %40 = phi i64 [ 1, %26 ], [ %46, %39 ]
  %41 = load ptr, ptr %0, align 8, !tbaa !34
  %42 = getelementptr ptr, ptr %41, i64 %40
  %43 = getelementptr ptr, ptr %42, i64 -1
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = getelementptr inbounds ptr, ptr %44, i64 %27
  store ptr %45, ptr %42, align 8, !tbaa !34
  %46 = add nuw nsw i64 %40, 1
  %47 = icmp eq i64 %46, %28
  br i1 %47, label %29, label %39, !llvm.loop !102

48:                                               ; preds = %31, %63
  %49 = phi i64 [ 0, %31 ], [ %64, %63 ]
  br i1 %34, label %50, label %63

50:                                               ; preds = %48, %60
  %51 = phi i64 [ %61, %60 ], [ %36, %48 ]
  %52 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 4) #10
  %53 = load ptr, ptr %0, align 8, !tbaa !34
  %54 = getelementptr inbounds ptr, ptr %53, i64 %49
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = getelementptr inbounds ptr, ptr %55, i64 %51
  store ptr %52, ptr %56, align 8, !tbaa !34
  %57 = icmp eq ptr %52, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.105) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %60

60:                                               ; preds = %50, %58
  %61 = add nsw i64 %51, 1
  %62 = icmp slt i64 %61, %37
  br i1 %62, label %50, label %63, !llvm.loop !103

63:                                               ; preds = %60, %48
  %64 = add nuw nsw i64 %49, 1
  %65 = icmp eq i64 %64, %38
  br i1 %65, label %66, label %48, !llvm.loop !104

66:                                               ; preds = %63, %29
  %67 = shl i32 %3, 2
  %68 = add i32 %67, 8
  %69 = mul i32 %68, %2
  %70 = add i32 %69, 8
  %71 = mul i32 %70, %1
  ret i32 %71
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @get_mem2Doint(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 4) #10
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %14, ptr %15, align 8, !tbaa !34
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.55) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %19

19:                                               ; preds = %17, %11
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds i32, ptr %21, i64 %22
  store ptr %23, ptr %20, align 8, !tbaa !34
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = sext i32 %2 to i64
  %27 = zext nneg i32 %1 to i64
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 1, %25 ], [ %35, %28 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !34
  %31 = getelementptr ptr, ptr %30, i64 %29
  %32 = getelementptr ptr, ptr %31, i64 -1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds i32, ptr %33, i64 %26
  store ptr %34, ptr %31, align 8, !tbaa !34
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %27
  br i1 %36, label %37, label %28, !llvm.loop !105

37:                                               ; preds = %28, %19
  %38 = shl i32 %2, 2
  %39 = add i32 %38, 8
  %40 = mul i32 %39, %1
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem3Ddouble(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = sext i32 %1 to i64
  %7 = shl nsw i64 %6, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #9
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #8
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.106) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %10, %4
  %13 = mul nsw i32 %2, %1
  %14 = call i32 @get_mem2Ddouble(ptr noundef nonnull %5, i32 noundef %13, i32 noundef %3)
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8, !tbaa !34
  %18 = sext i32 %2 to i64
  %19 = zext nneg i32 %1 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %26, %20 ]
  %22 = mul nsw i64 %21, %18
  %23 = getelementptr inbounds ptr, ptr %17, i64 %22
  %24 = load ptr, ptr %0, align 8, !tbaa !34
  %25 = getelementptr inbounds ptr, ptr %24, i64 %21
  store ptr %23, ptr %25, align 8, !tbaa !34
  %26 = add nuw nsw i64 %21, 1
  %27 = icmp eq i64 %26, %19
  br i1 %27, label %28, label %20, !llvm.loop !106

28:                                               ; preds = %20, %12
  %29 = trunc i64 %7 to i32
  %30 = add nsw i32 %14, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #9
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Ddouble(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef %4) #9
  br label %8

7:                                                ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #9
  br label %8

8:                                                ; preds = %7, %6
  tail call void @free(ptr noundef %0) #9
  br label %10

9:                                                ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #9
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem1Dodouble(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  %6 = sub nsw i64 0, %5
  %7 = getelementptr inbounds double, ptr %0, i64 %6
  tail call void @free(ptr noundef %7) #9
  br label %9

8:                                                ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.108, i32 noundef 100) #9
  br label %9

9:                                                ; preds = %8, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dodouble(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds double, ptr %5, i64 %7
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @free(ptr noundef %8) #9
  br label %12

11:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.109, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %11, %10
  tail call void @free(ptr noundef %0) #9
  br label %14

13:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.109, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind uwtable
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
  %21 = load ptr, ptr %18, align 8, !tbaa !34
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @free(ptr noundef %23) #9
  br label %27

26:                                               ; preds = %19
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #9
  br label %27

27:                                               ; preds = %25, %26
  %28 = add nsw i64 %20, 1
  %29 = icmp slt i64 %28, %13
  br i1 %29, label %19, label %30, !llvm.loop !107

30:                                               ; preds = %27, %15
  %31 = add nuw nsw i64 %16, 1
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %33, label %15, !llvm.loop !108

33:                                               ; preds = %30, %6
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  %35 = sext i32 %3 to i64
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %37, ptr %0, align 8, !tbaa !34
  %38 = icmp eq ptr %34, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void @free(ptr noundef %37) #9
  br label %41

40:                                               ; preds = %33
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #9
  br label %41

41:                                               ; preds = %40, %39
  tail call void @free(ptr noundef %0) #9
  br label %43

42:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.110, i32 noundef 100) #9
  br label %43

43:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: nounwind uwtable
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
  %21 = load ptr, ptr %18, align 8, !tbaa !34
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  tail call void @free(ptr noundef %23) #9
  br label %27

26:                                               ; preds = %19
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #9
  br label %27

27:                                               ; preds = %25, %26
  %28 = add nsw i64 %20, 1
  %29 = icmp slt i64 %28, %13
  br i1 %29, label %19, label %30, !llvm.loop !109

30:                                               ; preds = %27, %15
  %31 = add nuw nsw i64 %16, 1
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %33, label %15, !llvm.loop !110

33:                                               ; preds = %30, %6
  %34 = load ptr, ptr %0, align 8, !tbaa !34
  %35 = sext i32 %3 to i64
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %37, ptr %0, align 8, !tbaa !34
  %38 = icmp eq ptr %34, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void @free(ptr noundef %37) #9
  br label %41

40:                                               ; preds = %33
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #9
  br label %41

41:                                               ; preds = %40, %39
  tail call void @free(ptr noundef %0) #9
  br label %43

42:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.111, i32 noundef 100) #9
  br label %43

43:                                               ; preds = %42, %41
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Doint(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @free(ptr noundef %8) #9
  br label %12

11:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.112, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %11, %10
  tail call void @free(ptr noundef %0) #9
  br label %14

13:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.112, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_offset_mem2Dshort(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = mul nsw i32 %2, %1
  %8 = add nsw i32 %7, %3
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = sext i32 %8 to i64
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds i16, ptr %9, i64 %11
  store ptr %12, ptr %0, align 8, !tbaa !34
  %13 = icmp eq ptr %9, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %6
  tail call void @free(ptr noundef %12) #9
  br label %16

15:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.113, i32 noundef 100) #9
  br label %16

16:                                               ; preds = %15, %14
  tail call void @free(ptr noundef %0) #9
  br label %18

17:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.113, i32 noundef 100) #9
  br label %18

18:                                               ; preds = %17, %16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem3Ddouble(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @free(ptr noundef %7) #9
  br label %11

10:                                               ; preds = %6
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %10, %9
  tail call void @free(ptr noundef %4) #9
  br label %13

12:                                               ; preds = %3
  tail call void @error(ptr noundef nonnull @.str.107, i32 noundef 100) #9
  br label %13

13:                                               ; preds = %11, %12
  tail call void @free(ptr noundef %0) #9
  br label %15

14:                                               ; preds = %1
  tail call void @error(ptr noundef nonnull @.str.72, i32 noundef 100) #9
  br label %15

15:                                               ; preds = %14, %13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_mem2Dolm(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %1 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #8
  store ptr %7, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.114) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %11

11:                                               ; preds = %9, %4
  %12 = mul nsw i32 %2, %1
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @calloc(i64 noundef %13, i64 noundef 48) #10
  %15 = load ptr, ptr %0, align 8, !tbaa !34
  store ptr %14, ptr %15, align 8, !tbaa !34
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) @errortext, i64 noundef 300, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.114) #9
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #9
  br label %19

19:                                               ; preds = %17, %11
  %20 = load ptr, ptr %0, align 8, !tbaa !34
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = sext i32 %3 to i64
  %23 = getelementptr inbounds %struct.lambda_params, ptr %21, i64 %22
  store ptr %23, ptr %20, align 8, !tbaa !34
  %24 = icmp sgt i32 %1, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = sext i32 %2 to i64
  %27 = zext nneg i32 %1 to i64
  br label %28

28:                                               ; preds = %25, %28
  %29 = phi i64 [ 1, %25 ], [ %35, %28 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !34
  %31 = getelementptr ptr, ptr %30, i64 %29
  %32 = getelementptr ptr, ptr %31, i64 -1
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.lambda_params, ptr %33, i64 %26
  store ptr %34, ptr %31, align 8, !tbaa !34
  %35 = add nuw nsw i64 %29, 1
  %36 = icmp eq i64 %35, %27
  br i1 %36, label %37, label %28, !llvm.loop !111

37:                                               ; preds = %28, %19
  %38 = mul i32 %2, 48
  %39 = or disjoint i32 %38, 8
  %40 = mul i32 %39, %1
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define dso_local void @free_mem2Dolm(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !34
  %6 = sext i32 %1 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds %struct.lambda_params, ptr %5, i64 %7
  store ptr %8, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %5, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void @free(ptr noundef %8) #9
  br label %12

11:                                               ; preds = %4
  tail call void @error(ptr noundef nonnull @.str.115, i32 noundef 100) #9
  br label %12

12:                                               ; preds = %11, %10
  tail call void @free(ptr noundef %0) #9
  br label %14

13:                                               ; preds = %2
  tail call void @error(ptr noundef nonnull @.str.115, i32 noundef 100) #9
  br label %14

14:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = distinct !{!42, !39, !40}
!43 = distinct !{!43, !39, !40}
!44 = distinct !{!44, !39, !40}
!45 = distinct !{!45, !39, !40}
!46 = distinct !{!46, !39, !40}
!47 = distinct !{!47, !39, !40}
!48 = distinct !{!48, !39, !40}
!49 = distinct !{!49, !39, !40}
!50 = distinct !{!50, !39, !40}
!51 = distinct !{!51, !39, !40}
!52 = distinct !{!52, !39, !40}
!53 = distinct !{!53, !39, !40}
!54 = distinct !{!54, !39, !40}
!55 = distinct !{!55, !39, !40}
!56 = distinct !{!56, !39, !40}
!57 = distinct !{!57, !39, !40}
!58 = distinct !{!58, !39, !40}
!59 = distinct !{!59, !39, !40}
!60 = distinct !{!60, !39, !40}
!61 = distinct !{!61, !39, !40}
!62 = distinct !{!62, !39, !40}
!63 = distinct !{!63, !39, !40}
!64 = distinct !{!64, !39, !40}
!65 = distinct !{!65, !39, !40}
!66 = distinct !{!66, !39, !40}
!67 = distinct !{!67, !39, !40}
!68 = distinct !{!68, !39, !40}
!69 = distinct !{!69, !39, !40}
!70 = distinct !{!70, !39, !40}
!71 = distinct !{!71, !39, !40}
!72 = distinct !{!72, !39, !40}
!73 = distinct !{!73, !39, !40}
!74 = distinct !{!74, !39, !40}
!75 = distinct !{!75, !39, !40}
!76 = distinct !{!76, !39, !40}
!77 = distinct !{!77, !39, !40}
!78 = distinct !{!78, !39, !40}
!79 = distinct !{!79, !39, !40}
!80 = distinct !{!80, !39, !40}
!81 = distinct !{!81, !39, !40}
!82 = distinct !{!82, !39, !40}
!83 = distinct !{!83, !39, !40}
!84 = distinct !{!84, !39, !40}
!85 = distinct !{!85, !39, !40}
!86 = distinct !{!86, !39, !40}
!87 = distinct !{!87, !39, !40}
!88 = distinct !{!88, !39, !40}
!89 = distinct !{!89, !39, !40}
!90 = distinct !{!90, !39, !40}
!91 = distinct !{!91, !39, !40}
!92 = distinct !{!92, !39, !40}
!93 = distinct !{!93, !39, !40}
!94 = distinct !{!94, !39, !40}
!95 = distinct !{!95, !39, !40}
!96 = distinct !{!96, !39, !40}
!97 = distinct !{!97, !39, !40}
!98 = distinct !{!98, !39, !40}
!99 = distinct !{!99, !39, !40}
!100 = distinct !{!100, !39, !40}
!101 = distinct !{!101, !39, !40}
!102 = distinct !{!102, !39, !40}
!103 = distinct !{!103, !39, !40}
!104 = distinct !{!104, !39, !40}
!105 = distinct !{!105, !39, !40}
!106 = distinct !{!106, !39, !40}
!107 = distinct !{!107, !39, !40}
!108 = distinct !{!108, !39, !40}
!109 = distinct !{!109, !39, !40}
!110 = distinct !{!110, !39, !40}
!111 = distinct !{!111, !39, !40}
