; ModuleID = 'gximage4.c'
source_filename = "gximage4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_image_strategies_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct.gs_int_point_s = type { i32, i32 }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gx_image_enum_s = type { i8, i8, i8, i8, i8, i8, i8, i8, %struct.gs_matrix_s, %struct.r_, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i8, i8, i8, i8, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, i32, i64, i64, i64, ptr, ptr, ptr, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.dd_, i32, i32, %struct.gs_int_point_s, i32, i32, i32, i32, [4 x %struct.sample_map_s], [256 x %struct.gx_image_clue_s] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.r_ = type { i32, i32, i32, i32 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.dd_ = type { %struct.gx_dda_fixed_point_s, %struct.gx_dda_fixed_point_s }
%struct.gx_dda_fixed_point_s = type { %struct.gx_dda_fixed_s, %struct.gx_dda_fixed_s }
%struct.gx_dda_fixed_s = type { %struct._a, %struct._e }
%struct._a = type { i64, i32 }
%struct._e = type { i64, i32, i32 }
%struct.sample_map_s = type { %union.sample_lookup_s, [16 x float], double, i32 }
%union.sample_lookup_s = type { [16 x i32], [192 x i8] }
%struct.gx_image_clue_s = type { %struct.gx_device_color_s, i32 }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_color_map_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@image_strategies = external local_unnamed_addr global %struct.gx_image_strategies_s, align 8
@sample_unpack_12_proc = external local_unnamed_addr global ptr, align 8
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@gx_dc_procs_ht_binary = external constant %struct.gx_device_color_procs_s, align 8
@sample_unpack_12.bits2frac_4 = internal unnamed_addr constant [16 x i16] [i16 0, i16 2184, i16 4368, i16 6552, i16 8736, i16 10920, i16 13104, i16 15288, i16 17472, i16 19656, i16 21840, i16 24024, i16 26208, i16 28392, i16 30576, i16 32760], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @gs_gximage4_init(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store ptr @image_strategy_frac, ptr getelementptr inbounds (%struct.gx_image_strategies_s, ptr @image_strategies, i64 0, i32 2), align 8, !tbaa !5
  store ptr @sample_unpack_12, ptr @sample_unpack_12_proc, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @image_strategy_frac(ptr nocapture noundef readonly %0) #1 {
  %2 = load i8, ptr %0, align 8, !tbaa !11
  %3 = icmp ugt i8 %2, 8
  %4 = select i1 %3, ptr @image_render_frac, ptr null
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @sample_unpack_12(ptr noundef returned writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture readnone %5, i32 noundef %6) #2 {
  %8 = ashr i32 %3, 1
  %9 = mul nsw i32 %8, 3
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = sub i32 %4, %9
  %13 = and i32 %3, 1
  %14 = icmp ne i32 %13, 0
  %15 = icmp sgt i32 %12, 0
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %40

17:                                               ; preds = %7
  switch i32 %12, label %18 [
    i32 2, label %33
    i32 1, label %40
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds i8, ptr %11, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !26
  %21 = and i8 %20, 15
  %22 = zext nneg i8 %21 to i16
  %23 = getelementptr inbounds i8, ptr %11, i64 2
  %24 = load i8, ptr %23, align 1, !tbaa !26
  %25 = zext i8 %24 to i16
  %26 = shl nuw nsw i16 %22, 11
  %27 = shl nuw nsw i16 %25, 3
  %28 = or disjoint i16 %26, %27
  store i16 %28, ptr %0, align 2, !tbaa !27
  %29 = sext i32 %6 to i64
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = getelementptr inbounds i8, ptr %11, i64 3
  %32 = add nsw i32 %12, -3
  br label %40

33:                                               ; preds = %17
  %34 = getelementptr inbounds i8, ptr %11, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !26
  %36 = and i8 %35, 15
  %37 = zext nneg i8 %36 to i64
  %38 = getelementptr inbounds [16 x i16], ptr @sample_unpack_12.bits2frac_4, i64 0, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !27
  store i16 %39, ptr %0, align 2, !tbaa !27
  br label %40

40:                                               ; preds = %33, %17, %18, %7
  %41 = phi ptr [ %30, %18 ], [ %0, %7 ], [ %0, %17 ], [ %0, %33 ]
  %42 = phi ptr [ %31, %18 ], [ %11, %7 ], [ %11, %17 ], [ %11, %33 ]
  %43 = phi i32 [ %32, %18 ], [ %12, %7 ], [ 0, %17 ], [ 0, %33 ]
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %45, label %74

45:                                               ; preds = %40
  %46 = sext i32 %6 to i64
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i32 [ %43, %45 ], [ %72, %47 ]
  %49 = phi ptr [ %42, %45 ], [ %71, %47 ]
  %50 = phi ptr [ %41, %45 ], [ %70, %47 ]
  %51 = load i8, ptr %49, align 1, !tbaa !26
  %52 = zext i8 %51 to i16
  %53 = getelementptr inbounds i8, ptr %49, i64 1
  %54 = load i8, ptr %53, align 1, !tbaa !26
  %55 = shl nuw nsw i16 %52, 7
  %56 = lshr i8 %54, 1
  %57 = and i8 %56, 120
  %58 = zext nneg i8 %57 to i16
  %59 = or disjoint i16 %55, %58
  store i16 %59, ptr %50, align 2, !tbaa !27
  %60 = getelementptr inbounds i8, ptr %50, i64 %46
  %61 = load i8, ptr %53, align 1, !tbaa !26
  %62 = and i8 %61, 15
  %63 = zext nneg i8 %62 to i16
  %64 = getelementptr inbounds i8, ptr %49, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !26
  %66 = zext i8 %65 to i16
  %67 = shl nuw nsw i16 %63, 11
  %68 = shl nuw nsw i16 %66, 3
  %69 = or disjoint i16 %67, %68
  store i16 %69, ptr %60, align 2, !tbaa !27
  %70 = getelementptr inbounds i8, ptr %60, i64 %46
  %71 = getelementptr inbounds i8, ptr %49, i64 3
  %72 = add nsw i32 %48, -3
  %73 = icmp sgt i32 %48, 5
  br i1 %73, label %47, label %74, !llvm.loop !29

74:                                               ; preds = %47, %40
  %75 = phi ptr [ %41, %40 ], [ %70, %47 ]
  %76 = phi ptr [ %42, %40 ], [ %71, %47 ]
  %77 = phi i32 [ %43, %40 ], [ %72, %47 ]
  switch i32 %77, label %99 [
    i32 2, label %78
    i32 1, label %95
  ]

78:                                               ; preds = %74
  %79 = load i8, ptr %76, align 1, !tbaa !26
  %80 = zext i8 %79 to i16
  %81 = getelementptr inbounds i8, ptr %76, i64 1
  %82 = load i8, ptr %81, align 1, !tbaa !26
  %83 = shl nuw nsw i16 %80, 7
  %84 = lshr i8 %82, 1
  %85 = and i8 %84, 120
  %86 = zext nneg i8 %85 to i16
  %87 = or disjoint i16 %83, %86
  store i16 %87, ptr %75, align 2, !tbaa !27
  %88 = sext i32 %6 to i64
  %89 = getelementptr inbounds i8, ptr %75, i64 %88
  %90 = load i8, ptr %81, align 1, !tbaa !26
  %91 = and i8 %90, 15
  %92 = zext nneg i8 %91 to i64
  %93 = getelementptr inbounds [16 x i16], ptr @sample_unpack_12.bits2frac_4, i64 0, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !27
  store i16 %94, ptr %89, align 2, !tbaa !27
  br label %99

95:                                               ; preds = %74
  %96 = load i8, ptr %76, align 1, !tbaa !26
  %97 = zext i8 %96 to i16
  %98 = shl nuw nsw i16 %97, 7
  store i16 %98, ptr %75, align 2, !tbaa !27
  br label %99

99:                                               ; preds = %74, %95, %78
  store i32 0, ptr %1, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define internal i32 @image_render_frac(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #3 {
  %7 = alloca %struct.gs_client_color_s, align 8
  %8 = alloca %struct.gx_device_color_s, align 8
  %9 = alloca %struct.gx_device_color_s, align 8
  %10 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !32
  %12 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 30
  %13 = load i32, ptr %12, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 23
  %15 = load i32, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 44
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 45
  %19 = load i32, ptr %18, align 4, !tbaa !36
  %20 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #9
  %25 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 27
  %26 = load i8, ptr %25, align 1, !tbaa !42
  %27 = tail call ptr @gx_device_cmap_procs(ptr noundef %5) #9
  %28 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.gx_color_map_procs_s, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %9) #9
  %32 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 3
  %33 = load i8, ptr %32, align 1, !tbaa !46
  %34 = zext i8 %33 to i32
  %35 = mul nsw i32 %34, %2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, ptr %1, i64 %36
  %38 = zext i32 %3 to i64
  %39 = getelementptr inbounds i16, ptr %37, i64 %38
  %40 = icmp eq i32 %4, 0
  br i1 %40, label %355, label %41

41:                                               ; preds = %6
  %42 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40
  %43 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa.struct !47
  %45 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa.struct !49
  %47 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa.struct !50
  %49 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa.struct !51
  %51 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 0, i32 1, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa.struct !52
  %53 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa.struct !53
  %55 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa.struct !54
  %57 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa.struct !55
  %59 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa.struct !56
  %61 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 1, i32 1, i32 1, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa.struct !57
  %63 = load i64, ptr %42, align 8, !tbaa !58
  %64 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 38
  %65 = load i64, ptr %64, align 8, !tbaa !59
  %66 = sub nsw i64 %63, %65
  %67 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 40, i32 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !60
  %69 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 38, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !61
  %71 = sub nsw i64 %68, %70
  %72 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 3
  %73 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 2
  %74 = getelementptr inbounds [4 x float], ptr %7, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %75 = call i32 %24(ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef %11, ptr noundef %5, i32 noundef 1) #9
  %76 = icmp eq i32 %3, 0
  br i1 %76, label %342, label %77

77:                                               ; preds = %41
  %78 = load i16, ptr %37, align 2, !tbaa !27
  %79 = xor i16 %78, -1
  %80 = add nsw i64 %44, 2048
  %81 = lshr i64 %80, 12
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i8 %26, 0
  %84 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %85 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %86 = icmp eq i8 %26, 0
  %87 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %88 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %89 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 1, i32 1
  %90 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 1, i32 2
  %91 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 2, i32 1
  %92 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 2, i32 2
  %93 = icmp eq i8 %26, 0
  %94 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 1
  %95 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 0, i32 2
  %96 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 1, i32 1
  %97 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 1, i32 2
  %98 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 2, i32 1
  %99 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 2, i32 2
  %100 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 3, i32 1
  %101 = getelementptr inbounds %struct.gx_image_enum_s, ptr %0, i64 0, i32 48, i64 3, i32 2
  %102 = getelementptr inbounds %struct.gx_device_color_s, ptr %8, i64 0, i32 1, i32 0, i32 1
  %103 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1, i32 0, i32 1
  %104 = getelementptr inbounds %struct.gx_device_color_s, ptr %8, i64 0, i32 1, i32 0, i32 1, i64 1
  %105 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1, i32 0, i32 1, i64 1
  %106 = getelementptr inbounds %struct.gx_device_color_s, ptr %8, i64 0, i32 1, i32 0, i32 2
  %107 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1, i32 0, i32 2
  %108 = getelementptr inbounds %struct.gx_device_color_s, ptr %8, i64 0, i32 1
  %109 = getelementptr inbounds %struct.gx_device_color_s, ptr %9, i64 0, i32 1
  %110 = icmp eq i32 %15, 0
  %111 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 28
  %112 = sub i32 0, %50
  %113 = sub i32 0, %60
  br label %114

114:                                              ; preds = %77, %314
  %115 = phi i32 [ undef, %77 ], [ %328, %314 ]
  %116 = phi i32 [ %56, %77 ], [ %337, %314 ]
  %117 = phi i16 [ 0, %77 ], [ %327, %314 ]
  %118 = phi i16 [ 0, %77 ], [ %326, %314 ]
  %119 = phi i16 [ 0, %77 ], [ %325, %314 ]
  %120 = phi i16 [ %79, %77 ], [ %324, %314 ]
  %121 = phi i16 [ 0, %77 ], [ %323, %314 ]
  %122 = phi i16 [ 0, %77 ], [ %322, %314 ]
  %123 = phi i16 [ 0, %77 ], [ %321, %314 ]
  %124 = phi i64 [ %54, %77 ], [ %320, %314 ]
  %125 = phi i32 [ %82, %77 ], [ %319, %314 ]
  %126 = phi i64 [ %44, %77 ], [ %318, %314 ]
  %127 = phi ptr [ %37, %77 ], [ %317, %314 ]
  %128 = phi i64 [ %54, %77 ], [ %340, %314 ]
  %129 = phi ptr [ %9, %77 ], [ %316, %314 ]
  %130 = phi ptr [ %8, %77 ], [ %315, %314 ]
  %131 = phi i32 [ %46, %77 ], [ %331, %314 ]
  %132 = phi i64 [ %44, %77 ], [ %334, %314 ]
  %133 = load i16, ptr %127, align 2, !tbaa !27
  switch i8 %33, label %250 [
    i8 4, label %134
    i8 3, label %190
    i8 1, label %238
  ]

134:                                              ; preds = %114
  %135 = getelementptr inbounds i16, ptr %127, i64 1
  %136 = load i16, ptr %135, align 2, !tbaa !27
  %137 = getelementptr inbounds i16, ptr %127, i64 2
  %138 = load i16, ptr %137, align 2, !tbaa !27
  %139 = getelementptr inbounds i16, ptr %127, i64 3
  %140 = load i16, ptr %139, align 2, !tbaa !27
  %141 = getelementptr inbounds i16, ptr %127, i64 4
  %142 = zext i16 %140 to i64
  %143 = shl nuw i64 %142, 48
  %144 = zext i16 %138 to i64
  %145 = shl nuw nsw i64 %144, 32
  %146 = zext i16 %136 to i64
  %147 = shl nuw nsw i64 %146, 16
  %148 = zext i16 %133 to i64
  %149 = or disjoint i64 %147, %148
  %150 = or disjoint i64 %149, %145
  %151 = or disjoint i64 %150, %143
  %152 = zext i16 %123 to i64
  %153 = shl nuw i64 %152, 48
  %154 = zext i16 %122 to i64
  %155 = shl nuw nsw i64 %154, 32
  %156 = or disjoint i64 %155, %153
  %157 = zext i16 %121 to i64
  %158 = shl nuw nsw i64 %157, 16
  %159 = or disjoint i64 %156, %158
  %160 = zext i16 %120 to i64
  %161 = or disjoint i64 %159, %160
  %162 = icmp eq i64 %151, %161
  br i1 %162, label %314, label %163

163:                                              ; preds = %134
  br i1 %93, label %165, label %164

164:                                              ; preds = %163
  call void %31(i16 noundef signext %133, i16 noundef signext %136, i16 noundef signext %138, i16 noundef signext %140, ptr noundef %129, ptr noundef %11, ptr noundef %5, i32 noundef 1) #9
  br label %256

165:                                              ; preds = %163
  %166 = load float, ptr %94, align 8, !tbaa !62
  %167 = fpext float %166 to double
  %168 = sitofp i16 %133 to double
  %169 = load double, ptr %95, align 8, !tbaa !63
  %170 = call double @llvm.fmuladd.f64(double %168, double %169, double %167)
  %171 = fptrunc double %170 to float
  store float %171, ptr %7, align 8, !tbaa !62
  %172 = load float, ptr %96, align 8, !tbaa !62
  %173 = fpext float %172 to double
  %174 = sitofp i16 %136 to double
  %175 = load double, ptr %97, align 8, !tbaa !63
  %176 = call double @llvm.fmuladd.f64(double %174, double %175, double %173)
  %177 = fptrunc double %176 to float
  store float %177, ptr %74, align 4, !tbaa !62
  %178 = load float, ptr %98, align 8, !tbaa !62
  %179 = fpext float %178 to double
  %180 = sitofp i16 %138 to double
  %181 = load double, ptr %99, align 8, !tbaa !63
  %182 = call double @llvm.fmuladd.f64(double %180, double %181, double %179)
  %183 = fptrunc double %182 to float
  store float %183, ptr %73, align 8, !tbaa !62
  %184 = load float, ptr %100, align 8, !tbaa !62
  %185 = fpext float %184 to double
  %186 = sitofp i16 %140 to double
  %187 = load double, ptr %101, align 8, !tbaa !63
  %188 = call double @llvm.fmuladd.f64(double %186, double %187, double %185)
  %189 = fptrunc double %188 to float
  store float %189, ptr %72, align 4, !tbaa !62
  br label %250

190:                                              ; preds = %114
  %191 = getelementptr inbounds i16, ptr %127, i64 1
  %192 = load i16, ptr %191, align 2, !tbaa !27
  %193 = getelementptr inbounds i16, ptr %127, i64 2
  %194 = load i16, ptr %193, align 2, !tbaa !27
  %195 = getelementptr inbounds i16, ptr %127, i64 3
  %196 = zext i16 %119 to i64
  %197 = shl nuw i64 %196, 48
  %198 = zext i16 %194 to i64
  %199 = shl nuw nsw i64 %198, 32
  %200 = or disjoint i64 %199, %197
  %201 = zext i16 %192 to i64
  %202 = shl nuw nsw i64 %201, 16
  %203 = or disjoint i64 %200, %202
  %204 = zext i16 %133 to i64
  %205 = or disjoint i64 %203, %204
  %206 = zext i16 %123 to i64
  %207 = shl nuw i64 %206, 48
  %208 = zext i16 %122 to i64
  %209 = shl nuw nsw i64 %208, 32
  %210 = or disjoint i64 %209, %207
  %211 = zext i16 %121 to i64
  %212 = shl nuw nsw i64 %211, 16
  %213 = or disjoint i64 %210, %212
  %214 = zext i16 %120 to i64
  %215 = or disjoint i64 %213, %214
  %216 = icmp eq i64 %205, %215
  br i1 %216, label %314, label %217

217:                                              ; preds = %190
  br i1 %86, label %219, label %218

218:                                              ; preds = %217
  call void %29(i16 noundef signext %133, i16 noundef signext %192, i16 noundef signext %194, ptr noundef %129, ptr noundef %11, ptr noundef %5, i32 noundef 1) #9
  br label %256

219:                                              ; preds = %217
  %220 = load float, ptr %87, align 8, !tbaa !62
  %221 = fpext float %220 to double
  %222 = sitofp i16 %133 to double
  %223 = load double, ptr %88, align 8, !tbaa !63
  %224 = call double @llvm.fmuladd.f64(double %222, double %223, double %221)
  %225 = fptrunc double %224 to float
  store float %225, ptr %7, align 8, !tbaa !62
  %226 = load float, ptr %89, align 8, !tbaa !62
  %227 = fpext float %226 to double
  %228 = sitofp i16 %192 to double
  %229 = load double, ptr %90, align 8, !tbaa !63
  %230 = call double @llvm.fmuladd.f64(double %228, double %229, double %227)
  %231 = fptrunc double %230 to float
  store float %231, ptr %74, align 4, !tbaa !62
  %232 = load float, ptr %91, align 8, !tbaa !62
  %233 = fpext float %232 to double
  %234 = sitofp i16 %194 to double
  %235 = load double, ptr %92, align 8, !tbaa !63
  %236 = call double @llvm.fmuladd.f64(double %234, double %235, double %233)
  %237 = fptrunc double %236 to float
  store float %237, ptr %73, align 8, !tbaa !62
  br label %250

238:                                              ; preds = %114
  %239 = getelementptr inbounds i16, ptr %127, i64 1
  %240 = icmp eq i16 %133, %120
  br i1 %240, label %314, label %241

241:                                              ; preds = %238
  br i1 %83, label %243, label %242

242:                                              ; preds = %241
  call void %29(i16 noundef signext %133, i16 noundef signext %133, i16 noundef signext %133, ptr noundef %129, ptr noundef %11, ptr noundef %5, i32 noundef 1) #9
  br label %256

243:                                              ; preds = %241
  %244 = load float, ptr %84, align 8, !tbaa !62
  %245 = fpext float %244 to double
  %246 = sitofp i16 %133 to double
  %247 = load double, ptr %85, align 8, !tbaa !63
  %248 = call double @llvm.fmuladd.f64(double %246, double %247, double %245)
  %249 = fptrunc double %248 to float
  store float %249, ptr %7, align 8, !tbaa !62
  br label %250

250:                                              ; preds = %114, %243, %219, %165
  %251 = phi ptr [ %127, %114 ], [ %239, %243 ], [ %195, %219 ], [ %141, %165 ]
  %252 = phi i16 [ %119, %114 ], [ %119, %243 ], [ %119, %219 ], [ %140, %165 ]
  %253 = phi i16 [ %118, %114 ], [ %118, %243 ], [ %194, %219 ], [ %138, %165 ]
  %254 = phi i16 [ %117, %114 ], [ %117, %243 ], [ %192, %219 ], [ %136, %165 ]
  %255 = call i32 %24(ptr noundef nonnull %7, ptr noundef nonnull %21, ptr noundef %129, ptr noundef %11, ptr noundef %5, i32 noundef 1) #9
  br label %256

256:                                              ; preds = %164, %218, %242, %250
  %257 = phi ptr [ %251, %250 ], [ %239, %242 ], [ %195, %218 ], [ %141, %164 ]
  %258 = phi i16 [ %252, %250 ], [ %119, %242 ], [ %119, %218 ], [ %140, %164 ]
  %259 = phi i16 [ %253, %250 ], [ %118, %242 ], [ %194, %218 ], [ %138, %164 ]
  %260 = phi i16 [ %254, %250 ], [ %117, %242 ], [ %192, %218 ], [ %136, %164 ]
  %261 = load ptr, ptr %8, align 8, !tbaa !66
  %262 = icmp eq ptr %261, @gx_dc_procs_pure
  br i1 %262, label %263, label %270

263:                                              ; preds = %256
  %264 = load ptr, ptr %9, align 8, !tbaa !66
  %265 = icmp eq ptr %264, @gx_dc_procs_pure
  br i1 %265, label %266, label %287

266:                                              ; preds = %263
  %267 = load i64, ptr %108, align 8, !tbaa !26
  %268 = load i64, ptr %109, align 8, !tbaa !26
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %314, label %287

270:                                              ; preds = %256
  %271 = icmp eq ptr %261, @gx_dc_procs_ht_binary
  %272 = load ptr, ptr %9, align 8
  %273 = icmp eq ptr %272, @gx_dc_procs_ht_binary
  %274 = select i1 %271, i1 %273, i1 false
  br i1 %274, label %275, label %287

275:                                              ; preds = %270
  %276 = load i64, ptr %102, align 8, !tbaa !26
  %277 = load i64, ptr %103, align 8, !tbaa !26
  %278 = icmp eq i64 %276, %277
  br i1 %278, label %279, label %287

279:                                              ; preds = %275
  %280 = load i64, ptr %104, align 8, !tbaa !26
  %281 = load i64, ptr %105, align 8, !tbaa !26
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %287

283:                                              ; preds = %279
  %284 = load i32, ptr %106, align 8, !tbaa !26
  %285 = load i32, ptr %107, align 8, !tbaa !26
  %286 = icmp eq i32 %284, %285
  br i1 %286, label %314, label %287

287:                                              ; preds = %270, %283, %279, %275, %266, %263
  br i1 %110, label %293, label %288

288:                                              ; preds = %287
  %289 = load ptr, ptr %111, align 8, !tbaa !71
  %290 = sub nsw i64 %132, %126
  %291 = sub nsw i64 %128, %124
  %292 = call i32 %289(ptr noundef %5, i64 noundef %126, i64 noundef %124, i64 noundef %290, i64 noundef %291, i64 noundef %66, i64 noundef %71, ptr noundef %130, i32 noundef %13) #9
  br label %305

293:                                              ; preds = %287
  %294 = add nsw i64 %132, 2048
  %295 = lshr i64 %294, 12
  %296 = trunc i64 %295 to i32
  %297 = sub nsw i32 %296, %125
  %298 = icmp slt i32 %297, 0
  %299 = select i1 %298, i32 %296, i32 %125
  %300 = call i32 @llvm.abs.i32(i32 %297, i1 true)
  %301 = load ptr, ptr %130, align 8, !tbaa !66
  %302 = getelementptr inbounds %struct.gx_device_color_procs_s, ptr %301, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !76
  %304 = call i32 %303(ptr noundef nonnull %130, i32 noundef %299, i32 noundef %17, i32 noundef %300, i32 noundef %19, ptr noundef %5, i32 noundef %13, ptr noundef null) #9
  br label %305

305:                                              ; preds = %293, %288
  %306 = phi i64 [ %132, %288 ], [ %126, %293 ]
  %307 = phi i32 [ %125, %288 ], [ %296, %293 ]
  %308 = phi i64 [ %128, %288 ], [ %124, %293 ]
  %309 = phi i32 [ %292, %288 ], [ %304, %293 ]
  %310 = icmp sgt i32 %309, -1
  %311 = select i1 %310, ptr %129, ptr %130
  %312 = select i1 %310, ptr %130, ptr %129
  %313 = select i1 %310, i32 %115, i32 %309
  br i1 %310, label %314, label %355

314:                                              ; preds = %266, %283, %305, %238, %190, %134
  %315 = phi ptr [ %130, %238 ], [ %130, %190 ], [ %130, %134 ], [ %130, %266 ], [ %311, %305 ], [ %130, %283 ]
  %316 = phi ptr [ %129, %238 ], [ %129, %190 ], [ %129, %134 ], [ %129, %266 ], [ %312, %305 ], [ %129, %283 ]
  %317 = phi ptr [ %239, %238 ], [ %195, %190 ], [ %141, %134 ], [ %257, %266 ], [ %257, %305 ], [ %257, %283 ]
  %318 = phi i64 [ %126, %238 ], [ %126, %190 ], [ %126, %134 ], [ %126, %266 ], [ %306, %305 ], [ %126, %283 ]
  %319 = phi i32 [ %125, %238 ], [ %125, %190 ], [ %125, %134 ], [ %125, %266 ], [ %307, %305 ], [ %125, %283 ]
  %320 = phi i64 [ %124, %238 ], [ %124, %190 ], [ %124, %134 ], [ %124, %266 ], [ %308, %305 ], [ %124, %283 ]
  %321 = phi i16 [ %123, %238 ], [ %123, %190 ], [ %123, %134 ], [ %258, %266 ], [ %258, %305 ], [ %258, %283 ]
  %322 = phi i16 [ %122, %238 ], [ %122, %190 ], [ %122, %134 ], [ %259, %266 ], [ %259, %305 ], [ %259, %283 ]
  %323 = phi i16 [ %121, %238 ], [ %121, %190 ], [ %121, %134 ], [ %260, %266 ], [ %260, %305 ], [ %260, %283 ]
  %324 = phi i16 [ %120, %238 ], [ %120, %190 ], [ %120, %134 ], [ %133, %266 ], [ %133, %305 ], [ %133, %283 ]
  %325 = phi i16 [ %119, %238 ], [ %119, %190 ], [ %140, %134 ], [ %258, %266 ], [ %258, %305 ], [ %258, %283 ]
  %326 = phi i16 [ %118, %238 ], [ %194, %190 ], [ %138, %134 ], [ %259, %266 ], [ %259, %305 ], [ %259, %283 ]
  %327 = phi i16 [ %117, %238 ], [ %192, %190 ], [ %136, %134 ], [ %260, %266 ], [ %260, %305 ], [ %260, %283 ]
  %328 = phi i32 [ %115, %238 ], [ %115, %190 ], [ %115, %134 ], [ %115, %266 ], [ %313, %305 ], [ %115, %283 ]
  %329 = icmp ult i32 %131, %50
  %330 = select i1 %329, i32 %52, i32 %112
  %331 = add i32 %330, %131
  %332 = zext i1 %329 to i64
  %333 = add i64 %132, %48
  %334 = add i64 %333, %332
  %335 = icmp ult i32 %116, %60
  %336 = select i1 %335, i32 %62, i32 %113
  %337 = add i32 %336, %116
  %338 = zext i1 %335 to i64
  %339 = add i64 %128, %58
  %340 = add i64 %339, %338
  %341 = icmp ult ptr %317, %39
  br i1 %341, label %114, label %342, !llvm.loop !78

342:                                              ; preds = %314, %41
  %343 = phi i64 [ %44, %41 ], [ %334, %314 ]
  %344 = phi ptr [ %8, %41 ], [ %315, %314 ]
  %345 = phi i64 [ %54, %41 ], [ %340, %314 ]
  %346 = phi i64 [ %44, %41 ], [ %318, %314 ]
  %347 = phi i64 [ %54, %41 ], [ %320, %314 ]
  %348 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 28
  %349 = load ptr, ptr %348, align 8, !tbaa !71
  %350 = sub nsw i64 %343, %346
  %351 = sub nsw i64 %345, %347
  %352 = call i32 %349(ptr noundef %5, i64 noundef %346, i64 noundef %347, i64 noundef %350, i64 noundef %351, i64 noundef %66, i64 noundef %71, ptr noundef %344, i32 noundef %13) #9
  %353 = icmp slt i32 %352, 0
  %354 = select i1 %353, i32 %352, i32 1
  br label %355

355:                                              ; preds = %305, %6, %342
  %356 = phi i32 [ %354, %342 ], [ 0, %6 ], [ %313, %305 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #9
  ret i32 %356
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare ptr @gx_device_cmap_procs(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 16}
!6 = !{!"gx_image_strategies_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!7, !7, i64 0}
!11 = !{!12, !8, i64 0}
!12 = !{!"gx_image_enum_s", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !13, i64 8, !15, i64 32, !17, i64 48, !17, i64 64, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !16, i64 136, !7, i64 144, !16, i64 152, !16, i64 156, !16, i64 160, !8, i64 164, !8, i64 165, !8, i64 166, !8, i64 167, !19, i64 168, !19, i64 200, !16, i64 232, !18, i64 240, !18, i64 248, !18, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !16, i64 288, !17, i64 296, !17, i64 312, !20, i64 328, !16, i64 456, !16, i64 460, !25, i64 464, !16, i64 472, !16, i64 476, !16, i64 480, !16, i64 484, !8, i64 488, !8, i64 1832}
!13 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!14 = !{!"float", !8, i64 0}
!15 = !{!"r_", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!16 = !{!"int", !8, i64 0}
!17 = !{!"gs_fixed_point_s", !18, i64 0, !18, i64 8}
!18 = !{!"long", !8, i64 0}
!19 = !{!"gs_fixed_rect_s", !17, i64 0, !17, i64 16}
!20 = !{!"dd_", !21, i64 0, !21, i64 64}
!21 = !{!"gx_dda_fixed_point_s", !22, i64 0, !22, i64 32}
!22 = !{!"gx_dda_fixed_s", !23, i64 0, !24, i64 16}
!23 = !{!"_a", !18, i64 0, !16, i64 8}
!24 = !{!"_e", !18, i64 0, !16, i64 8, !16, i64 12}
!25 = !{!"gs_int_point_s", !16, i64 0, !16, i64 4}
!26 = !{!8, !8, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{!16, !16, i64 0}
!32 = !{!12, !7, i64 96}
!33 = !{!12, !16, i64 232}
!34 = !{!12, !16, i64 160}
!35 = !{!12, !16, i64 472}
!36 = !{!12, !16, i64 476}
!37 = !{!12, !7, i64 104}
!38 = !{!39, !7, i64 0}
!39 = !{!"gs_color_space_s", !7, i64 0, !8, i64 8}
!40 = !{!41, !7, i64 48}
!41 = !{!"gs_color_space_type_s", !16, i64 0, !16, i64 4, !16, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!42 = !{!12, !8, i64 167}
!43 = !{!44, !7, i64 8}
!44 = !{!"gx_color_map_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!45 = !{!44, !7, i64 16}
!46 = !{!12, !8, i64 3}
!47 = !{i64 0, i64 8, !48, i64 8, i64 4, !31, i64 16, i64 8, !48, i64 24, i64 4, !31, i64 28, i64 4, !31, i64 32, i64 8, !48, i64 40, i64 4, !31, i64 48, i64 8, !48, i64 56, i64 4, !31, i64 60, i64 4, !31}
!48 = !{!18, !18, i64 0}
!49 = !{i64 0, i64 4, !31, i64 8, i64 8, !48, i64 16, i64 4, !31, i64 20, i64 4, !31, i64 24, i64 8, !48, i64 32, i64 4, !31, i64 40, i64 8, !48, i64 48, i64 4, !31, i64 52, i64 4, !31}
!50 = !{i64 0, i64 8, !48, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 8, !48, i64 24, i64 4, !31, i64 32, i64 8, !48, i64 40, i64 4, !31, i64 44, i64 4, !31}
!51 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 8, !48, i64 16, i64 4, !31, i64 24, i64 8, !48, i64 32, i64 4, !31, i64 36, i64 4, !31}
!52 = !{i64 0, i64 4, !31, i64 4, i64 8, !48, i64 12, i64 4, !31, i64 20, i64 8, !48, i64 28, i64 4, !31, i64 32, i64 4, !31}
!53 = !{i64 0, i64 8, !48, i64 8, i64 4, !31, i64 16, i64 8, !48, i64 24, i64 4, !31, i64 28, i64 4, !31}
!54 = !{i64 0, i64 4, !31, i64 8, i64 8, !48, i64 16, i64 4, !31, i64 20, i64 4, !31}
!55 = !{i64 0, i64 8, !48, i64 8, i64 4, !31, i64 12, i64 4, !31}
!56 = !{i64 0, i64 4, !31, i64 4, i64 4, !31}
!57 = !{i64 0, i64 4, !31}
!58 = !{!12, !18, i64 328}
!59 = !{!12, !18, i64 296}
!60 = !{!12, !18, i64 360}
!61 = !{!12, !18, i64 304}
!62 = !{!14, !14, i64 0}
!63 = !{!64, !65, i64 320}
!64 = !{!"sample_map_s", !8, i64 0, !8, i64 256, !65, i64 320, !16, i64 328}
!65 = !{!"double", !8, i64 0}
!66 = !{!67, !7, i64 0}
!67 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !25, i64 48, !68, i64 56}
!68 = !{!"_mask", !69, i64 0, !18, i64 24, !7, i64 32}
!69 = !{!"gs_client_color_s", !70, i64 0, !7, i64 16}
!70 = !{!"gs_paint_color_s", !8, i64 0}
!71 = !{!72, !7, i64 416}
!72 = !{!"gx_device_s", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !16, i64 44, !73, i64 48, !16, i64 64, !16, i64 68, !8, i64 72, !8, i64 80, !16, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !18, i64 144, !18, i64 152, !16, i64 160, !74, i64 168, !75, i64 192}
!73 = !{!"gx_device_color_info_s", !16, i64 0, !16, i64 4, !28, i64 8, !28, i64 10, !28, i64 12, !28, i64 14}
!74 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!75 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!76 = !{!77, !7, i64 8}
!77 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!78 = distinct !{!78, !30}
