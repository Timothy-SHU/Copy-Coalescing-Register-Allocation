; ModuleID = 'src/jdmainct.c'
source_filename = "src/jdmainct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.my_main_controller = type { %struct.jpeg_d_main_controller, [10 x ptr], i32, i32, [2 x ptr], i32, i32, i32, i32 }
%struct.jpeg_d_main_controller = type { ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_d_coef_controller = type { ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_d_post_controller = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_d_main_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 136) #2
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  store ptr %6, ptr %7, align 8, !tbaa !16
  store ptr @start_pass_main, ptr %6, align 8, !tbaa !17
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 4, ptr %11, align 8, !tbaa !21
  %12 = load ptr, ptr %10, align 8, !tbaa !23
  tail call void %12(ptr noundef nonnull %0) #2
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.jpeg_upsampler, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !25
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %20 = load i32, ptr %19, align 4, !tbaa !27
  br i1 %18, label %81, label %21

21:                                               ; preds = %13
  %22 = icmp slt i32 %20, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  %24 = load ptr, ptr %0, align 8, !tbaa !20
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 46, ptr %25, align 8, !tbaa !21
  %26 = load ptr, ptr %24, align 8, !tbaa !23
  tail call void %26(ptr noundef nonnull %0) #2
  br label %27

27:                                               ; preds = %23, %21
  %28 = load ptr, ptr %7, align 8, !tbaa !16
  %29 = load i32, ptr %19, align 4, !tbaa !27
  %30 = load ptr, ptr %3, align 8, !tbaa !5
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !28
  %34 = shl nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = shl nsw i64 %35, 3
  %37 = tail call ptr %31(ptr noundef %0, i32 noundef 1, i64 noundef %36) #2
  %38 = getelementptr inbounds %struct.my_main_controller, ptr %28, i64 0, i32 4
  store ptr %37, ptr %38, align 8, !tbaa !29
  %39 = load i32, ptr %32, align 8, !tbaa !28
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %37, i64 %40
  %42 = getelementptr inbounds %struct.my_main_controller, ptr %28, i64 0, i32 4, i64 1
  store ptr %41, ptr %42, align 8, !tbaa !29
  %43 = icmp sgt i32 %39, 0
  br i1 %43, label %44, label %78

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %46 = load ptr, ptr %45, align 8, !tbaa !30
  %47 = add nsw i32 %29, 4
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi i64 [ 0, %44 ], [ %73, %48 ]
  %50 = phi ptr [ %46, %44 ], [ %74, %48 ]
  %51 = getelementptr inbounds %struct.jpeg_component_info, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !31
  %53 = getelementptr inbounds %struct.jpeg_component_info, ptr %50, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !33
  %55 = mul nsw i32 %54, %52
  %56 = load i32, ptr %19, align 4, !tbaa !27
  %57 = sdiv i32 %55, %56
  %58 = load ptr, ptr %3, align 8, !tbaa !5
  %59 = load ptr, ptr %58, align 8, !tbaa !13
  %60 = mul nsw i32 %57, %47
  %61 = shl nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  %64 = tail call ptr %59(ptr noundef %0, i32 noundef 1, i64 noundef %63) #2
  %65 = sext i32 %57 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %38, align 8, !tbaa !29
  %68 = getelementptr inbounds ptr, ptr %67, i64 %49
  store ptr %66, ptr %68, align 8, !tbaa !29
  %69 = sext i32 %60 to i64
  %70 = getelementptr inbounds ptr, ptr %66, i64 %69
  %71 = load ptr, ptr %42, align 8, !tbaa !29
  %72 = getelementptr inbounds ptr, ptr %71, i64 %49
  store ptr %70, ptr %72, align 8, !tbaa !29
  %73 = add nuw nsw i64 %49, 1
  %74 = getelementptr inbounds %struct.jpeg_component_info, ptr %50, i64 1
  %75 = load i32, ptr %32, align 8, !tbaa !28
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %48, label %78, !llvm.loop !34

78:                                               ; preds = %48, %27
  %79 = load i32, ptr %19, align 4, !tbaa !27
  %80 = add nsw i32 %79, 2
  br label %81

81:                                               ; preds = %13, %78
  %82 = phi i32 [ %80, %78 ], [ %20, %13 ]
  %83 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %84 = load i32, ptr %83, align 8, !tbaa !28
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %88 = load ptr, ptr %87, align 8, !tbaa !30
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  br label %90

90:                                               ; preds = %86, %90
  %91 = phi i64 [ 0, %86 ], [ %109, %90 ]
  %92 = phi ptr [ %88, %86 ], [ %110, %90 ]
  %93 = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 4, !tbaa !31
  %95 = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i64 0, i32 9
  %96 = load i32, ptr %95, align 4, !tbaa !33
  %97 = mul nsw i32 %96, %94
  %98 = load i32, ptr %89, align 4, !tbaa !27
  %99 = sdiv i32 %97, %98
  %100 = load ptr, ptr %3, align 8, !tbaa !5
  %101 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !36
  %103 = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i64 0, i32 7
  %104 = load i32, ptr %103, align 4, !tbaa !37
  %105 = mul i32 %104, %96
  %106 = mul nsw i32 %99, %82
  %107 = tail call ptr %102(ptr noundef %0, i32 noundef 1, i32 noundef %105, i32 noundef %106) #2
  %108 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 1, i64 %91
  store ptr %107, ptr %108, align 8, !tbaa !29
  %109 = add nuw nsw i64 %91, 1
  %110 = getelementptr inbounds %struct.jpeg_component_info, ptr %92, i64 1
  %111 = load i32, ptr %83, align 8, !tbaa !28
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %109, %112
  br i1 %113, label %90, label %114, !llvm.loop !38

114:                                              ; preds = %90, %81
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_main(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  switch i32 %1, label %101 [
    i32 0, label %5
    i32 2, label %99
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.jpeg_upsampler, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !25
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %4, i64 0, i32 1
  br i1 %10, label %95, label %12

12:                                               ; preds = %5
  store ptr @process_data_context_main, ptr %11, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %14 = load i32, ptr %13, align 4, !tbaa !27
  %15 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !28
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %91

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %20 = load ptr, ptr %19, align 8, !tbaa !30
  %21 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 4
  %22 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 4, i64 1
  %23 = add nsw i32 %14, 2
  %24 = add nsw i32 %14, -2
  %25 = zext nneg i32 %16 to i64
  br label %26

26:                                               ; preds = %87, %18
  %27 = phi i64 [ 0, %18 ], [ %88, %87 ]
  %28 = phi ptr [ %20, %18 ], [ %89, %87 ]
  %29 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !31
  %31 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !33
  %33 = mul nsw i32 %32, %30
  %34 = sdiv i32 %33, %14
  %35 = load ptr, ptr %21, align 8, !tbaa !29
  %36 = getelementptr inbounds ptr, ptr %35, i64 %27
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = load ptr, ptr %22, align 8, !tbaa !29
  %39 = getelementptr inbounds ptr, ptr %38, i64 %27
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %41 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 1, i64 %27
  %42 = load ptr, ptr %41, align 8, !tbaa !29
  %43 = mul nsw i32 %34, %23
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %26
  %46 = zext nneg i32 %43 to i64
  br label %57

47:                                               ; preds = %57, %26
  %48 = icmp sgt i32 %34, 0
  br i1 %48, label %49, label %87

49:                                               ; preds = %47
  %50 = shl nuw i32 %34, 1
  %51 = mul nsw i32 %34, %14
  %52 = mul nsw i32 %34, %24
  %53 = sext i32 %51 to i64
  %54 = sext i32 %52 to i64
  %55 = tail call i32 @llvm.smax.i32(i32 %50, i32 1)
  %56 = zext nneg i32 %55 to i64
  br label %68

57:                                               ; preds = %57, %45
  %58 = phi i64 [ 0, %45 ], [ %63, %57 ]
  %59 = getelementptr inbounds ptr, ptr %42, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !29
  %61 = getelementptr inbounds ptr, ptr %40, i64 %58
  store ptr %60, ptr %61, align 8, !tbaa !29
  %62 = getelementptr inbounds ptr, ptr %37, i64 %58
  store ptr %60, ptr %62, align 8, !tbaa !29
  %63 = add nuw nsw i64 %58, 1
  %64 = icmp eq i64 %63, %46
  br i1 %64, label %47, label %57, !llvm.loop !40

65:                                               ; preds = %68
  br i1 %48, label %66, label %87

66:                                               ; preds = %65
  %67 = zext nneg i32 %34 to i64
  br label %80

68:                                               ; preds = %68, %49
  %69 = phi i64 [ 0, %49 ], [ %78, %68 ]
  %70 = add nsw i64 %69, %53
  %71 = getelementptr inbounds ptr, ptr %42, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !29
  %73 = add nsw i64 %69, %54
  %74 = getelementptr inbounds ptr, ptr %40, i64 %73
  store ptr %72, ptr %74, align 8, !tbaa !29
  %75 = getelementptr inbounds ptr, ptr %42, i64 %73
  %76 = load ptr, ptr %75, align 8, !tbaa !29
  %77 = getelementptr inbounds ptr, ptr %40, i64 %70
  store ptr %76, ptr %77, align 8, !tbaa !29
  %78 = add nuw nsw i64 %69, 1
  %79 = icmp eq i64 %78, %56
  br i1 %79, label %65, label %68, !llvm.loop !41

80:                                               ; preds = %80, %66
  %81 = phi i64 [ 0, %66 ], [ %85, %80 ]
  %82 = load ptr, ptr %37, align 8, !tbaa !29
  %83 = sub nsw i64 %81, %67
  %84 = getelementptr inbounds ptr, ptr %37, i64 %83
  store ptr %82, ptr %84, align 8, !tbaa !29
  %85 = add nuw nsw i64 %81, 1
  %86 = icmp eq i64 %85, %67
  br i1 %86, label %87, label %80, !llvm.loop !42

87:                                               ; preds = %80, %47, %65
  %88 = add nuw nsw i64 %27, 1
  %89 = getelementptr inbounds %struct.jpeg_component_info, ptr %28, i64 1
  %90 = icmp eq i64 %88, %25
  br i1 %90, label %91, label %26, !llvm.loop !43

91:                                               ; preds = %87, %12
  %92 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 5
  store i32 0, ptr %92, align 8, !tbaa !44
  %93 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 6
  store i32 0, ptr %93, align 4, !tbaa !45
  %94 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 8
  store i32 0, ptr %94, align 4, !tbaa !46
  br label %96

95:                                               ; preds = %5
  store ptr @process_data_simple_main, ptr %11, align 8, !tbaa !39
  br label %96

96:                                               ; preds = %95, %91
  %97 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 2
  store i32 0, ptr %97, align 8, !tbaa !47
  %98 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %98, align 4, !tbaa !48
  br label %105

99:                                               ; preds = %2
  %100 = getelementptr inbounds %struct.jpeg_d_main_controller, ptr %4, i64 0, i32 1
  store ptr @process_data_crank_post, ptr %100, align 8, !tbaa !39
  br label %105

101:                                              ; preds = %2
  %102 = load ptr, ptr %0, align 8, !tbaa !20
  %103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %102, i64 0, i32 5
  store i32 4, ptr %103, align 8, !tbaa !21
  %104 = load ptr, ptr %102, align 8, !tbaa !23
  tail call void %104(ptr noundef nonnull %0) #2
  br label %105

105:                                              ; preds = %101, %99, %96
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_context_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 4, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !29
  %20 = tail call i32 %14(ptr noundef %0, ptr noundef %19) #2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %203, label %22

22:                                               ; preds = %10
  store i32 1, ptr %7, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = add i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !46
  br label %26

26:                                               ; preds = %22, %4
  %27 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !45
  switch i32 %28, label %203 [
    i32 2, label %29
    i32 0, label %48
    i32 1, label %116
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %31 = load ptr, ptr %30, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !53
  %34 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !44
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 4, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !29
  %39 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 3
  %40 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !55
  tail call void %33(ptr noundef %0, ptr noundef %38, ptr noundef nonnull %39, i32 noundef %41, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  %42 = load i32, ptr %39, align 4, !tbaa !48
  %43 = load i32, ptr %40, align 8, !tbaa !55
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %203, label %45

45:                                               ; preds = %29
  store i32 0, ptr %27, align 4, !tbaa !45
  %46 = load i32, ptr %2, align 4, !tbaa !56
  %47 = icmp ult i32 %46, %3
  br i1 %47, label %48, label %203

48:                                               ; preds = %45, %26
  %49 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 3
  store i32 0, ptr %49, align 4, !tbaa !48
  %50 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %51 = load i32, ptr %50, align 4, !tbaa !27
  %52 = add nsw i32 %51, -1
  %53 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 7
  store i32 %52, ptr %53, align 8, !tbaa !55
  %54 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 8
  %55 = load i32, ptr %54, align 4, !tbaa !46
  %56 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 60
  %57 = load i32, ptr %56, align 8, !tbaa !57
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %115

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %61 = load i32, ptr %60, align 8, !tbaa !28
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %115

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %65 = load ptr, ptr %64, align 8, !tbaa !30
  %66 = load ptr, ptr %5, align 8, !tbaa !16
  %67 = getelementptr inbounds %struct.my_main_controller, ptr %66, i64 0, i32 7
  %68 = getelementptr inbounds %struct.my_main_controller, ptr %66, i64 0, i32 5
  %69 = load i32, ptr %68, align 8, !tbaa !44
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.my_main_controller, ptr %66, i64 0, i32 4, i64 %70
  %72 = zext nneg i32 %61 to i64
  br label %73

73:                                               ; preds = %111, %63
  %74 = phi i64 [ 0, %63 ], [ %112, %111 ]
  %75 = phi ptr [ %65, %63 ], [ %113, %111 ]
  %76 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !31
  %78 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 9
  %79 = load i32, ptr %78, align 4, !tbaa !33
  %80 = mul nsw i32 %79, %77
  %81 = sdiv i32 %80, %51
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 11
  %83 = load i32, ptr %82, align 4, !tbaa !58
  %84 = urem i32 %83, %80
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 %80, i32 %84
  %87 = icmp eq i64 %74, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %73
  %89 = add nsw i32 %86, -1
  %90 = sdiv i32 %89, %81
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr %67, align 8, !tbaa !55
  br label %92

92:                                               ; preds = %88, %73
  %93 = icmp sgt i32 %81, 0
  br i1 %93, label %94, label %111

94:                                               ; preds = %92
  %95 = load ptr, ptr %71, align 8, !tbaa !29
  %96 = getelementptr inbounds ptr, ptr %95, i64 %74
  %97 = load ptr, ptr %96, align 8, !tbaa !29
  %98 = shl nuw i32 %81, 1
  %99 = getelementptr ptr, ptr %97, i64 -1
  %100 = sext i32 %86 to i64
  %101 = getelementptr ptr, ptr %99, i64 %100
  %102 = tail call i32 @llvm.smax.i32(i32 %98, i32 1)
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr ptr, ptr %97, i64 %100
  br label %105

105:                                              ; preds = %105, %94
  %106 = phi i64 [ 0, %94 ], [ %109, %105 ]
  %107 = load ptr, ptr %101, align 8, !tbaa !29
  %108 = getelementptr ptr, ptr %104, i64 %106
  store ptr %107, ptr %108, align 8, !tbaa !29
  %109 = add nuw nsw i64 %106, 1
  %110 = icmp eq i64 %109, %103
  br i1 %110, label %111, label %105, !llvm.loop !59

111:                                              ; preds = %105, %92
  %112 = add nuw nsw i64 %74, 1
  %113 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 1
  %114 = icmp eq i64 %112, %72
  br i1 %114, label %115, label %73, !llvm.loop !60

115:                                              ; preds = %111, %59, %48
  store i32 1, ptr %27, align 4, !tbaa !45
  br label %116

116:                                              ; preds = %26, %115
  %117 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %118 = load ptr, ptr %117, align 8, !tbaa !52
  %119 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !53
  %121 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 5
  %122 = load i32, ptr %121, align 8, !tbaa !44
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 4, i64 %123
  %125 = load ptr, ptr %124, align 8, !tbaa !29
  %126 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 3
  %127 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 7
  %128 = load i32, ptr %127, align 8, !tbaa !55
  tail call void %120(ptr noundef %0, ptr noundef %125, ptr noundef nonnull %126, i32 noundef %128, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  %129 = load i32, ptr %126, align 4, !tbaa !48
  %130 = load i32, ptr %127, align 8, !tbaa !55
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %203, label %132

132:                                              ; preds = %116
  %133 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 8
  %134 = load i32, ptr %133, align 4, !tbaa !46
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %136, label %196

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %138 = load i32, ptr %137, align 4, !tbaa !27
  %139 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %140 = load i32, ptr %139, align 8, !tbaa !28
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %196

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %144 = load ptr, ptr %143, align 8, !tbaa !30
  %145 = load ptr, ptr %5, align 8, !tbaa !16
  %146 = getelementptr inbounds %struct.my_main_controller, ptr %145, i64 0, i32 4
  %147 = getelementptr inbounds %struct.my_main_controller, ptr %145, i64 0, i32 4, i64 1
  %148 = add nsw i32 %138, 1
  %149 = add nsw i32 %138, 2
  %150 = zext nneg i32 %140 to i64
  br label %151

151:                                              ; preds = %192, %142
  %152 = phi i64 [ 0, %142 ], [ %193, %192 ]
  %153 = phi ptr [ %144, %142 ], [ %194, %192 ]
  %154 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, i64 0, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !31
  %156 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, i64 0, i32 9
  %157 = load i32, ptr %156, align 4, !tbaa !33
  %158 = mul nsw i32 %157, %155
  %159 = sdiv i32 %158, %138
  %160 = load ptr, ptr %146, align 8, !tbaa !29
  %161 = getelementptr inbounds ptr, ptr %160, i64 %152
  %162 = load ptr, ptr %161, align 8, !tbaa !29
  %163 = load ptr, ptr %147, align 8, !tbaa !29
  %164 = getelementptr inbounds ptr, ptr %163, i64 %152
  %165 = load ptr, ptr %164, align 8, !tbaa !29
  %166 = icmp sgt i32 %159, 0
  br i1 %166, label %167, label %192

167:                                              ; preds = %151
  %168 = mul nsw i32 %159, %148
  %169 = mul nsw i32 %159, %149
  %170 = sext i32 %168 to i64
  %171 = zext nneg i32 %159 to i64
  %172 = sext i32 %169 to i64
  br label %173

173:                                              ; preds = %173, %167
  %174 = phi i64 [ 0, %167 ], [ %190, %173 ]
  %175 = add nsw i64 %174, %170
  %176 = getelementptr inbounds ptr, ptr %162, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !29
  %178 = sub nsw i64 %174, %171
  %179 = getelementptr inbounds ptr, ptr %162, i64 %178
  store ptr %177, ptr %179, align 8, !tbaa !29
  %180 = getelementptr inbounds ptr, ptr %165, i64 %175
  %181 = load ptr, ptr %180, align 8, !tbaa !29
  %182 = getelementptr inbounds ptr, ptr %165, i64 %178
  store ptr %181, ptr %182, align 8, !tbaa !29
  %183 = getelementptr inbounds ptr, ptr %162, i64 %174
  %184 = load ptr, ptr %183, align 8, !tbaa !29
  %185 = add nsw i64 %174, %172
  %186 = getelementptr inbounds ptr, ptr %162, i64 %185
  store ptr %184, ptr %186, align 8, !tbaa !29
  %187 = getelementptr inbounds ptr, ptr %165, i64 %174
  %188 = load ptr, ptr %187, align 8, !tbaa !29
  %189 = getelementptr inbounds ptr, ptr %165, i64 %185
  store ptr %188, ptr %189, align 8, !tbaa !29
  %190 = add nuw nsw i64 %174, 1
  %191 = icmp eq i64 %190, %171
  br i1 %191, label %192, label %173, !llvm.loop !61

192:                                              ; preds = %173, %151
  %193 = add nuw nsw i64 %152, 1
  %194 = getelementptr inbounds %struct.jpeg_component_info, ptr %153, i64 1
  %195 = icmp eq i64 %193, %150
  br i1 %195, label %196, label %151, !llvm.loop !62

196:                                              ; preds = %192, %136, %132
  %197 = load i32, ptr %121, align 8, !tbaa !44
  %198 = xor i32 %197, 1
  store i32 %198, ptr %121, align 8, !tbaa !44
  store i32 0, ptr %7, align 8, !tbaa !47
  %199 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %200 = load i32, ptr %199, align 4, !tbaa !27
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %126, align 4, !tbaa !48
  %202 = add nsw i32 %200, 2
  store i32 %202, ptr %127, align 8, !tbaa !55
  store i32 2, ptr %27, align 4, !tbaa !45
  br label %203

203:                                              ; preds = %26, %196, %116, %45, %29, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 74
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 75
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.jpeg_d_coef_controller, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 1
  %16 = tail call i32 %14(ptr noundef %0, ptr noundef nonnull %15) #2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %10
  store i32 1, ptr %7, align 8, !tbaa !47
  br label %19

19:                                               ; preds = %18, %4
  %20 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 59
  %21 = load i32, ptr %20, align 4, !tbaa !27
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %23 = load ptr, ptr %22, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 1
  %27 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 3
  tail call void %25(ptr noundef %0, ptr noundef nonnull %26, ptr noundef nonnull %27, i32 noundef %21, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  %28 = load i32, ptr %27, align 4, !tbaa !48
  %29 = icmp ult i32 %28, %21
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i32 0, ptr %7, align 8, !tbaa !47
  store i32 0, ptr %27, align 4, !tbaa !48
  br label %31

31:                                               ; preds = %19, %30, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @process_data_crank_post(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  tail call void %8(ptr noundef %0, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

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
!16 = !{!6, !7, i64 536}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 16, !10, i64 96, !10, i64 100, !8, i64 104, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132}
!19 = !{!"jpeg_d_main_controller", !7, i64 0, !7, i64 8}
!20 = !{!6, !7, i64 0}
!21 = !{!22, !10, i64 40}
!22 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!23 = !{!22, !7, i64 0}
!24 = !{!6, !7, i64 592}
!25 = !{!26, !10, i64 16}
!26 = !{!"jpeg_upsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!27 = !{!6, !10, i64 396}
!28 = !{!6, !10, i64 48}
!29 = !{!7, !7, i64 0}
!30 = !{!6, !7, i64 296}
!31 = !{!32, !10, i64 12}
!32 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!33 = !{!32, !10, i64 36}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!14, !7, i64 16}
!37 = !{!32, !10, i64 28}
!38 = distinct !{!38, !35}
!39 = !{!18, !7, i64 8}
!40 = distinct !{!40, !35}
!41 = distinct !{!41, !35}
!42 = distinct !{!42, !35}
!43 = distinct !{!43, !35}
!44 = !{!18, !10, i64 120}
!45 = !{!18, !10, i64 124}
!46 = !{!18, !10, i64 132}
!47 = !{!18, !10, i64 96}
!48 = !{!18, !10, i64 100}
!49 = !{!6, !7, i64 544}
!50 = !{!51, !7, i64 24}
!51 = !{!"jpeg_d_coef_controller", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!52 = !{!6, !7, i64 552}
!53 = !{!54, !7, i64 8}
!54 = !{!"jpeg_d_post_controller", !7, i64 0, !7, i64 8}
!55 = !{!18, !10, i64 128}
!56 = !{!10, !10, i64 0}
!57 = !{!6, !10, i64 400}
!58 = !{!32, !10, i64 44}
!59 = distinct !{!59, !35}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35}
!62 = distinct !{!62, !35}
