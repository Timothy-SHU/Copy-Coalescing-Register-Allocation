; ModuleID = 'src/jccoefct.c'
source_filename = "src/jccoefct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr], [10 x ptr] }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_forward_dct = type { ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_c_coef_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 192) #3
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  store ptr %6, ptr %7, align 8, !tbaa !16
  store ptr @start_pass_coef, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !20
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %59

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  br label %16

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %41, %16 ]
  %18 = phi ptr [ %15, %13 ], [ %42, %16 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !23
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !25
  %27 = sext i32 %26 to i64
  %28 = tail call i64 @jround_up(i64 noundef %24, i64 noundef %27) #3
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 8
  %31 = load i32, ptr %30, align 8, !tbaa !26
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 0, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !27
  %35 = sext i32 %34 to i64
  %36 = tail call i64 @jround_up(i64 noundef %32, i64 noundef %35) #3
  %37 = trunc i64 %36 to i32
  %38 = load i32, ptr %33, align 4, !tbaa !27
  %39 = tail call ptr %21(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %29, i32 noundef %37, i32 noundef %38) #3
  %40 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 6, i64 %17
  store ptr %39, ptr %40, align 8, !tbaa !28
  %41 = add nuw nsw i64 %17, 1
  %42 = getelementptr inbounds %struct.jpeg_component_info, ptr %18, i64 1
  %43 = load i32, ptr %10, align 4, !tbaa !20
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %16, label %59, !llvm.loop !29

46:                                               ; preds = %2
  %47 = load ptr, ptr %3, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = tail call ptr %49(ptr noundef %0, i32 noundef 1, i64 noundef 1280) #3
  br label %51

51:                                               ; preds = %46, %51
  %52 = phi i64 [ 0, %46 ], [ %55, %51 ]
  %53 = getelementptr inbounds [64 x i16], ptr %50, i64 %52
  %54 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 5, i64 %52
  store ptr %53, ptr %54, align 8, !tbaa !28
  %55 = add nuw nsw i64 %52, 1
  %56 = icmp eq i64 %55, 10
  br i1 %56, label %57, label %51, !llvm.loop !32

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 6
  store ptr null, ptr %58, align 8, !tbaa !28
  br label %59

59:                                               ; preds = %16, %9, %57
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_coef(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !33
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  store i32 1, ptr %10, align 4, !tbaa !35
  br label %24

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %13 = load i32, ptr %12, align 8, !tbaa !36
  %14 = icmp eq i32 %13, 1
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  br i1 %14, label %21, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !27
  store i32 %20, ptr %17, align 4, !tbaa !35
  br label %24

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %16, i64 0, i32 18
  %23 = load i32, ptr %22, align 8, !tbaa !37
  store i32 %23, ptr %17, align 4, !tbaa !35
  br label %24

24:                                               ; preds = %9, %18, %21
  %25 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  store i32 0, ptr %25, align 4, !tbaa !38
  %26 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %26, align 8, !tbaa !39
  switch i32 %1, label %57 [
    i32 0, label %27
    i32 3, label %37
    i32 2, label %47
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !40
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 4, ptr %33, align 8, !tbaa !41
  %34 = load ptr, ptr %32, align 8, !tbaa !43
  tail call void %34(ptr noundef nonnull %0) #3
  br label %35

35:                                               ; preds = %31, %27
  %36 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_data, ptr %36, align 8, !tbaa !44
  br label %61

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !28
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 8, !tbaa !40
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 4, ptr %43, align 8, !tbaa !41
  %44 = load ptr, ptr %42, align 8, !tbaa !43
  tail call void %44(ptr noundef nonnull %0) #3
  br label %45

45:                                               ; preds = %41, %37
  %46 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_first_pass, ptr %46, align 8, !tbaa !44
  br label %61

47:                                               ; preds = %24
  %48 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !28
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !40
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 5
  store i32 4, ptr %53, align 8, !tbaa !41
  %54 = load ptr, ptr %52, align 8, !tbaa !43
  tail call void %54(ptr noundef nonnull %0) #3
  br label %55

55:                                               ; preds = %51, %47
  %56 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_output, ptr %56, align 8, !tbaa !44
  br label %61

57:                                               ; preds = %24
  %58 = load ptr, ptr %0, align 8, !tbaa !40
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %58, i64 0, i32 5
  store i32 4, ptr %59, align 8, !tbaa !41
  %60 = load ptr, ptr %58, align 8, !tbaa !43
  tail call void %60(ptr noundef nonnull %0) #3
  br label %61

61:                                               ; preds = %57, %55, %45, %35
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @compress_data(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %6 = load i32, ptr %5, align 8, !tbaa !45
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %9 = load i32, ptr %8, align 8, !tbaa !36
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !35
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %149

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %19 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %22 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5
  br label %23

23:                                               ; preds = %16, %145
  %24 = phi i32 [ %12, %16 ], [ %146, %145 ]
  %25 = load i32, ptr %17, align 4, !tbaa !38
  %26 = icmp ugt i32 %25, %7
  br i1 %26, label %145, label %27

27:                                               ; preds = %23
  %28 = shl nsw i32 %24, 3
  br label %29

29:                                               ; preds = %27, %142
  %30 = phi i32 [ %25, %27 ], [ %143, %142 ]
  %31 = load i32, ptr %18, align 4, !tbaa !34
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %135

33:                                               ; preds = %29
  %34 = icmp ult i32 %30, %7
  br label %35

35:                                               ; preds = %33, %129
  %36 = phi i64 [ 0, %33 ], [ %131, %129 ]
  %37 = phi i32 [ 0, %33 ], [ %130, %129 ]
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %36
  %39 = load ptr, ptr %38, align 8, !tbaa !28
  %40 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 13
  %41 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 17
  %42 = select i1 %34, ptr %40, ptr %41
  %43 = load i32, ptr %42, align 4, !tbaa !46
  %44 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 16
  %45 = load i32, ptr %44, align 8, !tbaa !47
  %46 = mul i32 %45, %30
  %47 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 14
  %48 = load i32, ptr %47, align 8, !tbaa !48
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %129

50:                                               ; preds = %35
  %51 = getelementptr inbounds %struct.jpeg_component_info, ptr %39, i64 0, i32 18
  %52 = getelementptr inbounds ptr, ptr %1, i64 %36
  %53 = sext i32 %43 to i64
  br label %54

54:                                               ; preds = %50, %122
  %55 = phi i32 [ %28, %50 ], [ %125, %122 ]
  %56 = phi i32 [ %37, %50 ], [ %124, %122 ]
  %57 = phi i32 [ 0, %50 ], [ %126, %122 ]
  %58 = load i32, ptr %19, align 8, !tbaa !33
  %59 = icmp ult i32 %58, %10
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = add nsw i32 %57, %24
  %62 = load i32, ptr %51, align 8, !tbaa !37
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %98

64:                                               ; preds = %60, %54
  %65 = load ptr, ptr %20, align 8, !tbaa !49
  %66 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !50
  %68 = load ptr, ptr %52, align 8, !tbaa !28
  %69 = sext i32 %56 to i64
  %70 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !28
  tail call void %67(ptr noundef %0, ptr noundef %39, ptr noundef %68, ptr noundef %71, i32 noundef %55, i32 noundef %46, i32 noundef %43) #3
  %72 = load i32, ptr %40, align 4, !tbaa !52
  %73 = icmp slt i32 %43, %72
  br i1 %73, label %74, label %122

74:                                               ; preds = %64
  %75 = add nsw i32 %56, %43
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !28
  %79 = sub nsw i32 %72, %43
  %80 = sext i32 %79 to i64
  %81 = shl nsw i64 %80, 7
  tail call void @jzero_far(ptr noundef %78, i64 noundef %81) #3
  %82 = load i32, ptr %40, align 4, !tbaa !52
  %83 = icmp slt i32 %43, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %74
  %85 = sext i32 %56 to i64
  %86 = sext i32 %82 to i64
  br label %87

87:                                               ; preds = %84, %87
  %88 = phi i64 [ %53, %84 ], [ %96, %87 ]
  %89 = add nsw i64 %88, %85
  %90 = add nsw i64 %89, -1
  %91 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !28
  %93 = load i16, ptr %92, align 2, !tbaa !53
  %94 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %89
  %95 = load ptr, ptr %94, align 8, !tbaa !28
  store i16 %93, ptr %95, align 2, !tbaa !53
  %96 = add nsw i64 %88, 1
  %97 = icmp eq i64 %96, %86
  br i1 %97, label %122, label %87, !llvm.loop !54

98:                                               ; preds = %60
  %99 = sext i32 %56 to i64
  %100 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !28
  %102 = load i32, ptr %40, align 4, !tbaa !52
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 7
  tail call void @jzero_far(ptr noundef %101, i64 noundef %104) #3
  %105 = load i32, ptr %40, align 4, !tbaa !52
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %98
  %108 = add nsw i32 %56, -1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !28
  %112 = sext i32 %56 to i64
  %113 = zext nneg i32 %105 to i64
  br label %114

114:                                              ; preds = %107, %114
  %115 = phi i64 [ 0, %107 ], [ %120, %114 ]
  %116 = load i16, ptr %111, align 2, !tbaa !53
  %117 = add nsw i64 %115, %112
  %118 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !28
  store i16 %116, ptr %119, align 2, !tbaa !53
  %120 = add nuw nsw i64 %115, 1
  %121 = icmp eq i64 %120, %113
  br i1 %121, label %122, label %114, !llvm.loop !55

122:                                              ; preds = %114, %87, %98, %74, %64
  %123 = load i32, ptr %40, align 4, !tbaa !52
  %124 = add nsw i32 %123, %56
  %125 = add i32 %55, 8
  %126 = add nuw nsw i32 %57, 1
  %127 = load i32, ptr %47, align 8, !tbaa !48
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %54, label %129, !llvm.loop !56

129:                                              ; preds = %122, %35
  %130 = phi i32 [ %37, %35 ], [ %124, %122 ]
  %131 = add nuw nsw i64 %36, 1
  %132 = load i32, ptr %18, align 4, !tbaa !34
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %35, label %135, !llvm.loop !57

135:                                              ; preds = %129, %29
  %136 = load ptr, ptr %21, align 8, !tbaa !58
  %137 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !59
  %139 = tail call i32 %138(ptr noundef %0, ptr noundef nonnull %22) #3
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 %24, ptr %11, align 8, !tbaa !39
  store i32 %30, ptr %17, align 4, !tbaa !38
  br label %177

142:                                              ; preds = %135
  %143 = add i32 %30, 1
  %144 = icmp ugt i32 %143, %7
  br i1 %144, label %145, label %29, !llvm.loop !61

145:                                              ; preds = %142, %23
  store i32 0, ptr %17, align 4, !tbaa !38
  %146 = add nsw i32 %24, 1
  %147 = load i32, ptr %13, align 4, !tbaa !35
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %23, label %149, !llvm.loop !62

149:                                              ; preds = %145, %2
  %150 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !33
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 8, !tbaa !33
  %153 = load ptr, ptr %3, align 8, !tbaa !16
  %154 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %155 = load i32, ptr %154, align 4, !tbaa !34
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 4
  store i32 1, ptr %158, align 4, !tbaa !35
  br label %174

159:                                              ; preds = %149
  %160 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !33
  %162 = load i32, ptr %8, align 8, !tbaa !36
  %163 = add i32 %162, -1
  %164 = icmp ult i32 %161, %163
  %165 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %166 = load ptr, ptr %165, align 8, !tbaa !28
  %167 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 4
  br i1 %164, label %168, label %171

168:                                              ; preds = %159
  %169 = getelementptr inbounds %struct.jpeg_component_info, ptr %166, i64 0, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !27
  store i32 %170, ptr %167, align 4, !tbaa !35
  br label %174

171:                                              ; preds = %159
  %172 = getelementptr inbounds %struct.jpeg_component_info, ptr %166, i64 0, i32 18
  %173 = load i32, ptr %172, align 8, !tbaa !37
  store i32 %173, ptr %167, align 4, !tbaa !35
  br label %174

174:                                              ; preds = %157, %168, %171
  %175 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 2
  store i32 0, ptr %175, align 4, !tbaa !38
  %176 = getelementptr inbounds %struct.my_coef_controller, ptr %153, i64 0, i32 3
  store i32 0, ptr %176, align 8, !tbaa !39
  br label %177

177:                                              ; preds = %174, %141
  %178 = phi i32 [ 0, %141 ], [ 1, %174 ]
  ret i32 %178
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @compress_first_pass(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %6 = load i32, ptr %5, align 8, !tbaa !36
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !20
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %133

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  br label %17

17:                                               ; preds = %11, %127
  %18 = phi i64 [ 0, %11 ], [ %128, %127 ]
  %19 = phi ptr [ %13, %11 ], [ %129, %127 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 6, i64 %18
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  %25 = load i32, ptr %15, align 8, !tbaa !33
  %26 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !27
  %28 = mul i32 %27, %25
  %29 = tail call ptr %22(ptr noundef %0, ptr noundef %24, i32 noundef %28, i32 noundef %27, i32 noundef 1) #3
  %30 = load i32, ptr %15, align 8, !tbaa !33
  %31 = icmp ult i32 %30, %7
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, ptr %26, align 4, !tbaa !27
  br label %41

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !26
  %37 = load i32, ptr %26, align 4, !tbaa !27
  %38 = urem i32 %36, %37
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %37, i32 %38
  br label %41

41:                                               ; preds = %34, %32
  %42 = phi i32 [ %33, %32 ], [ %40, %34 ]
  %43 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !23
  %45 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !25
  %47 = urem i32 %44, %46
  %48 = icmp sgt i32 %47, 0
  %49 = sub nsw i32 %46, %47
  %50 = select i1 %48, i32 %49, i32 %47
  %51 = icmp sgt i32 %42, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %41
  %53 = getelementptr inbounds ptr, ptr %1, i64 %18
  %54 = icmp sgt i32 %50, 0
  %55 = zext i32 %44 to i64
  %56 = zext nneg i32 %50 to i64
  %57 = shl nuw nsw i64 %56, 7
  %58 = zext nneg i32 %42 to i64
  %59 = zext nneg i32 %50 to i64
  br label %60

60:                                               ; preds = %52, %79
  %61 = phi i64 [ 0, %52 ], [ %80, %79 ]
  %62 = getelementptr inbounds ptr, ptr %29, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !28
  %64 = load ptr, ptr %16, align 8, !tbaa !49
  %65 = getelementptr inbounds %struct.jpeg_forward_dct, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !50
  %67 = load ptr, ptr %53, align 8, !tbaa !28
  %68 = trunc i64 %61 to i32
  %69 = shl i32 %68, 3
  tail call void %66(ptr noundef %0, ptr noundef %19, ptr noundef %67, ptr noundef %63, i32 noundef %69, i32 noundef 0, i32 noundef %44) #3
  br i1 %54, label %70, label %79

70:                                               ; preds = %60
  %71 = getelementptr inbounds [64 x i16], ptr %63, i64 %55
  tail call void @jzero_far(ptr noundef %71, i64 noundef %57) #3
  %72 = getelementptr inbounds [64 x i16], ptr %71, i64 -1
  %73 = load i16, ptr %72, align 2, !tbaa !53
  br label %74

74:                                               ; preds = %70, %74
  %75 = phi i64 [ 0, %70 ], [ %77, %74 ]
  %76 = getelementptr inbounds [64 x i16], ptr %71, i64 %75
  store i16 %73, ptr %76, align 2, !tbaa !53
  %77 = add nuw nsw i64 %75, 1
  %78 = icmp eq i64 %77, %59
  br i1 %78, label %79, label %74, !llvm.loop !64

79:                                               ; preds = %74, %60
  %80 = add nuw nsw i64 %61, 1
  %81 = icmp eq i64 %80, %58
  br i1 %81, label %82, label %60, !llvm.loop !65

82:                                               ; preds = %79, %41
  %83 = load i32, ptr %15, align 8, !tbaa !33
  %84 = icmp eq i32 %83, %7
  br i1 %84, label %85, label %127

85:                                               ; preds = %82
  %86 = add i32 %50, %44
  %87 = udiv i32 %86, %46
  %88 = load i32, ptr %26, align 4, !tbaa !27
  %89 = icmp slt i32 %42, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %85
  %91 = zext i32 %86 to i64
  %92 = shl nuw nsw i64 %91, 7
  %93 = icmp ugt i32 %46, %86
  %94 = add nsw i32 %46, -1
  %95 = sext i32 %94 to i64
  %96 = icmp sgt i32 %46, 0
  %97 = sext i32 %46 to i64
  %98 = sext i32 %42 to i64
  %99 = zext nneg i32 %46 to i64
  br label %100

100:                                              ; preds = %90, %122
  %101 = phi i64 [ %98, %90 ], [ %123, %122 ]
  %102 = getelementptr inbounds ptr, ptr %29, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !28
  %104 = getelementptr ptr, ptr %102, i64 -1
  %105 = load ptr, ptr %104, align 8, !tbaa !28
  tail call void @jzero_far(ptr noundef %103, i64 noundef %92) #3
  br i1 %93, label %122, label %106

106:                                              ; preds = %100, %117
  %107 = phi ptr [ %119, %117 ], [ %105, %100 ]
  %108 = phi ptr [ %118, %117 ], [ %103, %100 ]
  %109 = phi i32 [ %120, %117 ], [ 0, %100 ]
  %110 = getelementptr inbounds [64 x i16], ptr %107, i64 %95
  %111 = load i16, ptr %110, align 2, !tbaa !53
  br i1 %96, label %112, label %117

112:                                              ; preds = %106, %112
  %113 = phi i64 [ %115, %112 ], [ 0, %106 ]
  %114 = getelementptr inbounds [64 x i16], ptr %108, i64 %113
  store i16 %111, ptr %114, align 2, !tbaa !53
  %115 = add nuw nsw i64 %113, 1
  %116 = icmp eq i64 %115, %99
  br i1 %116, label %117, label %112, !llvm.loop !66

117:                                              ; preds = %112, %106
  %118 = getelementptr inbounds [64 x i16], ptr %108, i64 %97
  %119 = getelementptr inbounds [64 x i16], ptr %107, i64 %97
  %120 = add nuw i32 %109, 1
  %121 = icmp ult i32 %120, %87
  br i1 %121, label %106, label %122, !llvm.loop !67

122:                                              ; preds = %117, %100
  %123 = add nsw i64 %101, 1
  %124 = load i32, ptr %26, align 4, !tbaa !27
  %125 = sext i32 %124 to i64
  %126 = icmp slt i64 %123, %125
  br i1 %126, label %100, label %127, !llvm.loop !68

127:                                              ; preds = %122, %85, %82
  %128 = add nuw nsw i64 %18, 1
  %129 = getelementptr inbounds %struct.jpeg_component_info, ptr %19, i64 1
  %130 = load i32, ptr %8, align 4, !tbaa !20
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %128, %131
  br i1 %132, label %17, label %133, !llvm.loop !69

133:                                              ; preds = %127, %2
  %134 = tail call i32 @compress_output(ptr noundef %0, ptr poison), !range !70
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @compress_output(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [4 x ptr], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #3
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !34
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 1
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %30, %12 ]
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = load ptr, ptr %10, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !71
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !28
  %24 = load i32, ptr %11, align 8, !tbaa !33
  %25 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !27
  %27 = mul i32 %26, %24
  %28 = tail call ptr %18(ptr noundef %0, ptr noundef %23, i32 noundef %27, i32 noundef %26, i32 noundef 0) #3
  %29 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %13
  store ptr %28, ptr %29, align 8, !tbaa !28
  %30 = add nuw nsw i64 %13, 1
  %31 = load i32, ptr %6, align 4, !tbaa !34
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %12, label %34, !llvm.loop !72

34:                                               ; preds = %12, %2
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %36 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !35
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %120

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 2
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %45 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 5
  %46 = sext i32 %37 to i64
  br label %47

47:                                               ; preds = %41, %115
  %48 = phi i64 [ %46, %41 ], [ %116, %115 ]
  %49 = load i32, ptr %42, align 4, !tbaa !38
  %50 = load i32, ptr %43, align 8, !tbaa !45
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %115

52:                                               ; preds = %47, %111
  %53 = phi i32 [ %112, %111 ], [ %49, %47 ]
  %54 = load i32, ptr %35, align 4, !tbaa !34
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %52
  %57 = zext nneg i32 %54 to i64
  br label %58

58:                                               ; preds = %56, %99
  %59 = phi i64 [ 0, %56 ], [ %101, %99 ]
  %60 = phi i32 [ 0, %56 ], [ %100, %99 ]
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %59
  %62 = load ptr, ptr %61, align 8, !tbaa !28
  %63 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i64 0, i32 13
  %64 = load i32, ptr %63, align 4, !tbaa !52
  %65 = getelementptr inbounds %struct.jpeg_component_info, ptr %62, i64 0, i32 14
  %66 = load i32, ptr %65, align 8, !tbaa !48
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %99

68:                                               ; preds = %58
  %69 = mul i32 %64, %53
  %70 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %59
  %71 = load ptr, ptr %70, align 8, !tbaa !28
  %72 = zext i32 %69 to i64
  %73 = icmp sgt i32 %64, 0
  %74 = zext nneg i32 %66 to i64
  %75 = getelementptr ptr, ptr %71, i64 %48
  br label %76

76:                                               ; preds = %68, %95
  %77 = phi i64 [ 0, %68 ], [ %97, %95 ]
  %78 = phi i32 [ %60, %68 ], [ %96, %95 ]
  br i1 %73, label %79, label %95

79:                                               ; preds = %76
  %80 = getelementptr ptr, ptr %75, i64 %77
  %81 = load ptr, ptr %80, align 8, !tbaa !28
  %82 = getelementptr inbounds [64 x i16], ptr %81, i64 %72
  %83 = sext i32 %78 to i64
  br label %84

84:                                               ; preds = %79, %84
  %85 = phi i64 [ %83, %79 ], [ %89, %84 ]
  %86 = phi ptr [ %82, %79 ], [ %88, %84 ]
  %87 = phi i32 [ 0, %79 ], [ %91, %84 ]
  %88 = getelementptr inbounds [64 x i16], ptr %86, i64 1
  %89 = add nsw i64 %85, 1
  %90 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 5, i64 %85
  store ptr %86, ptr %90, align 8, !tbaa !28
  %91 = add nuw nsw i32 %87, 1
  %92 = icmp eq i32 %91, %64
  br i1 %92, label %93, label %84, !llvm.loop !73

93:                                               ; preds = %84
  %94 = trunc i64 %89 to i32
  br label %95

95:                                               ; preds = %93, %76
  %96 = phi i32 [ %78, %76 ], [ %94, %93 ]
  %97 = add nuw nsw i64 %77, 1
  %98 = icmp eq i64 %97, %74
  br i1 %98, label %99, label %76, !llvm.loop !74

99:                                               ; preds = %95, %58
  %100 = phi i32 [ %60, %58 ], [ %96, %95 ]
  %101 = add nuw nsw i64 %59, 1
  %102 = icmp eq i64 %101, %57
  br i1 %102, label %103, label %58, !llvm.loop !75

103:                                              ; preds = %99, %52
  %104 = load ptr, ptr %44, align 8, !tbaa !58
  %105 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !59
  %107 = tail call i32 %106(ptr noundef %0, ptr noundef nonnull %45) #3
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = trunc i64 %48 to i32
  store i32 %110, ptr %36, align 8, !tbaa !39
  store i32 %53, ptr %42, align 4, !tbaa !38
  br label %148

111:                                              ; preds = %103
  %112 = add nuw i32 %53, 1
  %113 = load i32, ptr %43, align 8, !tbaa !45
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %52, label %115, !llvm.loop !76

115:                                              ; preds = %111, %47
  store i32 0, ptr %42, align 4, !tbaa !38
  %116 = add nsw i64 %48, 1
  %117 = load i32, ptr %38, align 4, !tbaa !35
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %116, %118
  br i1 %119, label %47, label %120, !llvm.loop !77

120:                                              ; preds = %115, %34
  %121 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !33
  %123 = add i32 %122, 1
  store i32 %123, ptr %121, align 8, !tbaa !33
  %124 = load ptr, ptr %4, align 8, !tbaa !16
  %125 = load i32, ptr %35, align 4, !tbaa !34
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %129

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.my_coef_controller, ptr %124, i64 0, i32 4
  store i32 1, ptr %128, align 4, !tbaa !35
  br label %145

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.my_coef_controller, ptr %124, i64 0, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !33
  %132 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %133 = load i32, ptr %132, align 8, !tbaa !36
  %134 = add i32 %133, -1
  %135 = icmp ult i32 %131, %134
  %136 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %137 = load ptr, ptr %136, align 8, !tbaa !28
  %138 = getelementptr inbounds %struct.my_coef_controller, ptr %124, i64 0, i32 4
  br i1 %135, label %139, label %142

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.jpeg_component_info, ptr %137, i64 0, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !27
  store i32 %141, ptr %138, align 4, !tbaa !35
  br label %145

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.jpeg_component_info, ptr %137, i64 0, i32 18
  %144 = load i32, ptr %143, align 8, !tbaa !37
  store i32 %144, ptr %138, align 4, !tbaa !35
  br label %145

145:                                              ; preds = %127, %139, %142
  %146 = getelementptr inbounds %struct.my_coef_controller, ptr %124, i64 0, i32 2
  store i32 0, ptr %146, align 4, !tbaa !38
  %147 = getelementptr inbounds %struct.my_coef_controller, ptr %124, i64 0, i32 3
  store i32 0, ptr %147, align 8, !tbaa !39
  br label %148

148:                                              ; preds = %145, %109
  %149 = phi i32 [ 0, %109 ], [ 1, %145 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #3
  ret i32 %149
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 448}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !8, i64 32, !8, i64 112}
!19 = !{!"jpeg_c_coef_controller", !7, i64 0, !7, i64 8}
!20 = !{!6, !10, i64 68}
!21 = !{!6, !7, i64 80}
!22 = !{!14, !7, i64 40}
!23 = !{!24, !10, i64 28}
!24 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!25 = !{!24, !10, i64 8}
!26 = !{!24, !10, i64 32}
!27 = !{!24, !10, i64 12}
!28 = !{!7, !7, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!14, !7, i64 8}
!32 = distinct !{!32, !30}
!33 = !{!18, !10, i64 16}
!34 = !{!6, !10, i64 316}
!35 = !{!18, !10, i64 28}
!36 = !{!6, !10, i64 312}
!37 = !{!24, !10, i64 72}
!38 = !{!18, !10, i64 20}
!39 = !{!18, !10, i64 24}
!40 = !{!6, !7, i64 0}
!41 = !{!42, !10, i64 40}
!42 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!43 = !{!42, !7, i64 0}
!44 = !{!18, !7, i64 8}
!45 = !{!6, !10, i64 352}
!46 = !{!10, !10, i64 0}
!47 = !{!24, !10, i64 64}
!48 = !{!24, !10, i64 56}
!49 = !{!6, !7, i64 480}
!50 = !{!51, !7, i64 8}
!51 = !{!"jpeg_forward_dct", !7, i64 0, !7, i64 8}
!52 = !{!24, !10, i64 52}
!53 = !{!12, !12, i64 0}
!54 = distinct !{!54, !30}
!55 = distinct !{!55, !30}
!56 = distinct !{!56, !30}
!57 = distinct !{!57, !30}
!58 = !{!6, !7, i64 488}
!59 = !{!60, !7, i64 8}
!60 = !{!"jpeg_entropy_encoder", !7, i64 0, !7, i64 8, !7, i64 16}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = !{!14, !7, i64 64}
!64 = distinct !{!64, !30}
!65 = distinct !{!65, !30}
!66 = distinct !{!66, !30}
!67 = distinct !{!67, !30}
!68 = distinct !{!68, !30}
!69 = distinct !{!69, !30}
!70 = !{i32 0, i32 2}
!71 = !{!24, !10, i64 4}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !30}
!75 = distinct !{!75, !30}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !30}
