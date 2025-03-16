; ModuleID = 'gximage1.c'
source_filename = "gximage1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_image_strategies_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gx_image_enum_s = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i64, i64, i64, ptr, ptr, ptr, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, [4 x %struct.sample_map_s], [256 x %struct.gx_image_clue_s] }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i64, i32 }
%struct._e = type { i64, i32, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], double, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }

@image_strategies = external local_unnamed_addr global %struct.gx_image_strategies_s, align 8
@.str = private unnamed_addr constant [11 x i8] c"image line\00", align 1
@mem_mono_device = external local_unnamed_addr constant %struct.gx_device_memory_s, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@byte_bit_run_length_0 = external local_unnamed_addr constant [256 x i8], align 16
@byte_reverse_bits = external local_unnamed_addr constant [256 x i8], align 16
@image_simple_expand.lmasks = internal unnamed_addr constant [9 x i8] c"\FF\7F?\1F\0F\07\03\01\00", align 1
@image_simple_expand.rmasks = internal unnamed_addr constant [9 x i8] c"\00\80\C0\E0\F0\F8\FC\FE\FF", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_gximage1_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @image_strategy_simple, ptr getelementptr inbounds (%struct.gx_image_strategies_s, ptr @image_strategies, i64 0, i32 1), align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @image_strategy_simple(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 24
  %7 = load i8, ptr %6, align 4, !tbaa !26
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %123

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !27
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %123

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 8, !tbaa !28
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %16, label %123

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 23
  %18 = load i32, ptr %17, align 8, !tbaa !29
  switch i32 %18, label %123 [
    i32 0, label %19
    i32 1, label %56
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 10
  %21 = load i64, ptr %20, align 8, !tbaa !30
  %22 = add i64 %3, 2047
  %23 = add i64 %22, %21
  %24 = ashr i64 %23, 12
  %25 = add nsw i64 %3, 2047
  %26 = ashr i64 %25, 12
  %27 = sub nsw i64 %24, %26
  %28 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 9, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !31
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %112, label %32

32:                                               ; preds = %19
  %33 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 31
  %34 = load i64, ptr %33, align 8, !tbaa !32
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %123

36:                                               ; preds = %32
  %37 = tail call i64 @llvm.abs.i64(i64 %27, i1 true)
  %38 = add nuw nsw i64 %37, 63
  %39 = lshr i64 %38, 3
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, -8
  %42 = add i32 %41, 8
  %43 = trunc i64 %37 to i32
  %44 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 22
  store i32 %43, ptr %44, align 4, !tbaa !33
  %45 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 21
  store i32 %42, ptr %45, align 8, !tbaa !34
  %46 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 16
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = load ptr, ptr %47, align 8, !tbaa !36
  %49 = tail call ptr %48(ptr noundef nonnull %47, i32 noundef %42, ptr noundef nonnull @.str) #7
  %50 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  store ptr %49, ptr %50, align 8, !tbaa !39
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %112

52:                                               ; preds = %36
  %53 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 17
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  %55 = tail call i32 @gx_default_end_image(ptr noundef %54, ptr noundef nonnull %0, i32 noundef 0) #7
  br label %123

56:                                               ; preds = %16
  %57 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 10, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !41
  %59 = add i64 %5, 2048
  %60 = add i64 %59, %58
  %61 = ashr i64 %60, 12
  %62 = add nsw i64 %5, 2048
  %63 = ashr i64 %62, 12
  %64 = sub nsw i64 %61, %63
  %65 = tail call i64 @llvm.abs.i64(i64 %64, i1 true)
  %66 = add nuw nsw i64 %65, 63
  %67 = and i64 %66, 4294967232
  %68 = shl nuw nsw i64 %65, 3
  %69 = add nuw nsw i64 %68, 56
  %70 = and i64 %69, 9223372036854775744
  %71 = add nuw nsw i64 %70, %67
  %72 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 9, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !31
  %74 = sext i32 %73 to i64
  %75 = icmp eq i64 %65, %74
  br i1 %75, label %82, label %76

76:                                               ; preds = %56
  %77 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 31
  %78 = load i64, ptr %77, align 8, !tbaa !32
  %79 = icmp ne i64 %78, 0
  %80 = icmp ugt i64 %71, 4294967295
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %123, label %84

82:                                               ; preds = %56
  %83 = icmp ugt i64 %71, 4294967295
  br i1 %83, label %123, label %84

84:                                               ; preds = %76, %82
  %85 = trunc i64 %65 to i32
  %86 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 22
  store i32 %85, ptr %86, align 4, !tbaa !33
  %87 = trunc i64 %71 to i32
  %88 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 21
  store i32 %87, ptr %88, align 8, !tbaa !34
  %89 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 16
  %90 = load ptr, ptr %89, align 8, !tbaa !35
  %91 = load ptr, ptr %90, align 8, !tbaa !36
  %92 = tail call ptr %91(ptr noundef nonnull %90, i32 noundef %87, ptr noundef nonnull @.str) #7
  %93 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  store ptr %92, ptr %93, align 8, !tbaa !39
  %94 = icmp eq ptr %92, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 17
  %97 = load ptr, ptr %96, align 8, !tbaa !40
  %98 = tail call i32 @gx_default_end_image(ptr noundef %97, ptr noundef nonnull %0, i32 noundef 0) #7
  br label %123

99:                                               ; preds = %84
  %100 = add nsw i64 %3, 2048
  %101 = lshr i64 %100, 12
  %102 = trunc i64 %101 to i32
  %103 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 41
  store i32 %102, ptr %103, align 8, !tbaa !42
  %104 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 42
  store i32 %102, ptr %104, align 4, !tbaa !43
  %105 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 8, i32 1
  %106 = load float, ptr %105, align 4, !tbaa !44
  %107 = fpext float %106 to double
  %108 = fadd double %107, 0x3F20000000000000
  %109 = fmul double %108, 4.096000e+03
  %110 = fptosi double %109 to i64
  %111 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 33
  store i64 %110, ptr %111, align 8, !tbaa !45
  br label %112

112:                                              ; preds = %36, %19, %99
  %113 = phi ptr [ @image_render_landscape, %99 ], [ @image_render_simple, %19 ], [ @image_render_simple, %36 ]
  %114 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 8
  %115 = load float, ptr %114, align 8, !tbaa !46
  %116 = fpext float %115 to double
  %117 = fadd double %116, 0x3F20000000000000
  %118 = fmul double %117, 4.096000e+03
  %119 = fptosi double %118 to i64
  %120 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 32
  store i64 %119, ptr %120, align 8, !tbaa !47
  %121 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 12
  store ptr @sample_unpack_copy, ptr %121, align 8, !tbaa !48
  %122 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 1
  store i8 8, ptr %122, align 1, !tbaa !49
  br label %123

123:                                              ; preds = %95, %82, %76, %16, %32, %52, %1, %9, %13, %112
  %124 = phi ptr [ %113, %112 ], [ null, %13 ], [ null, %9 ], [ null, %1 ], [ null, %52 ], [ null, %32 ], [ null, %16 ], [ null, %76 ], [ null, %82 ], [ null, %95 ]
  ret ptr %124
}

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @image_render_simple(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 32
  %10 = load i64, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !10
  %13 = add nsw i64 %12, 2047
  %14 = lshr i64 %13, 12
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 44
  %17 = load i32, ptr %16, align 8, !tbaa !56
  %18 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 45
  %19 = load i32, ptr %18, align 4, !tbaa !57
  %20 = icmp eq i32 %4, 0
  br i1 %20, label %154, label %21

21:                                               ; preds = %6
  %22 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = add i32 %3, 7
  %27 = lshr i32 %26, 3
  br label %135

28:                                               ; preds = %21
  %29 = load ptr, ptr getelementptr inbounds (%struct.gx_device_memory_s, ptr @mem_mono_device, i64 0, i32 21, i32 9), align 8, !tbaa !58
  %30 = icmp eq ptr %8, %29
  %31 = icmp sgt i64 %10, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %127

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 255
  %35 = load ptr, ptr %34, align 8, !tbaa !63
  %36 = icmp eq ptr %35, @gx_dc_procs_pure
  br i1 %36, label %37, label %127

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = icmp eq ptr %39, @gx_dc_procs_pure
  br i1 %40, label %41, label %127

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 0, i32 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !69
  %44 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 255, i32 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !69
  %46 = xor i64 %45, %43
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %127

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 25
  %50 = load i8, ptr %49, align 1, !tbaa !70
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %127

52:                                               ; preds = %48
  %53 = zext i32 %3 to i64
  %54 = mul nsw i64 %10, %53
  %55 = add i64 %54, 2047
  %56 = add i64 %55, %12
  %57 = lshr i64 %56, 12
  %58 = trunc i64 %57 to i32
  %59 = add nsw i32 %58, -1
  %60 = ashr i32 %15, 3
  %61 = ashr i32 %59, 3
  %62 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 27
  %63 = load ptr, ptr %62, align 8, !tbaa !71
  %64 = sext i32 %17 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = and i32 %15, 63
  %68 = and i32 %60, -8
  %69 = sub nsw i32 %61, %68
  %70 = add nsw i32 %69, 1
  %71 = sub nsw i32 %58, %15
  %72 = sext i32 %60 to i64
  %73 = getelementptr inbounds i8, ptr %66, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !69
  %75 = sext i32 %61 to i64
  %76 = getelementptr inbounds i8, ptr %66, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !69
  %78 = sext i32 %68 to i64
  %79 = getelementptr inbounds i8, ptr %66, i64 %78
  %80 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 10
  %81 = load i64, ptr %80, align 8, !tbaa !30
  %82 = icmp eq i64 %43, 0
  %83 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48
  %84 = load i32, ptr %83, align 8, !tbaa !69
  %85 = icmp eq i32 %84, 0
  %86 = xor i1 %82, %85
  %87 = sext i1 %86 to i8
  tail call fastcc void @image_simple_expand(ptr noundef %79, i32 noundef %67, i32 noundef %70, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %12, i64 noundef %81, i8 noundef zeroext %87)
  %88 = and i32 %15, 7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %52
  %91 = lshr exact i32 65280, %88
  %92 = zext i8 %74 to i32
  %93 = and i32 %91, %92
  %94 = load i8, ptr %73, align 1, !tbaa !69
  %95 = zext i8 %94 to i32
  %96 = and i32 %91, 126
  %97 = xor i32 %96, 127
  %98 = and i32 %97, %95
  %99 = add nuw nsw i32 %98, %93
  %100 = trunc i32 %99 to i8
  store i8 %100, ptr %73, align 1, !tbaa !69
  br label %101

101:                                              ; preds = %90, %52
  %102 = and i32 %58, 7
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %101
  %105 = lshr exact i32 65280, %102
  %106 = load i8, ptr %76, align 1, !tbaa !69
  %107 = zext i8 %106 to i32
  %108 = and i32 %105, %107
  %109 = zext i8 %77 to i32
  %110 = and i32 %105, 126
  %111 = xor i32 %110, 127
  %112 = and i32 %111, %109
  %113 = add nuw nsw i32 %108, %112
  %114 = trunc i32 %113 to i8
  store i8 %114, ptr %76, align 1, !tbaa !69
  br label %115

115:                                              ; preds = %104, %101
  %116 = icmp slt i32 %19, 2
  br i1 %116, label %154, label %120

117:                                              ; preds = %120
  %118 = add nuw nsw i32 %122, 1
  %119 = icmp eq i32 %118, %19
  br i1 %119, label %154, label %120, !llvm.loop !73

120:                                              ; preds = %115, %117
  %121 = phi i32 [ %126, %117 ], [ undef, %115 ]
  %122 = phi i32 [ %118, %117 ], [ 1, %115 ]
  %123 = add nsw i32 %122, %17
  %124 = tail call i32 %8(ptr noundef %5, ptr noundef %79, i32 noundef %67, i32 noundef %70, i64 noundef 0, i32 noundef %15, i32 noundef %123, i32 noundef %71, i32 noundef 1, i64 noundef 0, i64 noundef 1) #7
  %125 = icmp sgt i32 %124, -1
  %126 = select i1 %125, i32 %121, i32 %124
  br i1 %125, label %117, label %154

127:                                              ; preds = %48, %41, %37, %33, %28
  %128 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 21
  %129 = load i32, ptr %128, align 8, !tbaa !34
  %130 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 22
  %131 = load i32, ptr %130, align 4, !tbaa !33
  %132 = and i32 %15, 63
  %133 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 10
  %134 = load i64, ptr %133, align 8, !tbaa !30
  tail call fastcc void @image_simple_expand(ptr noundef nonnull %23, i32 noundef %132, i32 noundef %129, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %12, i64 noundef %134, i8 noundef zeroext 0)
  br label %135

135:                                              ; preds = %127, %25
  %136 = phi i32 [ 0, %25 ], [ %132, %127 ]
  %137 = phi i32 [ %27, %25 ], [ %129, %127 ]
  %138 = phi i32 [ %3, %25 ], [ %131, %127 ]
  %139 = phi ptr [ %1, %25 ], [ %23, %127 ]
  %140 = icmp slt i64 %10, 0
  %141 = select i1 %140, i32 %138, i32 0
  %142 = sub i32 %15, %141
  %143 = icmp sgt i32 %19, 0
  br i1 %143, label %147, label %154

144:                                              ; preds = %147
  %145 = add nuw nsw i32 %149, 1
  %146 = icmp eq i32 %145, %19
  br i1 %146, label %154, label %147, !llvm.loop !75

147:                                              ; preds = %135, %144
  %148 = phi i32 [ %153, %144 ], [ undef, %135 ]
  %149 = phi i32 [ %145, %144 ], [ 0, %135 ]
  %150 = add nsw i32 %149, %17
  %151 = tail call fastcc i32 @copy_portrait(ptr noundef %0, ptr noundef %139, i32 noundef %136, i32 noundef %137, i32 noundef %142, i32 noundef %150, i32 noundef %138, i32 noundef 1, ptr noundef %5)
  %152 = icmp sgt i32 %151, -1
  %153 = select i1 %152, i32 %148, i32 %151
  br i1 %152, label %144, label %154

154:                                              ; preds = %120, %117, %147, %144, %135, %115, %6
  %155 = phi i32 [ 0, %6 ], [ 1, %115 ], [ 1, %135 ], [ 1, %144 ], [ %153, %147 ], [ %126, %120 ], [ 0, %117 ]
  ret i32 %155
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_landscape(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 22
  %10 = load i32, ptr %9, align 4, !tbaa !33
  %11 = add i32 %10, 63
  %12 = lshr i32 %11, 3
  %13 = and i32 %12, 536870904
  %14 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 46
  %15 = load i32, ptr %14, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 47
  %17 = load i32, ptr %16, align 4, !tbaa !77
  %18 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 33
  %19 = load i64, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 8, i32 2
  %21 = load float, ptr %20, align 8, !tbaa !78
  %22 = fcmp olt float %21, 0.000000e+00
  %23 = sub nsw i32 0, %17
  %24 = select i1 %22, i32 1, i32 -1
  %25 = select i1 %22, i32 %23, i32 %17
  %26 = select i1 %22, i32 %17, i32 0
  %27 = add nsw i32 %26, %15
  %28 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 42
  %29 = load i32, ptr %28, align 4, !tbaa !43
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %97, label %31

31:                                               ; preds = %6
  %32 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 41
  %33 = load i32, ptr %32, align 8, !tbaa !42
  %34 = shl nuw i32 %13, 3
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %8, i64 %35
  %37 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !25
  %39 = add nsw i64 %38, 2047
  %40 = lshr i64 %39, 12
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %10, 0
  br i1 %22, label %63, label %43

43:                                               ; preds = %31
  %44 = sub nsw i32 %29, %33
  %45 = icmp eq i32 %29, %33
  %46 = select i1 %45, i1 true, i1 %42
  br i1 %46, label %92, label %47

47:                                               ; preds = %43
  %48 = add i32 %10, -1
  %49 = lshr i32 %48, 3
  %50 = zext nneg i32 %49 to i64
  br label %51

51:                                               ; preds = %51, %47
  %52 = phi i64 [ %50, %47 ], [ %58, %51 ]
  %53 = getelementptr inbounds i8, ptr %8, i64 %52
  %54 = trunc i64 %52 to i32
  %55 = shl i32 %54, 6
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %36, i64 %56
  tail call void @memflip8x8(ptr noundef %53, i32 noundef %13, ptr noundef %57, i32 noundef 8) #7
  %58 = add nsw i64 %52, -1
  %59 = icmp sgt i64 %52, 0
  br i1 %59, label %51, label %60, !llvm.loop !79

60:                                               ; preds = %51
  %61 = icmp slt i32 %44, 0
  %62 = select i1 %61, i32 %29, i32 %33
  br label %83

63:                                               ; preds = %31
  %64 = sub nsw i32 %33, %29
  %65 = icmp eq i32 %33, %29
  %66 = select i1 %65, i1 true, i1 %42
  br i1 %66, label %92, label %67

67:                                               ; preds = %63
  %68 = add i32 %10, -1
  %69 = lshr i32 %68, 3
  %70 = zext nneg i32 %69 to i64
  br label %71

71:                                               ; preds = %71, %67
  %72 = phi i64 [ %70, %67 ], [ %78, %71 ]
  %73 = getelementptr inbounds i8, ptr %8, i64 %72
  %74 = trunc i64 %72 to i32
  %75 = shl i32 %74, 6
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %36, i64 %76
  tail call void @memflip8x8(ptr noundef %73, i32 noundef %13, ptr noundef %77, i32 noundef 8) #7
  %78 = add nsw i64 %72, -1
  %79 = icmp sgt i64 %72, 0
  br i1 %79, label %71, label %80, !llvm.loop !79

80:                                               ; preds = %71
  %81 = icmp slt i32 %64, 0
  %82 = select i1 %81, i32 %33, i32 %29
  br label %83

83:                                               ; preds = %60, %80
  %84 = phi i32 [ %64, %80 ], [ %44, %60 ]
  %85 = phi i32 [ %82, %80 ], [ %62, %60 ]
  %86 = tail call i32 @llvm.abs.i32(i32 %84, i1 true)
  %87 = icmp sgt i64 %19, -1
  %88 = select i1 %87, i32 0, i32 %10
  %89 = sub i32 %41, %88
  %90 = and i32 %85, 7
  %91 = tail call fastcc i32 @copy_portrait(ptr noundef %0, ptr noundef %36, i32 noundef %90, i32 noundef 8, i32 noundef %85, i32 noundef %89, i32 noundef %86, i32 noundef %10, ptr noundef %5)
  br label %92

92:                                               ; preds = %83, %63, %43
  %93 = phi i32 [ 0, %43 ], [ 0, %63 ], [ %91, %83 ]
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %95, label %304

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 41
  store i32 %27, ptr %96, align 8, !tbaa !42
  br label %97

97:                                               ; preds = %95, %6
  %98 = phi i32 [ %93, %95 ], [ undef, %6 ]
  %99 = icmp eq i32 %4, 0
  br i1 %99, label %235, label %100

100:                                              ; preds = %97
  %101 = icmp eq i32 %25, 0
  br i1 %101, label %233, label %102

102:                                              ; preds = %100
  %103 = sext i1 %22 to i32
  %104 = zext nneg i32 %13 to i64
  %105 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %106 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 10, i32 1
  %107 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 41
  %108 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %109 = icmp sgt i64 %19, -1
  %110 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 41
  %111 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %112 = icmp sgt i64 %19, -1
  br label %113

113:                                              ; preds = %102, %227
  %114 = phi i32 [ %98, %102 ], [ %230, %227 ]
  %115 = phi i32 [ %27, %102 ], [ %229, %227 ]
  %116 = phi i32 [ %25, %102 ], [ %231, %227 ]
  %117 = phi ptr [ null, %102 ], [ %228, %227 ]
  %118 = add nsw i32 %115, %103
  %119 = and i32 %118, 7
  %120 = mul nuw i32 %119, %13
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, ptr %8, i64 %121
  %123 = icmp eq ptr %117, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = load i64, ptr %105, align 8, !tbaa !25
  %126 = load i64, ptr %106, align 8, !tbaa !41
  tail call fastcc void @image_simple_expand(ptr noundef %122, i32 noundef 0, i32 noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %125, i64 noundef %126, i8 noundef zeroext 0)
  br label %128

127:                                              ; preds = %113
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %122, ptr nonnull align 1 %117, i64 %104, i1 false)
  br label %128

128:                                              ; preds = %127, %124
  %129 = phi ptr [ %122, %124 ], [ %117, %127 ]
  br i1 %22, label %179, label %130

130:                                              ; preds = %128
  %131 = add nsw i32 %118, 1
  %132 = icmp eq i32 %119, 7
  br i1 %132, label %133, label %227

133:                                              ; preds = %130
  %134 = load i32, ptr %107, align 8, !tbaa !42
  %135 = load ptr, ptr %7, align 8, !tbaa !39
  %136 = load i32, ptr %9, align 4, !tbaa !33
  %137 = add i32 %136, 63
  %138 = lshr i32 %137, 3
  %139 = and i32 %138, 536870904
  %140 = shl nuw i32 %139, 3
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, ptr %135, i64 %141
  %143 = sub nsw i32 %131, %134
  %144 = load i64, ptr %108, align 8, !tbaa !25
  %145 = add nsw i64 %144, 2047
  %146 = lshr i64 %145, 12
  %147 = trunc i64 %146 to i32
  %148 = icmp eq i32 %131, %134
  %149 = icmp eq i32 %136, 0
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %172, label %151

151:                                              ; preds = %133
  %152 = add i32 %136, -1
  %153 = lshr i32 %152, 3
  %154 = zext nneg i32 %153 to i64
  br label %155

155:                                              ; preds = %155, %151
  %156 = phi i64 [ %154, %151 ], [ %162, %155 ]
  %157 = getelementptr inbounds i8, ptr %135, i64 %156
  %158 = trunc i64 %156 to i32
  %159 = shl i32 %158, 6
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, ptr %142, i64 %160
  tail call void @memflip8x8(ptr noundef %157, i32 noundef %139, ptr noundef %161, i32 noundef 8) #7
  %162 = add nsw i64 %156, -1
  %163 = icmp sgt i64 %156, 0
  br i1 %163, label %155, label %164, !llvm.loop !79

164:                                              ; preds = %155
  %165 = icmp slt i32 %143, 0
  %166 = select i1 %165, i32 %131, i32 %134
  %167 = tail call i32 @llvm.abs.i32(i32 %143, i1 true)
  %168 = select i1 %109, i32 0, i32 %136
  %169 = sub i32 %147, %168
  %170 = and i32 %166, 7
  %171 = tail call fastcc i32 @copy_portrait(ptr noundef %0, ptr noundef %142, i32 noundef %170, i32 noundef 8, i32 noundef %166, i32 noundef %169, i32 noundef %167, i32 noundef %136, ptr noundef %5)
  br label %172

172:                                              ; preds = %133, %164
  %173 = phi i32 [ %171, %164 ], [ 0, %133 ]
  %174 = icmp sgt i32 %173, -1
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 %131, ptr %107, align 8, !tbaa !42
  br label %176

176:                                              ; preds = %172, %175
  %177 = phi ptr [ null, %175 ], [ %129, %172 ]
  %178 = phi i32 [ %114, %175 ], [ %173, %172 ]
  br i1 %174, label %227, label %304

179:                                              ; preds = %128
  %180 = icmp eq i32 %119, 0
  br i1 %180, label %181, label %227

181:                                              ; preds = %179
  %182 = load i32, ptr %110, align 8, !tbaa !42
  %183 = load ptr, ptr %7, align 8, !tbaa !39
  %184 = load i32, ptr %9, align 4, !tbaa !33
  %185 = add i32 %184, 63
  %186 = lshr i32 %185, 3
  %187 = and i32 %186, 536870904
  %188 = shl nuw i32 %187, 3
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds i8, ptr %183, i64 %189
  %191 = sub nsw i32 %182, %118
  %192 = load i64, ptr %111, align 8, !tbaa !25
  %193 = add nsw i64 %192, 2047
  %194 = lshr i64 %193, 12
  %195 = trunc i64 %194 to i32
  %196 = icmp eq i32 %182, %118
  %197 = icmp eq i32 %184, 0
  %198 = select i1 %196, i1 true, i1 %197
  br i1 %198, label %220, label %199

199:                                              ; preds = %181
  %200 = add i32 %184, -1
  %201 = lshr i32 %200, 3
  %202 = zext nneg i32 %201 to i64
  br label %203

203:                                              ; preds = %203, %199
  %204 = phi i64 [ %202, %199 ], [ %210, %203 ]
  %205 = getelementptr inbounds i8, ptr %183, i64 %204
  %206 = trunc i64 %204 to i32
  %207 = shl i32 %206, 6
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, ptr %190, i64 %208
  tail call void @memflip8x8(ptr noundef %205, i32 noundef %187, ptr noundef %209, i32 noundef 8) #7
  %210 = add nsw i64 %204, -1
  %211 = icmp sgt i64 %204, 0
  br i1 %211, label %203, label %212, !llvm.loop !79

212:                                              ; preds = %203
  %213 = icmp slt i32 %191, 0
  %214 = select i1 %213, i32 %182, i32 %118
  %215 = tail call i32 @llvm.abs.i32(i32 %191, i1 true)
  %216 = select i1 %112, i32 0, i32 %184
  %217 = sub i32 %195, %216
  %218 = and i32 %214, 7
  %219 = tail call fastcc i32 @copy_portrait(ptr noundef %0, ptr noundef %190, i32 noundef %218, i32 noundef 8, i32 noundef %214, i32 noundef %217, i32 noundef %215, i32 noundef %184, ptr noundef %5)
  br label %220

220:                                              ; preds = %181, %212
  %221 = phi i32 [ %219, %212 ], [ 0, %181 ]
  %222 = icmp sgt i32 %221, -1
  br i1 %222, label %223, label %224

223:                                              ; preds = %220
  store i32 %118, ptr %110, align 8, !tbaa !42
  br label %224

224:                                              ; preds = %220, %223
  %225 = phi ptr [ null, %223 ], [ %129, %220 ]
  %226 = phi i32 [ %114, %223 ], [ %221, %220 ]
  br i1 %222, label %227, label %304

227:                                              ; preds = %176, %130, %224, %179
  %228 = phi ptr [ %177, %176 ], [ %129, %130 ], [ %225, %224 ], [ %129, %179 ]
  %229 = phi i32 [ %131, %176 ], [ %131, %130 ], [ %118, %224 ], [ %118, %179 ]
  %230 = phi i32 [ %178, %176 ], [ %114, %130 ], [ %226, %224 ], [ %114, %179 ]
  %231 = add i32 %116, %24
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %113, !llvm.loop !80

233:                                              ; preds = %227, %100
  %234 = phi i32 [ %27, %100 ], [ %229, %227 ]
  store i32 %234, ptr %28, align 4, !tbaa !43
  br label %304

235:                                              ; preds = %97
  %236 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 41
  %237 = load i32, ptr %236, align 8, !tbaa !42
  %238 = load ptr, ptr %7, align 8, !tbaa !39
  %239 = load i32, ptr %9, align 4, !tbaa !33
  %240 = add i32 %239, 63
  %241 = lshr i32 %240, 3
  %242 = and i32 %241, 536870904
  %243 = shl nuw i32 %242, 3
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i8, ptr %238, i64 %244
  %246 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %247 = load i64, ptr %246, align 8, !tbaa !25
  %248 = add nsw i64 %247, 2047
  %249 = lshr i64 %248, 12
  %250 = trunc i64 %249 to i32
  %251 = icmp eq i32 %239, 0
  br i1 %22, label %278, label %252

252:                                              ; preds = %235
  %253 = sub nsw i32 %27, %237
  %254 = icmp eq i32 %27, %237
  %255 = select i1 %254, i1 true, i1 %251
  br i1 %255, label %304, label %256

256:                                              ; preds = %252
  %257 = add i32 %239, -1
  %258 = lshr i32 %257, 3
  %259 = zext nneg i32 %258 to i64
  br label %260

260:                                              ; preds = %260, %256
  %261 = phi i64 [ %259, %256 ], [ %267, %260 ]
  %262 = getelementptr inbounds i8, ptr %238, i64 %261
  %263 = trunc i64 %261 to i32
  %264 = shl i32 %263, 6
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, ptr %245, i64 %265
  tail call void @memflip8x8(ptr noundef %262, i32 noundef %242, ptr noundef %266, i32 noundef 8) #7
  %267 = add nsw i64 %261, -1
  %268 = icmp sgt i64 %261, 0
  br i1 %268, label %260, label %269, !llvm.loop !79

269:                                              ; preds = %260
  %270 = icmp slt i32 %253, 0
  %271 = select i1 %270, i32 %27, i32 %237
  %272 = tail call i32 @llvm.abs.i32(i32 %253, i1 true)
  %273 = icmp sgt i64 %19, -1
  %274 = select i1 %273, i32 0, i32 %239
  %275 = sub i32 %250, %274
  %276 = and i32 %271, 7
  %277 = tail call fastcc i32 @copy_portrait(ptr noundef %0, ptr noundef %245, i32 noundef %276, i32 noundef 8, i32 noundef %271, i32 noundef %275, i32 noundef %272, i32 noundef %239, ptr noundef %5)
  br label %304

278:                                              ; preds = %235
  %279 = sub nsw i32 %237, %27
  %280 = icmp eq i32 %237, %27
  %281 = select i1 %280, i1 true, i1 %251
  br i1 %281, label %304, label %282

282:                                              ; preds = %278
  %283 = add i32 %239, -1
  %284 = lshr i32 %283, 3
  %285 = zext nneg i32 %284 to i64
  br label %286

286:                                              ; preds = %286, %282
  %287 = phi i64 [ %285, %282 ], [ %293, %286 ]
  %288 = getelementptr inbounds i8, ptr %238, i64 %287
  %289 = trunc i64 %287 to i32
  %290 = shl i32 %289, 6
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i8, ptr %245, i64 %291
  tail call void @memflip8x8(ptr noundef %288, i32 noundef %242, ptr noundef %292, i32 noundef 8) #7
  %293 = add nsw i64 %287, -1
  %294 = icmp sgt i64 %287, 0
  br i1 %294, label %286, label %295, !llvm.loop !79

295:                                              ; preds = %286
  %296 = icmp slt i32 %279, 0
  %297 = select i1 %296, i32 %237, i32 %27
  %298 = tail call i32 @llvm.abs.i32(i32 %279, i1 true)
  %299 = icmp sgt i64 %19, -1
  %300 = select i1 %299, i32 0, i32 %239
  %301 = sub i32 %250, %300
  %302 = and i32 %297, 7
  %303 = tail call fastcc i32 @copy_portrait(ptr noundef %0, ptr noundef %245, i32 noundef %302, i32 noundef 8, i32 noundef %297, i32 noundef %301, i32 noundef %298, i32 noundef %239, ptr noundef %5)
  br label %304

304:                                              ; preds = %176, %224, %295, %278, %269, %252, %92, %233
  %305 = phi i32 [ 0, %233 ], [ %93, %92 ], [ %277, %269 ], [ 0, %252 ], [ %303, %295 ], [ 0, %278 ], [ %178, %176 ], [ %226, %224 ]
  ret i32 %305
}

declare ptr @sample_unpack_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @image_simple_expand(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i8 noundef zeroext %8) unnamed_addr #3 {
  %10 = and i32 %4, 7
  %11 = lshr exact i32 128, %10
  %12 = trunc i32 %11 to i8
  %13 = lshr i32 255, %10
  %14 = ashr i32 %4, 3
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  %17 = xor i8 %8, -1
  %18 = icmp eq i32 %5, 0
  br i1 %18, label %497, label %19

19:                                               ; preds = %9
  %20 = add i32 %10, %5
  %21 = lshr i32 %20, 3
  %22 = zext nneg i32 %21 to i64
  %23 = and i32 %20, 7
  %24 = icmp eq i32 %23, 0
  %25 = xor i32 %23, 7
  %26 = shl nuw nsw i32 2, %25
  %27 = trunc i32 %26 to i8
  %28 = sext i1 %24 to i64
  %29 = add nsw i64 %28, %22
  %30 = select i1 %24, i8 1, i8 %27
  %31 = getelementptr inbounds i8, ptr %16, i64 %29
  %32 = sub i8 0, %30
  %33 = shl i8 %32, 1
  %34 = load i8, ptr %31, align 1, !tbaa !69
  %35 = icmp eq i64 %29, 0
  %36 = trunc i32 %13 to i8
  %37 = select i1 %35, i8 %36, i8 -1
  %38 = and i8 %33, %37
  %39 = and i8 %34, %30
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %78, label %41

41:                                               ; preds = %19
  %42 = zext i8 %34 to i32
  %43 = xor i32 %42, -1
  %44 = zext i8 %38 to i32
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = tail call i64 @llvm.smin.i64(i64 %29, i64 0)
  br label %52

49:                                               ; preds = %41
  %50 = add i8 %30, -1
  %51 = or i8 %34, %50
  br label %114

52:                                               ; preds = %47, %55
  %53 = phi i64 [ %56, %55 ], [ %29, %47 ]
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = add nsw i64 %53, -1
  %57 = getelementptr inbounds i8, ptr %16, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !69
  %59 = icmp eq i8 %58, -1
  br i1 %59, label %52, label %60, !llvm.loop !81

60:                                               ; preds = %52, %55
  %61 = phi i64 [ %48, %52 ], [ %53, %55 ]
  %62 = getelementptr inbounds i8, ptr %16, i64 %61
  switch i64 %61, label %75 [
    i64 0, label %69
    i64 1, label %63
  ]

63:                                               ; preds = %60
  %64 = load i8, ptr %16, align 1, !tbaa !69
  %65 = zext i8 %64 to i32
  %66 = xor i32 %65, -1
  %67 = and i32 %13, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60, %63
  %70 = lshr i32 %1, 3
  %71 = zext nneg i32 %70 to i64
  %72 = getelementptr inbounds i8, ptr %0, i64 %71
  %73 = sub i32 %2, %70
  %74 = zext i32 %73 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %72, i8 %17, i64 %74, i1 false)
  br label %131

75:                                               ; preds = %60, %63
  %76 = getelementptr inbounds i8, ptr %62, i64 -1
  %77 = load i8, ptr %76, align 1, !tbaa !69
  br label %114

78:                                               ; preds = %19
  %79 = and i8 %34, %38
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = tail call i64 @llvm.smin.i64(i64 %29, i64 0)
  br label %85

83:                                               ; preds = %78
  %84 = and i8 %34, %32
  br label %110

85:                                               ; preds = %81, %88
  %86 = phi i64 [ %89, %88 ], [ %29, %81 ]
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = add nsw i64 %86, -1
  %90 = getelementptr inbounds i8, ptr %16, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !69
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %85, label %93, !llvm.loop !82

93:                                               ; preds = %85, %88
  %94 = phi i64 [ %82, %85 ], [ %86, %88 ]
  %95 = getelementptr inbounds i8, ptr %16, i64 %94
  switch i64 %94, label %107 [
    i64 0, label %101
    i64 1, label %96
  ]

96:                                               ; preds = %93
  %97 = load i8, ptr %16, align 1, !tbaa !69
  %98 = zext i8 %97 to i32
  %99 = and i32 %13, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %93, %96
  %102 = lshr i32 %1, 3
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds i8, ptr %0, i64 %103
  %105 = sub i32 %2, %102
  %106 = zext i32 %105 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %104, i8 %8, i64 %106, i1 false)
  br label %131

107:                                              ; preds = %93, %96
  %108 = getelementptr inbounds i8, ptr %95, i64 -1
  %109 = load i8, ptr %108, align 1, !tbaa !69
  br label %110

110:                                              ; preds = %107, %83
  %111 = phi ptr [ %31, %83 ], [ %108, %107 ]
  %112 = phi i8 [ %84, %83 ], [ %109, %107 ]
  %113 = xor i8 %112, -1
  br label %114

114:                                              ; preds = %49, %75, %110
  %115 = phi ptr [ %111, %110 ], [ %31, %49 ], [ %76, %75 ]
  %116 = phi i8 [ %113, %110 ], [ %51, %49 ], [ %77, %75 ]
  %117 = zext i8 %116 to i64
  %118 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !69
  %120 = zext i8 %119 to i64
  %121 = getelementptr inbounds [256 x i8], ptr @byte_bit_run_length_0, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !69
  %123 = zext i8 %122 to i32
  %124 = add nsw i32 %123, -1
  %125 = icmp eq i8 %122, 0
  %126 = zext i1 %125 to i64
  %127 = getelementptr inbounds i8, ptr %115, i64 %126
  %128 = shl nuw i32 1, %124
  %129 = trunc i32 %128 to i8
  %130 = select i1 %125, i8 -128, i8 %129
  br label %131

131:                                              ; preds = %114, %101, %69
  %132 = phi ptr [ %127, %114 ], [ %62, %69 ], [ %95, %101 ]
  %133 = phi i8 [ %130, %114 ], [ %30, %69 ], [ %30, %101 ]
  %134 = phi i1 [ true, %114 ], [ false, %69 ], [ false, %101 ]
  br i1 %134, label %135, label %497

135:                                              ; preds = %131
  %136 = lshr i32 %1, 3
  %137 = zext nneg i32 %136 to i64
  %138 = getelementptr inbounds i8, ptr %0, i64 %137
  %139 = sub i32 %2, %136
  %140 = zext i32 %139 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %138, i8 %8, i64 %140, i1 false)
  %141 = add i64 %6, 2047
  %142 = and i64 %141, 4095
  %143 = add i64 %141, %7
  %144 = and i64 %143, 4095
  %145 = sub nsw i64 %144, %7
  %146 = icmp slt i64 %7, 0
  %147 = select i1 %146, i64 %145, i64 %142
  %148 = zext nneg i32 %1 to i64
  %149 = shl nuw nsw i64 %148, 12
  %150 = add nuw nsw i64 %147, %149
  %151 = icmp slt i64 %7, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %135
  %153 = sub nsw i64 0, %7
  %154 = zext i32 %5 to i64
  %155 = udiv i64 %153, %154
  %156 = sub nsw i64 0, %155
  %157 = urem i64 %153, %154
  %158 = trunc i64 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %152
  %161 = xor i64 %155, -1
  %162 = sub i32 %5, %158
  br label %168

163:                                              ; preds = %135
  %164 = zext i32 %5 to i64
  %165 = udiv i64 %7, %164
  %166 = urem i64 %7, %164
  %167 = trunc i64 %166 to i32
  br label %168

168:                                              ; preds = %163, %160, %152
  %169 = phi i64 [ %161, %160 ], [ %156, %152 ], [ %165, %163 ]
  %170 = phi i32 [ %162, %160 ], [ 0, %152 ], [ %167, %163 ]
  %171 = sub i32 %5, %170
  %172 = icmp ult i32 %170, %171
  %173 = shl i32 %170, 1
  %174 = sub i32 %170, %171
  %175 = add nsw i64 %169, 1
  %176 = select i1 %172, i32 %173, i32 %174
  %177 = select i1 %172, i64 %169, i64 %175
  %178 = add nsw i64 %177, %169
  %179 = icmp uge i32 %176, %171
  %180 = shl i32 %176, 1
  %181 = sub i32 %176, %171
  %182 = select i1 %179, i32 %181, i32 %180
  %183 = zext i1 %179 to i64
  %184 = shl i64 %178, 1
  %185 = or disjoint i64 %184, %183
  %186 = icmp ult i32 %182, %171
  %187 = shl i32 %182, 1
  %188 = sub i32 %182, %171
  %189 = add nsw i64 %185, 1
  %190 = select i1 %186, i32 %187, i32 %188
  %191 = select i1 %186, i64 %185, i64 %189
  %192 = add nsw i64 %191, %185
  %193 = icmp ult i32 %190, %171
  %194 = shl i32 %190, 1
  %195 = sub i32 %190, %171
  %196 = add nsw i64 %192, 1
  %197 = select i1 %193, i32 %194, i32 %195
  %198 = select i1 %193, i64 %192, i64 %196
  %199 = add nsw i64 %198, %192
  %200 = icmp ult i32 %197, %171
  %201 = sub i32 0, %171
  %202 = select i1 %200, i32 %190, i32 %201
  %203 = add i32 %202, %197
  %204 = select i1 %200, i64 %192, i64 %196
  %205 = add nsw i64 %199, %204
  %206 = icmp ult i32 %203, %171
  %207 = sub i32 0, %171
  %208 = select i1 %206, i32 %190, i32 %207
  %209 = add i32 %208, %203
  %210 = select i1 %206, i64 %192, i64 %196
  %211 = add nsw i64 %210, %205
  %212 = load i8, ptr %16, align 1, !tbaa !69
  %213 = sub i32 0, %170
  %214 = sub i32 0, %209
  %215 = sub i32 0, %190
  %216 = sub i32 0, %197
  %217 = sub i32 0, %203
  %218 = sub i32 0, %182
  %219 = sub i32 0, %170
  %220 = sub i32 0, %170
  %221 = sub i32 0, %190
  %222 = sub i32 0, %182
  %223 = sub i32 0, %170
  %224 = add nsw i64 %150, %7
  %225 = getelementptr i8, ptr %0, i64 2
  br label %226

226:                                              ; preds = %488, %168
  %227 = phi ptr [ %16, %168 ], [ %414, %488 ]
  %228 = phi i64 [ %150, %168 ], [ %415, %488 ]
  %229 = phi i32 [ %5, %168 ], [ %416, %488 ]
  %230 = phi i8 [ %212, %168 ], [ %417, %488 ]
  %231 = phi i8 [ %12, %168 ], [ %419, %488 ]
  %232 = xor i8 %230, -1
  %233 = and i8 %231, %232
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %247, label %235

235:                                              ; preds = %226, %235
  %236 = phi i8 [ %244, %235 ], [ %231, %226 ]
  %237 = phi i32 [ %241, %235 ], [ %229, %226 ]
  %238 = phi i64 [ %243, %235 ], [ %228, %226 ]
  %239 = icmp ult i32 %237, %170
  %240 = select i1 %239, i32 %171, i32 %213
  %241 = add i32 %240, %237
  %242 = select i1 %239, i64 %175, i64 %169
  %243 = add nsw i64 %242, %238
  %244 = lshr i8 %236, 1
  %245 = and i8 %244, %232
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %247, label %235, !llvm.loop !83

247:                                              ; preds = %235, %226
  %248 = phi i64 [ %228, %226 ], [ %243, %235 ]
  %249 = phi i32 [ %229, %226 ], [ %241, %235 ]
  %250 = phi i8 [ %231, %226 ], [ %244, %235 ]
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %340

252:                                              ; preds = %247
  %253 = getelementptr inbounds i8, ptr %227, i64 1
  %254 = load i8, ptr %253, align 1, !tbaa !69
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %303

256:                                              ; preds = %252, %293
  %257 = phi i32 [ %296, %293 ], [ %249, %252 ]
  %258 = phi i64 [ %299, %293 ], [ %248, %252 ]
  %259 = phi ptr [ %283, %293 ], [ %227, %252 ]
  %260 = getelementptr inbounds i8, ptr %259, i64 2
  %261 = load i8, ptr %260, align 1, !tbaa !69
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %270, label %263

263:                                              ; preds = %256
  %264 = getelementptr inbounds i8, ptr %259, i64 2
  %265 = icmp ult i32 %257, %190
  %266 = select i1 %265, i32 %171, i32 %215
  %267 = add i32 %266, %257
  %268 = select i1 %265, i64 %196, i64 %192
  %269 = add nsw i64 %268, %258
  br label %309

270:                                              ; preds = %256
  %271 = getelementptr inbounds i8, ptr %259, i64 3
  %272 = load i8, ptr %271, align 1, !tbaa !69
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %282, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds i8, ptr %259, i64 3
  %276 = icmp ult i32 %257, %197
  %277 = select i1 %276, i32 %171, i32 %216
  %278 = add i32 %277, %257
  %279 = zext i1 %276 to i64
  %280 = add i64 %258, %199
  %281 = add i64 %280, %279
  br label %309

282:                                              ; preds = %270
  %283 = getelementptr inbounds i8, ptr %259, i64 4
  %284 = load i8, ptr %283, align 1, !tbaa !69
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %293, label %286

286:                                              ; preds = %282
  %287 = icmp ult i32 %257, %203
  %288 = select i1 %287, i32 %171, i32 %217
  %289 = add i32 %288, %257
  %290 = zext i1 %287 to i64
  %291 = add i64 %258, %205
  %292 = add i64 %291, %290
  br label %309

293:                                              ; preds = %282
  %294 = icmp ult i32 %257, %209
  %295 = select i1 %294, i32 %171, i32 %214
  %296 = add i32 %295, %257
  %297 = zext i1 %294 to i64
  %298 = add i64 %211, %258
  %299 = add i64 %298, %297
  %300 = getelementptr inbounds i8, ptr %259, i64 5
  %301 = load i8, ptr %300, align 1, !tbaa !69
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %256, label %303

303:                                              ; preds = %293, %252
  %304 = phi ptr [ %227, %252 ], [ %283, %293 ]
  %305 = phi i64 [ %248, %252 ], [ %299, %293 ]
  %306 = phi i32 [ %249, %252 ], [ %296, %293 ]
  %307 = phi i8 [ %254, %252 ], [ %301, %293 ]
  %308 = getelementptr inbounds i8, ptr %304, i64 1
  br label %309

309:                                              ; preds = %303, %263, %286, %274
  %310 = phi ptr [ %264, %263 ], [ %275, %274 ], [ %283, %286 ], [ %308, %303 ]
  %311 = phi i64 [ %269, %263 ], [ %281, %274 ], [ %292, %286 ], [ %305, %303 ]
  %312 = phi i32 [ %267, %263 ], [ %278, %274 ], [ %289, %286 ], [ %306, %303 ]
  %313 = phi i8 [ %261, %263 ], [ %272, %274 ], [ %284, %286 ], [ %307, %303 ]
  %314 = icmp ugt i8 %313, 15
  br i1 %314, label %321, label %315

315:                                              ; preds = %309
  %316 = icmp ult i32 %312, %182
  %317 = select i1 %316, i32 %171, i32 %218
  %318 = add i32 %317, %312
  %319 = select i1 %316, i64 %189, i64 %185
  %320 = add nsw i64 %319, %311
  br label %321

321:                                              ; preds = %309, %315
  %322 = phi i64 [ %320, %315 ], [ %311, %309 ]
  %323 = phi i32 [ %318, %315 ], [ %312, %309 ]
  %324 = phi i8 [ 8, %315 ], [ -128, %309 ]
  %325 = xor i8 %313, -1
  %326 = and i8 %324, %313
  %327 = icmp eq i8 %326, 0
  br i1 %327, label %328, label %340

328:                                              ; preds = %321, %328
  %329 = phi i8 [ %337, %328 ], [ %324, %321 ]
  %330 = phi i32 [ %334, %328 ], [ %323, %321 ]
  %331 = phi i64 [ %336, %328 ], [ %322, %321 ]
  %332 = icmp ult i32 %330, %170
  %333 = select i1 %332, i32 %171, i32 %219
  %334 = add i32 %333, %330
  %335 = select i1 %332, i64 %175, i64 %169
  %336 = add nsw i64 %335, %331
  %337 = lshr i8 %329, 1
  %338 = and i8 %337, %325
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %340, label %328, !llvm.loop !84

340:                                              ; preds = %328, %321, %247
  %341 = phi ptr [ %227, %247 ], [ %310, %321 ], [ %310, %328 ]
  %342 = phi i64 [ %248, %247 ], [ %322, %321 ], [ %336, %328 ]
  %343 = phi i32 [ %249, %247 ], [ %323, %321 ], [ %334, %328 ]
  %344 = phi i8 [ %232, %247 ], [ %325, %321 ], [ %325, %328 ]
  %345 = phi i8 [ %250, %247 ], [ %324, %321 ], [ %337, %328 ]
  %346 = lshr i64 %342, 12
  %347 = trunc i64 %346 to i32
  %348 = icmp uge ptr %341, %132
  %349 = icmp eq i8 %345, %133
  %350 = select i1 %348, i1 %349, i1 false
  br i1 %350, label %413, label %351

351:                                              ; preds = %340
  %352 = xor i8 %344, -1
  br label %353

353:                                              ; preds = %353, %351
  %354 = phi i64 [ %342, %351 ], [ %361, %353 ]
  %355 = phi i32 [ %343, %351 ], [ %359, %353 ]
  %356 = phi i8 [ %345, %351 ], [ %362, %353 ]
  %357 = icmp ult i32 %355, %170
  %358 = select i1 %357, i32 %171, i32 %220
  %359 = add i32 %358, %355
  %360 = select i1 %357, i64 %175, i64 %169
  %361 = add nsw i64 %360, %354
  %362 = lshr i8 %356, 1
  %363 = and i8 %362, %352
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %365, label %353, !llvm.loop !85

365:                                              ; preds = %353
  %366 = icmp ult i8 %356, 2
  br i1 %366, label %367, label %413

367:                                              ; preds = %365
  %368 = getelementptr inbounds i8, ptr %341, i64 1
  %369 = load i8, ptr %368, align 1, !tbaa !69
  %370 = icmp eq i8 %369, -1
  br i1 %370, label %371, label %383

371:                                              ; preds = %367, %371
  %372 = phi ptr [ %380, %371 ], [ %368, %367 ]
  %373 = phi i32 [ %377, %371 ], [ %359, %367 ]
  %374 = phi i64 [ %379, %371 ], [ %361, %367 ]
  %375 = icmp ult i32 %373, %190
  %376 = select i1 %375, i32 %171, i32 %221
  %377 = add i32 %376, %373
  %378 = select i1 %375, i64 %196, i64 %192
  %379 = add nsw i64 %378, %374
  %380 = getelementptr inbounds i8, ptr %372, i64 1
  %381 = load i8, ptr %380, align 1, !tbaa !69
  %382 = icmp eq i8 %381, -1
  br i1 %382, label %371, label %383, !llvm.loop !86

383:                                              ; preds = %371, %367
  %384 = phi i64 [ %361, %367 ], [ %379, %371 ]
  %385 = phi i32 [ %359, %367 ], [ %377, %371 ]
  %386 = phi ptr [ %368, %367 ], [ %380, %371 ]
  %387 = phi i8 [ %369, %367 ], [ %381, %371 ]
  %388 = icmp ult i8 %387, -16
  br i1 %388, label %395, label %389

389:                                              ; preds = %383
  %390 = icmp ult i32 %385, %182
  %391 = select i1 %390, i32 %171, i32 %222
  %392 = add i32 %391, %385
  %393 = select i1 %390, i64 %189, i64 %185
  %394 = add nsw i64 %393, %384
  br label %395

395:                                              ; preds = %383, %389
  %396 = phi i64 [ %394, %389 ], [ %384, %383 ]
  %397 = phi i32 [ %392, %389 ], [ %385, %383 ]
  %398 = phi i8 [ 8, %389 ], [ -128, %383 ]
  %399 = and i8 %398, %387
  %400 = icmp eq i8 %399, 0
  br i1 %400, label %413, label %401

401:                                              ; preds = %395, %401
  %402 = phi i8 [ %410, %401 ], [ %398, %395 ]
  %403 = phi i32 [ %407, %401 ], [ %397, %395 ]
  %404 = phi i64 [ %409, %401 ], [ %396, %395 ]
  %405 = icmp ult i32 %403, %170
  %406 = select i1 %405, i32 %171, i32 %223
  %407 = add i32 %406, %403
  %408 = select i1 %405, i64 %175, i64 %169
  %409 = add nsw i64 %408, %404
  %410 = lshr i8 %402, 1
  %411 = and i8 %410, %387
  %412 = icmp eq i8 %411, 0
  br i1 %412, label %413, label %401, !llvm.loop !87

413:                                              ; preds = %401, %395, %340, %365
  %414 = phi ptr [ %341, %365 ], [ %341, %340 ], [ %386, %395 ], [ %386, %401 ]
  %415 = phi i64 [ %361, %365 ], [ %342, %340 ], [ %396, %395 ], [ %409, %401 ]
  %416 = phi i32 [ %359, %365 ], [ %343, %340 ], [ %397, %395 ], [ %407, %401 ]
  %417 = phi i8 [ %352, %365 ], [ %344, %340 ], [ %387, %395 ], [ %387, %401 ]
  %418 = phi i64 [ %361, %365 ], [ %224, %340 ], [ %396, %395 ], [ %409, %401 ]
  %419 = phi i8 [ %362, %365 ], [ %345, %340 ], [ %398, %395 ], [ %410, %401 ]
  %420 = lshr i64 %418, 12
  %421 = trunc i64 %420 to i32
  %422 = sub nsw i32 %421, %347
  %423 = icmp slt i32 %422, 0
  %424 = select i1 %423, i32 %421, i32 %347
  %425 = tail call i32 @llvm.abs.i32(i32 %422, i1 true)
  %426 = ashr i32 %424, 3
  %427 = sext i32 %426 to i64
  %428 = getelementptr i8, ptr %0, i64 %427
  %429 = and i32 %424, 7
  %430 = add nuw nsw i32 %429, %425
  %431 = icmp ult i32 %430, 9
  br i1 %431, label %432, label %440

432:                                              ; preds = %413
  %433 = zext nneg i32 %429 to i64
  %434 = getelementptr inbounds [9 x i8], ptr @image_simple_expand.lmasks, i64 0, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !69
  %436 = zext nneg i32 %430 to i64
  %437 = getelementptr inbounds [9 x i8], ptr @image_simple_expand.lmasks, i64 0, i64 %436
  %438 = load i8, ptr %437, align 1, !tbaa !69
  %439 = sub i8 %435, %438
  br label %488

440:                                              ; preds = %413
  %441 = add nsw i32 %430, -8
  %442 = icmp ult i32 %430, 17
  %443 = zext nneg i32 %429 to i64
  %444 = getelementptr inbounds [9 x i8], ptr @image_simple_expand.lmasks, i64 0, i64 %443
  %445 = load i8, ptr %444, align 1, !tbaa !69
  br i1 %442, label %446, label %453

446:                                              ; preds = %440
  %447 = load i8, ptr %428, align 1, !tbaa !69
  %448 = xor i8 %447, %445
  store i8 %448, ptr %428, align 1, !tbaa !69
  %449 = zext nneg i32 %441 to i64
  %450 = getelementptr inbounds [9 x i8], ptr @image_simple_expand.rmasks, i64 0, i64 %449
  %451 = getelementptr inbounds i8, ptr %428, i64 1
  %452 = load i8, ptr %451, align 1, !tbaa !69
  br label %488

453:                                              ; preds = %440
  %454 = getelementptr i8, ptr %428, i64 1
  %455 = load i8, ptr %428, align 1, !tbaa !69
  %456 = xor i8 %455, %445
  store i8 %456, ptr %428, align 1, !tbaa !69
  %457 = icmp ugt i32 %430, 63
  br i1 %457, label %477, label %458

458:                                              ; preds = %453
  %459 = add nsw i32 %430, -16
  %460 = add nsw i32 %425, -9
  %461 = add nsw i32 %460, %429
  %462 = tail call i32 @llvm.smin.i32(i32 %459, i32 7)
  %463 = sub i32 %461, %462
  %464 = lshr i32 %463, 3
  %465 = add nuw nsw i32 %464, 1
  %466 = zext nneg i32 %465 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %454, i8 %17, i64 %466, i1 false), !tbaa !69
  %467 = add nsw i32 %425, -24
  %468 = add nsw i32 %425, -9
  %469 = add nsw i32 %468, %429
  %470 = tail call i32 @llvm.smin.i32(i32 %459, i32 7)
  %471 = sub i32 %469, %470
  %472 = lshr i32 %471, 3
  %473 = zext nneg i32 %472 to i64
  %474 = getelementptr i8, ptr %225, i64 %473
  %475 = getelementptr i8, ptr %474, i64 %427
  %476 = add nsw i32 %467, %429
  br label %481

477:                                              ; preds = %453
  %478 = lshr i32 %441, 3
  %479 = zext nneg i32 %478 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %454, i8 %17, i64 %479, i1 false)
  %480 = getelementptr inbounds i8, ptr %454, i64 %479
  br label %481

481:                                              ; preds = %458, %477
  %482 = phi i32 [ %441, %477 ], [ %476, %458 ]
  %483 = phi ptr [ %480, %477 ], [ %475, %458 ]
  %484 = and i32 %482, 7
  %485 = zext nneg i32 %484 to i64
  %486 = getelementptr inbounds [9 x i8], ptr @image_simple_expand.rmasks, i64 0, i64 %485
  %487 = load i8, ptr %483, align 1, !tbaa !69
  br label %488

488:                                              ; preds = %446, %481, %432
  %489 = phi ptr [ %450, %446 ], [ %486, %481 ], [ %428, %432 ]
  %490 = phi i8 [ %452, %446 ], [ %487, %481 ], [ %439, %432 ]
  %491 = phi ptr [ %451, %446 ], [ %483, %481 ], [ %428, %432 ]
  %492 = load i8, ptr %489, align 1, !tbaa !69
  %493 = xor i8 %490, %492
  store i8 %493, ptr %491, align 1, !tbaa !69
  %494 = icmp uge ptr %414, %132
  %495 = icmp eq i8 %419, %133
  %496 = select i1 %494, i1 %495, i1 false
  br i1 %496, label %497, label %226

497:                                              ; preds = %488, %9, %131
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @copy_portrait(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #1 {
  %10 = ptrtoint ptr %1 to i64
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48
  %13 = load i32, ptr %12, align 8, !tbaa !69
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49
  %16 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 49, i64 255
  %17 = select i1 %14, ptr %15, ptr %16
  %18 = select i1 %14, ptr %16, ptr %15
  %19 = and i64 %10, 7
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = shl i32 %11, 3
  %23 = and i32 %22, 56
  %24 = add nuw nsw i32 %23, %2
  %25 = load ptr, ptr %17, align 8, !tbaa !88
  %26 = icmp eq ptr %25, @gx_dc_procs_pure
  br i1 %26, label %27, label %45

27:                                               ; preds = %9
  %28 = load ptr, ptr %18, align 8, !tbaa !88
  %29 = icmp eq ptr %28, @gx_dc_procs_pure
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = icmp eq i32 %7, 1
  %32 = and i32 %3, 7
  %33 = icmp eq i32 %32, 0
  %34 = or i1 %33, %31
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.gx_device_s, ptr %8, i64 0, i32 21, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !50
  br label %38

38:                                               ; preds = %30, %35
  %39 = phi ptr [ %37, %35 ], [ @gx_copy_mono_unaligned, %30 ]
  %40 = getelementptr inbounds %struct.gx_device_color_s, ptr %17, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !69
  %42 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !69
  %44 = tail call i32 %39(ptr noundef %8, ptr noundef %21, i32 noundef %24, i32 noundef %3, i64 noundef 0, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i64 noundef %41, i64 noundef %43) #7
  br label %69

45:                                               ; preds = %27, %9
  %46 = load ptr, ptr %18, align 8, !tbaa !88
  %47 = icmp eq ptr %46, @gx_dc_procs_pure
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !69
  %51 = icmp eq i64 %50, -1
  br i1 %51, label %62, label %52

52:                                               ; preds = %48, %45
  br i1 %26, label %53, label %57

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.gx_device_color_s, ptr %17, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !69
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %62, label %57

57:                                               ; preds = %53, %52
  %58 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %25, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !89
  %60 = tail call i32 %59(ptr noundef nonnull %17, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 252, ptr noundef null) #7
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %69

62:                                               ; preds = %53, %57, %48
  %63 = phi ptr [ %17, %48 ], [ %18, %57 ], [ %18, %53 ]
  %64 = phi i32 [ 1, %48 ], [ 0, %57 ], [ 0, %53 ]
  %65 = load ptr, ptr %63, align 8, !tbaa !88
  %66 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !91
  %68 = tail call i32 %67(ptr noundef nonnull %63, ptr noundef %21, i32 noundef %24, i32 noundef %3, i64 noundef 0, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef 252, i32 noundef %64) #7
  br label %69

69:                                               ; preds = %62, %57, %38
  %70 = phi i32 [ %44, %38 ], [ %68, %62 ], [ %60, %57 ]
  ret i32 %70
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @gx_copy_mono_unaligned(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @memflip8x8(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"gx_image_strategies_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !17, i64 392}
!11 = !{!"gx_image_enum_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !14, i64 32, !16, i64 48, !16, i64 64, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !15, i64 136, !7, i64 144, !15, i64 152, !15, i64 156, !15, i64 160, !8, i64 164, !8, i64 165, !8, i64 166, !8, i64 167, !18, i64 168, !18, i64 200, !15, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !15, i64 288, !16, i64 296, !16, i64 312, !19, i64 328, !15, i64 456, !15, i64 460, !24, i64 464, !15, i64 472, !15, i64 476, !15, i64 480, !15, i64 484, !8, i64 488, !8, i64 1832}
!12 = !{!"gs_matrix_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20}
!13 = !{!"float", !8, i64 0}
!14 = !{!"r_", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!15 = !{!"int", !8, i64 0}
!16 = !{!"gs_fixed_point_s", !17, i64 0, !17, i64 8}
!17 = !{!"long", !8, i64 0}
!18 = !{!"gs_fixed_rect_s", !16, i64 0, !16, i64 16}
!19 = !{!"dd_", !20, i64 0, !20, i64 64}
!20 = !{!"gx_dda_fixed_point_s", !21, i64 0, !21, i64 32}
!21 = !{!"gx_dda_fixed_s", !22, i64 0, !23, i64 16}
!22 = !{!"_a", !17, i64 0, !15, i64 8}
!23 = !{!"_e", !17, i64 0, !15, i64 8, !15, i64 12}
!24 = !{!"gs_int_point_s", !15, i64 0, !15, i64 4}
!25 = !{!11, !17, i64 424}
!26 = !{!11, !8, i64 164}
!27 = !{!11, !8, i64 3}
!28 = !{!11, !8, i64 0}
!29 = !{!11, !15, i64 160}
!30 = !{!11, !17, i64 48}
!31 = !{!11, !15, i64 40}
!32 = !{!11, !17, i64 240}
!33 = !{!11, !15, i64 156}
!34 = !{!11, !15, i64 152}
!35 = !{!11, !7, i64 112}
!36 = !{!37, !7, i64 0}
!37 = !{!"gs_memory_s", !38, i64 0}
!38 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!39 = !{!11, !7, i64 144}
!40 = !{!11, !7, i64 120}
!41 = !{!11, !17, i64 56}
!42 = !{!11, !15, i64 456}
!43 = !{!11, !15, i64 460}
!44 = !{!11, !13, i64 12}
!45 = !{!11, !17, i64 256}
!46 = !{!11, !13, i64 8}
!47 = !{!11, !17, i64 248}
!48 = !{!11, !7, i64 80}
!49 = !{!11, !8, i64 1}
!50 = !{!51, !7, i64 264}
!51 = !{!"gx_device_s", !15, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !15, i64 40, !15, i64 44, !52, i64 48, !15, i64 64, !15, i64 68, !8, i64 72, !8, i64 80, !15, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !17, i64 144, !17, i64 152, !15, i64 160, !54, i64 168, !55, i64 192}
!52 = !{!"gx_device_color_info_s", !15, i64 0, !15, i64 4, !53, i64 8, !53, i64 10, !53, i64 12, !53, i64 14}
!53 = !{!"short", !8, i64 0}
!54 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!55 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!56 = !{!11, !15, i64 472}
!57 = !{!11, !15, i64 476}
!58 = !{!59, !7, i64 264}
!59 = !{!"gx_device_memory_s", !15, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !15, i64 40, !15, i64 44, !52, i64 48, !15, i64 64, !15, i64 68, !8, i64 72, !8, i64 80, !15, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !17, i64 144, !17, i64 152, !15, i64 160, !54, i64 168, !55, i64 192, !7, i64 488, !12, i64 496, !15, i64 520, !15, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !60, i64 552, !61, i64 568, !62, i64 592, !15, i64 600, !15, i64 604, !15, i64 608, !15, i64 612, !15, i64 616, !17, i64 624}
!60 = !{!"gs_const_string_s", !7, i64 0, !15, i64 8}
!61 = !{!"_c24", !17, i64 0, !15, i64 8, !15, i64 12, !15, i64 16}
!62 = !{!"gs_log2_scale_point_s", !15, i64 0, !15, i64 4}
!63 = !{!64, !7, i64 0}
!64 = !{!"gx_image_clue_s", !65, i64 0, !15, i64 96}
!65 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !24, i64 48, !66, i64 56}
!66 = !{!"_mask", !67, i64 0, !17, i64 24, !7, i64 32}
!67 = !{!"gs_client_color_s", !68, i64 0, !7, i64 16}
!68 = !{!"gs_paint_color_s", !8, i64 0}
!69 = !{!8, !8, i64 0}
!70 = !{!11, !8, i64 165}
!71 = !{!59, !7, i64 536}
!72 = !{!7, !7, i64 0}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.unroll.disable"}
!75 = distinct !{!75, !74}
!76 = !{!11, !15, i64 480}
!77 = !{!11, !15, i64 484}
!78 = !{!11, !13, i64 16}
!79 = distinct !{!79, !74}
!80 = distinct !{!80, !74}
!81 = distinct !{!81, !74}
!82 = distinct !{!82, !74}
!83 = distinct !{!83, !74}
!84 = distinct !{!84, !74}
!85 = distinct !{!85, !74}
!86 = distinct !{!86, !74}
!87 = distinct !{!87, !74}
!88 = !{!65, !7, i64 0}
!89 = !{!90, !7, i64 8}
!90 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!91 = !{!90, !7, i64 16}
