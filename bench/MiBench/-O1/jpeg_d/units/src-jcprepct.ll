; ModuleID = 'src/jcprepct.c'
source_filename = "src/jcprepct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x ptr], i32, i32, i32, i32 }
%struct.jpeg_color_converter = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_c_prep_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 4, ptr %6, align 8, !tbaa !13
  %7 = load ptr, ptr %5, align 8, !tbaa !16
  tail call void %7(ptr noundef nonnull %0) #4
  br label %8

8:                                                ; preds = %4, %2
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 1, i64 noundef 112) #4
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  store ptr %12, ptr %13, align 8, !tbaa !20
  store ptr @start_pass_prep, ptr %12, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.jpeg_downsampler, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !25
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %12, i64 0, i32 1
  br i1 %18, label %89, label %20

20:                                               ; preds = %8
  store ptr @pre_process_context, ptr %19, align 8, !tbaa !27
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %22 = load i32, ptr %21, align 4, !tbaa !28
  %23 = load ptr, ptr %9, align 8, !tbaa !17
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !29
  %27 = mul i32 %22, 5
  %28 = mul i32 %26, %27
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 3
  %31 = tail call ptr %24(ptr noundef %0, i32 noundef 1, i64 noundef %30) #4
  %32 = load i32, ptr %25, align 4, !tbaa !29
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %124

34:                                               ; preds = %20
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %36 = load ptr, ptr %35, align 8, !tbaa !30
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %38 = mul nsw i32 %22, 3
  %39 = sext i32 %22 to i64
  %40 = sext i32 %38 to i64
  %41 = shl nsw i64 %40, 3
  %42 = icmp sgt i32 %22, 0
  %43 = shl nsw i32 %22, 1
  %44 = shl i32 %22, 2
  %45 = sext i32 %27 to i64
  %46 = zext i32 %43 to i64
  %47 = zext i32 %44 to i64
  %48 = zext nneg i32 %22 to i64
  br label %49

49:                                               ; preds = %81, %34
  %50 = phi i64 [ 0, %34 ], [ %84, %81 ]
  %51 = phi ptr [ %31, %34 ], [ %83, %81 ]
  %52 = phi ptr [ %36, %34 ], [ %85, %81 ]
  %53 = load ptr, ptr %9, align 8, !tbaa !17
  %54 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !31
  %56 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 7
  %57 = load i32, ptr %56, align 4, !tbaa !32
  %58 = zext i32 %57 to i64
  %59 = shl nuw nsw i64 %58, 3
  %60 = load i32, ptr %37, align 8, !tbaa !34
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %59, %61
  %63 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !35
  %65 = sext i32 %64 to i64
  %66 = sdiv i64 %62, %65
  %67 = trunc i64 %66 to i32
  %68 = tail call ptr %55(ptr noundef %0, i32 noundef 1, i32 noundef %67, i32 noundef %38) #4
  %69 = getelementptr inbounds ptr, ptr %51, i64 %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %69, ptr align 1 %68, i64 %41, i1 false)
  br i1 %42, label %70, label %81

70:                                               ; preds = %49, %70
  %71 = phi i64 [ %79, %70 ], [ 0, %49 ]
  %72 = getelementptr ptr, ptr %68, i64 %71
  %73 = getelementptr ptr, ptr %72, i64 %46
  %74 = load ptr, ptr %73, align 8, !tbaa !36
  %75 = getelementptr inbounds ptr, ptr %51, i64 %71
  store ptr %74, ptr %75, align 8, !tbaa !36
  %76 = load ptr, ptr %72, align 8, !tbaa !36
  %77 = add nuw nsw i64 %71, %47
  %78 = getelementptr inbounds ptr, ptr %51, i64 %77
  store ptr %76, ptr %78, align 8, !tbaa !36
  %79 = add nuw nsw i64 %71, 1
  %80 = icmp eq i64 %79, %48
  br i1 %80, label %81, label %70, !llvm.loop !37

81:                                               ; preds = %70, %49
  %82 = getelementptr inbounds %struct.my_prep_controller, ptr %12, i64 0, i32 1, i64 %50
  store ptr %69, ptr %82, align 8, !tbaa !36
  %83 = getelementptr ptr, ptr %51, i64 %45
  %84 = add nuw nsw i64 %50, 1
  %85 = getelementptr inbounds %struct.jpeg_component_info, ptr %52, i64 1
  %86 = load i32, ptr %25, align 4, !tbaa !29
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %49, label %124, !llvm.loop !39

89:                                               ; preds = %8
  store ptr @pre_process_data, ptr %19, align 8, !tbaa !27
  %90 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %91 = load i32, ptr %90, align 4, !tbaa !29
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %95 = load ptr, ptr %94, align 8, !tbaa !30
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  br label %98

98:                                               ; preds = %93, %98
  %99 = phi i64 [ 0, %93 ], [ %119, %98 ]
  %100 = phi ptr [ %95, %93 ], [ %120, %98 ]
  %101 = load ptr, ptr %9, align 8, !tbaa !17
  %102 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !31
  %104 = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i64 0, i32 7
  %105 = load i32, ptr %104, align 4, !tbaa !32
  %106 = zext i32 %105 to i64
  %107 = shl nuw nsw i64 %106, 3
  %108 = load i32, ptr %96, align 8, !tbaa !34
  %109 = sext i32 %108 to i64
  %110 = mul nsw i64 %107, %109
  %111 = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i64 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !35
  %113 = sext i32 %112 to i64
  %114 = sdiv i64 %110, %113
  %115 = trunc i64 %114 to i32
  %116 = load i32, ptr %97, align 4, !tbaa !28
  %117 = tail call ptr %103(ptr noundef %0, i32 noundef 1, i32 noundef %115, i32 noundef %116) #4
  %118 = getelementptr inbounds %struct.my_prep_controller, ptr %12, i64 0, i32 1, i64 %99
  store ptr %117, ptr %118, align 8, !tbaa !36
  %119 = add nuw nsw i64 %99, 1
  %120 = getelementptr inbounds %struct.jpeg_component_info, ptr %100, i64 1
  %121 = load i32, ptr %90, align 4, !tbaa !29
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %119, %122
  br i1 %123, label %98, label %124, !llvm.loop !40

124:                                              ; preds = %81, %98, %89, %20
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_prep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 4, ptr %8, align 8, !tbaa !13
  %9 = load ptr, ptr %7, align 8, !tbaa !16
  tail call void %9(ptr noundef nonnull %0) #4
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !41
  %13 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !43
  %15 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 4
  store i32 0, ptr %15, align 8, !tbaa !44
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = shl nsw i32 %17, 1
  %19 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pre_process_context(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %11 = load i32, ptr %10, align 4, !tbaa !28
  %12 = mul nsw i32 %11, 3
  %13 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %5, align 4, !tbaa !46
  %15 = icmp ult i32 %14, %6
  br i1 %15, label %16, label %137

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 5
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %21 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 5
  %22 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 3
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %24 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1
  %25 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 2
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 3
  %30 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 5
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %32 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1
  %33 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 4
  br label %34

34:                                               ; preds = %16, %134
  %35 = load i32, ptr %2, align 4, !tbaa !46
  %36 = icmp ult i32 %35, %3
  br i1 %36, label %37, label %80

37:                                               ; preds = %34
  %38 = sub i32 %3, %35
  %39 = load i32, ptr %21, align 4, !tbaa !45
  %40 = load i32, ptr %22, align 4, !tbaa !43
  %41 = sub nsw i32 %39, %40
  %42 = tail call i32 @llvm.umin.i32(i32 %41, i32 %38)
  %43 = load ptr, ptr %23, align 8, !tbaa !47
  %44 = getelementptr inbounds %struct.jpeg_color_converter, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = zext i32 %35 to i64
  %47 = getelementptr inbounds ptr, ptr %1, i64 %46
  tail call void %45(ptr noundef %0, ptr noundef %47, ptr noundef nonnull %24, i32 noundef %40, i32 noundef %42) #4
  %48 = load i32, ptr %25, align 8, !tbaa !42
  %49 = load i32, ptr %26, align 4, !tbaa !41
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %37
  %52 = load i32, ptr %27, align 4, !tbaa !29
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %51, %68
  %55 = phi i64 [ %69, %68 ], [ 0, %51 ]
  %56 = load i32, ptr %10, align 4, !tbaa !28
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %55
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i32 [ 1, %58 ], [ %65, %60 ]
  %62 = load ptr, ptr %59, align 8, !tbaa !36
  %63 = sub nsw i32 0, %61
  %64 = load i32, ptr %28, align 8, !tbaa !50
  tail call void @jcopy_sample_rows(ptr noundef %62, i32 noundef 0, ptr noundef %62, i32 noundef %63, i32 noundef 1, i32 noundef %64) #4
  %65 = add nuw nsw i32 %61, 1
  %66 = load i32, ptr %10, align 4, !tbaa !28
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %60, label %68, !llvm.loop !51

68:                                               ; preds = %60, %54
  %69 = add nuw nsw i64 %55, 1
  %70 = load i32, ptr %27, align 4, !tbaa !29
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %54, label %73, !llvm.loop !52

73:                                               ; preds = %68, %51, %37
  %74 = load i32, ptr %2, align 4, !tbaa !46
  %75 = add i32 %74, %42
  store i32 %75, ptr %2, align 4, !tbaa !46
  %76 = load i32, ptr %22, align 4, !tbaa !43
  %77 = add nsw i32 %76, %42
  store i32 %77, ptr %22, align 4, !tbaa !43
  %78 = load i32, ptr %25, align 8, !tbaa !42
  %79 = sub i32 %78, %42
  store i32 %79, ptr %25, align 8, !tbaa !42
  br label %111

80:                                               ; preds = %34
  %81 = load i32, ptr %13, align 8, !tbaa !42
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %137

83:                                               ; preds = %80
  %84 = load i32, ptr %17, align 4, !tbaa !43
  %85 = load i32, ptr %18, align 4, !tbaa !45
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %83
  %88 = load i32, ptr %19, align 4, !tbaa !29
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %109

90:                                               ; preds = %87, %104
  %91 = phi i64 [ %105, %104 ], [ 0, %87 ]
  %92 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !36
  %94 = load i32, ptr %20, align 8, !tbaa !50
  %95 = load i32, ptr %17, align 4, !tbaa !43
  %96 = load i32, ptr %18, align 4, !tbaa !45
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = add nsw i32 %95, -1
  br label %100

100:                                              ; preds = %100, %98
  %101 = phi i32 [ %95, %98 ], [ %102, %100 ]
  tail call void @jcopy_sample_rows(ptr noundef %93, i32 noundef %99, ptr noundef %93, i32 noundef %101, i32 noundef 1, i32 noundef %94) #4
  %102 = add i32 %101, 1
  %103 = icmp eq i32 %102, %96
  br i1 %103, label %104, label %100, !llvm.loop !53

104:                                              ; preds = %100, %90
  %105 = add nuw nsw i64 %91, 1
  %106 = load i32, ptr %19, align 4, !tbaa !29
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %90, label %109, !llvm.loop !54

109:                                              ; preds = %104, %87
  %110 = load i32, ptr %18, align 4, !tbaa !45
  store i32 %110, ptr %17, align 4, !tbaa !43
  br label %111

111:                                              ; preds = %83, %109, %73
  %112 = load i32, ptr %29, align 4, !tbaa !43
  %113 = load i32, ptr %30, align 4, !tbaa !45
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load ptr, ptr %31, align 8, !tbaa !24
  %117 = getelementptr inbounds %struct.jpeg_downsampler, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !55
  %119 = load i32, ptr %33, align 8, !tbaa !44
  %120 = load i32, ptr %5, align 4, !tbaa !46
  tail call void %118(ptr noundef %0, ptr noundef nonnull %32, i32 noundef %119, ptr noundef %4, i32 noundef %120) #4
  %121 = load i32, ptr %5, align 4, !tbaa !46
  %122 = add i32 %121, 1
  store i32 %122, ptr %5, align 4, !tbaa !46
  %123 = load i32, ptr %10, align 4, !tbaa !28
  %124 = load i32, ptr %33, align 8, !tbaa !44
  %125 = add nsw i32 %124, %123
  %126 = icmp slt i32 %125, %12
  %127 = select i1 %126, i32 %125, i32 0
  store i32 %127, ptr %33, align 8, !tbaa !44
  %128 = load i32, ptr %29, align 4, !tbaa !43
  %129 = icmp slt i32 %128, %12
  br i1 %129, label %131, label %130

130:                                              ; preds = %115
  store i32 0, ptr %29, align 4, !tbaa !43
  br label %131

131:                                              ; preds = %130, %115
  %132 = load i32, ptr %29, align 4, !tbaa !43
  %133 = add nsw i32 %132, %123
  store i32 %133, ptr %30, align 4, !tbaa !45
  br label %134

134:                                              ; preds = %131, %111
  %135 = load i32, ptr %5, align 4, !tbaa !46
  %136 = icmp ult i32 %135, %6
  br i1 %136, label %34, label %137, !llvm.loop !56

137:                                              ; preds = %134, %80, %7
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pre_process_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = load i32, ptr %2, align 4, !tbaa !46
  %11 = icmp ult i32 %10, %3
  br i1 %11, label %12, label %124

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %14 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 3
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %16 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1
  %17 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 2
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  br label %21

21:                                               ; preds = %12, %121
  %22 = phi i32 [ %10, %12 ], [ %122, %121 ]
  %23 = load i32, ptr %5, align 4, !tbaa !46
  %24 = icmp ult i32 %23, %6
  br i1 %24, label %25, label %124

25:                                               ; preds = %21
  %26 = sub i32 %3, %22
  %27 = load i32, ptr %13, align 4, !tbaa !28
  %28 = load i32, ptr %14, align 4, !tbaa !43
  %29 = sub nsw i32 %27, %28
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %26)
  %31 = load ptr, ptr %15, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.jpeg_color_converter, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !48
  %34 = zext i32 %22 to i64
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34
  tail call void %33(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %16, i32 noundef %28, i32 noundef %30) #4
  %36 = load i32, ptr %2, align 4, !tbaa !46
  %37 = add i32 %36, %30
  store i32 %37, ptr %2, align 4, !tbaa !46
  %38 = load i32, ptr %14, align 4, !tbaa !43
  %39 = add nsw i32 %38, %30
  store i32 %39, ptr %14, align 4, !tbaa !43
  %40 = load i32, ptr %17, align 8, !tbaa !42
  %41 = sub i32 %40, %30
  store i32 %41, ptr %17, align 8, !tbaa !42
  %42 = icmp eq i32 %40, %30
  br i1 %42, label %43, label %70

43:                                               ; preds = %25
  %44 = load i32, ptr %13, align 4, !tbaa !28
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load i32, ptr %18, align 4, !tbaa !29
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46, %63
  %50 = phi i64 [ %64, %63 ], [ 0, %46 ]
  %51 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  %53 = load i32, ptr %19, align 8, !tbaa !50
  %54 = load i32, ptr %14, align 4, !tbaa !43
  %55 = load i32, ptr %13, align 4, !tbaa !28
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = add nsw i32 %54, -1
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ %54, %57 ], [ %61, %59 ]
  tail call void @jcopy_sample_rows(ptr noundef %52, i32 noundef %58, ptr noundef %52, i32 noundef %60, i32 noundef 1, i32 noundef %53) #4
  %61 = add i32 %60, 1
  %62 = icmp eq i32 %61, %55
  br i1 %62, label %63, label %59, !llvm.loop !53

63:                                               ; preds = %59, %49
  %64 = add nuw nsw i64 %50, 1
  %65 = load i32, ptr %18, align 4, !tbaa !29
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %49, label %68, !llvm.loop !57

68:                                               ; preds = %63, %46
  %69 = load i32, ptr %13, align 4, !tbaa !28
  store i32 %69, ptr %14, align 4, !tbaa !43
  br label %70

70:                                               ; preds = %68, %43, %25
  %71 = load i32, ptr %14, align 4, !tbaa !43
  %72 = load i32, ptr %13, align 4, !tbaa !28
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load ptr, ptr %20, align 8, !tbaa !24
  %76 = getelementptr inbounds %struct.jpeg_downsampler, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  %78 = load i32, ptr %5, align 4, !tbaa !46
  tail call void %77(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 0, ptr noundef %4, i32 noundef %78) #4
  store i32 0, ptr %14, align 4, !tbaa !43
  %79 = load i32, ptr %5, align 4, !tbaa !46
  %80 = add i32 %79, 1
  store i32 %80, ptr %5, align 4, !tbaa !46
  br label %81

81:                                               ; preds = %74, %70
  %82 = load i32, ptr %17, align 8, !tbaa !42
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %81
  %85 = load i32, ptr %5, align 4, !tbaa !46
  %86 = icmp ult i32 %85, %6
  br i1 %86, label %87, label %121

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %89 = load i32, ptr %88, align 4, !tbaa !29
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %93 = load ptr, ptr %92, align 8, !tbaa !30
  br label %94

94:                                               ; preds = %91, %114
  %95 = phi i64 [ 0, %91 ], [ %115, %114 ]
  %96 = phi ptr [ %93, %91 ], [ %116, %114 ]
  %97 = getelementptr inbounds ptr, ptr %4, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !36
  %99 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i64 0, i32 7
  %100 = load i32, ptr %99, align 4, !tbaa !32
  %101 = shl i32 %100, 3
  %102 = load i32, ptr %5, align 4, !tbaa !46
  %103 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !58
  %105 = mul i32 %104, %102
  %106 = mul i32 %104, %6
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %94
  %109 = add nsw i32 %105, -1
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi i32 [ %105, %108 ], [ %112, %110 ]
  tail call void @jcopy_sample_rows(ptr noundef %98, i32 noundef %109, ptr noundef %98, i32 noundef %111, i32 noundef 1, i32 noundef %101) #4
  %112 = add i32 %111, 1
  %113 = icmp eq i32 %112, %106
  br i1 %113, label %114, label %110, !llvm.loop !53

114:                                              ; preds = %110, %94
  %115 = add nuw nsw i64 %95, 1
  %116 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i64 1
  %117 = load i32, ptr %88, align 4, !tbaa !29
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %94, label %120, !llvm.loop !59

120:                                              ; preds = %114, %87
  store i32 %6, ptr %5, align 4, !tbaa !46
  br label %124

121:                                              ; preds = %84, %81
  %122 = load i32, ptr %2, align 4, !tbaa !46
  %123 = icmp ult i32 %122, %3
  br i1 %123, label %21, label %124, !llvm.loop !60

124:                                              ; preds = %21, %121, %7, %120
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !10, i64 40}
!14 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!15 = !{!"long", !8, i64 0}
!16 = !{!14, !7, i64 0}
!17 = !{!6, !7, i64 8}
!18 = !{!19, !7, i64 0}
!19 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!20 = !{!6, !7, i64 440}
!21 = !{!22, !7, i64 0}
!22 = !{!"", !23, i64 0, !8, i64 16, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108}
!23 = !{!"jpeg_c_prep_controller", !7, i64 0, !7, i64 8}
!24 = !{!6, !7, i64 472}
!25 = !{!26, !10, i64 16}
!26 = !{!"jpeg_downsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!27 = !{!22, !7, i64 8}
!28 = !{!6, !10, i64 308}
!29 = !{!6, !10, i64 68}
!30 = !{!6, !7, i64 80}
!31 = !{!19, !7, i64 16}
!32 = !{!33, !10, i64 28}
!33 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!34 = !{!6, !10, i64 304}
!35 = !{!33, !10, i64 8}
!36 = !{!7, !7, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !38}
!40 = distinct !{!40, !38}
!41 = !{!6, !10, i64 44}
!42 = !{!22, !10, i64 96}
!43 = !{!22, !10, i64 100}
!44 = !{!22, !10, i64 104}
!45 = !{!22, !10, i64 108}
!46 = !{!10, !10, i64 0}
!47 = !{!6, !7, i64 464}
!48 = !{!49, !7, i64 8}
!49 = !{!"jpeg_color_converter", !7, i64 0, !7, i64 8}
!50 = !{!6, !10, i64 40}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38}
!55 = !{!26, !7, i64 8}
!56 = distinct !{!56, !38}
!57 = distinct !{!57, !38}
!58 = !{!33, !10, i64 12}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
