; ModuleID = 'src/jctrans.c'
source_filename = "src/jctrans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.my_coef_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, ptr, [10 x ptr] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_write_coefficients(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 18, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %4, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %0, align 8, !tbaa !13
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  tail call void %11(ptr noundef nonnull %0) #4
  br label %12

12:                                               ; preds = %6, %2
  tail call void @jpeg_suppress_tables(ptr noundef %0, i32 noundef 0) #4
  %13 = load ptr, ptr %0, align 8, !tbaa !13
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  tail call void %15(ptr noundef nonnull %0) #4
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  %18 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  tail call void %19(ptr noundef nonnull %0) #4
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 1, ptr %20, align 8, !tbaa !23
  tail call void @jinit_c_master_control(ptr noundef nonnull %0, i32 noundef 1) #4
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %22 = load i32, ptr %21, align 4, !tbaa !24
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %12
  %25 = load ptr, ptr %0, align 8, !tbaa !13
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 1, ptr %26, align 8, !tbaa !14
  %27 = load ptr, ptr %25, align 8, !tbaa !18
  tail call void %27(ptr noundef nonnull %0) #4
  br label %34

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %30 = load i32, ptr %29, align 4, !tbaa !25
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  tail call void @jinit_phuff_encoder(ptr noundef nonnull %0) #4
  br label %34

33:                                               ; preds = %28
  tail call void @jinit_huff_encoder(ptr noundef nonnull %0) #4
  br label %34

34:                                               ; preds = %33, %32, %24
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !26
  %37 = load ptr, ptr %36, align 8, !tbaa !27
  %38 = tail call ptr %37(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 120) #4
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  store ptr %38, ptr %39, align 8, !tbaa !29
  store ptr @start_pass_coef, ptr %38, align 8, !tbaa !30
  %40 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %38, i64 0, i32 1
  store ptr @compress_output, ptr %40, align 8, !tbaa !33
  %41 = getelementptr inbounds %struct.my_coef_controller, ptr %38, i64 0, i32 5
  store ptr %1, ptr %41, align 8, !tbaa !34
  %42 = load ptr, ptr %35, align 8, !tbaa !26
  %43 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  %45 = tail call ptr %44(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 1280) #4
  tail call void @jzero_far(ptr noundef %45, i64 noundef 1280) #4
  br label %46

46:                                               ; preds = %46, %34
  %47 = phi i64 [ 0, %34 ], [ %50, %46 ]
  %48 = getelementptr inbounds [64 x i16], ptr %45, i64 %47
  %49 = getelementptr inbounds %struct.my_coef_controller, ptr %38, i64 0, i32 6, i64 %47
  store ptr %48, ptr %49, align 8, !tbaa !36
  %50 = add nuw nsw i64 %47, 1
  %51 = icmp eq i64 %50, 10
  br i1 %51, label %52, label %46, !llvm.loop !37

52:                                               ; preds = %46
  tail call void @jinit_marker_writer(ptr noundef nonnull %0) #4
  %53 = load ptr, ptr %35, align 8, !tbaa !26
  %54 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !39
  tail call void %55(ptr noundef nonnull %0) #4
  %56 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %57 = load ptr, ptr %56, align 8, !tbaa !40
  %58 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  tail call void %59(ptr noundef nonnull %0) #4
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 36
  store i32 0, ptr %60, align 8, !tbaa !43
  store i32 103, ptr %3, align 4, !tbaa !5
  ret void
}

declare void @jpeg_suppress_tables(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @jpeg_copy_critical_parameters(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 18, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %4, ptr %9, align 4, !tbaa !17
  %10 = load ptr, ptr %1, align 8, !tbaa !13
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  tail call void %11(ptr noundef nonnull %1) #4
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 6
  store i32 %14, ptr %15, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 7
  store i32 %17, ptr %18, align 4, !tbaa !48
  %19 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 8
  store i32 %20, ptr %21, align 8, !tbaa !23
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 9
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 9
  store i32 %23, ptr %24, align 4, !tbaa !51
  tail call void @jpeg_set_defaults(ptr noundef %1) #4
  %25 = load i32, ptr %22, align 4, !tbaa !50
  tail call void @jpeg_set_colorspace(ptr noundef %1, i32 noundef %25) #4
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 42
  %27 = load i32, ptr %26, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 11
  store i32 %27, ptr %28, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 56
  %30 = load i32, ptr %29, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 26
  store i32 %30, ptr %31, align 4, !tbaa !55
  br label %32

32:                                               ; preds = %12, %48
  %33 = phi i64 [ 0, %12 ], [ %49, %48 ]
  %34 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 39, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 15, i64 %33
  %39 = load ptr, ptr %38, align 8, !tbaa !36
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = tail call ptr @jpeg_alloc_quant_table(ptr noundef %1) #4
  store ptr %42, ptr %38, align 8, !tbaa !36
  br label %43

43:                                               ; preds = %41, %37
  %44 = load ptr, ptr %38, align 8, !tbaa !36
  %45 = load ptr, ptr %34, align 8, !tbaa !36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %44, ptr noundef nonnull align 4 dereferenceable(128) %45, i64 128, i1 false)
  %46 = load ptr, ptr %38, align 8, !tbaa !36
  %47 = getelementptr inbounds %struct.JQUANT_TBL, ptr %46, i64 0, i32 1
  store i32 0, ptr %47, align 4, !tbaa !56
  br label %48

48:                                               ; preds = %32, %43
  %49 = add nuw nsw i64 %33, 1
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %32, !llvm.loop !58

51:                                               ; preds = %48
  %52 = load i32, ptr %19, align 8, !tbaa !49
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 12
  store i32 %52, ptr %53, align 4, !tbaa !59
  %54 = add i32 %52, -11
  %55 = icmp ult i32 %54, -10
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load ptr, ptr %1, align 8, !tbaa !13
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 24, ptr %58, align 8, !tbaa !14
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 6
  store i32 %52, ptr %59, align 4, !tbaa !17
  %60 = load ptr, ptr %1, align 8, !tbaa !13
  %61 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %60, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %61, align 4, !tbaa !17
  %62 = load ptr, ptr %1, align 8, !tbaa !13
  %63 = load ptr, ptr %62, align 8, !tbaa !18
  tail call void %63(ptr noundef nonnull %1) #4
  br label %64

64:                                               ; preds = %51, %56
  %65 = load i32, ptr %53, align 4, !tbaa !59
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %127

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %1, i64 0, i32 14
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %71 = load ptr, ptr %70, align 8, !tbaa !61
  br label %72

72:                                               ; preds = %67, %121
  %73 = phi i32 [ %122, %121 ], [ 0, %67 ]
  %74 = phi ptr [ %123, %121 ], [ %71, %67 ]
  %75 = phi ptr [ %124, %121 ], [ %69, %67 ]
  %76 = load i32, ptr %74, align 8, !tbaa !62
  store i32 %76, ptr %75, align 8, !tbaa !62
  %77 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i64 0, i32 2
  %78 = load i32, ptr %77, align 8, !tbaa !64
  %79 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 2
  store i32 %78, ptr %79, align 8, !tbaa !64
  %80 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i64 0, i32 3
  %81 = load i32, ptr %80, align 4, !tbaa !65
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 3
  store i32 %81, ptr %82, align 4, !tbaa !65
  %83 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !66
  %85 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 0, i32 4
  store i32 %84, ptr %85, align 8, !tbaa !66
  %86 = icmp ugt i32 %84, 3
  br i1 %86, label %92, label %87

87:                                               ; preds = %72
  %88 = zext nneg i32 %84 to i64
  %89 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 39, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !36
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %87, %72
  %93 = load ptr, ptr %1, align 8, !tbaa !13
  %94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i64 0, i32 5
  store i32 51, ptr %94, align 8, !tbaa !14
  %95 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %93, i64 0, i32 6
  store i32 %84, ptr %95, align 4, !tbaa !17
  %96 = load ptr, ptr %1, align 8, !tbaa !13
  %97 = load ptr, ptr %96, align 8, !tbaa !18
  tail call void %97(ptr noundef nonnull %1) #4
  br label %98

98:                                               ; preds = %92, %87
  %99 = sext i32 %84 to i64
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 39, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !36
  %102 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i64 0, i32 19
  %103 = load ptr, ptr %102, align 8, !tbaa !67
  %104 = icmp eq ptr %103, null
  br i1 %104, label %121, label %105

105:                                              ; preds = %98, %118
  %106 = phi i64 [ %119, %118 ], [ 0, %98 ]
  %107 = getelementptr inbounds [64 x i16], ptr %103, i64 0, i64 %106
  %108 = load i16, ptr %107, align 2, !tbaa !68
  %109 = getelementptr inbounds [64 x i16], ptr %101, i64 0, i64 %106
  %110 = load i16, ptr %109, align 2, !tbaa !68
  %111 = icmp eq i16 %108, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %105
  %113 = load ptr, ptr %1, align 8, !tbaa !13
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 5
  store i32 43, ptr %114, align 8, !tbaa !14
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 6
  store i32 %84, ptr %115, align 4, !tbaa !17
  %116 = load ptr, ptr %1, align 8, !tbaa !13
  %117 = load ptr, ptr %116, align 8, !tbaa !18
  tail call void %117(ptr noundef nonnull %1) #4
  br label %118

118:                                              ; preds = %105, %112
  %119 = add nuw nsw i64 %106, 1
  %120 = icmp eq i64 %119, 64
  br i1 %120, label %121, label %105, !llvm.loop !69

121:                                              ; preds = %118, %98
  %122 = add nuw nsw i32 %73, 1
  %123 = getelementptr inbounds %struct.jpeg_component_info, ptr %74, i64 1
  %124 = getelementptr inbounds %struct.jpeg_component_info, ptr %75, i64 1
  %125 = load i32, ptr %53, align 4, !tbaa !59
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %72, label %127, !llvm.loop !70

127:                                              ; preds = %121, %64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @jpeg_set_defaults(ptr noundef) local_unnamed_addr #1

declare void @jpeg_set_colorspace(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @jpeg_alloc_quant_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @jinit_c_master_control(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @jinit_phuff_encoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_huff_encoder(ptr noundef) local_unnamed_addr #1

declare void @jinit_marker_writer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_coef(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = icmp eq i32 %1, 2
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 4, ptr %8, align 8, !tbaa !14
  %9 = load ptr, ptr %7, align 8, !tbaa !18
  tail call void %9(ptr noundef nonnull %0) #4
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.my_coef_controller, ptr %4, i64 0, i32 1
  store i32 0, ptr %11, align 8, !tbaa !71
  %12 = load ptr, ptr %3, align 8, !tbaa !29
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.my_coef_controller, ptr %12, i64 0, i32 4
  store i32 1, ptr %17, align 4, !tbaa !73
  br label %34

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.my_coef_controller, ptr %12, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %22 = load i32, ptr %21, align 8, !tbaa !74
  %23 = add i32 %22, -1
  %24 = icmp ult i32 %20, %23
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %26 = load ptr, ptr %25, align 8, !tbaa !36
  %27 = getelementptr inbounds %struct.my_coef_controller, ptr %12, i64 0, i32 4
  br i1 %24, label %28, label %31

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !65
  store i32 %30, ptr %27, align 4, !tbaa !73
  br label %34

31:                                               ; preds = %18
  %32 = getelementptr inbounds %struct.jpeg_component_info, ptr %26, i64 0, i32 18
  %33 = load i32, ptr %32, align 8, !tbaa !75
  store i32 %33, ptr %27, align 4, !tbaa !73
  br label %34

34:                                               ; preds = %16, %28, %31
  %35 = getelementptr inbounds %struct.my_coef_controller, ptr %12, i64 0, i32 2
  store i32 0, ptr %35, align 4, !tbaa !76
  %36 = getelementptr inbounds %struct.my_coef_controller, ptr %12, i64 0, i32 3
  store i32 0, ptr %36, align 8, !tbaa !77
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @compress_output(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = alloca [4 x ptr], align 16
  %4 = alloca [10 x ptr], align 16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %8 = load i32, ptr %7, align 8, !tbaa !78
  %9 = add i32 %8, -1
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %11 = load i32, ptr %10, align 8, !tbaa !74
  %12 = add i32 %11, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #4
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 5
  %19 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 1
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %39, %20 ]
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = load ptr, ptr %17, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %24, i64 0, i32 8
  %26 = load ptr, ptr %25, align 8, !tbaa !79
  %27 = load ptr, ptr %18, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !80
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %27, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !36
  %33 = load i32, ptr %19, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.jpeg_component_info, ptr %23, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !65
  %36 = mul i32 %35, %33
  %37 = tail call ptr %26(ptr noundef %0, ptr noundef %32, i32 noundef %36, i32 noundef %35, i32 noundef 0) #4
  %38 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %21
  store ptr %37, ptr %38, align 8, !tbaa !36
  %39 = add nuw nsw i64 %21, 1
  %40 = load i32, ptr %13, align 4, !tbaa !72
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %20, label %43, !llvm.loop !81

43:                                               ; preds = %20, %2
  %44 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %45 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !77
  %47 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 4
  %48 = load i32, ptr %47, align 4, !tbaa !73
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %165

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 2
  %52 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 1
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %54 = sext i32 %46 to i64
  br label %55

55:                                               ; preds = %50, %160
  %56 = phi i64 [ %54, %50 ], [ %161, %160 ]
  %57 = load i32, ptr %51, align 4, !tbaa !76
  %58 = load i32, ptr %7, align 8, !tbaa !78
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %160

60:                                               ; preds = %55, %156
  %61 = phi i32 [ %157, %156 ], [ %57, %55 ]
  %62 = load i32, ptr %44, align 4, !tbaa !72
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %148

64:                                               ; preds = %60
  %65 = icmp ult i32 %61, %9
  %66 = zext nneg i32 %62 to i64
  br label %67

67:                                               ; preds = %64, %144
  %68 = phi i64 [ 0, %64 ], [ %146, %144 ]
  %69 = phi i32 [ 0, %64 ], [ %145, %144 ]
  %70 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %68
  %71 = load ptr, ptr %70, align 8, !tbaa !36
  %72 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 0, i32 13
  %73 = load i32, ptr %72, align 4, !tbaa !82
  %74 = mul i32 %73, %61
  br i1 %65, label %78, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 0, i32 17
  %77 = load i32, ptr %76, align 4, !tbaa !83
  br label %78

78:                                               ; preds = %67, %75
  %79 = phi i32 [ %77, %75 ], [ %73, %67 ]
  %80 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 0, i32 14
  %81 = load i32, ptr %80, align 8, !tbaa !84
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %144

83:                                               ; preds = %78
  %84 = load i32, ptr %52, align 8, !tbaa !71
  %85 = icmp ult i32 %84, %12
  %86 = getelementptr inbounds %struct.jpeg_component_info, ptr %71, i64 0, i32 18
  %87 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %68
  %88 = zext i32 %74 to i64
  %89 = icmp slt i32 %79, 1
  %90 = zext nneg i32 %81 to i64
  br label %91

91:                                               ; preds = %83, %140
  %92 = phi i64 [ 0, %83 ], [ %142, %140 ]
  %93 = phi i32 [ %69, %83 ], [ %141, %140 ]
  br i1 %85, label %100, label %94

94:                                               ; preds = %91
  %95 = add nsw i64 %92, %56
  %96 = load i32, ptr %86, align 8, !tbaa !75
  %97 = sext i32 %96 to i64
  %98 = icmp sge i64 %95, %97
  %99 = select i1 %98, i1 true, i1 %89
  br i1 %99, label %119, label %101

100:                                              ; preds = %91
  br i1 %89, label %119, label %101

101:                                              ; preds = %94, %100
  %102 = load ptr, ptr %87, align 8, !tbaa !36
  %103 = getelementptr ptr, ptr %102, i64 %92
  %104 = getelementptr ptr, ptr %103, i64 %56
  %105 = load ptr, ptr %104, align 8, !tbaa !36
  %106 = getelementptr inbounds [64 x i16], ptr %105, i64 %88
  %107 = sext i32 %93 to i64
  br label %108

108:                                              ; preds = %101, %108
  %109 = phi i64 [ %107, %101 ], [ %113, %108 ]
  %110 = phi ptr [ %106, %101 ], [ %112, %108 ]
  %111 = phi i32 [ 0, %101 ], [ %115, %108 ]
  %112 = getelementptr inbounds [64 x i16], ptr %110, i64 1
  %113 = add nsw i64 %109, 1
  %114 = getelementptr inbounds [10 x ptr], ptr %4, i64 0, i64 %109
  store ptr %110, ptr %114, align 8, !tbaa !36
  %115 = add nuw nsw i32 %111, 1
  %116 = icmp eq i32 %115, %79
  br i1 %116, label %117, label %108, !llvm.loop !85

117:                                              ; preds = %108
  %118 = trunc i64 %113 to i32
  br label %119

119:                                              ; preds = %94, %117, %100
  %120 = phi i32 [ %93, %94 ], [ %93, %100 ], [ %118, %117 ]
  %121 = phi i32 [ 0, %94 ], [ 0, %100 ], [ %79, %117 ]
  %122 = icmp slt i32 %121, %73
  br i1 %122, label %123, label %140

123:                                              ; preds = %119
  %124 = sext i32 %120 to i64
  br label %125

125:                                              ; preds = %123, %125
  %126 = phi i64 [ %124, %123 ], [ %135, %125 ]
  %127 = phi i32 [ %121, %123 ], [ %136, %125 ]
  %128 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 6, i64 %126
  %129 = load ptr, ptr %128, align 8, !tbaa !36
  %130 = getelementptr inbounds [10 x ptr], ptr %4, i64 0, i64 %126
  store ptr %129, ptr %130, align 8, !tbaa !36
  %131 = add nsw i64 %126, -1
  %132 = getelementptr inbounds [10 x ptr], ptr %4, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !36
  %134 = load i16, ptr %133, align 2, !tbaa !68
  store i16 %134, ptr %129, align 2, !tbaa !68
  %135 = add nsw i64 %126, 1
  %136 = add nuw nsw i32 %127, 1
  %137 = icmp eq i32 %136, %73
  br i1 %137, label %138, label %125, !llvm.loop !86

138:                                              ; preds = %125
  %139 = trunc i64 %135 to i32
  br label %140

140:                                              ; preds = %138, %119
  %141 = phi i32 [ %120, %119 ], [ %139, %138 ]
  %142 = add nuw nsw i64 %92, 1
  %143 = icmp eq i64 %142, %90
  br i1 %143, label %144, label %91, !llvm.loop !87

144:                                              ; preds = %140, %78
  %145 = phi i32 [ %69, %78 ], [ %141, %140 ]
  %146 = add nuw nsw i64 %68, 1
  %147 = icmp eq i64 %146, %66
  br i1 %147, label %148, label %67, !llvm.loop !88

148:                                              ; preds = %144, %60
  %149 = load ptr, ptr %53, align 8, !tbaa !89
  %150 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !90
  %152 = call i32 %151(ptr noundef %0, ptr noundef nonnull %4) #4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %148
  %155 = trunc i64 %56 to i32
  store i32 %155, ptr %45, align 8, !tbaa !77
  store i32 %61, ptr %51, align 4, !tbaa !76
  br label %192

156:                                              ; preds = %148
  %157 = add nuw i32 %61, 1
  %158 = load i32, ptr %7, align 8, !tbaa !78
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %60, label %160, !llvm.loop !92

160:                                              ; preds = %156, %55
  store i32 0, ptr %51, align 4, !tbaa !76
  %161 = add nsw i64 %56, 1
  %162 = load i32, ptr %47, align 4, !tbaa !73
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %55, label %165, !llvm.loop !93

165:                                              ; preds = %160, %43
  %166 = getelementptr inbounds %struct.my_coef_controller, ptr %6, i64 0, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !71
  %168 = add i32 %167, 1
  store i32 %168, ptr %166, align 8, !tbaa !71
  %169 = load ptr, ptr %5, align 8, !tbaa !29
  %170 = load i32, ptr %44, align 4, !tbaa !72
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.my_coef_controller, ptr %169, i64 0, i32 4
  store i32 1, ptr %173, align 4, !tbaa !73
  br label %189

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.my_coef_controller, ptr %169, i64 0, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !71
  %177 = load i32, ptr %10, align 8, !tbaa !74
  %178 = add i32 %177, -1
  %179 = icmp ult i32 %176, %178
  %180 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %181 = load ptr, ptr %180, align 8, !tbaa !36
  %182 = getelementptr inbounds %struct.my_coef_controller, ptr %169, i64 0, i32 4
  br i1 %179, label %183, label %186

183:                                              ; preds = %174
  %184 = getelementptr inbounds %struct.jpeg_component_info, ptr %181, i64 0, i32 3
  %185 = load i32, ptr %184, align 4, !tbaa !65
  store i32 %185, ptr %182, align 4, !tbaa !73
  br label %189

186:                                              ; preds = %174
  %187 = getelementptr inbounds %struct.jpeg_component_info, ptr %181, i64 0, i32 18
  %188 = load i32, ptr %187, align 8, !tbaa !75
  store i32 %188, ptr %182, align 4, !tbaa !73
  br label %189

189:                                              ; preds = %172, %183, %186
  %190 = getelementptr inbounds %struct.my_coef_controller, ptr %169, i64 0, i32 2
  store i32 0, ptr %190, align 4, !tbaa !76
  %191 = getelementptr inbounds %struct.my_coef_controller, ptr %169, i64 0, i32 3
  store i32 0, ptr %191, align 8, !tbaa !77
  br label %192

192:                                              ; preds = %189, %154
  %193 = phi i32 [ 0, %154 ], [ 1, %189 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #4
  ret i32 %193
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 0}
!14 = !{!15, !10, i64 40}
!15 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !16, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!16 = !{!"long", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!15, !7, i64 0}
!19 = !{!15, !7, i64 32}
!20 = !{!6, !7, i64 32}
!21 = !{!22, !7, i64 16}
!22 = !{!"jpeg_destination_mgr", !7, i64 0, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!23 = !{!6, !10, i64 48}
!24 = !{!6, !10, i64 252}
!25 = !{!6, !10, i64 300}
!26 = !{!6, !7, i64 8}
!27 = !{!28, !7, i64 0}
!28 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !16, i64 88}
!29 = !{!6, !7, i64 448}
!30 = !{!31, !7, i64 0}
!31 = !{!"", !32, i64 0, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !7, i64 32, !8, i64 40}
!32 = !{!"jpeg_c_coef_controller", !7, i64 0, !7, i64 8}
!33 = !{!31, !7, i64 8}
!34 = !{!31, !7, i64 32}
!35 = !{!28, !7, i64 8}
!36 = !{!7, !7, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!28, !7, i64 48}
!40 = !{!6, !7, i64 456}
!41 = !{!42, !7, i64 8}
!42 = !{!"jpeg_marker_writer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!43 = !{!6, !10, i64 296}
!44 = !{!45, !10, i64 40}
!45 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!46 = !{!6, !10, i64 40}
!47 = !{!45, !10, i64 44}
!48 = !{!6, !10, i64 44}
!49 = !{!45, !10, i64 48}
!50 = !{!45, !10, i64 52}
!51 = !{!6, !10, i64 52}
!52 = !{!45, !10, i64 288}
!53 = !{!6, !10, i64 64}
!54 = !{!45, !10, i64 384}
!55 = !{!6, !10, i64 260}
!56 = !{!57, !10, i64 128}
!57 = !{!"", !8, i64 0, !10, i64 128}
!58 = distinct !{!58, !38}
!59 = !{!6, !10, i64 68}
!60 = !{!6, !7, i64 80}
!61 = !{!45, !7, i64 296}
!62 = !{!63, !10, i64 0}
!63 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!64 = !{!63, !10, i64 8}
!65 = !{!63, !10, i64 12}
!66 = !{!63, !10, i64 16}
!67 = !{!63, !7, i64 80}
!68 = !{!12, !12, i64 0}
!69 = distinct !{!69, !38}
!70 = distinct !{!70, !38}
!71 = !{!31, !10, i64 16}
!72 = !{!6, !10, i64 316}
!73 = !{!31, !10, i64 28}
!74 = !{!6, !10, i64 312}
!75 = !{!63, !10, i64 72}
!76 = !{!31, !10, i64 20}
!77 = !{!31, !10, i64 24}
!78 = !{!6, !10, i64 352}
!79 = !{!28, !7, i64 64}
!80 = !{!63, !10, i64 4}
!81 = distinct !{!81, !38}
!82 = !{!63, !10, i64 52}
!83 = !{!63, !10, i64 68}
!84 = !{!63, !10, i64 56}
!85 = distinct !{!85, !38}
!86 = distinct !{!86, !38}
!87 = distinct !{!87, !38}
!88 = distinct !{!88, !38}
!89 = !{!6, !7, i64 488}
!90 = !{!91, !7, i64 8}
!91 = !{!"jpeg_entropy_encoder", !7, i64 0, !7, i64 8, !7, i64 16}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
