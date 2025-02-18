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

; Function Attrs: nounwind uwtable
define dso_local void @initNumInput(ptr noundef %0) local_unnamed_addr #0 {
  store i16 0, ptr %0, align 4, !tbaa !34
  %2 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !40
  %3 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2
  tail call void @fill_vn_i(ptr noundef nonnull %3, i32 noundef 3, i32 noundef 0) #10
  %4 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 3
  store i8 0, ptr %4, align 4, !tbaa !41
  %5 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  store i16 0, ptr %5, align 2, !tbaa !42
  %6 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5
  tail call void @fill_vn_short(ptr noundef nonnull %6, i32 noundef 3, i16 noundef signext 0) #10
  %7 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6
  store float 0.000000e+00, ptr %7, align 4, !tbaa !43
  %8 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 1
  store float 0.000000e+00, ptr %8, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 2
  store float 0.000000e+00, ptr %9, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 7
  tail call void @fill_vn_fl(ptr noundef nonnull %10, i32 noundef 3, float noundef 0.000000e+00) #10
  %11 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 8
  tail call void @fill_vn_fl(ptr noundef nonnull %11, i32 noundef 3, float noundef 1.000000e+00) #10
  %12 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 9
  store i16 0, ptr %12, align 4, !tbaa !45
  %13 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10
  store i8 0, ptr %13, align 2, !tbaa !46
  %14 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 11
  store i32 0, ptr %14, align 4, !tbaa !47
  ret void
}

declare void @fill_vn_i(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @fill_vn_short(ptr noundef, i32 noundef, i16 noundef signext) local_unnamed_addr #1

declare void @fill_vn_fl(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @outputNumInput(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [64 x i8], align 16
  %5 = alloca [16 x i8], align 16
  %6 = alloca [64 x i8], align 16
  %7 = load i16, ptr %0, align 4, !tbaa !34
  %8 = icmp slt i16 %7, 0
  br i1 %8, label %137, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 9
  %13 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10
  %17 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 11
  %18 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 9
  br label %19

19:                                               ; preds = %9, %125
  %20 = phi i32 [ 0, %9 ], [ %134, %125 ]
  %21 = phi i16 [ 0, %9 ], [ %133, %125 ]
  %22 = phi i32 [ 2, %9 ], [ %126, %125 ]
  %23 = load i16, ptr %10, align 2, !tbaa !42
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %19
  %27 = load i16, ptr %11, align 4, !tbaa !45
  %28 = icmp eq i16 %27, %21
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = sext i16 %21 to i64
  %31 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !48
  %33 = and i16 %32, 512
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %26, %19
  br label %36

36:                                               ; preds = %29, %35
  %37 = phi i16 [ %21, %35 ], [ 0, %29 ]
  %38 = sext i16 %21 to i64
  %39 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !49
  %41 = call double @BKE_scene_unit_scale(ptr noundef %2, i32 noundef %40, double noundef 1.000000e+00) #10
  %42 = fptrunc double %41 to float
  %43 = sext i16 %37 to i64
  %44 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !48
  %46 = and i16 %45, 512
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %117, label %48

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %43
  %50 = load float, ptr %49, align 4, !tbaa !43
  %51 = fpext float %50 to double
  %52 = call i32 @uiFloatPrecisionCalc(i32 noundef %22, double noundef %51) #10
  %53 = load i16, ptr %12, align 4, !tbaa !45
  %54 = icmp eq i16 %37, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %56 = load i16, ptr %44, align 2, !tbaa !48
  %57 = zext i16 %56 to i32
  %58 = and i32 %57, 2048
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %57, 4096
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, ptr @.str.2, ptr @.str.1
  %63 = select i1 %61, ptr @.str, ptr @.str.4
  %64 = select i1 %59, ptr %63, ptr %62
  %65 = and i32 %57, 6144
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, ptr @.str, ptr @.str.3
  %68 = and i16 %56, 1024
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %55
  %71 = call ptr @BLI_strncpy(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, i64 noundef 16) #10
  br label %80

72:                                               ; preds = %55
  %73 = load float, ptr %49, align 4, !tbaa !43
  %74 = fmul float %73, %42
  %75 = fpext float %74 to double
  %76 = load i32, ptr %15, align 4, !tbaa !40
  %77 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2, i64 %43
  %78 = load i32, ptr %77, align 4, !tbaa !49
  %79 = call i64 @bUnit_AsString(ptr noundef nonnull %5, i32 noundef 16, double noundef %75, i32 noundef %52, i32 noundef %76, i32 noundef %78, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  br label %80

80:                                               ; preds = %72, %70
  %81 = load i32, ptr %17, align 4, !tbaa !47
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = call ptr @BLI_strncpy(ptr noundef nonnull %4, ptr noundef nonnull %16, i64 noundef %83) #10
  %85 = shl nsw i32 %20, 6
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %1, i64 %86
  %88 = load i32, ptr %17, align 4, !tbaa !47
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 10, i64 %89
  %91 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %87, i64 noundef 64, ptr noundef nonnull @.str.6, ptr noundef nonnull %64, ptr noundef nonnull %4, ptr noundef nonnull %90, ptr noundef nonnull %67, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #10
  br label %125

92:                                               ; preds = %48
  %93 = load i8, ptr %13, align 4, !tbaa !41
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2, i64 %43
  %97 = load i32, ptr %96, align 4, !tbaa !49
  %98 = icmp eq i32 %97, 5
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = shl nsw i32 %20, 6
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %1, i64 %101
  %103 = load float, ptr %49, align 4, !tbaa !43
  %104 = fpext float %103 to double
  %105 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %102, i64 noundef 64, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, double noundef %104, ptr noundef nonnull @.str) #10
  br label %125

106:                                              ; preds = %95, %92
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #10
  %107 = load float, ptr %49, align 4, !tbaa !43
  %108 = fpext float %107 to double
  %109 = load i32, ptr %14, align 4, !tbaa !40
  %110 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 2, i64 %43
  %111 = load i32, ptr %110, align 4, !tbaa !49
  %112 = call i64 @bUnit_AsString(ptr noundef nonnull %6, i32 noundef 64, double noundef %108, i32 noundef %52, i32 noundef %109, i32 noundef %111, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  %113 = shl nsw i32 %20, 6
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, ptr %1, i64 %114
  %116 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %115, i64 noundef 64, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, ptr noundef nonnull %6, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #10
  br label %125

117:                                              ; preds = %36
  %118 = load i16, ptr %18, align 4, !tbaa !45
  %119 = icmp eq i16 %37, %118
  %120 = select i1 %119, ptr @.str.7, ptr @.str
  %121 = shl nsw i32 %20, 6
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %1, i64 %122
  %124 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef %123, i64 noundef 64, ptr noundef nonnull @.str.10, ptr noundef nonnull %120, ptr noundef nonnull %120) #10
  br label %125

125:                                              ; preds = %99, %106, %80, %117
  %126 = phi i32 [ %52, %80 ], [ %22, %117 ], [ %52, %106 ], [ %52, %99 ]
  %127 = shl nsw i32 %20, 6
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %1, i64 %128
  %130 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %129) #11
  %131 = trunc i64 %130 to i32
  %132 = call i32 @BLI_utf8_invalid_strip(ptr noundef %129, i32 noundef %131) #10
  %133 = add i16 %21, 1
  %134 = sext i16 %133 to i32
  %135 = load i16, ptr %0, align 4, !tbaa !34
  %136 = icmp sgt i16 %133, %135
  br i1 %136, label %137, label %19, !llvm.loop !50

137:                                              ; preds = %125, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare double @BKE_scene_unit_scale(ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

declare i32 @uiFloatPrecisionCalc(i32 noundef, double noundef) local_unnamed_addr #1

declare ptr @BLI_strncpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @bUnit_AsString(ptr noundef, i32 noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @BLI_utf8_invalid_strip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @hasNumInput(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 2, !tbaa !42
  %4 = and i16 %3, 1024
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i16, ptr %0, align 4, !tbaa !34
  %8 = icmp slt i16 %7, 0
  br i1 %8, label %19, label %12

9:                                                ; preds = %12
  %10 = add i16 %13, 1
  %11 = icmp sgt i16 %10, %7
  br i1 %11, label %19, label %12, !llvm.loop !53

12:                                               ; preds = %6, %9
  %13 = phi i16 [ %10, %9 ], [ 0, %6 ]
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !48
  %17 = and i16 %16, 512
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %9, label %19

19:                                               ; preds = %12, %9, %6, %1
  %20 = phi i8 [ 1, %1 ], [ 0, %6 ], [ 0, %9 ], [ 1, %12 ]
  ret i8 %20
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i8 @applyNumInput(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 4
  %4 = load i16, ptr %3, align 2, !tbaa !42
  %5 = and i16 %4, 1024
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = load i16, ptr %0, align 4, !tbaa !34
  %9 = icmp slt i16 %8, 0
  br i1 %9, label %13, label %20

10:                                               ; preds = %20
  %11 = add i16 %21, 1
  %12 = icmp sgt i16 %11, %8
  br i1 %12, label %13, label %20, !llvm.loop !53

13:                                               ; preds = %10, %7
  %14 = load i16, ptr %0, align 4, !tbaa !34
  %15 = icmp slt i16 %14, 0
  br i1 %15, label %109, label %16

16:                                               ; preds = %13
  %17 = add nuw i16 %14, 1
  %18 = tail call i16 @llvm.smax.i16(i16 %17, i16 1)
  %19 = zext nneg i16 %18 to i64
  br label %101

20:                                               ; preds = %7, %10
  %21 = phi i16 [ %11, %10 ], [ 0, %7 ]
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !48
  %25 = and i16 %24, 512
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %10, label %27

27:                                               ; preds = %20, %2
  %28 = load i16, ptr %0, align 4, !tbaa !34
  %29 = icmp slt i16 %28, 0
  br i1 %29, label %99, label %30

30:                                               ; preds = %27
  %31 = zext i16 %4 to i32
  %32 = and i32 %31, 1024
  %33 = icmp eq i32 %32, 0
  %34 = and i32 %31, 1
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 9
  %37 = add nuw i16 %28, 1
  %38 = tail call i16 @llvm.smax.i16(i16 %37, i16 1)
  %39 = zext nneg i16 %38 to i64
  br label %40

40:                                               ; preds = %30, %94
  %41 = phi i64 [ 0, %30 ], [ %97, %94 ]
  br i1 %33, label %45, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %41
  %44 = load float, ptr %43, align 4, !tbaa !43
  br label %94

45:                                               ; preds = %40
  br i1 %35, label %55, label %46

46:                                               ; preds = %45
  %47 = load i16, ptr %36, align 4, !tbaa !45
  %48 = zext i16 %47 to i64
  %49 = icmp eq i64 %41, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %41
  %52 = load i16, ptr %51, align 2, !tbaa !48
  %53 = and i16 %52, 512
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50, %46, %45
  br label %56

56:                                               ; preds = %50, %55
  %57 = phi i64 [ %41, %55 ], [ 0, %50 ]
  %58 = shl i64 %57, 48
  %59 = ashr exact i64 %58, 48
  %60 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 5, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !48
  %62 = and i16 %61, 513
  %63 = icmp eq i16 %62, 1
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %59
  %66 = load float, ptr %65, align 4, !tbaa !43
  br label %67

67:                                               ; preds = %56, %64
  %68 = phi float [ %66, %64 ], [ 1.000000e+00, %56 ]
  %69 = zext i16 %61 to i32
  %70 = and i32 %69, 2
  %71 = icmp ne i32 %70, 0
  %72 = fcmp olt float %68, 0.000000e+00
  %73 = select i1 %71, i1 %72, i1 false
  %74 = select i1 %73, float 0.000000e+00, float %68
  %75 = and i32 %69, 8
  %76 = icmp ne i32 %75, 0
  %77 = tail call float @llvm.floor.f32(float %74)
  %78 = fcmp une float %74, %77
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %88

80:                                               ; preds = %67
  %81 = fadd float %74, 5.000000e-01
  %82 = tail call float @llvm.floor.f32(float %81)
  %83 = and i32 %69, 4
  %84 = icmp ne i32 %83, 0
  %85 = fcmp oeq float %82, 0.000000e+00
  %86 = select i1 %84, i1 %85, i1 false
  %87 = select i1 %86, float 1.000000e+00, float %82
  br label %94

88:                                               ; preds = %67
  %89 = and i16 %61, 4
  %90 = icmp ne i16 %89, 0
  %91 = fcmp oeq float %74, 0.000000e+00
  %92 = select i1 %90, i1 %91, i1 false
  %93 = select i1 %92, float 0x3F1A36E2E0000000, float %74
  br label %94

94:                                               ; preds = %88, %80, %42
  %95 = phi float [ %44, %42 ], [ %87, %80 ], [ %93, %88 ]
  %96 = getelementptr inbounds float, ptr %1, i64 %41
  store float %95, ptr %96, align 4, !tbaa !43
  %97 = add nuw nsw i64 %41, 1
  %98 = icmp eq i64 %97, %39
  br i1 %98, label %99, label %40, !llvm.loop !54

99:                                               ; preds = %94, %27
  %100 = and i16 %4, -1025
  store i16 %100, ptr %3, align 2, !tbaa !42
  br label %109

101:                                              ; preds = %16, %101
  %102 = phi i64 [ 0, %16 ], [ %107, %101 ]
  %103 = getelementptr inbounds float, ptr %1, i64 %102
  %104 = load float, ptr %103, align 4, !tbaa !43
  %105 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 7, i64 %102
  store float %104, ptr %105, align 4, !tbaa !43
  %106 = getelementptr inbounds %struct.NumInput, ptr %0, i64 0, i32 6, i64 %102
  store float %104, ptr %106, align 4, !tbaa !43
  %107 = add nuw nsw i64 %102, 1
  %108 = icmp eq i64 %107, %19
  br i1 %108, label %109, label %101, !llvm.loop !55

109:                                              ; preds = %101, %13, %99
  %110 = phi i8 [ 1, %99 ], [ 0, %13 ], [ 0, %101 ]
  ret i8 %110
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @handleNumInput(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2
  %8 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 9
  %9 = load i16, ptr %8, align 4, !tbaa !45
  %10 = load i16, ptr %1, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %11 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 2
  %12 = load i16, ptr %11, align 8, !tbaa !56
  switch i16 %12, label %265 [
    i16 20514, label %13
    i16 223, label %45
    i16 224, label %88
    i16 137, label %131
    i16 139, label %132
    i16 167, label %146
    i16 170, label %152
    i16 219, label %160
    i16 199, label %196
    i16 226, label %196
    i16 162, label %197
    i16 230, label %197
    i16 161, label %211
    i16 232, label %211
    i16 99, label %225
    i16 118, label %231
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 3
  %15 = load i16, ptr %14, align 2, !tbaa !60
  %16 = and i16 %15, -2
  %17 = icmp eq i16 %16, 18
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = icmp eq i16 %15, 18
  %20 = sext i16 %9 to i64
  %21 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 8, i64 %20
  %22 = load float, ptr %21, align 4, !tbaa !43
  %23 = fneg float %22
  %24 = select i1 %19, float %22, float %23
  %25 = sext i16 %9 to i64
  %26 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %25
  %27 = load float, ptr %26, align 4, !tbaa !43
  %28 = fadd float %24, %27
  store float %28, ptr %26, align 4, !tbaa !43
  %29 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %30 = fpext float %28 to double
  %31 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !40
  %33 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 2, i64 %25
  %34 = load i32, ptr %33, align 4, !tbaa !49
  %35 = tail call i64 @bUnit_AsString(ptr noundef nonnull %29, i32 noundef 64, double noundef %30, i32 noundef 6, i32 noundef %32, i32 noundef %34, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  %36 = trunc i64 %35 to i32
  %37 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 %36, ptr %37, align 4, !tbaa !47
  %38 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %25
  %39 = load i16, ptr %38, align 2, !tbaa !48
  %40 = or i16 %39, 512
  store i16 %40, ptr %38, align 2, !tbaa !48
  br label %265

41:                                               ; preds = %13
  %42 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %43 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %44 = load i8, ptr %43, align 2, !tbaa !61
  store i8 %44, ptr %4, align 2, !tbaa !46
  br label %265

45:                                               ; preds = %3
  %46 = sext i16 %9 to i64
  %47 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !48
  %49 = and i16 %48, 512
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5
  %53 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6
  %54 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 7
  %55 = load float, ptr %54, align 4, !tbaa !43
  store float %55, ptr %53, align 4, !tbaa !43
  %56 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 7, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !43
  %58 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 1
  store float %57, ptr %58, align 4, !tbaa !43
  %59 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 7, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !43
  %61 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 2
  store float %60, ptr %61, align 4, !tbaa !43
  %62 = load i16, ptr %52, align 4, !tbaa !48
  %63 = and i16 %62, -513
  store i16 %63, ptr %52, align 4, !tbaa !48
  %64 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 1
  %65 = load i16, ptr %64, align 2, !tbaa !48
  %66 = and i16 %65, -513
  store i16 %66, ptr %64, align 2, !tbaa !48
  %67 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 2
  %68 = load i16, ptr %67, align 4, !tbaa !48
  %69 = and i16 %68, -513
  store i16 %69, ptr %67, align 4, !tbaa !48
  %70 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %71 = load i16, ptr %70, align 2, !tbaa !42
  %72 = or i16 %71, 1024
  store i16 %72, ptr %70, align 2, !tbaa !42
  br label %265

73:                                               ; preds = %45
  %74 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 17
  %75 = load i16, ptr %74, align 8, !tbaa !62
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %79 = load i8, ptr %78, align 2, !tbaa !46
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77, %73
  %82 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 7, i64 %46
  %83 = load float, ptr %82, align 4, !tbaa !43
  %84 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %46
  store float %83, ptr %84, align 4, !tbaa !43
  %85 = and i16 %48, -513
  store i16 %85, ptr %47, align 2, !tbaa !48
  %86 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  store i8 0, ptr %86, align 2, !tbaa !46
  %87 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 0, ptr %87, align 4, !tbaa !47
  br label %265

88:                                               ; preds = %77, %3
  %89 = phi i32 [ 1, %3 ], [ 0, %77 ]
  %90 = sext i16 %9 to i64
  %91 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !48
  %93 = and i16 %92, 512
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %376, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %97 = load i8, ptr %96, align 2, !tbaa !46
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %376, label %99

99:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %100 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  %101 = load i32, ptr %100, align 4, !tbaa !47
  store i32 %101, ptr %5, align 4, !tbaa !49
  store i32 %101, ptr %6, align 4, !tbaa !49
  %102 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %103 = load i16, ptr %102, align 2, !tbaa !63
  %104 = icmp ne i16 %103, 0
  %105 = zext i1 %104 to i32
  %106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %96) #11
  call void @BLI_str_cursor_step_utf8(ptr noundef nonnull %96, i64 noundef %106, ptr noundef nonnull %6, i32 noundef %89, i32 noundef %105, i8 noundef zeroext 1) #10
  %107 = load i32, ptr %6, align 4, !tbaa !49
  %108 = load i32, ptr %5, align 4, !tbaa !49
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %122, label %110

110:                                              ; preds = %99
  %111 = icmp slt i32 %107, %108
  br i1 %111, label %112, label %113

112:                                              ; preds = %110
  store i32 %108, ptr %6, align 4, !tbaa !49
  store i32 %107, ptr %5, align 4, !tbaa !49
  store i32 %107, ptr %100, align 4, !tbaa !47
  br label %113

113:                                              ; preds = %112, %110
  %114 = load i32, ptr %5, align 4, !tbaa !49
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10, i64 %115
  %117 = load i32, ptr %6, align 4, !tbaa !49
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10, i64 %118
  %120 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %119) #11
  %121 = add i64 %120, 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %116, ptr nonnull align 1 %119, i64 %121, i1 false)
  br label %122

122:                                              ; preds = %113, %99
  %123 = phi i8 [ 1, %113 ], [ 0, %99 ]
  %124 = load i8, ptr %96, align 2, !tbaa !46
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 7, i64 %90
  %128 = load float, ptr %127, align 4, !tbaa !43
  %129 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %90
  store float %128, ptr %129, align 4, !tbaa !43
  br label %130

130:                                              ; preds = %126, %122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  br label %265

131:                                              ; preds = %3
  br label %132

132:                                              ; preds = %3, %131
  %133 = phi i32 [ 1, %3 ], [ 0, %131 ]
  %134 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  %135 = load i32, ptr %134, align 4, !tbaa !47
  store i32 %135, ptr %5, align 4, !tbaa !49
  %136 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %137 = load i16, ptr %136, align 2, !tbaa !63
  %138 = icmp ne i16 %137, 0
  %139 = zext i1 %138 to i32
  %140 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %141 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %140) #11
  call void @BLI_str_cursor_step_utf8(ptr noundef nonnull %140, i64 noundef %141, ptr noundef nonnull %5, i32 noundef %133, i32 noundef %139, i8 noundef zeroext 1) #10
  %142 = load i32, ptr %5, align 4, !tbaa !49
  %143 = load i32, ptr %134, align 4, !tbaa !47
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %376, label %145

145:                                              ; preds = %132
  store i32 %142, ptr %134, align 4, !tbaa !47
  br label %376

146:                                              ; preds = %3
  %147 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %148 = load i8, ptr %147, align 2, !tbaa !46
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %376, label %150

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 0, ptr %151, align 4, !tbaa !47
  br label %376

152:                                              ; preds = %3
  %153 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %154 = load i8, ptr %153, align 2, !tbaa !46
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %376, label %156

156:                                              ; preds = %152
  %157 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %153) #11
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 %158, ptr %159, align 4, !tbaa !47
  br label %376

160:                                              ; preds = %3
  %161 = sext i16 %9 to i64
  %162 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %161
  %163 = load i16, ptr %162, align 2, !tbaa !48
  %164 = and i16 %163, -6145
  store i16 %164, ptr %162, align 2, !tbaa !48
  %165 = sext i16 %9 to i32
  %166 = sext i16 %10 to i32
  %167 = add nsw i32 %166, %165
  %168 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %169 = load i16, ptr %168, align 2, !tbaa !63
  %170 = icmp eq i16 %169, 0
  %171 = select i1 %170, i32 2, i32 0
  %172 = add nsw i32 %167, %171
  %173 = add nsw i32 %166, 1
  %174 = srem i32 %172, %173
  %175 = trunc i32 %174 to i16
  store i16 %175, ptr %8, align 4, !tbaa !45
  %176 = sext i16 %175 to i64
  %177 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !48
  %179 = and i16 %178, 512
  %180 = icmp eq i16 %179, 0
  %181 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  br i1 %180, label %194, label %182

182:                                              ; preds = %160
  %183 = sext i32 %174 to i64
  %184 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %183
  %185 = load float, ptr %184, align 4, !tbaa !43
  %186 = fpext float %185 to double
  %187 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 1
  %188 = load i32, ptr %187, align 4, !tbaa !40
  %189 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 2, i64 %183
  %190 = load i32, ptr %189, align 4, !tbaa !49
  %191 = tail call i64 @bUnit_AsString(ptr noundef nonnull %181, i32 noundef 64, double noundef %186, i32 noundef 6, i32 noundef %188, i32 noundef %190, i8 noundef zeroext 1, i8 noundef zeroext 0) #10
  %192 = trunc i64 %191 to i32
  %193 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 %192, ptr %193, align 4, !tbaa !47
  br label %376

194:                                              ; preds = %160
  store i8 0, ptr %181, align 2, !tbaa !46
  %195 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  store i32 0, ptr %195, align 4, !tbaa !47
  br label %376

196:                                              ; preds = %3, %3
  store i8 46, ptr %4, align 2, !tbaa !46
  br label %265

197:                                              ; preds = %3, %3
  %198 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %199 = load i16, ptr %198, align 2, !tbaa !63
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %203 = load i16, ptr %202, align 2, !tbaa !42
  %204 = and i16 %203, 512
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %206, label %265

206:                                              ; preds = %201, %197
  %207 = sext i16 %9 to i64
  %208 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %207
  %209 = load i16, ptr %208, align 2, !tbaa !48
  %210 = xor i16 %209, 2048
  store i16 %210, ptr %208, align 2, !tbaa !48
  br label %265

211:                                              ; preds = %3, %3
  %212 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %213 = load i16, ptr %212, align 2, !tbaa !63
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %217 = load i16, ptr %216, align 2, !tbaa !42
  %218 = and i16 %217, 512
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %265

220:                                              ; preds = %215, %211
  %221 = sext i16 %9 to i64
  %222 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %221
  %223 = load i16, ptr %222, align 2, !tbaa !48
  %224 = xor i16 %223, 4096
  store i16 %224, ptr %222, align 2, !tbaa !48
  br label %265

225:                                              ; preds = %3
  %226 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %227 = load i16, ptr %226, align 2, !tbaa !63
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %265, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  tail call void @WM_clipboard_text_set(ptr noundef nonnull %230, i8 noundef zeroext 0) #10
  br label %265

231:                                              ; preds = %3
  %232 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %233 = load i16, ptr %232, align 2, !tbaa !63
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %265, label %235

235:                                              ; preds = %231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %236 = call ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext 0, ptr noundef nonnull %7) #10
  %237 = icmp eq ptr %236, null
  br i1 %237, label %262, label %238

238:                                              ; preds = %235
  %239 = load i32, ptr %7, align 4, !tbaa !49
  %240 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  %241 = load i32, ptr %240, align 4, !tbaa !47
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10, i64 %242
  %244 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %243) #11
  %245 = trunc i64 %244 to i32
  %246 = add i32 %245, 1
  %247 = add nsw i32 %241, %239
  %248 = add nsw i32 %246, %247
  %249 = icmp sgt i32 %248, 63
  br i1 %249, label %260, label %250

250:                                              ; preds = %238
  %251 = sext i32 %247 to i64
  %252 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10, i64 %251
  %253 = sext i32 %246 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %252, ptr nonnull align 1 %243, i64 %253, i1 false)
  %254 = sext i32 %239 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %243, ptr nonnull align 1 %236, i64 %254, i1 false)
  store i32 %247, ptr %240, align 4, !tbaa !47
  %255 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %255(ptr noundef nonnull %236) #10
  %256 = sext i16 %9 to i64
  %257 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %256
  %258 = load i16, ptr %257, align 2, !tbaa !48
  %259 = or i16 %258, 512
  store i16 %259, ptr %257, align 2, !tbaa !48
  br label %262

260:                                              ; preds = %238
  %261 = load ptr, ptr @MEM_freeN, align 8, !tbaa !64
  call void %261(ptr noundef nonnull %236) #10
  br label %262

262:                                              ; preds = %260, %235, %250
  %263 = phi i8 [ 1, %250 ], [ 1, %235 ], [ 0, %260 ]
  %264 = phi i1 [ true, %250 ], [ true, %235 ], [ false, %260 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  br i1 %264, label %265, label %376

265:                                              ; preds = %3, %231, %262, %225, %229, %215, %220, %201, %206, %18, %41, %196, %130, %81, %51
  %266 = phi i8 [ 0, %3 ], [ %263, %262 ], [ 0, %231 ], [ 1, %229 ], [ 0, %225 ], [ 1, %220 ], [ 0, %215 ], [ 1, %206 ], [ 0, %201 ], [ 0, %196 ], [ %123, %130 ], [ 1, %81 ], [ 1, %51 ], [ 1, %18 ], [ 0, %41 ]
  %267 = phi ptr [ null, %3 ], [ null, %262 ], [ null, %231 ], [ null, %229 ], [ null, %225 ], [ null, %220 ], [ null, %215 ], [ null, %206 ], [ null, %201 ], [ %4, %196 ], [ null, %130 ], [ null, %81 ], [ null, %51 ], [ null, %18 ], [ %42, %41 ]
  %268 = icmp ne i8 %266, 0
  %269 = icmp ne ptr %267, null
  %270 = select i1 %268, i1 true, i1 %269
  br i1 %270, label %282, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 7
  %273 = load i8, ptr %272, align 4, !tbaa !46
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %277 = load i8, ptr %276, align 2, !tbaa !61
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %275, %271
  %280 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 8
  %281 = load i8, ptr %280, align 2, !tbaa !61
  store i8 %281, ptr %4, align 2, !tbaa !46
  br label %282

282:                                              ; preds = %279, %275, %265
  %283 = phi ptr [ %267, %265 ], [ %272, %279 ], [ null, %275 ]
  %284 = load i8, ptr %4, align 2
  switch i8 %284, label %302 [
    i8 61, label %285
    i8 42, label %285
  ]

285:                                              ; preds = %282, %282
  %286 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %287 = load i16, ptr %286, align 2, !tbaa !42
  %288 = and i16 %287, 512
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %285
  %291 = or disjoint i16 %287, 512
  store i16 %291, ptr %286, align 2, !tbaa !42
  %292 = sext i16 %9 to i64
  %293 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %292
  %294 = load i16, ptr %293, align 2, !tbaa !48
  %295 = or i16 %294, 512
  store i16 %295, ptr %293, align 2, !tbaa !48
  br label %376

296:                                              ; preds = %285
  %297 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %298 = load i16, ptr %297, align 2, !tbaa !63
  %299 = icmp eq i16 %298, 0
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = and i16 %287, -513
  store i16 %301, ptr %286, align 2, !tbaa !42
  br label %376

302:                                              ; preds = %282, %296
  br i1 %268, label %307, label %303

303:                                              ; preds = %302
  %304 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 18
  %305 = load i16, ptr %304, align 2, !tbaa !63
  %306 = icmp eq i16 %305, 0
  br i1 %306, label %307, label %376

307:                                              ; preds = %303, %302
  %308 = icmp eq ptr %283, null
  br i1 %308, label %314, label %309

309:                                              ; preds = %307
  %310 = load i8, ptr %283, align 1, !tbaa !46
  %311 = icmp eq i8 %310, 0
  %312 = icmp ne i8 %284, 0
  %313 = and i1 %312, %311
  br i1 %313, label %316, label %317

314:                                              ; preds = %307
  %315 = icmp eq i8 %284, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %309, %314
  br label %317

317:                                              ; preds = %316, %314, %309
  %318 = phi ptr [ %4, %316 ], [ %283, %309 ], [ null, %314 ]
  %319 = icmp eq ptr %318, null
  br i1 %319, label %354, label %320

320:                                              ; preds = %317
  %321 = load i8, ptr %318, align 1, !tbaa !46
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %354, label %323

323:                                              ; preds = %320
  %324 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 4
  %325 = load i16, ptr %324, align 2, !tbaa !42
  %326 = and i16 %325, 512
  %327 = icmp eq i16 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %323
  %329 = add i8 %321, -58
  %330 = icmp ult i8 %329, -10
  %331 = icmp ne i8 %321, 46
  %332 = and i1 %331, %330
  br i1 %332, label %376, label %333

333:                                              ; preds = %328, %323
  %334 = call i32 @BLI_str_utf8_size(ptr noundef nonnull %318) #10
  %335 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 11
  %336 = load i32, ptr %335, align 4, !tbaa !47
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10, i64 %337
  %339 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %338) #11
  %340 = trunc i64 %339 to i32
  %341 = add i32 %340, 1
  %342 = add nsw i32 %336, %334
  %343 = add nsw i32 %341, %342
  %344 = icmp sgt i32 %343, 63
  br i1 %344, label %376, label %345

345:                                              ; preds = %333
  %346 = sext i32 %342 to i64
  %347 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10, i64 %346
  %348 = sext i32 %341 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %347, ptr nonnull align 1 %338, i64 %348, i1 false)
  %349 = sext i32 %334 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %338, ptr nonnull align 1 %318, i64 %349, i1 false)
  store i32 %342, ptr %335, align 4, !tbaa !47
  %350 = sext i16 %9 to i64
  %351 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !48
  %353 = or i16 %352, 512
  store i16 %353, ptr %351, align 2, !tbaa !48
  br label %355

354:                                              ; preds = %320, %317
  br i1 %268, label %355, label %376

355:                                              ; preds = %354, %345
  %356 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 10
  %357 = load i8, ptr %356, align 2, !tbaa !46
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %376, label %359

359:                                              ; preds = %355
  %360 = call double @strtod(ptr nocapture noundef nonnull %356, ptr noundef null) #10
  %361 = fptrunc double %360 to float
  %362 = sext i16 %9 to i64
  %363 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 6, i64 %362
  store float %361, ptr %363, align 4, !tbaa !43
  %364 = getelementptr inbounds %struct.NumInput, ptr %1, i64 0, i32 5, i64 %362
  %365 = load i16, ptr %364, align 2, !tbaa !48
  %366 = and i16 %365, 2048
  %367 = icmp eq i16 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %359
  %369 = fneg float %361
  store float %369, ptr %363, align 4, !tbaa !43
  br label %370

370:                                              ; preds = %368, %359
  %371 = and i16 %365, 4096
  %372 = icmp eq i16 %371, 0
  br i1 %372, label %376, label %373

373:                                              ; preds = %370
  %374 = load float, ptr %363, align 4, !tbaa !43
  %375 = fdiv float 1.000000e+00, %374
  store float %375, ptr %363, align 4, !tbaa !43
  br label %376

376:                                              ; preds = %333, %355, %373, %370, %354, %328, %303, %182, %194, %152, %146, %132, %88, %95, %262, %300, %290, %156, %150, %145
  %377 = phi i8 [ 1, %300 ], [ 1, %290 ], [ 0, %262 ], [ 1, %156 ], [ 1, %150 ], [ 1, %145 ], [ 0, %95 ], [ 0, %88 ], [ 0, %132 ], [ 0, %146 ], [ 0, %152 ], [ 1, %194 ], [ 1, %182 ], [ 0, %303 ], [ 0, %328 ], [ 0, %354 ], [ 1, %370 ], [ 1, %373 ], [ 1, %355 ], [ 0, %333 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret i8 %377
}

declare void @BLI_str_cursor_step_utf8(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

declare void @WM_clipboard_text_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @WM_clipboard_text_get_firstline(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare i32 @BLI_str_utf8_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"NumInput", !36, i64 0, !39, i64 4, !37, i64 8, !37, i64 20, !36, i64 22, !37, i64 24, !37, i64 32, !37, i64 44, !37, i64 56, !36, i64 68, !37, i64 70, !39, i64 136}
!36 = !{!"short", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!35, !39, i64 4}
!41 = !{!35, !37, i64 20}
!42 = !{!35, !36, i64 22}
!43 = !{!44, !44, i64 0}
!44 = !{!"float", !37, i64 0}
!45 = !{!35, !36, i64 68}
!46 = !{!37, !37, i64 0}
!47 = !{!35, !39, i64 136}
!48 = !{!36, !36, i64 0}
!49 = !{!39, !39, i64 0}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, !51, !52}
!54 = distinct !{!54, !51, !52}
!55 = distinct !{!55, !51, !52}
!56 = !{!57, !36, i64 16}
!57 = !{!"wmEvent", !58, i64 0, !58, i64 8, !36, i64 16, !36, i64 18, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 36, !37, i64 42, !37, i64 43, !36, i64 44, !36, i64 46, !39, i64 48, !39, i64 52, !59, i64 56, !39, i64 64, !39, i64 68, !36, i64 72, !36, i64 74, !36, i64 76, !36, i64 78, !36, i64 80, !36, i64 82, !58, i64 88, !58, i64 96, !36, i64 104, !36, i64 106, !39, i64 108, !58, i64 112}
!58 = !{!"any pointer", !37, i64 0}
!59 = !{!"double", !37, i64 0}
!60 = !{!57, !36, i64 18}
!61 = !{!57, !37, i64 42}
!62 = !{!57, !36, i64 72}
!63 = !{!57, !36, i64 74}
!64 = !{!58, !58, i64 0}
