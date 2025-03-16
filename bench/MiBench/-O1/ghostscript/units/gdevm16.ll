; ModuleID = 'gdevm16.c'
source_filename = "gdevm16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }

@.str = private unnamed_addr constant [8 x i8] c"image16\00", align 1
@mem_true16_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 16, i16 255, i16 255, i16 256, i16 256 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @mem_true16_map_rgb_color, ptr @mem_true16_map_color_rgb, ptr @mem_true16_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem_true16_copy_mono, ptr @mem_true16_copy_color, ptr @gx_default_draw_line, ptr @mem_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @mem_open(ptr noundef) #0

declare void @mem_get_initial_matrix(ptr noundef, ptr noundef) #0

declare i32 @gx_default_sync_output(ptr noundef) #0

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #0

declare i32 @mem_close(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal i64 @mem_true16_map_rgb_color(ptr nocapture readnone %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #1 {
  %5 = and i16 %1, -2048
  %6 = lshr i16 %2, 5
  %7 = and i16 %6, 2016
  %8 = or disjoint i16 %7, %5
  %9 = lshr i16 %3, 11
  %10 = or disjoint i16 %8, %9
  %11 = zext i16 %10 to i64
  ret i64 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @mem_true16_map_color_rgb(ptr nocapture readnone %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = trunc i64 %1 to i32
  %5 = lshr i32 %4, 11
  %6 = mul i32 %5, 2114
  %7 = lshr i32 %4, 15
  %8 = and i32 %7, 4095
  %9 = add i32 %6, %8
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %2, align 2, !tbaa !5
  %11 = lshr i32 %4, 6
  %12 = and i32 %11, 127
  %13 = mul nuw nsw i32 %12, 1040
  %14 = lshr i32 %12, 2
  %15 = add nuw nsw i32 %13, %14
  %16 = trunc i32 %15 to i16
  %17 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %16, ptr %17, align 2, !tbaa !5
  %18 = and i32 %4, 63
  %19 = mul nuw nsw i32 %18, 2114
  %20 = lshr i32 %18, 4
  %21 = add nuw nsw i32 %19, %20
  %22 = trunc i32 %21 to i16
  %23 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %22, ptr %23, align 2, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_true16_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #3 {
  %7 = trunc i64 %5 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %9 = or i32 %2, %1
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %13 = add nsw i32 %12, %3
  %14 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %15 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %16 = add nsw i32 %15, %4
  %17 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  br label %18

18:                                               ; preds = %11, %6
  %19 = phi i32 [ %3, %6 ], [ %13, %11 ]
  %20 = phi i32 [ %4, %6 ], [ %16, %11 ]
  %21 = phi i32 [ %2, %6 ], [ %17, %11 ]
  %22 = phi i32 [ %1, %6 ], [ %14, %11 ]
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %24 = load i32, ptr %23, align 8, !tbaa !9
  %25 = sub nsw i32 %24, %19
  %26 = icmp sgt i32 %22, %25
  %27 = sub nsw i32 %24, %22
  %28 = select i1 %26, i32 %27, i32 %19
  %29 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %30 = load i32, ptr %29, align 4, !tbaa !17
  %31 = sub nsw i32 %30, %20
  %32 = icmp sgt i32 %21, %31
  %33 = sub nsw i32 %30, %21
  %34 = select i1 %32, i32 %33, i32 %20
  %35 = icmp slt i32 %28, 1
  %36 = icmp slt i32 %34, 1
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %63, label %38

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %40 = load i32, ptr %39, align 8, !tbaa !18
  %41 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %42 = load ptr, ptr %41, align 8, !tbaa !25
  %43 = sext i32 %21 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !26
  %46 = shl i32 %22, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %45, i64 %47
  %49 = zext i32 %40 to i64
  br label %50

50:                                               ; preds = %38, %59
  %51 = phi i32 [ %34, %38 ], [ %60, %59 ]
  %52 = phi ptr [ %48, %38 ], [ %61, %59 ]
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %56, %53 ], [ %52, %50 ]
  %55 = phi i32 [ %57, %53 ], [ %28, %50 ]
  %56 = getelementptr inbounds i16, ptr %54, i64 1
  store i16 %8, ptr %54, align 2, !tbaa !5
  %57 = add nsw i32 %55, -1
  %58 = icmp sgt i32 %55, 1
  br i1 %58, label %53, label %59, !llvm.loop !27

59:                                               ; preds = %53
  %60 = add nsw i32 %51, -1
  %61 = getelementptr inbounds i8, ptr %52, i64 %49
  %62 = icmp sgt i32 %51, 1
  br i1 %62, label %50, label %63, !llvm.loop !29

63:                                               ; preds = %59, %18
  ret i32 0
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_true16_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #3 {
  %12 = trunc i64 %9 to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %14 = trunc i64 %10 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = or i32 %6, %5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %20 = add nsw i32 %19, %7
  %21 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %22 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %23 = sub nsw i32 %2, %22
  %24 = icmp slt i32 %6, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = add nsw i32 %8, %6
  %27 = mul nsw i32 %6, %3
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %1, i64 %29
  br label %31

31:                                               ; preds = %18, %25, %11
  %32 = phi i32 [ %20, %25 ], [ %20, %18 ], [ %7, %11 ]
  %33 = phi i32 [ %26, %25 ], [ %8, %18 ], [ %8, %11 ]
  %34 = phi i32 [ 0, %25 ], [ %6, %18 ], [ %6, %11 ]
  %35 = phi i32 [ %21, %25 ], [ %21, %18 ], [ %5, %11 ]
  %36 = phi i32 [ %23, %25 ], [ %23, %18 ], [ %2, %11 ]
  %37 = phi ptr [ %30, %25 ], [ %1, %18 ], [ %1, %11 ]
  %38 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %39 = load i32, ptr %38, align 8, !tbaa !9
  %40 = sub nsw i32 %39, %32
  %41 = icmp sgt i32 %35, %40
  %42 = sub nsw i32 %39, %35
  %43 = select i1 %41, i32 %42, i32 %32
  %44 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %45 = load i32, ptr %44, align 4, !tbaa !17
  %46 = sub nsw i32 %45, %33
  %47 = icmp sgt i32 %34, %46
  %48 = sub nsw i32 %45, %34
  %49 = select i1 %47, i32 %48, i32 %33
  %50 = icmp slt i32 %43, 1
  %51 = icmp slt i32 %49, 1
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %111, label %53

53:                                               ; preds = %31
  %54 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %55 = load i32, ptr %54, align 8, !tbaa !18
  %56 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %57 = load ptr, ptr %56, align 8, !tbaa !25
  %58 = sext i32 %34 to i64
  %59 = getelementptr inbounds ptr, ptr %57, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !26
  %61 = shl i32 %35, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  %64 = ashr i32 %36, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %37, i64 %65
  %67 = and i32 %36, 7
  %68 = lshr exact i32 128, %67
  %69 = icmp eq i64 %10, -1
  %70 = icmp eq i64 %9, -1
  %71 = sext i32 %3 to i64
  %72 = zext i32 %55 to i64
  br label %73

73:                                               ; preds = %53, %106
  %74 = phi i32 [ %49, %53 ], [ %107, %106 ]
  %75 = phi ptr [ %63, %53 ], [ %109, %106 ]
  %76 = phi ptr [ %66, %53 ], [ %108, %106 ]
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  %78 = load i8, ptr %76, align 1, !tbaa !30
  %79 = zext i8 %78 to i32
  br label %80

80:                                               ; preds = %99, %73
  %81 = phi ptr [ %75, %73 ], [ %103, %99 ]
  %82 = phi ptr [ %77, %73 ], [ %100, %99 ]
  %83 = phi i32 [ %79, %73 ], [ %101, %99 ]
  %84 = phi i32 [ %68, %73 ], [ %102, %99 ]
  %85 = phi i32 [ %43, %73 ], [ %104, %99 ]
  %86 = and i32 %84, %83
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %80
  br i1 %69, label %92, label %90

89:                                               ; preds = %80
  br i1 %70, label %92, label %90

90:                                               ; preds = %89, %88
  %91 = phi i16 [ %15, %88 ], [ %13, %89 ]
  store i16 %91, ptr %81, align 2, !tbaa !5
  br label %92

92:                                               ; preds = %90, %89, %88
  %93 = lshr i32 %84, 1
  %94 = icmp ult i32 %84, 2
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = getelementptr inbounds i8, ptr %82, i64 1
  %97 = load i8, ptr %82, align 1, !tbaa !30
  %98 = zext i8 %97 to i32
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi ptr [ %96, %95 ], [ %82, %92 ]
  %101 = phi i32 [ %98, %95 ], [ %83, %92 ]
  %102 = phi i32 [ 128, %95 ], [ %93, %92 ]
  %103 = getelementptr inbounds i16, ptr %81, i64 1
  %104 = add nsw i32 %85, -1
  %105 = icmp sgt i32 %85, 1
  br i1 %105, label %80, label %106, !llvm.loop !31

106:                                              ; preds = %99
  %107 = add nsw i32 %74, -1
  %108 = getelementptr inbounds i8, ptr %76, i64 %71
  %109 = getelementptr inbounds i8, ptr %75, i64 %72
  %110 = icmp sgt i32 %74, 1
  br i1 %110, label %73, label %111, !llvm.loop !32

111:                                              ; preds = %106, %31
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_true16_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #4 {
  %10 = or i32 %6, %5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %14 = sub nsw i32 %2, %13
  %15 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %16 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %17 = add nsw i32 %16, %7
  %18 = icmp slt i32 %6, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = add nsw i32 %8, %6
  %21 = mul nsw i32 %6, %3
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  br label %25

25:                                               ; preds = %12, %19, %9
  %26 = phi ptr [ %24, %19 ], [ %1, %12 ], [ %1, %9 ]
  %27 = phi i32 [ %14, %19 ], [ %14, %12 ], [ %2, %9 ]
  %28 = phi i32 [ %15, %19 ], [ %15, %12 ], [ %5, %9 ]
  %29 = phi i32 [ 0, %19 ], [ %6, %12 ], [ %6, %9 ]
  %30 = phi i32 [ %17, %19 ], [ %17, %12 ], [ %7, %9 ]
  %31 = phi i32 [ %20, %19 ], [ %8, %12 ], [ %8, %9 ]
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !9
  %34 = sub nsw i32 %33, %30
  %35 = icmp sgt i32 %28, %34
  %36 = sub nsw i32 %33, %28
  %37 = select i1 %35, i32 %36, i32 %30
  %38 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !17
  %40 = sub nsw i32 %39, %31
  %41 = icmp sgt i32 %29, %40
  %42 = sub nsw i32 %39, %29
  %43 = select i1 %41, i32 %42, i32 %31
  %44 = icmp slt i32 %37, 1
  %45 = icmp slt i32 %43, 1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %62, label %47

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %49 = load ptr, ptr %48, align 8, !tbaa !25
  %50 = sext i32 %29 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !26
  %53 = shl i32 %28, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %52, i64 %54
  %56 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %57 = load i32, ptr %56, align 8, !tbaa !18
  %58 = shl i32 %27, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %26, i64 %59
  %61 = shl nuw i32 %37, 1
  tail call void @bytes_copy_rectangle(ptr noundef %55, i32 noundef %57, ptr noundef %60, i32 noundef %3, i32 noundef %61, i32 noundef %43) #6
  br label %62

62:                                               ; preds = %25, %47
  ret i32 0
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #0

declare i32 @mem_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_get_params(ptr noundef, ptr noundef) #0

declare i32 @gx_default_put_params(ptr noundef, ptr noundef) #0

declare i64 @gx_default_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare ptr @gx_forward_get_xfont_procs(ptr noundef) #0

declare ptr @gx_forward_get_xfont_device(ptr noundef) #0

declare i64 @gx_default_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare ptr @gx_forward_get_page_device(ptr noundef) #0

declare i32 @gx_default_get_alpha_bits(ptr noundef, i32 noundef) #0

declare i32 @gx_default_copy_alpha(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) #0

declare i32 @gx_default_get_band(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @gx_default_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

declare i32 @gx_no_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @gx_default_get_clipping_box(ptr noundef, ptr noundef) #0

declare void @bytes_copy_rectangle(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"short", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 64}
!10 = !{!"gx_device_s", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !11, i64 40, !11, i64 44, !13, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !14, i64 144, !14, i64 152, !11, i64 160, !15, i64 168, !16, i64 192}
!11 = !{!"int", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"gx_device_color_info_s", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 10, !6, i64 12, !6, i64 14}
!14 = !{!"long", !7, i64 0}
!15 = !{!"gx_page_device_procs_s", !12, i64 0, !12, i64 8, !12, i64 16}
!16 = !{!"gx_device_procs_s", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!17 = !{!10, !11, i64 68}
!18 = !{!19, !11, i64 520}
!19 = !{!"gx_device_memory_s", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !11, i64 40, !11, i64 44, !13, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !7, i64 80, !11, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !14, i64 144, !14, i64 152, !11, i64 160, !15, i64 168, !16, i64 192, !12, i64 488, !20, i64 496, !11, i64 520, !11, i64 524, !12, i64 528, !12, i64 536, !12, i64 544, !22, i64 552, !23, i64 568, !24, i64 592, !11, i64 600, !11, i64 604, !11, i64 608, !11, i64 612, !11, i64 616, !14, i64 624}
!20 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!21 = !{!"float", !7, i64 0}
!22 = !{!"gs_const_string_s", !12, i64 0, !11, i64 8}
!23 = !{!"_c24", !14, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!24 = !{!"gs_log2_scale_point_s", !11, i64 0, !11, i64 4}
!25 = !{!19, !12, i64 536}
!26 = !{!12, !12, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !28}
!30 = !{!7, !7, i64 0}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
