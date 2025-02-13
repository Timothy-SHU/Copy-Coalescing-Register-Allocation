; ModuleID = 'blender/source/blender/editors/util/numinput.c'
source_filename = "blender/source/blender/editors/util/numinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.NumInput = type { i16, i32, [3 x i32], i8, i16, [3 x i16], [3 x float], [3 x float], [3 x float], i16, [64 x i8], i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-1/(\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-(\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"1/(\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"[%s%s|%s%s] = %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s%.6gr%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%sNONE%s\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @initNumInput(ptr noundef %0) local_unnamed_addr #0 {
  store i16 0, ptr %0, align 4, !tbaa !5
  %2 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !11
  %3 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2
  tail call void @fill_vn_i(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0) #14
  %4 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 3
  store i8 0, ptr %4, align 4, !tbaa !12
  %5 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  store i16 0, ptr %5, align 2, !tbaa !13
  %6 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5
  tail call void @fill_vn_short(ptr noundef nonnull %6, i32 noundef 3, i16 noundef signext 0) #14
  %7 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6
  tail call fastcc void @zero_v3(ptr noundef nonnull %7) #15
  %8 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 7
  tail call void @fill_vn_fl(ptr noundef nonnull %8, i32 noundef 3, float noundef 0.000000e+00) #14
  %9 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 8
  tail call void @fill_vn_fl(ptr noundef nonnull %9, i32 noundef 3, float noundef 1.000000e+00) #14
  %10 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 9
  store i16 0, ptr %10, align 4, !tbaa !14
  %11 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10
  store i8 0, ptr %11, align 2, !tbaa !15
  %12 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 11
  store i32 0, ptr %12, align 4, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fill_vn_short(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #2 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !17
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @outputNumInput(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = load i16, ptr %0, align 4, !tbaa !5
  %8 = icmp slt i16 %7, 0
  br i1 %8, label %132, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10
  %15 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 11
  br label %16

16:                                               ; preds = %9, %121
  %17 = phi i32 [ 0, %9 ], [ %129, %121 ]
  %18 = phi i16 [ 0, %9 ], [ %128, %121 ]
  %19 = phi i32 [ 2, %9 ], [ %123, %121 ]
  %20 = load i16, ptr %10, align 2, !tbaa !13
  %21 = and i16 %20, 1
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %16
  %24 = load i16, ptr %11, align 4, !tbaa !14
  %25 = icmp eq i16 %24, %18
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = sext i16 %18 to i64
  %28 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !19
  %30 = and i16 %29, 512
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26, %23, %16
  %33 = sext i16 %18 to i64
  br label %34

34:                                               ; preds = %26, %32
  %35 = phi i64 [ %33, %32 ], [ %27, %26 ]
  %36 = phi i16 [ %18, %32 ], [ 0, %26 ]
  %37 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2, i64 %35
  %38 = load i32, ptr %37, align 4, !tbaa !20
  %39 = call double @BKE_scene_unit_scale(ptr noundef %2, i32 noundef %38, double noundef 1.000000e+00) #14
  %40 = fptrunc double %39 to float
  %41 = sext i16 %36 to i64
  %42 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !19
  %44 = and i16 %43, 512
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %113, label %46

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %41
  %48 = load float, ptr %47, align 4, !tbaa !17
  %49 = fpext float %48 to double
  %50 = call i32 @uiFloatPrecisionCalc(i32 noundef %19, double noundef %49) #14
  %51 = load i16, ptr %11, align 4, !tbaa !14
  %52 = icmp eq i16 %36, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %54 = load i16, ptr %42, align 2, !tbaa !19
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 2048
  %57 = icmp eq i32 %56, 0
  %58 = and i32 %55, 4096
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, ptr @.str.2, ptr @.str.1
  %61 = select i1 %59, ptr @.str, ptr @.str.4
  %62 = select i1 %57, ptr %61, ptr %60
  %63 = and i32 %55, 6144
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str, ptr @.str.3
  %66 = and i16 %54, 1024
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %53
  %69 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, i64 noundef 16) #14
  br label %78

70:                                               ; preds = %53
  %71 = load float, ptr %47, align 4, !tbaa !17
  %72 = fmul float %71, %40
  %73 = fpext float %72 to double
  %74 = load i32, ptr %13, align 4, !tbaa !11
  %75 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2, i64 %41
  %76 = load i32, ptr %75, align 4, !tbaa !20
  %77 = call i64 @bUnit_AsString(ptr noundef nonnull %5, i32 noundef 16, double noundef %73, i32 noundef %50, i32 noundef %74, i32 noundef %76, i8 noundef zeroext 1, i8 noundef zeroext 0) #14
  br label %78

78:                                               ; preds = %70, %68
  %79 = load i32, ptr %15, align 4, !tbaa !16
  %80 = add nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %14, i64 noundef %81) #14
  %83 = shl nsw i32 %17, 6
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %1, i64 %84
  %86 = load i32, ptr %15, align 4, !tbaa !16
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10, i64 %87
  %89 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %85, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef nonnull %62, ptr noundef nonnull %4, ptr noundef nonnull %88, ptr noundef nonnull %65, ptr noundef nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #16
  br label %121

90:                                               ; preds = %46
  %91 = load i8, ptr %12, align 4, !tbaa !12
  %92 = icmp ne i8 %91, 0
  %93 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2, i64 %41
  %94 = load i32, ptr %93, align 4, !tbaa !20
  %95 = icmp eq i32 %94, 5
  %96 = select i1 %92, i1 %95, i1 false
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = shl nsw i32 %17, 6
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, ptr %1, i64 %99
  %101 = load float, ptr %47, align 4, !tbaa !17
  %102 = fpext float %101 to double
  %103 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %100, i64 noundef 64, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, double noundef %102, ptr noundef nonnull @.str) #14
  br label %121

104:                                              ; preds = %90
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #16
  %105 = load float, ptr %47, align 4, !tbaa !17
  %106 = fpext float %105 to double
  %107 = load i32, ptr %13, align 4, !tbaa !11
  %108 = call i64 @bUnit_AsString(ptr noundef nonnull %6, i32 noundef 64, double noundef %106, i32 noundef %50, i32 noundef %107, i32 noundef %94, i8 noundef zeroext 1, i8 noundef zeroext 0) #14
  %109 = shl nsw i32 %17, 6
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, ptr %1, i64 %110
  %112 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %111, i64 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, ptr noundef nonnull %6, ptr noundef nonnull @.str) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #16
  br label %121

113:                                              ; preds = %34
  %114 = load i16, ptr %11, align 4, !tbaa !14
  %115 = icmp eq i16 %36, %114
  %116 = select i1 %115, ptr @.str.7, ptr @.str
  %117 = shl nsw i32 %17, 6
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %1, i64 %118
  %120 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %119, i64 noundef 64, ptr noundef nonnull @.str.10, ptr noundef nonnull %116, ptr noundef nonnull %116) #14
  br label %121

121:                                              ; preds = %97, %104, %78, %113
  %122 = phi i64 [ %99, %97 ], [ %110, %104 ], [ %84, %78 ], [ %118, %113 ]
  %123 = phi i32 [ %50, %97 ], [ %50, %104 ], [ %50, %78 ], [ %19, %113 ]
  %124 = getelementptr inbounds i8, ptr %1, i64 %122
  %125 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %124) #17
  %126 = trunc i64 %125 to i32
  %127 = call i32 @BLI_utf8_invalid_strip(ptr noundef %124, i32 noundef %126) #14
  %128 = add i16 %18, 1
  %129 = sext i16 %128 to i32
  %130 = load i16, ptr %0, align 4, !tbaa !5
  %131 = icmp sgt i16 %128, %130
  br i1 %131, label %132, label %16, !llvm.loop !21

132:                                              ; preds = %121, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare double @BKE_scene_unit_scale(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @uiFloatPrecisionCalc(i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @BLI_utf8_invalid_strip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @hasNumInput(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 2, !tbaa !13
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i16, ptr %0, align 4, !tbaa !5
  %8 = icmp slt i16 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add i16 %13, 1
  %11 = icmp sgt i16 %10, %7
  br i1 %11, label %19, label %12, !llvm.loop !23

12:                                               ; preds = %6, %9
  %13 = phi i16 [ %10, %9 ], [ 0, %6 ]
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !19
  %17 = and i16 %16, 512
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %9, label %19

19:                                               ; preds = %12, %9, %6, %1
  %20 = phi i8 [ 1, %1 ], [ 0, %6 ], [ 1, %12 ], [ 0, %9 ]
  ret i8 %20
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @applyNumInput(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = tail call zeroext i8 @hasNumInput(ptr noundef %0) #15, !range !24
  %4 = icmp eq i8 %3, 0
  %5 = load i16, ptr %0, align 4, !tbaa !5
  %6 = icmp slt i16 %5, 0
  br i1 %4, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !13
  br i1 %6, label %84, label %10

10:                                               ; preds = %7
  %11 = zext i16 %9 to i32
  %12 = and i32 %11, 1024
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %11, 1
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 9
  %17 = add nuw i16 %5, 1
  %18 = tail call i16 @llvm.smax.i16(i16 %17, i16 1)
  %19 = zext nneg i16 %18 to i64
  br label %25

20:                                               ; preds = %2
  br i1 %6, label %95, label %21

21:                                               ; preds = %20
  %22 = add nuw i16 %5, 1
  %23 = tail call i16 @llvm.smax.i16(i16 %22, i16 1)
  %24 = zext nneg i16 %23 to i64
  br label %87

25:                                               ; preds = %10, %79
  %26 = phi i64 [ 0, %10 ], [ %82, %79 ]
  br i1 %13, label %30, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %26
  %29 = load float, ptr %28, align 4, !tbaa !17
  br label %79

30:                                               ; preds = %25
  br i1 %15, label %40, label %31

31:                                               ; preds = %30
  %32 = load i16, ptr %16, align 4, !tbaa !14
  %33 = zext i16 %32 to i64
  %34 = icmp eq i64 %26, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %26
  %37 = load i16, ptr %36, align 2, !tbaa !19
  %38 = and i16 %37, 512
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %31, %30
  br label %41

41:                                               ; preds = %35, %40
  %42 = phi i64 [ %26, %40 ], [ 0, %35 ]
  %43 = shl i64 %42, 48
  %44 = ashr exact i64 %43, 48
  %45 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !19
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 513
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %44
  %52 = load float, ptr %51, align 4, !tbaa !17
  br label %53

53:                                               ; preds = %41, %50
  %54 = phi float [ %52, %50 ], [ 1.000000e+00, %41 ]
  %55 = and i32 %47, 2
  %56 = icmp ne i32 %55, 0
  %57 = fcmp olt float %54, 0.000000e+00
  %58 = select i1 %56, i1 %57, i1 false
  %59 = select i1 %58, float 0.000000e+00, float %54
  %60 = and i32 %47, 8
  %61 = icmp ne i32 %60, 0
  %62 = tail call float @llvm.floor.f32(float %59)
  %63 = fcmp une float %59, %62
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %73

65:                                               ; preds = %53
  %66 = fadd float %59, 5.000000e-01
  %67 = tail call float @llvm.floor.f32(float %66)
  %68 = and i32 %47, 4
  %69 = icmp ne i32 %68, 0
  %70 = fcmp oeq float %67, 0.000000e+00
  %71 = select i1 %69, i1 %70, i1 false
  %72 = select i1 %71, float 1.000000e+00, float %67
  br label %79

73:                                               ; preds = %53
  %74 = and i16 %46, 4
  %75 = icmp ne i16 %74, 0
  %76 = fcmp oeq float %59, 0.000000e+00
  %77 = select i1 %75, i1 %76, i1 false
  %78 = select i1 %77, float 0x3F1A36E2E0000000, float %59
  br label %79

79:                                               ; preds = %73, %65, %27
  %80 = phi float [ %29, %27 ], [ %72, %65 ], [ %78, %73 ]
  %81 = getelementptr inbounds float, ptr %1, i64 %26
  store float %80, ptr %81, align 4, !tbaa !17
  %82 = add nuw nsw i64 %26, 1
  %83 = icmp eq i64 %82, %19
  br i1 %83, label %84, label %25, !llvm.loop !25

84:                                               ; preds = %79, %7
  %85 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  %86 = and i16 %9, -1025
  store i16 %86, ptr %85, align 2, !tbaa !13
  br label %95

87:                                               ; preds = %21, %87
  %88 = phi i64 [ 0, %21 ], [ %93, %87 ]
  %89 = getelementptr inbounds float, ptr %1, i64 %88
  %90 = load float, ptr %89, align 4, !tbaa !17
  %91 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 7, i64 %88
  store float %90, ptr %91, align 4, !tbaa !17
  %92 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %88
  store float %90, ptr %92, align 4, !tbaa !17
  %93 = add nuw nsw i64 %88, 1
  %94 = icmp eq i64 %93, %24
  br i1 %94, label %95, label %87, !llvm.loop !26

95:                                               ; preds = %87, %20, %84
  %96 = phi i8 [ 1, %84 ], [ 0, %20 ], [ 0, %87 ]
  ret i8 %96
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @handleNumInput(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 0, ptr %4, align 2
  %8 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 9
  %9 = load i16, ptr %8, align 4, !tbaa !14
  %10 = load i16, ptr %1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !27
  switch i16 %12, label %215 [
    i16 20514, label %13
    i16 223, label %36
    i16 224, label %65
    i16 137, label %106
    i16 139, label %107
    i16 167, label %121
    i16 170, label %127
    i16 219, label %135
    i16 199, label %160
    i16 226, label %160
    i16 162, label %161
    i16 230, label %161
    i16 161, label %175
    i16 232, label %175
    i16 99, label %189
    i16 118, label %195
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !31
  %16 = and i16 %15, -2
  %17 = icmp eq i16 %16, 18
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = icmp eq i16 %15, 18
  %20 = sext i16 %9 to i64
  %21 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 8, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !17
  %23 = fneg float %22
  %24 = select i1 %19, float %22, float %23
  %25 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %20
  %26 = load float, ptr %25, align 4, !tbaa !17
  %27 = fadd float %24, %26
  store float %27, ptr %25, align 4, !tbaa !17
  %28 = sext i16 %9 to i32
  tail call fastcc void @value_to_editstr(ptr noundef nonnull %1, i32 noundef %28) #15
  %29 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %20
  %30 = load i16, ptr %29, align 2, !tbaa !19
  %31 = or i16 %30, 512
  store i16 %31, ptr %29, align 2, !tbaa !19
  br label %279

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %34 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %35 = load i8, ptr %34, align 2, !tbaa !32
  br label %223

36:                                               ; preds = %3
  %37 = sext i16 %9 to i64
  %38 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !19
  %40 = and i16 %39, 512
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6
  %44 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 7
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %43, ptr noundef nonnull %44) #15
  %45 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %46 = load <4 x i16>, ptr %45, align 2, !tbaa !19
  %47 = or <4 x i16> %46, <i16 1024, i16 poison, i16 poison, i16 poison>
  %48 = and <4 x i16> %46, <i16 poison, i16 -513, i16 -513, i16 -513>
  %49 = shufflevector <4 x i16> %47, <4 x i16> %48, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x i16> %49, ptr %45, align 2, !tbaa !19
  br label %279

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %52 = load i16, ptr %51, align 8, !tbaa !33
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %56 = load i8, ptr %55, align 2, !tbaa !15
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 7, i64 %37
  %60 = load float, ptr %59, align 4, !tbaa !17
  %61 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %37
  store float %60, ptr %61, align 4, !tbaa !17
  %62 = and i16 %39, -513
  store i16 %62, ptr %38, align 2, !tbaa !19
  %63 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  store i8 0, ptr %63, align 2, !tbaa !15
  %64 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 0, ptr %64, align 4, !tbaa !16
  br label %279

65:                                               ; preds = %3
  %66 = sext i16 %9 to i64
  %67 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !19
  %69 = and i16 %68, 512
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %300, label %71

71:                                               ; preds = %54, %65
  %72 = phi i32 [ 1, %65 ], [ 0, %54 ]
  %73 = phi i64 [ %66, %65 ], [ %37, %54 ]
  %74 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %75 = load i8, ptr %74, align 2, !tbaa !15
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %300, label %77

77:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %78 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  %79 = load i32, ptr %78, align 4, !tbaa !16
  store i32 %79, ptr %5, align 4, !tbaa !20
  store i32 %79, ptr %6, align 4, !tbaa !20
  %80 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %81 = load i16, ptr %80, align 2, !tbaa !34
  %82 = icmp ne i16 %81, 0
  %83 = zext i1 %82 to i32
  %84 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #17
  call void @BLI_str_cursor_step_utf8(ptr noundef nonnull %74, i64 noundef %84, ptr noundef nonnull %6, i32 noundef %72, i32 noundef %83, i8 noundef zeroext 1) #14
  %85 = load i32, ptr %6, align 4, !tbaa !20
  %86 = icmp eq i32 %85, %79
  br i1 %86, label %99, label %87

87:                                               ; preds = %77
  %88 = icmp slt i32 %85, %79
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  store i32 %85, ptr %5, align 4, !tbaa !20
  store i32 %85, ptr %78, align 4, !tbaa !16
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %79, %89 ], [ %85, %87 ]
  %92 = phi i32 [ %85, %89 ], [ %79, %87 ]
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10, i64 %93
  %95 = sext i32 %91 to i64
  %96 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10, i64 %95
  %97 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %96) #17
  %98 = add i64 %97, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %94, ptr nonnull align 1 %96, i64 %98, i1 false)
  br label %99

99:                                               ; preds = %90, %77
  %100 = load i8, ptr %74, align 2, !tbaa !15
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %214

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 7, i64 %73
  %104 = load float, ptr %103, align 4, !tbaa !17
  %105 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %73
  store float %104, ptr %105, align 4, !tbaa !17
  br label %214

106:                                              ; preds = %3
  br label %107

107:                                              ; preds = %3, %106
  %108 = phi i32 [ 1, %3 ], [ 0, %106 ]
  %109 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  %110 = load i32, ptr %109, align 4, !tbaa !16
  store i32 %110, ptr %5, align 4, !tbaa !20
  %111 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %112 = load i16, ptr %111, align 2, !tbaa !34
  %113 = icmp ne i16 %112, 0
  %114 = zext i1 %113 to i32
  %115 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %116 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %115) #17
  call void @BLI_str_cursor_step_utf8(ptr noundef nonnull %115, i64 noundef %116, ptr noundef nonnull %5, i32 noundef %108, i32 noundef %114, i8 noundef zeroext 1) #14
  %117 = load i32, ptr %5, align 4, !tbaa !20
  %118 = load i32, ptr %109, align 4, !tbaa !16
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %300, label %120

120:                                              ; preds = %107
  store i32 %117, ptr %109, align 4, !tbaa !16
  br label %300

121:                                              ; preds = %3
  %122 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %123 = load i8, ptr %122, align 2, !tbaa !15
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %300, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 0, ptr %126, align 4, !tbaa !16
  br label %300

127:                                              ; preds = %3
  %128 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %129 = load i8, ptr %128, align 2, !tbaa !15
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %300, label %131

131:                                              ; preds = %127
  %132 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %128) #17
  %133 = trunc i64 %132 to i32
  %134 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 %133, ptr %134, align 4, !tbaa !16
  br label %300

135:                                              ; preds = %3
  %136 = sext i16 %9 to i64
  %137 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !19
  %139 = and i16 %138, -6145
  store i16 %139, ptr %137, align 2, !tbaa !19
  %140 = sext i16 %9 to i32
  %141 = sext i16 %10 to i32
  %142 = add nsw i32 %141, %140
  %143 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %144 = load i16, ptr %143, align 2, !tbaa !34
  %145 = icmp eq i16 %144, 0
  %146 = select i1 %145, i32 2, i32 0
  %147 = add nsw i32 %142, %146
  %148 = add nsw i32 %141, 1
  %149 = srem i32 %147, %148
  %150 = trunc i32 %149 to i16
  store i16 %150, ptr %8, align 4, !tbaa !14
  %151 = sext i16 %150 to i64
  %152 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !19
  %154 = and i16 %153, 512
  %155 = icmp eq i16 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %135
  tail call fastcc void @value_to_editstr(ptr noundef nonnull %1, i32 noundef %149) #15
  br label %300

157:                                              ; preds = %135
  %158 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  store i8 0, ptr %158, align 2, !tbaa !15
  %159 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 0, ptr %159, align 4, !tbaa !16
  br label %300

160:                                              ; preds = %3, %3
  store i8 46, ptr %4, align 2, !tbaa !15
  br label %243

161:                                              ; preds = %3, %3
  %162 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %163 = load i16, ptr %162, align 2, !tbaa !34
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %167 = load i16, ptr %166, align 2, !tbaa !13
  %168 = and i16 %167, 512
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %170, label %215

170:                                              ; preds = %165, %161
  %171 = sext i16 %9 to i64
  %172 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %171
  %173 = load i16, ptr %172, align 2, !tbaa !19
  %174 = xor i16 %173, 2048
  store i16 %174, ptr %172, align 2, !tbaa !19
  br label %279

175:                                              ; preds = %3, %3
  %176 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %177 = load i16, ptr %176, align 2, !tbaa !34
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %181 = load i16, ptr %180, align 2, !tbaa !13
  %182 = and i16 %181, 512
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %184, label %215

184:                                              ; preds = %179, %175
  %185 = sext i16 %9 to i64
  %186 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %185
  %187 = load i16, ptr %186, align 2, !tbaa !19
  %188 = xor i16 %187, 4096
  store i16 %188, ptr %186, align 2, !tbaa !19
  br label %279

189:                                              ; preds = %3
  %190 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %191 = load i16, ptr %190, align 2, !tbaa !34
  %192 = icmp eq i16 %191, 0
  br i1 %192, label %215, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  tail call void @WM_clipboard_text_set(ptr noundef nonnull %194, i8 noundef zeroext 0) #14
  br label %279

195:                                              ; preds = %3
  %196 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %197 = load i16, ptr %196, align 2, !tbaa !34
  %198 = icmp eq i16 %197, 0
  br i1 %198, label %215, label %199

199:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %200 = call ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext 0, ptr noundef nonnull %7) #14
  %201 = icmp eq ptr %200, null
  br i1 %201, label %212, label %202

202:                                              ; preds = %199
  %203 = load i32, ptr %7, align 4, !tbaa !20
  %204 = call fastcc zeroext i8 @editstr_insert_at_cursor(ptr noundef nonnull %1, ptr noundef nonnull %200, i32 noundef %203) #15, !range !24
  %205 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  call void %205(ptr noundef nonnull %200) #14
  %206 = icmp eq i8 %204, 0
  br i1 %206, label %213, label %207

207:                                              ; preds = %202
  %208 = sext i16 %9 to i64
  %209 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %208
  %210 = load i16, ptr %209, align 2, !tbaa !19
  %211 = or i16 %210, 512
  store i16 %211, ptr %209, align 2, !tbaa !19
  br label %212

212:                                              ; preds = %207, %199
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %279

213:                                              ; preds = %202
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  br label %300

214:                                              ; preds = %99, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br i1 %86, label %215, label %279

215:                                              ; preds = %165, %179, %189, %195, %3, %214
  %216 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %217 = load i8, ptr %216, align 4, !tbaa !15
  %218 = icmp eq i8 %217, 0
  %219 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %220 = load i8, ptr %219, align 2, !tbaa !32
  %221 = icmp eq i8 %220, 0
  %222 = select i1 %218, i1 %221, i1 false
  br i1 %222, label %243, label %223

223:                                              ; preds = %215, %32
  %224 = phi i8 [ %35, %32 ], [ %220, %215 ]
  %225 = phi ptr [ %33, %32 ], [ %216, %215 ]
  store i8 %224, ptr %4, align 2, !tbaa !15
  switch i8 %224, label %243 [
    i8 61, label %226
    i8 42, label %226
  ]

226:                                              ; preds = %223, %223
  %227 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %228 = load i16, ptr %227, align 2, !tbaa !13
  %229 = and i16 %228, 512
  %230 = icmp eq i16 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %226
  %232 = or disjoint i16 %228, 512
  store i16 %232, ptr %227, align 2, !tbaa !13
  %233 = sext i16 %9 to i64
  %234 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %233
  %235 = load i16, ptr %234, align 2, !tbaa !19
  %236 = or i16 %235, 512
  store i16 %236, ptr %234, align 2, !tbaa !19
  br label %300

237:                                              ; preds = %226
  %238 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %239 = load i16, ptr %238, align 2, !tbaa !34
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %237
  %242 = and i16 %228, -513
  store i16 %242, ptr %227, align 2, !tbaa !13
  br label %300

243:                                              ; preds = %215, %237, %223, %160
  %244 = phi i8 [ 46, %160 ], [ %224, %223 ], [ %224, %237 ], [ 0, %215 ]
  %245 = phi ptr [ %4, %160 ], [ %225, %223 ], [ %225, %237 ], [ null, %215 ]
  %246 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %247 = load i16, ptr %246, align 2, !tbaa !34
  %248 = icmp eq i16 %247, 0
  br i1 %248, label %249, label %300

249:                                              ; preds = %243
  %250 = icmp eq ptr %245, null
  br i1 %250, label %256, label %251

251:                                              ; preds = %249
  %252 = load i8, ptr %245, align 1, !tbaa !15
  %253 = icmp eq i8 %252, 0
  %254 = icmp ne i8 %244, 0
  %255 = and i1 %254, %253
  br i1 %255, label %260, label %258

256:                                              ; preds = %249
  %257 = icmp eq i8 %244, 0
  br i1 %257, label %300, label %260

258:                                              ; preds = %251
  %259 = icmp eq i8 %252, 0
  br i1 %259, label %300, label %260

260:                                              ; preds = %251, %256, %258
  %261 = phi ptr [ %245, %258 ], [ %4, %256 ], [ %4, %251 ]
  %262 = phi i8 [ %252, %258 ], [ %244, %256 ], [ %244, %251 ]
  %263 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %264 = load i16, ptr %263, align 2, !tbaa !13
  %265 = and i16 %264, 512
  %266 = icmp eq i16 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %260
  %268 = call fastcc zeroext i8 @editstr_is_simple_numinput(i8 noundef zeroext %262) #15, !range !24
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %300, label %270

270:                                              ; preds = %267, %260
  %271 = call i32 @BLI_str_utf8_size(ptr noundef nonnull %261) #14
  %272 = call fastcc zeroext i8 @editstr_insert_at_cursor(ptr noundef nonnull %1, ptr noundef nonnull %261, i32 noundef %271) #15, !range !24
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %300, label %274

274:                                              ; preds = %270
  %275 = sext i16 %9 to i64
  %276 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %275
  %277 = load i16, ptr %276, align 2, !tbaa !19
  %278 = or i16 %277, 512
  store i16 %278, ptr %276, align 2, !tbaa !19
  br label %279

279:                                              ; preds = %214, %212, %18, %42, %58, %170, %184, %193, %274
  %280 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %281 = load i8, ptr %280, align 2, !tbaa !15
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %300, label %283

283:                                              ; preds = %279
  %284 = call double @atof(ptr noundef nonnull %280) #17
  %285 = fptrunc double %284 to float
  %286 = sext i16 %9 to i64
  %287 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %286
  store float %285, ptr %287, align 4, !tbaa !17
  %288 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %286
  %289 = load i16, ptr %288, align 2, !tbaa !19
  %290 = and i16 %289, 2048
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %283
  %293 = fneg float %285
  store float %293, ptr %287, align 4, !tbaa !17
  br label %294

294:                                              ; preds = %292, %283
  %295 = phi float [ %293, %292 ], [ %285, %283 ]
  %296 = and i16 %289, 4096
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %300, label %298

298:                                              ; preds = %294
  %299 = fdiv float 1.000000e+00, %295
  store float %299, ptr %287, align 4, !tbaa !17
  br label %300

300:                                              ; preds = %258, %256, %213, %279, %298, %294, %270, %267, %243, %156, %157, %127, %121, %107, %65, %71, %241, %231, %131, %125, %120
  %301 = phi i8 [ 1, %241 ], [ 1, %231 ], [ 0, %213 ], [ 1, %131 ], [ 1, %125 ], [ 1, %120 ], [ 0, %71 ], [ 0, %65 ], [ 0, %107 ], [ 0, %121 ], [ 0, %127 ], [ 1, %157 ], [ 1, %156 ], [ 0, %243 ], [ 0, %267 ], [ 0, %270 ], [ 1, %294 ], [ 1, %298 ], [ 1, %279 ], [ 0, %256 ], [ 0, %258 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  ret i8 %301
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @value_to_editstr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %4
  %6 = load float, ptr %5, align 4, !tbaa !17
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2, i64 %4
  %11 = load i32, ptr %10, align 4, !tbaa !20
  %12 = tail call i64 @bUnit_AsString(ptr noundef nonnull %3, i32 noundef 64, double noundef %7, i32 noundef 6, i32 noundef %9, i32 noundef %11, i8 noundef zeroext 1, i8 noundef zeroext 0) #14
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 11
  store i32 %13, ptr %14, align 4, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = load float, ptr %1, align 4, !tbaa !17
  store float %3, ptr %0, align 4, !tbaa !17
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !17
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !17
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !17
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !17
  ret void
}

; Function Attrs: optsize
declare void @BLI_str_cursor_step_utf8(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @editstr_insert_at_cursor(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 11
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10, i64 %6
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #17
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, 1
  %11 = add nsw i32 %5, %2
  %12 = add nsw i32 %10, %11
  %13 = icmp sgt i32 %12, 63
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = sext i32 %11 to i64
  %16 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10, i64 %15
  %17 = sext i32 %10 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %16, ptr nonnull align 1 %7, i64 %17, i1 false)
  %18 = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %1, i64 %18, i1 false)
  store i32 %11, ptr %4, align 4, !tbaa !16
  br label %19

19:                                               ; preds = %3, %14
  %20 = phi i8 [ 1, %14 ], [ 0, %3 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @editstr_is_simple_numinput(i8 noundef zeroext %0) unnamed_addr #11 {
  %2 = add i8 %0, -48
  %3 = icmp ult i8 %2, 10
  %4 = icmp eq i8 %0, 46
  %5 = or i1 %4, %3
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"NumInput", !7, i64 0, !10, i64 4, !8, i64 8, !8, i64 20, !7, i64 22, !8, i64 24, !8, i64 32, !8, i64 44, !8, i64 56, !7, i64 68, !8, i64 70, !10, i64 136}
!7 = !{!"short", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 4}
!12 = !{!6, !8, i64 20}
!13 = !{!6, !7, i64 22}
!14 = !{!6, !7, i64 68}
!15 = !{!8, !8, i64 0}
!16 = !{!6, !10, i64 136}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !8, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!10, !10, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{i8 0, i8 2}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = !{!28, !7, i64 16}
!28 = !{!"wmEvent", !29, i64 0, !29, i64 8, !7, i64 16, !7, i64 18, !10, i64 20, !10, i64 24, !8, i64 28, !8, i64 36, !8, i64 42, !8, i64 43, !7, i64 44, !7, i64 46, !10, i64 48, !10, i64 52, !30, i64 56, !10, i64 64, !10, i64 68, !7, i64 72, !7, i64 74, !7, i64 76, !7, i64 78, !7, i64 80, !7, i64 82, !29, i64 88, !29, i64 96, !7, i64 104, !7, i64 106, !10, i64 108, !29, i64 112}
!29 = !{!"any pointer", !8, i64 0}
!30 = !{!"double", !8, i64 0}
!31 = !{!28, !7, i64 18}
!32 = !{!28, !8, i64 42}
!33 = !{!28, !7, i64 72}
!34 = !{!28, !7, i64 74}
!35 = !{!29, !29, i64 0}
