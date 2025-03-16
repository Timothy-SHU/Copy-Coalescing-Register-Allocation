; ModuleID = 'src/jdcoefct.c'
source_filename = "src/jdcoefct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.my_coef_controller = type { %struct.jpeg_d_coef_controller, i32, i32, i32, [10 x ptr], [10 x ptr], ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_entropy_decoder = type { ptr, ptr }
%struct.jpeg_input_controller = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_d_coef_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 224) #6
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  store ptr %6, ptr %7, align 8, !tbaa !16
  store ptr @start_input_pass, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 2
  store ptr @start_output_pass, ptr %8, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 6
  store ptr null, ptr %9, align 8, !tbaa !21
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %57, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !22
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %53

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 44
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ 0, %15 ], [ %48, %19 ]
  %21 = phi ptr [ %17, %15 ], [ %49, %19 ]
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !24
  %24 = load i32, ptr %18, align 8, !tbaa !26
  %25 = icmp eq i32 %24, 0
  %26 = mul nsw i32 %23, 3
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = load ptr, ptr %3, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 7
  %32 = load i32, ptr %31, align 4, !tbaa !28
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !29
  %36 = sext i32 %35 to i64
  %37 = tail call i64 @jround_up(i64 noundef %33, i64 noundef %36) #6
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !30
  %41 = zext i32 %40 to i64
  %42 = load i32, ptr %22, align 4, !tbaa !24
  %43 = sext i32 %42 to i64
  %44 = tail call i64 @jround_up(i64 noundef %41, i64 noundef %43) #6
  %45 = trunc i64 %44 to i32
  %46 = tail call ptr %30(ptr noundef %0, i32 noundef 1, i32 noundef 1, i32 noundef %38, i32 noundef %45, i32 noundef %27) #6
  %47 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 5, i64 %20
  store ptr %46, ptr %47, align 8, !tbaa !31
  %48 = add nuw nsw i64 %20, 1
  %49 = getelementptr inbounds %struct.jpeg_component_info, ptr %21, i64 1
  %50 = load i32, ptr %12, align 8, !tbaa !22
  %51 = sext i32 %50 to i64
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %19, label %53, !llvm.loop !32

53:                                               ; preds = %19, %11
  %54 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 1
  store ptr @consume_data, ptr %54, align 8, !tbaa !34
  %55 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 3
  store ptr @decompress_data, ptr %55, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 5
  br label %71

57:                                               ; preds = %2
  %58 = load ptr, ptr %3, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !36
  %61 = tail call ptr %60(ptr noundef %0, i32 noundef 1, i64 noundef 1280) #6
  br label %62

62:                                               ; preds = %57, %62
  %63 = phi i64 [ 0, %57 ], [ %66, %62 ]
  %64 = getelementptr inbounds [64 x i16], ptr %61, i64 %63
  %65 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 4, i64 %63
  store ptr %64, ptr %65, align 8, !tbaa !31
  %66 = add nuw nsw i64 %63, 1
  %67 = icmp eq i64 %66, 10
  br i1 %67, label %68, label %62, !llvm.loop !37

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 1
  store ptr @dummy_consume_data, ptr %69, align 8, !tbaa !34
  %70 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 3
  store ptr @decompress_onepass, ptr %70, align 8, !tbaa !35
  br label %71

71:                                               ; preds = %68, %53
  %72 = phi ptr [ null, %68 ], [ %56, %53 ]
  %73 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %6, i64 0, i32 4
  store ptr %72, ptr %73, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @start_input_pass(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %2, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  store i32 1, ptr %9, align 8, !tbaa !41
  br label %23

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = icmp eq i32 %12, 1
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  br i1 %13, label %20, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !24
  store i32 %19, ptr %16, align 8, !tbaa !41
  br label %23

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 18
  %22 = load i32, ptr %21, align 8, !tbaa !43
  store i32 %22, ptr %16, align 8, !tbaa !41
  br label %23

23:                                               ; preds = %8, %17, %20
  %24 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  store i32 0, ptr %25, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_output_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %101, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 18
  %9 = load i32, ptr %8, align 8, !tbaa !46
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %97, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 44
  %13 = load i32, ptr %12, align 8, !tbaa !26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %97, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 38
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %97, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.my_coef_controller, ptr %3, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load ptr, ptr %25, align 8, !tbaa !13
  %27 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 8, !tbaa !22
  %29 = sext i32 %28 to i64
  %30 = mul nsw i64 %29, 24
  %31 = tail call ptr %26(ptr noundef %0, i32 noundef 1, i64 noundef %30) #6
  store ptr %31, ptr %20, align 8, !tbaa !21
  br label %32

32:                                               ; preds = %23, %19
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !22
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %97

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %38 = load ptr, ptr %37, align 8, !tbaa !23
  %39 = load ptr, ptr %20, align 8, !tbaa !21
  br label %40

40:                                               ; preds = %87, %36
  %41 = phi i64 [ 0, %36 ], [ %89, %87 ]
  %42 = phi ptr [ %39, %36 ], [ %88, %87 ]
  %43 = phi i32 [ 0, %36 ], [ %84, %87 ]
  %44 = phi ptr [ %38, %36 ], [ %90, %87 ]
  %45 = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %94, label %48

48:                                               ; preds = %40
  %49 = load i16, ptr %46, align 4, !tbaa !49
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %94, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds [64 x i16], ptr %46, i64 0, i64 1
  %53 = load i16, ptr %52, align 2, !tbaa !49
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %94, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds [64 x i16], ptr %46, i64 0, i64 8
  %57 = load i16, ptr %56, align 4, !tbaa !49
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %94, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds [64 x i16], ptr %46, i64 0, i64 16
  %61 = load i16, ptr %60, align 4, !tbaa !49
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds [64 x i16], ptr %46, i64 0, i64 9
  %65 = load i16, ptr %64, align 2, !tbaa !49
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %94, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds [64 x i16], ptr %46, i64 0, i64 2
  %69 = load i16, ptr %68, align 4, !tbaa !49
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %16, align 8, !tbaa !47
  %73 = getelementptr inbounds [64 x i32], ptr %72, i64 %41
  %74 = load i32, ptr %73, align 4, !tbaa !50
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %71, %76
  %77 = phi i64 [ %85, %76 ], [ 1, %71 ]
  %78 = phi i32 [ %84, %76 ], [ %43, %71 ]
  %79 = getelementptr inbounds i32, ptr %73, i64 %77
  %80 = load i32, ptr %79, align 4, !tbaa !50
  %81 = getelementptr inbounds i32, ptr %42, i64 %77
  store i32 %80, ptr %81, align 4, !tbaa !50
  %82 = load i32, ptr %79, align 4, !tbaa !50
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 %78, i32 1
  %85 = add nuw nsw i64 %77, 1
  %86 = icmp eq i64 %85, 6
  br i1 %86, label %87, label %76, !llvm.loop !51

87:                                               ; preds = %76
  %88 = getelementptr inbounds i32, ptr %42, i64 6
  %89 = add nuw nsw i64 %41, 1
  %90 = getelementptr inbounds %struct.jpeg_component_info, ptr %44, i64 1
  %91 = load i32, ptr %33, align 8, !tbaa !22
  %92 = sext i32 %91 to i64
  %93 = icmp slt i64 %89, %92
  br i1 %93, label %40, label %94, !llvm.loop !52

94:                                               ; preds = %87, %71, %67, %63, %59, %55, %51, %48, %40
  %95 = phi i32 [ %84, %87 ], [ 0, %71 ], [ 0, %48 ], [ 0, %51 ], [ 0, %55 ], [ 0, %59 ], [ 0, %63 ], [ 0, %67 ], [ 0, %40 ]
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %15, %11, %32, %94, %7
  br label %98

98:                                               ; preds = %94, %97
  %99 = phi ptr [ @decompress_data, %97 ], [ @decompress_smooth_data, %94 ]
  %100 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %3, i64 0, i32 3
  store ptr %99, ptr %100, align 8, !tbaa !35
  br label %101

101:                                              ; preds = %98, %1
  %102 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  store i32 0, ptr %102, align 8, !tbaa !53
  ret void
}

declare i64 @jround_up(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @consume_data(ptr noundef %0) #0 {
  %2 = alloca [4 x ptr], align 16
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ 0, %8 ], [ %29, %11 ]
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !31
  %15 = load ptr, ptr %9, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %15, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !55
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !31
  %23 = load i32, ptr %10, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.jpeg_component_info, ptr %14, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !24
  %26 = mul i32 %25, %23
  %27 = tail call ptr %17(ptr noundef %0, ptr noundef %22, i32 noundef %26, i32 noundef %25, i32 noundef 1) #6
  %28 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %12
  store ptr %27, ptr %28, align 8, !tbaa !31
  %29 = add nuw nsw i64 %12, 1
  %30 = load i32, ptr %5, align 8, !tbaa !40
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %11, label %33, !llvm.loop !56

33:                                               ; preds = %11, %1
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %35 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !45
  %37 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !41
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %119

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  %42 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 64
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %44 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  %45 = sext i32 %36 to i64
  br label %46

46:                                               ; preds = %40, %114
  %47 = phi i64 [ %45, %40 ], [ %115, %114 ]
  %48 = load i32, ptr %41, align 8, !tbaa !44
  %49 = load i32, ptr %42, align 8, !tbaa !57
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %114

51:                                               ; preds = %46, %110
  %52 = phi i32 [ %111, %110 ], [ %48, %46 ]
  %53 = load i32, ptr %34, align 8, !tbaa !40
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %51
  %56 = zext nneg i32 %53 to i64
  br label %57

57:                                               ; preds = %55, %98
  %58 = phi i64 [ 0, %55 ], [ %100, %98 ]
  %59 = phi i32 [ 0, %55 ], [ %99, %98 ]
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !31
  %62 = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i64 0, i32 13
  %63 = load i32, ptr %62, align 4, !tbaa !58
  %64 = getelementptr inbounds %struct.jpeg_component_info, ptr %61, i64 0, i32 14
  %65 = load i32, ptr %64, align 8, !tbaa !59
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %98

67:                                               ; preds = %57
  %68 = mul i32 %63, %52
  %69 = getelementptr inbounds [4 x ptr], ptr %2, i64 0, i64 %58
  %70 = load ptr, ptr %69, align 8, !tbaa !31
  %71 = zext i32 %68 to i64
  %72 = icmp sgt i32 %63, 0
  %73 = zext nneg i32 %65 to i64
  %74 = getelementptr ptr, ptr %70, i64 %47
  br label %75

75:                                               ; preds = %67, %94
  %76 = phi i64 [ 0, %67 ], [ %96, %94 ]
  %77 = phi i32 [ %59, %67 ], [ %95, %94 ]
  br i1 %72, label %78, label %94

78:                                               ; preds = %75
  %79 = getelementptr ptr, ptr %74, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !31
  %81 = getelementptr inbounds [64 x i16], ptr %80, i64 %71
  %82 = sext i32 %77 to i64
  br label %83

83:                                               ; preds = %78, %83
  %84 = phi i64 [ %82, %78 ], [ %88, %83 ]
  %85 = phi ptr [ %81, %78 ], [ %87, %83 ]
  %86 = phi i32 [ 0, %78 ], [ %90, %83 ]
  %87 = getelementptr inbounds [64 x i16], ptr %85, i64 1
  %88 = add nsw i64 %84, 1
  %89 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4, i64 %84
  store ptr %85, ptr %89, align 8, !tbaa !31
  %90 = add nuw nsw i32 %86, 1
  %91 = icmp eq i32 %90, %63
  br i1 %91, label %92, label %83, !llvm.loop !60

92:                                               ; preds = %83
  %93 = trunc i64 %88 to i32
  br label %94

94:                                               ; preds = %92, %75
  %95 = phi i32 [ %77, %75 ], [ %93, %92 ]
  %96 = add nuw nsw i64 %76, 1
  %97 = icmp eq i64 %96, %73
  br i1 %97, label %98, label %75, !llvm.loop !61

98:                                               ; preds = %94, %57
  %99 = phi i32 [ %59, %57 ], [ %95, %94 ]
  %100 = add nuw nsw i64 %58, 1
  %101 = icmp eq i64 %100, %56
  br i1 %101, label %102, label %57, !llvm.loop !62

102:                                              ; preds = %98, %51
  %103 = load ptr, ptr %43, align 8, !tbaa !63
  %104 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !64
  %106 = tail call i32 %105(ptr noundef %0, ptr noundef nonnull %44) #6
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = trunc i64 %47 to i32
  store i32 %109, ptr %35, align 4, !tbaa !45
  store i32 %52, ptr %41, align 8, !tbaa !44
  br label %152

110:                                              ; preds = %102
  %111 = add nuw i32 %52, 1
  %112 = load i32, ptr %42, align 8, !tbaa !57
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %51, label %114, !llvm.loop !66

114:                                              ; preds = %110, %46
  store i32 0, ptr %41, align 8, !tbaa !44
  %115 = add nsw i64 %47, 1
  %116 = load i32, ptr %37, align 8, !tbaa !41
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %46, label %119, !llvm.loop !67

119:                                              ; preds = %114, %33
  %120 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  %121 = load i32, ptr %120, align 8, !tbaa !39
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 8, !tbaa !39
  %123 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %124 = load i32, ptr %123, align 8, !tbaa !42
  %125 = icmp ult i32 %122, %124
  br i1 %125, label %126, label %147

126:                                              ; preds = %119
  %127 = load ptr, ptr %3, align 8, !tbaa !16
  %128 = load i32, ptr %34, align 8, !tbaa !40
  %129 = icmp sgt i32 %128, 1
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.my_coef_controller, ptr %127, i64 0, i32 3
  store i32 1, ptr %131, align 8, !tbaa !41
  br label %144

132:                                              ; preds = %126
  %133 = add i32 %124, -1
  %134 = icmp ult i32 %122, %133
  %135 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63
  %136 = load ptr, ptr %135, align 8, !tbaa !31
  %137 = getelementptr inbounds %struct.my_coef_controller, ptr %127, i64 0, i32 3
  br i1 %134, label %138, label %141

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.jpeg_component_info, ptr %136, i64 0, i32 3
  %140 = load i32, ptr %139, align 4, !tbaa !24
  store i32 %140, ptr %137, align 8, !tbaa !41
  br label %144

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.jpeg_component_info, ptr %136, i64 0, i32 18
  %143 = load i32, ptr %142, align 8, !tbaa !43
  store i32 %143, ptr %137, align 8, !tbaa !41
  br label %144

144:                                              ; preds = %130, %138, %141
  %145 = getelementptr inbounds %struct.my_coef_controller, ptr %127, i64 0, i32 1
  store i32 0, ptr %145, align 8, !tbaa !44
  %146 = getelementptr inbounds %struct.my_coef_controller, ptr %127, i64 0, i32 2
  store i32 0, ptr %146, align 4, !tbaa !45
  br label %152

147:                                              ; preds = %119
  %148 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %149 = load ptr, ptr %148, align 8, !tbaa !68
  %150 = getelementptr inbounds %struct.jpeg_input_controller, ptr %149, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !69
  tail call void %151(ptr noundef %0) #6
  br label %152

152:                                              ; preds = %147, %144, %108
  %153 = phi i32 [ 0, %108 ], [ 3, %144 ], [ 4, %147 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  ret i32 %153
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_data(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %6 = load i32, ptr %5, align 8, !tbaa !42
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 36
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  br label %13

13:                                               ; preds = %23, %2
  %14 = load i32, ptr %8, align 4, !tbaa !71
  %15 = load i32, ptr %9, align 4, !tbaa !72
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %14, %15
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = load i32, ptr %10, align 8, !tbaa !39
  %21 = load i32, ptr %11, align 8, !tbaa !53
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %13, %19
  %24 = load ptr, ptr %12, align 8, !tbaa !68
  %25 = load ptr, ptr %24, align 8, !tbaa !73
  %26 = tail call i32 %25(ptr noundef %0) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %116, label %13, !llvm.loop !74

28:                                               ; preds = %17, %19
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !22
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %109

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %34 = load ptr, ptr %33, align 8, !tbaa !23
  %35 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %36 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  %37 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  br label %38

38:                                               ; preds = %32, %103
  %39 = phi i64 [ 0, %32 ], [ %104, %103 ]
  %40 = phi ptr [ %34, %32 ], [ %105, %103 ]
  %41 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 12
  %42 = load i32, ptr %41, align 8, !tbaa !75
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %103, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %35, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %45, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  %48 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 5, i64 %39
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = load i32, ptr %36, align 8, !tbaa !53
  %51 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !24
  %53 = mul i32 %52, %50
  %54 = tail call ptr %47(ptr noundef %0, ptr noundef %49, i32 noundef %53, i32 noundef %52, i32 noundef 0) #6
  %55 = load i32, ptr %36, align 8, !tbaa !53
  %56 = icmp ult i32 %55, %7
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, ptr %51, align 4, !tbaa !24
  br label %66

59:                                               ; preds = %44
  %60 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !30
  %62 = load i32, ptr %51, align 4, !tbaa !24
  %63 = urem i32 %61, %62
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 %62, i32 %63
  br label %66

66:                                               ; preds = %59, %57
  %67 = phi i32 [ %58, %57 ], [ %65, %59 ]
  %68 = load ptr, ptr %37, align 8, !tbaa !76
  %69 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %68, i64 0, i32 1, i64 %39
  %70 = load ptr, ptr %69, align 8, !tbaa !31
  %71 = icmp sgt i32 %67, 0
  br i1 %71, label %72, label %103

72:                                               ; preds = %66
  %73 = getelementptr inbounds ptr, ptr %1, i64 %39
  %74 = load ptr, ptr %73, align 8, !tbaa !31
  %75 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 7
  %76 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 9
  %77 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 0, i32 9
  %78 = zext nneg i32 %67 to i64
  br label %79

79:                                               ; preds = %72, %97
  %80 = phi i64 [ 0, %72 ], [ %101, %97 ]
  %81 = phi ptr [ %74, %72 ], [ %100, %97 ]
  %82 = load i32, ptr %75, align 4, !tbaa !28
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds ptr, ptr %54, i64 %80
  %86 = load ptr, ptr %85, align 8, !tbaa !31
  br label %87

87:                                               ; preds = %84, %87
  %88 = phi i32 [ %93, %87 ], [ 0, %84 ]
  %89 = phi ptr [ %91, %87 ], [ %86, %84 ]
  %90 = phi i32 [ %94, %87 ], [ 0, %84 ]
  tail call void %70(ptr noundef %0, ptr noundef %40, ptr noundef %89, ptr noundef %81, i32 noundef %88) #6
  %91 = getelementptr inbounds [64 x i16], ptr %89, i64 1
  %92 = load i32, ptr %76, align 4, !tbaa !77
  %93 = add i32 %92, %88
  %94 = add nuw i32 %90, 1
  %95 = load i32, ptr %75, align 4, !tbaa !28
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %87, label %97, !llvm.loop !78

97:                                               ; preds = %87, %79
  %98 = load i32, ptr %77, align 4, !tbaa !77
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds ptr, ptr %81, i64 %99
  %101 = add nuw nsw i64 %80, 1
  %102 = icmp eq i64 %101, %78
  br i1 %102, label %103, label %79, !llvm.loop !79

103:                                              ; preds = %97, %66, %38
  %104 = add nuw nsw i64 %39, 1
  %105 = getelementptr inbounds %struct.jpeg_component_info, ptr %40, i64 1
  %106 = load i32, ptr %29, align 8, !tbaa !22
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %104, %107
  br i1 %108, label %38, label %109, !llvm.loop !80

109:                                              ; preds = %103, %28
  %110 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  %111 = load i32, ptr %110, align 8, !tbaa !53
  %112 = add i32 %111, 1
  store i32 %112, ptr %110, align 8, !tbaa !53
  %113 = load i32, ptr %5, align 8, !tbaa !42
  %114 = icmp ult i32 %112, %113
  %115 = select i1 %114, i32 3, i32 4
  br label %116

116:                                              ; preds = %23, %109
  %117 = phi i32 [ %115, %109 ], [ 0, %23 ]
  ret i32 %117
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dummy_consume_data(ptr nocapture readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @decompress_onepass(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 64
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %9 = load i32, ptr %8, align 8, !tbaa !42
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !41
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %132

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 66
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 79
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  %23 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  br label %24

24:                                               ; preds = %16, %128
  %25 = phi i32 [ %12, %16 ], [ %129, %128 ]
  %26 = load i32, ptr %17, align 8, !tbaa !44
  %27 = icmp ugt i32 %26, %7
  br i1 %27, label %128, label %28

28:                                               ; preds = %24, %125
  %29 = phi i32 [ %126, %125 ], [ %26, %24 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !31
  %31 = load i32, ptr %19, align 8, !tbaa !81
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 7
  tail call void @jzero_far(ptr noundef %30, i64 noundef %33) #6
  %34 = load ptr, ptr %20, align 8, !tbaa !63
  %35 = getelementptr inbounds %struct.jpeg_entropy_decoder, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  %37 = tail call i32 %36(ptr noundef %0, ptr noundef nonnull %18) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %28
  %40 = load i32, ptr %21, align 8, !tbaa !40
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %125

42:                                               ; preds = %39
  %43 = icmp ult i32 %29, %7
  br label %45

44:                                               ; preds = %28
  store i32 %25, ptr %11, align 4, !tbaa !45
  store i32 %29, ptr %17, align 8, !tbaa !44
  br label %168

45:                                               ; preds = %42, %119
  %46 = phi i64 [ 0, %42 ], [ %121, %119 ]
  %47 = phi i32 [ 0, %42 ], [ %120, %119 ]
  %48 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !31
  %50 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 12
  %51 = load i32, ptr %50, align 8, !tbaa !75
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 15
  %55 = load i32, ptr %54, align 4, !tbaa !82
  %56 = add nsw i32 %55, %47
  br label %119

57:                                               ; preds = %45
  %58 = load ptr, ptr %22, align 8, !tbaa !76
  %59 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !55
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %58, i64 0, i32 1, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !31
  %64 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 13
  %65 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 9
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 16
  %67 = load i32, ptr %66, align 8, !tbaa !83
  %68 = mul i32 %67, %29
  %69 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 14
  %70 = load i32, ptr %69, align 8, !tbaa !59
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 17
  %74 = select i1 %43, ptr %64, ptr %73
  %75 = load i32, ptr %74, align 4, !tbaa !50
  %76 = getelementptr inbounds ptr, ptr %1, i64 %46
  %77 = load ptr, ptr %76, align 8, !tbaa !31
  %78 = load i32, ptr %65, align 4, !tbaa !77
  %79 = mul nsw i32 %78, %25
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %77, i64 %80
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %49, i64 0, i32 18
  %83 = icmp slt i32 %75, 1
  %84 = tail call i32 @llvm.smax.i32(i32 %75, i32 1)
  %85 = zext nneg i32 %84 to i64
  br label %86

86:                                               ; preds = %72, %110
  %87 = phi i32 [ %47, %72 ], [ %112, %110 ]
  %88 = phi ptr [ %81, %72 ], [ %115, %110 ]
  %89 = phi i32 [ 0, %72 ], [ %116, %110 ]
  %90 = load i32, ptr %23, align 8, !tbaa !39
  %91 = icmp ult i32 %90, %10
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = add nsw i32 %89, %25
  %94 = load i32, ptr %82, align 8, !tbaa !43
  %95 = icmp sge i32 %93, %94
  %96 = select i1 %95, i1 true, i1 %83
  br i1 %96, label %110, label %98

97:                                               ; preds = %86
  br i1 %83, label %110, label %98

98:                                               ; preds = %97, %92
  %99 = sext i32 %87 to i64
  br label %100

100:                                              ; preds = %98, %100
  %101 = phi i64 [ 0, %98 ], [ %108, %100 ]
  %102 = phi i32 [ %68, %98 ], [ %107, %100 ]
  %103 = add nsw i64 %101, %99
  %104 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 4, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !31
  tail call void %63(ptr noundef %0, ptr noundef %49, ptr noundef %105, ptr noundef %88, i32 noundef %102) #6
  %106 = load i32, ptr %65, align 4, !tbaa !77
  %107 = add i32 %106, %102
  %108 = add nuw nsw i64 %101, 1
  %109 = icmp eq i64 %108, %85
  br i1 %109, label %110, label %100, !llvm.loop !84

110:                                              ; preds = %100, %92, %97
  %111 = load i32, ptr %64, align 4, !tbaa !58
  %112 = add nsw i32 %111, %87
  %113 = load i32, ptr %65, align 4, !tbaa !77
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %88, i64 %114
  %116 = add nuw nsw i32 %89, 1
  %117 = load i32, ptr %69, align 8, !tbaa !59
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %86, label %119, !llvm.loop !85

119:                                              ; preds = %110, %57, %53
  %120 = phi i32 [ %56, %53 ], [ %47, %57 ], [ %112, %110 ]
  %121 = add nuw nsw i64 %46, 1
  %122 = load i32, ptr %21, align 8, !tbaa !40
  %123 = sext i32 %122 to i64
  %124 = icmp slt i64 %121, %123
  br i1 %124, label %45, label %125, !llvm.loop !86

125:                                              ; preds = %119, %39
  %126 = add i32 %29, 1
  %127 = icmp ugt i32 %126, %7
  br i1 %127, label %128, label %28, !llvm.loop !87

128:                                              ; preds = %125, %24
  store i32 0, ptr %17, align 8, !tbaa !44
  %129 = add nsw i32 %25, 1
  %130 = load i32, ptr %13, align 8, !tbaa !41
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %24, label %132, !llvm.loop !88

132:                                              ; preds = %128, %2
  %133 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  %134 = load i32, ptr %133, align 8, !tbaa !53
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 8, !tbaa !53
  %136 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  %137 = load i32, ptr %136, align 8, !tbaa !39
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 8, !tbaa !39
  %139 = load i32, ptr %8, align 8, !tbaa !42
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %163

141:                                              ; preds = %132
  %142 = load ptr, ptr %3, align 8, !tbaa !16
  %143 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 62
  %144 = load i32, ptr %143, align 8, !tbaa !40
  %145 = icmp sgt i32 %144, 1
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.my_coef_controller, ptr %142, i64 0, i32 3
  store i32 1, ptr %147, align 8, !tbaa !41
  br label %160

148:                                              ; preds = %141
  %149 = add i32 %139, -1
  %150 = icmp ult i32 %138, %149
  %151 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 63
  %152 = load ptr, ptr %151, align 8, !tbaa !31
  %153 = getelementptr inbounds %struct.my_coef_controller, ptr %142, i64 0, i32 3
  br i1 %150, label %154, label %157

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.jpeg_component_info, ptr %152, i64 0, i32 3
  %156 = load i32, ptr %155, align 4, !tbaa !24
  store i32 %156, ptr %153, align 8, !tbaa !41
  br label %160

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.jpeg_component_info, ptr %152, i64 0, i32 18
  %159 = load i32, ptr %158, align 8, !tbaa !43
  store i32 %159, ptr %153, align 8, !tbaa !41
  br label %160

160:                                              ; preds = %146, %154, %157
  %161 = getelementptr inbounds %struct.my_coef_controller, ptr %142, i64 0, i32 1
  store i32 0, ptr %161, align 8, !tbaa !44
  %162 = getelementptr inbounds %struct.my_coef_controller, ptr %142, i64 0, i32 2
  store i32 0, ptr %162, align 4, !tbaa !45
  br label %168

163:                                              ; preds = %132
  %164 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %165 = load ptr, ptr %164, align 8, !tbaa !68
  %166 = getelementptr inbounds %struct.jpeg_input_controller, ptr %165, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !69
  tail call void %167(ptr noundef %0) #6
  br label %168

168:                                              ; preds = %163, %160, %44
  %169 = phi i32 [ 0, %44 ], [ 3, %160 ], [ 4, %163 ]
  ret i32 %169
}

; Function Attrs: nounwind uwtable
define internal i32 @decompress_smooth_data(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [64 x i16], align 16
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %5 = load ptr, ptr %4, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = add i32 %7, -1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #6
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 34
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 36
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 77
  %12 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 68
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 35
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, ptr %9, align 4, !tbaa !71
  %17 = load i32, ptr %10, align 4, !tbaa !72
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %11, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.jpeg_input_controller, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 4, !tbaa !89
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = icmp eq i32 %16, %17
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = load i32, ptr %12, align 4, !tbaa !90
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, ptr %13, align 8, !tbaa !39
  %31 = load i32, ptr %14, align 8, !tbaa !53
  %32 = add i32 %31, %29
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %26, %24
  %35 = load ptr, ptr %20, align 8, !tbaa !73
  %36 = tail call i32 %35(ptr noundef %0) #6
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %428, label %15, !llvm.loop !91

38:                                               ; preds = %26, %15, %19
  %39 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !22
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %421

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %44 = load ptr, ptr %43, align 8, !tbaa !23
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  %46 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %47 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %48 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 6
  %49 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  %50 = getelementptr inbounds [64 x i16], ptr %3, i64 0, i64 1
  %51 = getelementptr inbounds [64 x i16], ptr %3, i64 0, i64 8
  %52 = getelementptr inbounds [64 x i16], ptr %3, i64 0, i64 16
  %53 = getelementptr inbounds [64 x i16], ptr %3, i64 0, i64 9
  %54 = getelementptr inbounds [64 x i16], ptr %3, i64 0, i64 2
  br label %55

55:                                               ; preds = %42, %415
  %56 = phi i64 [ 0, %42 ], [ %416, %415 ]
  %57 = phi ptr [ %44, %42 ], [ %417, %415 ]
  %58 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 12
  %59 = load i32, ptr %58, align 8, !tbaa !75
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %415, label %61

61:                                               ; preds = %55
  %62 = load i32, ptr %45, align 8, !tbaa !53
  %63 = icmp uge i32 %62, %8
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !24
  %67 = shl nsw i32 %66, 1
  br label %76

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 8
  %70 = load i32, ptr %69, align 8, !tbaa !30
  %71 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !24
  %73 = urem i32 %70, %72
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 %72, i32 %73
  br label %76

76:                                               ; preds = %68, %64
  %77 = phi i32 [ %67, %64 ], [ %75, %68 ]
  %78 = phi i32 [ %66, %64 ], [ %75, %68 ]
  %79 = icmp eq i32 %62, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 3
  %82 = load i32, ptr %81, align 4, !tbaa !24
  %83 = add nsw i32 %82, %77
  %84 = load ptr, ptr %46, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %84, i64 0, i32 8
  %86 = load ptr, ptr %85, align 8, !tbaa !54
  %87 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 5, i64 %56
  %88 = load ptr, ptr %87, align 8, !tbaa !31
  %89 = add i32 %62, -1
  %90 = mul i32 %82, %89
  %91 = call ptr %86(ptr noundef %0, ptr noundef %88, i32 noundef %90, i32 noundef %83, i32 noundef 0) #6
  %92 = load i32, ptr %81, align 4, !tbaa !24
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds ptr, ptr %91, i64 %93
  br label %102

95:                                               ; preds = %76
  %96 = load ptr, ptr %47, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %96, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !54
  %99 = getelementptr inbounds %struct.my_coef_controller, ptr %5, i64 0, i32 5, i64 %56
  %100 = load ptr, ptr %99, align 8, !tbaa !31
  %101 = call ptr %98(ptr noundef %0, ptr noundef %100, i32 noundef 0, i32 noundef %77, i32 noundef 0) #6
  br label %102

102:                                              ; preds = %95, %80
  %103 = phi ptr [ %94, %80 ], [ %101, %95 ]
  %104 = load ptr, ptr %49, align 8, !tbaa !76
  %105 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %104, i64 0, i32 1, i64 %56
  %106 = load ptr, ptr %105, align 8, !tbaa !31
  %107 = icmp sgt i32 %78, 0
  br i1 %107, label %108, label %415

108:                                              ; preds = %102
  %109 = getelementptr inbounds ptr, ptr %1, i64 %56
  %110 = load ptr, ptr %109, align 8, !tbaa !31
  %111 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 19
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  %113 = getelementptr inbounds [64 x i16], ptr %112, i64 0, i64 2
  %114 = load i16, ptr %113, align 4, !tbaa !49
  %115 = zext i16 %114 to i64
  %116 = getelementptr inbounds [64 x i16], ptr %112, i64 0, i64 9
  %117 = load i16, ptr %116, align 2, !tbaa !49
  %118 = zext i16 %117 to i64
  %119 = getelementptr inbounds [64 x i16], ptr %112, i64 0, i64 16
  %120 = load i16, ptr %119, align 4, !tbaa !49
  %121 = zext i16 %120 to i64
  %122 = getelementptr inbounds [64 x i16], ptr %112, i64 0, i64 8
  %123 = load i16, ptr %122, align 4, !tbaa !49
  %124 = zext i16 %123 to i64
  %125 = getelementptr inbounds [64 x i16], ptr %112, i64 0, i64 1
  %126 = load i16, ptr %125, align 2, !tbaa !49
  %127 = zext i16 %126 to i64
  %128 = load i16, ptr %112, align 4, !tbaa !49
  %129 = zext i16 %128 to i64
  %130 = load ptr, ptr %48, align 8, !tbaa !21
  %131 = mul nuw nsw i64 %56, 6
  %132 = getelementptr inbounds i32, ptr %130, i64 %131
  %133 = add nsw i32 %78, -1
  %134 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 7
  %135 = getelementptr inbounds i32, ptr %132, i64 1
  %136 = mul nuw nsw i64 %129, 36
  %137 = shl nuw nsw i64 %127, 7
  %138 = shl nuw nsw i64 %127, 8
  %139 = shl nuw nsw i64 %127, 7
  %140 = shl nuw nsw i64 %127, 8
  %141 = getelementptr inbounds i32, ptr %132, i64 2
  %142 = mul nuw nsw i64 %129, 36
  %143 = shl nuw nsw i64 %124, 7
  %144 = shl nuw nsw i64 %124, 8
  %145 = shl nuw nsw i64 %124, 7
  %146 = shl nuw nsw i64 %124, 8
  %147 = getelementptr inbounds i32, ptr %132, i64 3
  %148 = mul nuw nsw i64 %129, 9
  %149 = shl nuw nsw i64 %121, 7
  %150 = shl nuw nsw i64 %121, 8
  %151 = shl nuw nsw i64 %121, 7
  %152 = shl nuw nsw i64 %121, 8
  %153 = getelementptr inbounds i32, ptr %132, i64 4
  %154 = mul nuw nsw i64 %129, 5
  %155 = shl nuw nsw i64 %118, 7
  %156 = shl nuw nsw i64 %118, 8
  %157 = shl nuw nsw i64 %118, 7
  %158 = shl nuw nsw i64 %118, 8
  %159 = getelementptr inbounds i32, ptr %132, i64 5
  %160 = mul nuw nsw i64 %129, 9
  %161 = shl nuw nsw i64 %115, 7
  %162 = shl nuw nsw i64 %115, 8
  %163 = shl nuw nsw i64 %115, 7
  %164 = shl nuw nsw i64 %115, 8
  %165 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 9
  %166 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 0, i32 9
  %167 = zext i32 %133 to i64
  %168 = zext nneg i32 %78 to i64
  br label %169

169:                                              ; preds = %108, %409
  %170 = phi i64 [ 0, %108 ], [ %413, %409 ]
  %171 = phi ptr [ %110, %108 ], [ %412, %409 ]
  %172 = getelementptr inbounds ptr, ptr %103, i64 %170
  %173 = load ptr, ptr %172, align 8, !tbaa !31
  %174 = trunc i64 %170 to i32
  %175 = or i32 %62, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %169
  %178 = add nsw i64 %170, -1
  %179 = getelementptr inbounds ptr, ptr %103, i64 %178
  %180 = load ptr, ptr %179, align 8, !tbaa !31
  br label %181

181:                                              ; preds = %169, %177
  %182 = phi ptr [ %180, %177 ], [ %173, %169 ]
  %183 = icmp eq i64 %170, %167
  %184 = select i1 %63, i1 %183, i1 false
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = add nuw nsw i64 %170, 1
  %187 = getelementptr inbounds ptr, ptr %103, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !31
  br label %189

189:                                              ; preds = %181, %185
  %190 = phi ptr [ %188, %185 ], [ %173, %181 ]
  %191 = load i16, ptr %182, align 2, !tbaa !49
  %192 = sext i16 %191 to i32
  %193 = load i16, ptr %173, align 2, !tbaa !49
  %194 = sext i16 %193 to i32
  %195 = load i16, ptr %190, align 2, !tbaa !49
  %196 = sext i16 %195 to i32
  %197 = load i32, ptr %134, align 4, !tbaa !28
  %198 = add i32 %197, -1
  br label %199

199:                                              ; preds = %189, %401
  %200 = phi i32 [ %196, %189 ], [ %225, %401 ]
  %201 = phi i32 [ %196, %189 ], [ %200, %401 ]
  %202 = phi i32 [ %194, %189 ], [ %224, %401 ]
  %203 = phi i32 [ %194, %189 ], [ %202, %401 ]
  %204 = phi i32 [ %192, %189 ], [ %223, %401 ]
  %205 = phi i32 [ %192, %189 ], [ %204, %401 ]
  %206 = phi i32 [ 0, %189 ], [ %407, %401 ]
  %207 = phi ptr [ %173, %189 ], [ %402, %401 ]
  %208 = phi ptr [ %182, %189 ], [ %403, %401 ]
  %209 = phi ptr [ %190, %189 ], [ %404, %401 ]
  %210 = phi i32 [ 0, %189 ], [ %406, %401 ]
  call void @jcopy_block_row(ptr noundef nonnull %207, ptr noundef nonnull %3, i32 noundef 1) #6
  %211 = icmp ult i32 %206, %198
  br i1 %211, label %212, label %222

212:                                              ; preds = %199
  %213 = getelementptr inbounds [64 x i16], ptr %208, i64 1
  %214 = load i16, ptr %213, align 2, !tbaa !49
  %215 = sext i16 %214 to i32
  %216 = getelementptr inbounds [64 x i16], ptr %207, i64 1
  %217 = load i16, ptr %216, align 2, !tbaa !49
  %218 = sext i16 %217 to i32
  %219 = getelementptr inbounds [64 x i16], ptr %209, i64 1
  %220 = load i16, ptr %219, align 2, !tbaa !49
  %221 = sext i16 %220 to i32
  br label %222

222:                                              ; preds = %212, %199
  %223 = phi i32 [ %215, %212 ], [ %204, %199 ]
  %224 = phi i32 [ %218, %212 ], [ %202, %199 ]
  %225 = phi i32 [ %221, %212 ], [ %200, %199 ]
  %226 = load i32, ptr %135, align 4, !tbaa !50
  %227 = icmp ne i32 %226, 0
  %228 = load i16, ptr %50, align 2
  %229 = icmp eq i16 %228, 0
  %230 = select i1 %227, i1 %229, i1 false
  br i1 %230, label %231, label %259

231:                                              ; preds = %222
  %232 = sub nsw i32 %203, %224
  %233 = sext i32 %232 to i64
  %234 = mul nsw i64 %136, %233
  %235 = icmp sgt i64 %234, -1
  %236 = icmp sgt i32 %226, 0
  br i1 %235, label %237, label %246

237:                                              ; preds = %231
  %238 = add nuw nsw i64 %234, %139
  %239 = udiv i64 %238, %140
  %240 = trunc i64 %239 to i32
  br i1 %236, label %241, label %256

241:                                              ; preds = %237
  %242 = shl nuw i32 1, %226
  %243 = icmp sgt i32 %242, %240
  %244 = add nsw i32 %242, -1
  %245 = select i1 %243, i32 %240, i32 %244
  br label %256

246:                                              ; preds = %231
  %247 = sub nsw i64 %137, %234
  %248 = udiv i64 %247, %138
  %249 = trunc i64 %248 to i32
  %250 = shl nuw i32 1, %226
  %251 = icmp sgt i32 %250, %249
  %252 = add nsw i32 %250, -1
  %253 = select i1 %251, i32 %249, i32 %252
  %254 = select i1 %236, i32 %253, i32 %249
  %255 = sub nsw i32 0, %254
  br label %256

256:                                              ; preds = %241, %237, %246
  %257 = phi i32 [ %240, %237 ], [ %255, %246 ], [ %245, %241 ]
  %258 = trunc i32 %257 to i16
  store i16 %258, ptr %50, align 2, !tbaa !49
  br label %259

259:                                              ; preds = %256, %222
  %260 = load i32, ptr %141, align 4, !tbaa !50
  %261 = icmp ne i32 %260, 0
  %262 = load i16, ptr %51, align 16
  %263 = icmp eq i16 %262, 0
  %264 = select i1 %261, i1 %263, i1 false
  br i1 %264, label %265, label %293

265:                                              ; preds = %259
  %266 = sub nsw i32 %204, %200
  %267 = sext i32 %266 to i64
  %268 = mul nsw i64 %142, %267
  %269 = icmp sgt i64 %268, -1
  %270 = icmp sgt i32 %260, 0
  br i1 %269, label %271, label %280

271:                                              ; preds = %265
  %272 = add nuw nsw i64 %268, %145
  %273 = udiv i64 %272, %146
  %274 = trunc i64 %273 to i32
  br i1 %270, label %275, label %290

275:                                              ; preds = %271
  %276 = shl nuw i32 1, %260
  %277 = icmp sgt i32 %276, %274
  %278 = add nsw i32 %276, -1
  %279 = select i1 %277, i32 %274, i32 %278
  br label %290

280:                                              ; preds = %265
  %281 = sub nsw i64 %143, %268
  %282 = udiv i64 %281, %144
  %283 = trunc i64 %282 to i32
  %284 = shl nuw i32 1, %260
  %285 = icmp sgt i32 %284, %283
  %286 = add nsw i32 %284, -1
  %287 = select i1 %285, i32 %283, i32 %286
  %288 = select i1 %270, i32 %287, i32 %283
  %289 = sub nsw i32 0, %288
  br label %290

290:                                              ; preds = %275, %271, %280
  %291 = phi i32 [ %274, %271 ], [ %289, %280 ], [ %279, %275 ]
  %292 = trunc i32 %291 to i16
  store i16 %292, ptr %51, align 16, !tbaa !49
  br label %293

293:                                              ; preds = %290, %259
  %294 = load i32, ptr %147, align 4, !tbaa !50
  %295 = icmp ne i32 %294, 0
  %296 = load i16, ptr %52, align 16
  %297 = icmp eq i16 %296, 0
  %298 = select i1 %295, i1 %297, i1 false
  br i1 %298, label %299, label %329

299:                                              ; preds = %293
  %300 = shl nsw i32 %202, 1
  %301 = sub i32 %204, %300
  %302 = add i32 %301, %200
  %303 = sext i32 %302 to i64
  %304 = mul nsw i64 %148, %303
  %305 = icmp sgt i64 %304, -1
  %306 = icmp sgt i32 %294, 0
  br i1 %305, label %307, label %316

307:                                              ; preds = %299
  %308 = add nuw nsw i64 %304, %151
  %309 = udiv i64 %308, %152
  %310 = trunc i64 %309 to i32
  br i1 %306, label %311, label %326

311:                                              ; preds = %307
  %312 = shl nuw i32 1, %294
  %313 = icmp sgt i32 %312, %310
  %314 = add nsw i32 %312, -1
  %315 = select i1 %313, i32 %310, i32 %314
  br label %326

316:                                              ; preds = %299
  %317 = sub nsw i64 %149, %304
  %318 = udiv i64 %317, %150
  %319 = trunc i64 %318 to i32
  %320 = shl nuw i32 1, %294
  %321 = icmp sgt i32 %320, %319
  %322 = add nsw i32 %320, -1
  %323 = select i1 %321, i32 %319, i32 %322
  %324 = select i1 %306, i32 %323, i32 %319
  %325 = sub nsw i32 0, %324
  br label %326

326:                                              ; preds = %311, %307, %316
  %327 = phi i32 [ %310, %307 ], [ %325, %316 ], [ %315, %311 ]
  %328 = trunc i32 %327 to i16
  store i16 %328, ptr %52, align 16, !tbaa !49
  br label %329

329:                                              ; preds = %326, %293
  %330 = load i32, ptr %153, align 4, !tbaa !50
  %331 = icmp ne i32 %330, 0
  %332 = load i16, ptr %53, align 2
  %333 = icmp eq i16 %332, 0
  %334 = select i1 %331, i1 %333, i1 false
  br i1 %334, label %335, label %365

335:                                              ; preds = %329
  %336 = add nsw i32 %201, %223
  %337 = sub nsw i32 %205, %336
  %338 = add nsw i32 %337, %225
  %339 = sext i32 %338 to i64
  %340 = mul nsw i64 %154, %339
  %341 = icmp sgt i64 %340, -1
  %342 = icmp sgt i32 %330, 0
  br i1 %341, label %343, label %352

343:                                              ; preds = %335
  %344 = add nuw nsw i64 %340, %157
  %345 = udiv i64 %344, %158
  %346 = trunc i64 %345 to i32
  br i1 %342, label %347, label %362

347:                                              ; preds = %343
  %348 = shl nuw i32 1, %330
  %349 = icmp sgt i32 %348, %346
  %350 = add nsw i32 %348, -1
  %351 = select i1 %349, i32 %346, i32 %350
  br label %362

352:                                              ; preds = %335
  %353 = sub nsw i64 %155, %340
  %354 = udiv i64 %353, %156
  %355 = trunc i64 %354 to i32
  %356 = shl nuw i32 1, %330
  %357 = icmp sgt i32 %356, %355
  %358 = add nsw i32 %356, -1
  %359 = select i1 %357, i32 %355, i32 %358
  %360 = select i1 %342, i32 %359, i32 %355
  %361 = sub nsw i32 0, %360
  br label %362

362:                                              ; preds = %347, %343, %352
  %363 = phi i32 [ %346, %343 ], [ %361, %352 ], [ %351, %347 ]
  %364 = trunc i32 %363 to i16
  store i16 %364, ptr %53, align 2, !tbaa !49
  br label %365

365:                                              ; preds = %362, %329
  %366 = load i32, ptr %159, align 4, !tbaa !50
  %367 = icmp ne i32 %366, 0
  %368 = load i16, ptr %54, align 4
  %369 = icmp eq i16 %368, 0
  %370 = select i1 %367, i1 %369, i1 false
  br i1 %370, label %371, label %401

371:                                              ; preds = %365
  %372 = shl nsw i32 %202, 1
  %373 = sub i32 %203, %372
  %374 = add i32 %373, %224
  %375 = sext i32 %374 to i64
  %376 = mul nsw i64 %160, %375
  %377 = icmp sgt i64 %376, -1
  %378 = icmp sgt i32 %366, 0
  br i1 %377, label %379, label %388

379:                                              ; preds = %371
  %380 = add nuw nsw i64 %376, %163
  %381 = udiv i64 %380, %164
  %382 = trunc i64 %381 to i32
  br i1 %378, label %383, label %398

383:                                              ; preds = %379
  %384 = shl nuw i32 1, %366
  %385 = icmp sgt i32 %384, %382
  %386 = add nsw i32 %384, -1
  %387 = select i1 %385, i32 %382, i32 %386
  br label %398

388:                                              ; preds = %371
  %389 = sub nsw i64 %161, %376
  %390 = udiv i64 %389, %162
  %391 = trunc i64 %390 to i32
  %392 = shl nuw i32 1, %366
  %393 = icmp sgt i32 %392, %391
  %394 = add nsw i32 %392, -1
  %395 = select i1 %393, i32 %391, i32 %394
  %396 = select i1 %378, i32 %395, i32 %391
  %397 = sub nsw i32 0, %396
  br label %398

398:                                              ; preds = %383, %379, %388
  %399 = phi i32 [ %382, %379 ], [ %397, %388 ], [ %387, %383 ]
  %400 = trunc i32 %399 to i16
  store i16 %400, ptr %54, align 4, !tbaa !49
  br label %401

401:                                              ; preds = %398, %365
  call void %106(ptr noundef %0, ptr noundef %57, ptr noundef nonnull %3, ptr noundef %171, i32 noundef %210) #6
  %402 = getelementptr inbounds [64 x i16], ptr %207, i64 1
  %403 = getelementptr inbounds [64 x i16], ptr %208, i64 1
  %404 = getelementptr inbounds [64 x i16], ptr %209, i64 1
  %405 = load i32, ptr %165, align 4, !tbaa !77
  %406 = add i32 %405, %210
  %407 = add i32 %206, 1
  %408 = icmp ugt i32 %407, %198
  br i1 %408, label %409, label %199, !llvm.loop !92

409:                                              ; preds = %401
  %410 = load i32, ptr %166, align 4, !tbaa !77
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds ptr, ptr %171, i64 %411
  %413 = add nuw nsw i64 %170, 1
  %414 = icmp eq i64 %413, %168
  br i1 %414, label %415, label %169, !llvm.loop !93

415:                                              ; preds = %409, %102, %55
  %416 = add nuw nsw i64 %56, 1
  %417 = getelementptr inbounds %struct.jpeg_component_info, ptr %57, i64 1
  %418 = load i32, ptr %39, align 8, !tbaa !22
  %419 = sext i32 %418 to i64
  %420 = icmp slt i64 %416, %419
  br i1 %420, label %55, label %421, !llvm.loop !94

421:                                              ; preds = %415, %38
  %422 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 37
  %423 = load i32, ptr %422, align 8, !tbaa !53
  %424 = add i32 %423, 1
  store i32 %424, ptr %422, align 8, !tbaa !53
  %425 = load i32, ptr %6, align 8, !tbaa !42
  %426 = icmp ult i32 %424, %425
  %427 = select i1 %426, i32 3, i32 4
  br label %428

428:                                              ; preds = %34, %421
  %429 = phi i32 [ %427, %421 ], [ 0, %34 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #6
  ret i32 %429
}

declare void @jcopy_block_row(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 544}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 56, !8, i64 136, !7, i64 216}
!19 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!20 = !{!18, !7, i64 16}
!21 = !{!18, !7, i64 216}
!22 = !{!6, !10, i64 48}
!23 = !{!6, !7, i64 296}
!24 = !{!25, !10, i64 12}
!25 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!26 = !{!6, !10, i64 304}
!27 = !{!14, !7, i64 40}
!28 = !{!25, !10, i64 28}
!29 = !{!25, !10, i64 8}
!30 = !{!25, !10, i64 32}
!31 = !{!7, !7, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!18, !7, i64 8}
!35 = !{!18, !7, i64 24}
!36 = !{!14, !7, i64 8}
!37 = distinct !{!37, !33}
!38 = !{!18, !7, i64 32}
!39 = !{!6, !10, i64 168}
!40 = !{!6, !10, i64 416}
!41 = !{!18, !10, i64 48}
!42 = !{!6, !10, i64 400}
!43 = !{!25, !10, i64 72}
!44 = !{!18, !10, i64 40}
!45 = !{!18, !10, i64 44}
!46 = !{!6, !10, i64 96}
!47 = !{!6, !7, i64 184}
!48 = !{!25, !7, i64 80}
!49 = !{!12, !12, i64 0}
!50 = !{!10, !10, i64 0}
!51 = distinct !{!51, !33}
!52 = distinct !{!52, !33}
!53 = !{!6, !10, i64 176}
!54 = !{!14, !7, i64 64}
!55 = !{!25, !10, i64 4}
!56 = distinct !{!56, !33}
!57 = !{!6, !10, i64 456}
!58 = !{!25, !10, i64 52}
!59 = !{!25, !10, i64 56}
!60 = distinct !{!60, !33}
!61 = distinct !{!61, !33}
!62 = distinct !{!62, !33}
!63 = !{!6, !7, i64 576}
!64 = !{!65, !7, i64 8}
!65 = !{!"jpeg_entropy_decoder", !7, i64 0, !7, i64 8}
!66 = distinct !{!66, !33}
!67 = distinct !{!67, !33}
!68 = !{!6, !7, i64 560}
!69 = !{!70, !7, i64 24}
!70 = !{!"jpeg_input_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36}
!71 = !{!6, !10, i64 164}
!72 = !{!6, !10, i64 172}
!73 = !{!70, !7, i64 0}
!74 = distinct !{!74, !33}
!75 = !{!25, !10, i64 48}
!76 = !{!6, !7, i64 584}
!77 = !{!25, !10, i64 36}
!78 = distinct !{!78, !33}
!79 = distinct !{!79, !33}
!80 = distinct !{!80, !33}
!81 = !{!6, !10, i64 464}
!82 = !{!25, !10, i64 60}
!83 = !{!25, !10, i64 64}
!84 = distinct !{!84, !33}
!85 = distinct !{!85, !33}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = !{!70, !10, i64 36}
!90 = !{!6, !10, i64 508}
!91 = distinct !{!91, !33}
!92 = distinct !{!92, !33}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
