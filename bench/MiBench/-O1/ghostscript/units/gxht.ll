; ModuleID = 'gxht.c'
source_filename = "gxht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_rop_source_s = type { ptr, i32, i32, i64, [2 x i64], i32 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_ht_cache_s = type { ptr, i32, ptr, i32, %struct.gx_ht_order_s, i32, i32, i64 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_ht_bit_s = type { i32, i32 }

@gx_dc_procs_ht_binary = dso_local constant %struct.gx_device_color_procs_s { ptr @gx_dc_ht_binary_load, ptr @gx_dc_ht_binary_fill_rectangle, ptr @gx_dc_default_fill_masked, ptr @dc_ht_binary_enum_ptrs, ptr @dc_ht_binary_reloc_ptrs }, align 8
@gx_dc_type_ht_binary = dso_local local_unnamed_addr global ptr @gx_dc_procs_ht_binary, align 8
@st_ht_cache = internal constant %struct.gs_memory_struct_type_s { i32 144, ptr @.str.6, ptr null, ptr null, ptr @ht_cache_enum_ptrs, ptr @ht_cache_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [23 x i8] c"alloc_ht_cache(struct)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"alloc_ht_cache(bits)\00", align 1
@st_ht_tiles = internal constant %struct.gs_memory_struct_type_s { i32 48, ptr @.str.7, ptr null, ptr null, ptr @ht_tiles_enum_ptrs, ptr @ht_tiles_reloc_ptrs, ptr null }, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"alloc_ht_cache(ht_tiles)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"free_ht_cache(ht_tiles)\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"free_ht_cache(bits)\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"free_ht_cache(struct)\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"ht cache\00", align 1
@st_ht_order = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"ht tiles\00", align 1
@gx_rop_no_source_0 = external constant %struct.gx_rop_source_s, align 8

; Function Attrs: nounwind uwtable
define internal noundef i32 @gx_dc_ht_binary_load(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %8, i64 0, i32 4, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.gx_ht_order_s, ptr %6, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  tail call void @gx_ht_init_cache(ptr noundef %8, ptr noundef %6)
  br label %15

15:                                               ; preds = %14, %4
  %16 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.gx_ht_order_s, ptr %6, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !25
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !26
  %23 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %8, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !27
  %25 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %8, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !28
  %27 = sdiv i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %24, i64 %28
  %30 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %24, i64 %28, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !29
  %32 = icmp eq i32 %31, %22
  br i1 %32, label %37, label %33

33:                                               ; preds = %15
  %34 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %8, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !33
  %36 = add i64 %35, %20
  tail call fastcc void @render_ht(ptr noundef %29, i32 noundef %22, ptr noundef %6, i64 noundef %36)
  br label %37

37:                                               ; preds = %33, %15
  %38 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 3
  store ptr %29, ptr %38, align 8, !tbaa !24
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_dc_ht_binary_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #0 {
  %9 = alloca %struct.gx_rop_source_s, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #8
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = icmp sgt i32 %11, 1
  %13 = and i32 %6, -513
  %14 = select i1 %12, i32 %13, i32 %6
  %15 = icmp eq ptr %7, null
  %16 = and i32 %14, 563
  %17 = icmp eq i32 %16, 48
  %18 = select i1 %15, i1 %17, i1 false
  %19 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i64 1
  %20 = load i64, ptr %19, align 8, !tbaa !24
  br i1 %18, label %21, label %33

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 34
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !45
  %32 = tail call i32 %23(ptr noundef %5, ptr noundef %25, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %27, i64 noundef %20, i32 noundef %29, i32 noundef %31) #8
  br label %75

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !24
  %36 = icmp eq i64 %35, -1
  %37 = and i32 %14, -16
  %38 = or disjoint i32 %37, 10
  %39 = select i1 %36, i32 %38, i32 %14
  %40 = icmp eq i64 %20, -1
  %41 = and i32 %39, -241
  %42 = or disjoint i32 %41, 160
  %43 = select i1 %40, i32 %42, i32 %39
  br i1 %15, label %44, label %52

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = tail call i64 %46(ptr noundef %5, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0) #8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) @gx_rop_no_source_0, i64 48, i1 false), !tbaa.struct !47
  %50 = getelementptr inbounds %struct.gx_rop_source_s, ptr %9, i64 0, i32 4
  %51 = getelementptr inbounds %struct.gx_rop_source_s, ptr %9, i64 0, i32 4, i64 1
  store i64 %47, ptr %51, align 8, !tbaa !49
  store i64 %47, ptr %50, align 8, !tbaa !49
  br label %52

52:                                               ; preds = %49, %44, %33
  %53 = phi ptr [ %7, %33 ], [ %9, %49 ], [ @gx_rop_no_source_0, %44 ]
  %54 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 35
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  %56 = load ptr, ptr %53, align 8, !tbaa !51
  %57 = getelementptr inbounds %struct.gx_rop_source_s, ptr %53, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !53
  %59 = getelementptr inbounds %struct.gx_rop_source_s, ptr %53, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !54
  %61 = getelementptr inbounds %struct.gx_rop_source_s, ptr %53, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !55
  %63 = getelementptr inbounds %struct.gx_rop_source_s, ptr %53, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !56
  %65 = icmp eq i32 %64, 0
  %66 = getelementptr inbounds %struct.gx_rop_source_s, ptr %53, i64 0, i32 4
  %67 = select i1 %65, ptr null, ptr %66
  %68 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !24
  %70 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !40
  %72 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 2, i32 1
  %73 = load i32, ptr %72, align 4, !tbaa !45
  %74 = call i32 %55(ptr noundef %5, ptr noundef %56, i32 noundef %58, i32 noundef %60, i64 noundef %62, ptr noundef %67, ptr noundef %69, ptr noundef nonnull %34, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %71, i32 noundef %73, i32 noundef %43) #8
  br label %75

75:                                               ; preds = %52, %21
  %76 = phi i32 [ %32, %21 ], [ %74, %52 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #8
  ret i32 %76
}

declare i32 @gx_dc_default_fill_masked(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @dc_ht_binary_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  switch i32 %2, label %18 [
    i32 0, label %5
    i32 1, label %8
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  br label %16

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = zext i32 %12 to i64
  %14 = sub nsw i64 0, %13
  %15 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %10, i64 %14
  br label %16

16:                                               ; preds = %5, %8
  %17 = phi ptr [ %15, %8 ], [ %7, %5 ]
  store ptr %17, ptr %3, align 8, !tbaa !48
  br label %18

18:                                               ; preds = %16, %4
  %19 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %16 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define internal void @dc_ht_binary_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.gx_device_color_s, ptr %0, i64 0, i32 1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = load ptr, ptr %4, align 8, !tbaa !24
  %10 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %9, ptr noundef %2) #8
  store ptr %10, ptr %4, align 8, !tbaa !24
  %11 = load ptr, ptr %5, align 8, !tbaa !24
  %12 = zext i32 %8 to i64
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %11, i64 %13
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #8
  %16 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %15, i64 %12
  store ptr %16, ptr %5, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_ht_cache_default_tiles() local_unnamed_addr #3 {
  ret i32 577
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @gx_ht_cache_default_bits() local_unnamed_addr #3 {
  ret i32 100000
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_ht_alloc_cache(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = tail call ptr %5(ptr noundef %0, ptr noundef nonnull @st_ht_cache, ptr noundef nonnull @.str) #8
  %7 = load ptr, ptr %0, align 8, !tbaa !61
  %8 = tail call ptr %7(ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull @.str.1) #8
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = tail call ptr %10(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull @st_ht_tiles, ptr noundef nonnull @.str.2) #8
  %12 = icmp eq ptr %6, null
  %13 = icmp eq ptr %8, null
  %14 = select i1 %12, i1 true, i1 %13
  %15 = icmp eq ptr %11, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  tail call void %19(ptr noundef nonnull %0, ptr noundef %11, ptr noundef nonnull @.str.2) #8
  %20 = load ptr, ptr %18, align 8, !tbaa !63
  tail call void %20(ptr noundef nonnull %0, ptr noundef %8, ptr noundef nonnull @.str.1) #8
  %21 = load ptr, ptr %18, align 8, !tbaa !63
  tail call void %21(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull @.str) #8
  br label %29

22:                                               ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %6, i64 0, i32 1
  store i32 %2, ptr %23, align 8, !tbaa !65
  %24 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %6, i64 0, i32 2
  store ptr %11, ptr %24, align 8, !tbaa !27
  %25 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %6, i64 0, i32 3
  store i32 %1, ptr %25, align 8, !tbaa !66
  %26 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %6, i64 0, i32 4, i32 12
  store ptr %6, ptr %26, align 8, !tbaa !67
  %27 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %6, i64 0, i32 4, i32 13
  store ptr null, ptr %27, align 8, !tbaa !68
  %28 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %6, i64 0, i32 4, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  store ptr null, ptr %11, align 8, !tbaa !69
  br label %29

29:                                               ; preds = %22, %17
  %30 = phi ptr [ null, %17 ], [ %6, %22 ]
  ret ptr %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @gx_ht_free_cache(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  tail call void %4(ptr noundef %0, ptr noundef %6, ptr noundef nonnull @.str.3) #8
  %7 = load ptr, ptr %3, align 8, !tbaa !63
  %8 = load ptr, ptr %1, align 8, !tbaa !64
  tail call void %7(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @.str.4) #8
  %9 = load ptr, ptr %3, align 8, !tbaa !63
  tail call void %9(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #8
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_check_tile_cache(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  %6 = icmp eq ptr %5, null
  %7 = icmp eq ptr %3, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %5, i64 0, i32 4, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.gx_ht_order_s, ptr %3, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @gx_ht_init_cache(ptr noundef nonnull %5, ptr noundef nonnull %3)
  br label %16

16:                                               ; preds = %15, %9
  %17 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %5, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !28
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %1, %16
  %22 = phi i32 [ %20, %16 ], [ 0, %1 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_ht_init_cache(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !70
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 2
  %7 = load i16, ptr %6, align 2, !tbaa !71
  %8 = zext i16 %7 to i32
  %9 = mul nuw i32 %8, %5
  %10 = add nuw i32 %9, 1
  %11 = zext i16 %4 to i64
  %12 = icmp ult i16 %4, 17
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = urem i64 32, %11
  %15 = sub nuw nsw i64 32, %14
  br label %16

16:                                               ; preds = %2, %13
  %17 = phi i64 [ %15, %13 ], [ %11, %2 ]
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 3
  %20 = load i16, ptr %19, align 4, !tbaa !72
  %21 = zext i16 %20 to i32
  %22 = mul nuw i32 %21, %8
  %23 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 4
  %24 = load i16, ptr %23, align 2, !tbaa !73
  %25 = load ptr, ptr %0, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !65
  %28 = udiv i32 %27, %22
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 %10)
  %30 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !66
  %32 = tail call i32 @llvm.umin.i32(i32 %29, i32 %31)
  %33 = icmp eq i32 %32, %10
  br i1 %33, label %34, label %50

34:                                               ; preds = %16
  %35 = mul i32 %32, %22
  %36 = lshr i32 %27, 1
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = udiv i32 %27, %32
  %40 = udiv i32 %39, %8
  %41 = shl i32 %40, 3
  %42 = and i32 %41, -64
  %43 = udiv i32 %42, %5
  %44 = tail call i32 @llvm.umin.i32(i32 %43, i32 64)
  %45 = mul nuw nsw i32 %44, %5
  %46 = add nuw nsw i32 %45, 63
  %47 = lshr i32 %46, 3
  %48 = and i32 %47, 2097144
  %49 = mul i32 %48, %8
  br label %50

50:                                               ; preds = %38, %34, %16
  %51 = phi i32 [ %49, %38 ], [ %22, %34 ], [ %22, %16 ]
  %52 = phi i32 [ %48, %38 ], [ %21, %34 ], [ %21, %16 ]
  %53 = phi i32 [ %45, %38 ], [ %18, %34 ], [ %18, %16 ]
  %54 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 8
  %55 = load i32, ptr %54, align 8, !tbaa !74
  %56 = add i32 %55, 1
  %57 = tail call i64 @gs_next_ids(i32 noundef %56) #8
  %58 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 7
  store i64 %57, ptr %58, align 8, !tbaa !33
  %59 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %59, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !75
  %60 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 5
  store i32 %32, ptr %60, align 8, !tbaa !77
  %61 = add i32 %32, %9
  %62 = udiv i32 %61, %32
  %63 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 6
  store i32 %62, ptr %63, align 4, !tbaa !28
  %64 = load i32, ptr %26, align 8, !tbaa !65
  %65 = zext i32 %64 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %25, i8 0, i64 %65, i1 false)
  %66 = icmp sgt i32 %32, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %50
  %68 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !27
  %70 = zext i32 %51 to i64
  %71 = zext nneg i32 %32 to i64
  br label %72

72:                                               ; preds = %67, %72
  %73 = phi i64 [ 0, %67 ], [ %86, %72 ]
  %74 = phi ptr [ %25, %67 ], [ %87, %72 ]
  %75 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %69, i64 %73
  %76 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %69, i64 %73, i32 1
  store i32 0, ptr %76, align 8, !tbaa !29
  %77 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %69, i64 %73, i32 2
  %78 = trunc i64 %73 to i32
  store i32 %78, ptr %77, align 4, !tbaa !57
  store ptr %74, ptr %75, align 8, !tbaa !69
  %79 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %75, i64 0, i32 1
  store i32 %52, ptr %79, align 8, !tbaa !78
  %80 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %75, i64 0, i32 2
  store i32 %53, ptr %80, align 4, !tbaa !79
  %81 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %75, i64 0, i32 2, i32 1
  store i32 %8, ptr %81, align 4, !tbaa !80
  %82 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %75, i64 0, i32 4
  store i16 %4, ptr %82, align 8, !tbaa !81
  %83 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %75, i64 0, i32 5
  store i16 %7, ptr %83, align 2, !tbaa !82
  %84 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %75, i64 0, i32 6
  store i16 %24, ptr %84, align 4, !tbaa !83
  %85 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %75, i64 0, i32 7
  store i16 %24, ptr %85, align 2, !tbaa !84
  %86 = add nuw nsw i64 %73, 1
  %87 = getelementptr inbounds i8, ptr %74, i64 %70
  %88 = icmp ult i64 %86, %71
  br i1 %88, label %72, label %89, !llvm.loop !85

89:                                               ; preds = %72, %50
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_check_tile_size(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = icmp eq ptr %8, null
  br i1 %9, label %50, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !27
  %13 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %12, i64 0, i32 5
  %14 = load i16, ptr %13, align 2, !tbaa !87
  %15 = zext i16 %14 to i32
  %16 = icmp slt i32 %15, %3
  br i1 %16, label %50, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %12, i64 0, i32 4
  %19 = load i16, ptr %18, align 8, !tbaa !88
  %20 = zext i16 %19 to i32
  %21 = icmp slt i32 %20, %1
  br i1 %21, label %50, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %12, i64 0, i32 7
  %24 = load i16, ptr %23, align 2, !tbaa !89
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = sext i32 %4 to i64
  %28 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 11, i64 %27, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !90
  %30 = sub nsw i32 0, %29
  %31 = tail call i32 @imod(i32 noundef %30, i32 noundef %15) #8
  %32 = add nsw i32 %31, %2
  %33 = load i16, ptr %13, align 2, !tbaa !87
  %34 = zext i16 %33 to i32
  %35 = srem i32 %32, %34
  %36 = add nsw i32 %35, %3
  %37 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %12, i64 0, i32 2, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !91
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %50, label %40

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 11, i64 %27
  %42 = load i32, ptr %41, align 8, !tbaa !92
  %43 = sub nsw i32 0, %42
  %44 = load i16, ptr %18, align 8, !tbaa !88
  %45 = zext i16 %44 to i32
  %46 = tail call i32 @imod(i32 noundef %43, i32 noundef %45) #8
  store i32 %46, ptr %5, align 4, !tbaa !26
  %47 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %12, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !93
  %49 = mul nsw i32 %48, %35
  br label %50

50:                                               ; preds = %26, %10, %17, %22, %6, %40
  %51 = phi i32 [ %49, %40 ], [ -1, %6 ], [ -1, %22 ], [ -1, %17 ], [ -1, %10 ], [ -1, %26 ]
  ret i32 %51
}

declare i32 @imod(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_render_ht(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 4, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !25
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !26
  %8 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !28
  %12 = sdiv i32 %7, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %9, i64 %13
  %15 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %9, i64 %13, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !29
  %17 = icmp eq i32 %16, %7
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !33
  %22 = add i64 %21, %5
  tail call fastcc void @render_ht(ptr noundef %14, i32 noundef %7, ptr noundef nonnull %19, i64 noundef %22)
  br label %23

23:                                               ; preds = %2, %18
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal fastcc void @render_ht(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.gx_ht_order_s, ptr %2, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %8, i64 %9
  %11 = load ptr, ptr %0, align 8, !tbaa !69
  br label %12

12:                                               ; preds = %84, %4
  %13 = phi ptr [ %10, %4 ], [ %86, %84 ]
  %14 = phi i32 [ %6, %4 ], [ %87, %84 ]
  %15 = sub nsw i32 %1, %14
  switch i32 %15, label %16 [
    i32 7, label %88
    i32 6, label %97
    i32 5, label %106
    i32 4, label %115
    i32 3, label %124
    i32 2, label %133
    i32 1, label %198
    i32 0, label %208
    i32 -7, label %142
    i32 -6, label %151
    i32 -5, label %160
    i32 -4, label %169
    i32 -3, label %178
    i32 -2, label %187
    i32 -1, label %196
  ]

16:                                               ; preds = %12
  %17 = icmp slt i32 %14, %1
  br i1 %17, label %18, label %51

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !94
  %21 = load i32, ptr %13, align 4, !tbaa !96
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %11, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !26
  %25 = xor i32 %24, %20
  store i32 %25, ptr %23, align 4, !tbaa !26
  %26 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 1
  %27 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 1, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !94
  %29 = load i32, ptr %26, align 4, !tbaa !96
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %11, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !26
  %33 = xor i32 %32, %28
  store i32 %33, ptr %31, align 4, !tbaa !26
  %34 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 2
  %35 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 2, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !94
  %37 = load i32, ptr %34, align 4, !tbaa !96
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %11, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !26
  %41 = xor i32 %40, %36
  store i32 %41, ptr %39, align 4, !tbaa !26
  %42 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 3
  %43 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 3, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !94
  %45 = load i32, ptr %42, align 4, !tbaa !96
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %11, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !26
  %49 = xor i32 %48, %44
  store i32 %49, ptr %47, align 4, !tbaa !26
  %50 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 4
  br label %84

51:                                               ; preds = %16
  %52 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -1
  %53 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -1, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !94
  %55 = load i32, ptr %52, align 4, !tbaa !96
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %11, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !26
  %59 = xor i32 %58, %54
  store i32 %59, ptr %57, align 4, !tbaa !26
  %60 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -2
  %61 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -2, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !94
  %63 = load i32, ptr %60, align 4, !tbaa !96
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %11, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !26
  %67 = xor i32 %66, %62
  store i32 %67, ptr %65, align 4, !tbaa !26
  %68 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -3
  %69 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -3, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !94
  %71 = load i32, ptr %68, align 4, !tbaa !96
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %11, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !26
  %75 = xor i32 %74, %70
  store i32 %75, ptr %73, align 4, !tbaa !26
  %76 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -4
  %77 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -4, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !94
  %79 = load i32, ptr %76, align 4, !tbaa !96
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8, ptr %11, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !26
  %83 = xor i32 %82, %78
  store i32 %83, ptr %81, align 4, !tbaa !26
  br label %84

84:                                               ; preds = %51, %18
  %85 = phi i32 [ -4, %51 ], [ 4, %18 ]
  %86 = phi ptr [ %76, %51 ], [ %50, %18 ]
  %87 = add nsw i32 %14, %85
  br label %12

88:                                               ; preds = %12
  %89 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 6
  %90 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 6, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !94
  %92 = load i32, ptr %89, align 4, !tbaa !96
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %11, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !26
  %96 = xor i32 %95, %91
  store i32 %96, ptr %94, align 4, !tbaa !26
  br label %97

97:                                               ; preds = %12, %88
  %98 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 5
  %99 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 5, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !94
  %101 = load i32, ptr %98, align 4, !tbaa !96
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %11, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !26
  %105 = xor i32 %104, %100
  store i32 %105, ptr %103, align 4, !tbaa !26
  br label %106

106:                                              ; preds = %12, %97
  %107 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 4
  %108 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 4, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !94
  %110 = load i32, ptr %107, align 4, !tbaa !96
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %11, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !26
  %114 = xor i32 %113, %109
  store i32 %114, ptr %112, align 4, !tbaa !26
  br label %115

115:                                              ; preds = %12, %106
  %116 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 3
  %117 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 3, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !94
  %119 = load i32, ptr %116, align 4, !tbaa !96
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %11, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !26
  %123 = xor i32 %122, %118
  store i32 %123, ptr %121, align 4, !tbaa !26
  br label %124

124:                                              ; preds = %12, %115
  %125 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 2
  %126 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 2, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !94
  %128 = load i32, ptr %125, align 4, !tbaa !96
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %11, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !26
  %132 = xor i32 %131, %127
  store i32 %132, ptr %130, align 4, !tbaa !26
  br label %133

133:                                              ; preds = %12, %124
  %134 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 1
  %135 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 1, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !94
  %137 = load i32, ptr %134, align 4, !tbaa !96
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %11, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !26
  %141 = xor i32 %140, %136
  store i32 %141, ptr %139, align 4, !tbaa !26
  br label %198

142:                                              ; preds = %12
  %143 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -7
  %144 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -7, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !94
  %146 = load i32, ptr %143, align 4, !tbaa !96
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %11, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !26
  %150 = xor i32 %149, %145
  store i32 %150, ptr %148, align 4, !tbaa !26
  br label %151

151:                                              ; preds = %12, %142
  %152 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -6
  %153 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -6, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !94
  %155 = load i32, ptr %152, align 4, !tbaa !96
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %11, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !26
  %159 = xor i32 %158, %154
  store i32 %159, ptr %157, align 4, !tbaa !26
  br label %160

160:                                              ; preds = %12, %151
  %161 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -5
  %162 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -5, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !94
  %164 = load i32, ptr %161, align 4, !tbaa !96
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, ptr %11, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !26
  %168 = xor i32 %167, %163
  store i32 %168, ptr %166, align 4, !tbaa !26
  br label %169

169:                                              ; preds = %12, %160
  %170 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -4
  %171 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -4, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !94
  %173 = load i32, ptr %170, align 4, !tbaa !96
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %11, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !26
  %177 = xor i32 %176, %172
  store i32 %177, ptr %175, align 4, !tbaa !26
  br label %178

178:                                              ; preds = %12, %169
  %179 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -3
  %180 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -3, i32 1
  %181 = load i32, ptr %180, align 4, !tbaa !94
  %182 = load i32, ptr %179, align 4, !tbaa !96
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %11, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !26
  %186 = xor i32 %185, %181
  store i32 %186, ptr %184, align 4, !tbaa !26
  br label %187

187:                                              ; preds = %12, %178
  %188 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -2
  %189 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 -2, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !94
  %191 = load i32, ptr %188, align 4, !tbaa !96
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8, ptr %11, i64 %192
  %194 = load i32, ptr %193, align 4, !tbaa !26
  %195 = xor i32 %194, %190
  store i32 %195, ptr %193, align 4, !tbaa !26
  br label %196

196:                                              ; preds = %12, %187
  %197 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %13, i64 -1
  br label %198

198:                                              ; preds = %12, %133, %196
  %199 = phi i64 [ -1, %196 ], [ 0, %133 ], [ 0, %12 ]
  %200 = phi ptr [ %197, %196 ], [ %13, %133 ], [ %13, %12 ]
  %201 = getelementptr %struct.gx_ht_bit_s, ptr %13, i64 %199, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !94
  %203 = load i32, ptr %200, align 4, !tbaa !96
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %11, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !26
  %207 = xor i32 %206, %202
  store i32 %207, ptr %205, align 4, !tbaa !26
  br label %208

208:                                              ; preds = %12, %198
  store i32 %1, ptr %5, align 8, !tbaa !29
  %209 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 3
  store i64 %3, ptr %209, align 8, !tbaa !97
  %210 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 1
  %211 = load i32, ptr %210, align 8, !tbaa !78
  %212 = getelementptr inbounds %struct.gx_ht_order_s, ptr %2, i64 0, i32 3
  %213 = load i16, ptr %212, align 4, !tbaa !72
  %214 = zext i16 %213 to i32
  %215 = icmp sgt i32 %211, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 4
  %218 = load i16, ptr %217, align 8, !tbaa !81
  %219 = zext i16 %218 to i32
  %220 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 5
  %221 = load i16, ptr %220, align 2, !tbaa !82
  %222 = zext i16 %221 to i32
  %223 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 2
  %224 = load i32, ptr %223, align 4, !tbaa !79
  tail call void @bits_replicate_horizontally(ptr noundef %11, i32 noundef %219, i32 noundef %222, i32 noundef %214, i32 noundef %224, i32 noundef %211) #8
  br label %225

225:                                              ; preds = %216, %208
  %226 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 2, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !80
  %228 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 5
  %229 = load i16, ptr %228, align 2, !tbaa !82
  %230 = zext i16 %229 to i32
  %231 = icmp sgt i32 %227, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %0, i64 0, i32 7
  %234 = load i16, ptr %233, align 2, !tbaa !84
  %235 = icmp eq i16 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = load i32, ptr %210, align 8, !tbaa !78
  tail call void @bits_replicate_vertically(ptr noundef %11, i32 noundef %230, i32 noundef %237, i32 noundef %227) #8
  br label %238

238:                                              ; preds = %236, %232, %225
  ret void
}

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal ptr @ht_cache_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #0 {
  switch i32 %2, label %5 [
    i32 0, label %10
    i32 1, label %12
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_ht_order, i64 0, i32 4), align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 4
  %8 = add i32 %2, -2
  %9 = tail call ptr %6(ptr noundef nonnull %7, i32 noundef 96, i32 noundef %8, ptr noundef %3) #8
  br label %15

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !64
  store ptr %11, ptr %3, align 8, !tbaa !48
  br label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !27
  store ptr %14, ptr %3, align 8, !tbaa !48
  br label %15

15:                                               ; preds = %5, %10, %12
  %16 = phi ptr [ %9, %5 ], [ @ptr_struct_procs, %12 ], [ @ptr_struct_procs, %10 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal void @ht_cache_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_ht_order, i64 0, i32 5), align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 4
  tail call void %4(ptr noundef nonnull %5, i32 noundef 96, ptr noundef %2) #8
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #8
  store ptr %7, ptr %0, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  %10 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %9, ptr noundef %2) #8
  store ptr %10, ptr %8, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @ht_tiles_enum_ptrs(ptr nocapture readnone %0, i32 %1, i32 %2, ptr nocapture readnone %3) #3 {
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal void @ht_tiles_reloc_ptrs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef nonnull %4, ptr noundef %2) #8
  switch i32 %1, label %9 [
    i32 48, label %8
    i32 0, label %25
  ]

8:                                                ; preds = %6
  store ptr %7, ptr %0, align 8, !tbaa !69
  br label %25

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !69
  %12 = ptrtoint ptr %11 to i64
  %13 = load ptr, ptr %0, align 8, !tbaa !69
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %12, %14
  %16 = and i64 %15, 4294967295
  br label %17

17:                                               ; preds = %9, %17
  %18 = phi i32 [ %1, %9 ], [ %22, %17 ]
  %19 = phi ptr [ %7, %9 ], [ %23, %17 ]
  %20 = phi ptr [ %0, %9 ], [ %21, %17 ]
  store ptr %19, ptr %20, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.gx_ht_tile_s, ptr %20, i64 1
  %22 = add i32 %18, -48
  %23 = getelementptr inbounds i8, ptr %19, i64 %16
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %17, !llvm.loop !101

25:                                               ; preds = %17, %6, %3, %8
  ret void
}

declare void @bits_replicate_horizontally(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @bits_replicate_vertically(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 192}
!6 = !{!"gs_imager_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gx_line_params_s", !11, i64 0, !12, i64 4, !12, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 32}
!11 = !{!"float", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"gx_dash_params_s", !7, i64 0, !12, i64 8, !11, i64 12, !12, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24, !15, i64 32, !12, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 8}
!18 = !{!6, !7, i64 200}
!19 = !{!20, !7, i64 104}
!20 = !{!"gx_ht_cache_s", !7, i64 0, !12, i64 8, !7, i64 16, !12, i64 24, !21, i64 32, !12, i64 128, !12, i64 132, !15, i64 136}
!21 = !{!"gx_ht_order_s", !22, i64 0, !16, i64 40, !16, i64 42, !16, i64 44, !16, i64 46, !16, i64 48, !16, i64 50, !12, i64 52, !12, i64 56, !12, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!22 = !{!"gx_ht_cell_params_s", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !16, i64 8, !16, i64 10, !15, i64 16, !16, i64 24, !16, i64 26, !12, i64 28, !12, i64 32, !12, i64 36}
!23 = !{!21, !7, i64 72}
!24 = !{!8, !8, i64 0}
!25 = !{!21, !7, i64 64}
!26 = !{!12, !12, i64 0}
!27 = !{!20, !7, i64 16}
!28 = !{!20, !12, i64 132}
!29 = !{!30, !12, i64 40}
!30 = !{!"gx_ht_tile_s", !31, i64 0, !12, i64 40, !12, i64 44}
!31 = !{!"gx_strip_bitmap_s", !7, i64 0, !12, i64 8, !32, i64 12, !15, i64 24, !16, i64 32, !16, i64 34, !16, i64 36, !16, i64 38}
!32 = !{!"gs_int_point_s", !12, i64 0, !12, i64 4}
!33 = !{!20, !15, i64 136}
!34 = !{!35, !12, i64 52}
!35 = !{!"gx_device_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !36, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !37, i64 168, !38, i64 192}
!36 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!37 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!38 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!39 = !{!35, !7, i64 464}
!40 = !{!41, !12, i64 48}
!41 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !32, i64 48, !42, i64 56}
!42 = !{!"_mask", !43, i64 0, !15, i64 24, !7, i64 32}
!43 = !{!"gs_client_color_s", !44, i64 0, !7, i64 16}
!44 = !{!"gs_paint_color_s", !8, i64 0}
!45 = !{!41, !12, i64 52}
!46 = !{!35, !7, i64 232}
!47 = !{i64 0, i64 8, !48, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 8, !49, i64 24, i64 16, !24, i64 40, i64 4, !26}
!48 = !{!7, !7, i64 0}
!49 = !{!15, !15, i64 0}
!50 = !{!35, !7, i64 472}
!51 = !{!52, !7, i64 0}
!52 = !{!"gx_rop_source_s", !7, i64 0, !12, i64 8, !12, i64 12, !15, i64 16, !8, i64 24, !12, i64 40}
!53 = !{!52, !12, i64 8}
!54 = !{!52, !12, i64 12}
!55 = !{!52, !15, i64 16}
!56 = !{!52, !12, i64 40}
!57 = !{!30, !12, i64 44}
!58 = !{!59, !7, i64 16}
!59 = !{!"gs_memory_s", !60, i64 0}
!60 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!61 = !{!59, !7, i64 0}
!62 = !{!59, !7, i64 48}
!63 = !{!59, !7, i64 88}
!64 = !{!20, !7, i64 0}
!65 = !{!20, !12, i64 8}
!66 = !{!20, !12, i64 24}
!67 = !{!20, !7, i64 112}
!68 = !{!20, !7, i64 120}
!69 = !{!30, !7, i64 0}
!70 = !{!21, !16, i64 40}
!71 = !{!21, !16, i64 42}
!72 = !{!21, !16, i64 44}
!73 = !{!21, !16, i64 46}
!74 = !{!21, !12, i64 56}
!75 = !{i64 0, i64 2, !76, i64 2, i64 2, !76, i64 4, i64 2, !76, i64 6, i64 2, !76, i64 8, i64 2, !76, i64 10, i64 2, !76, i64 16, i64 8, !49, i64 24, i64 2, !76, i64 26, i64 2, !76, i64 28, i64 4, !26, i64 32, i64 4, !26, i64 36, i64 4, !26, i64 40, i64 2, !76, i64 42, i64 2, !76, i64 44, i64 2, !76, i64 46, i64 2, !76, i64 48, i64 2, !76, i64 50, i64 2, !76, i64 52, i64 4, !26, i64 56, i64 4, !26, i64 60, i64 4, !26, i64 64, i64 8, !48, i64 72, i64 8, !48, i64 80, i64 8, !48, i64 88, i64 8, !48}
!76 = !{!16, !16, i64 0}
!77 = !{!20, !12, i64 128}
!78 = !{!30, !12, i64 8}
!79 = !{!30, !12, i64 12}
!80 = !{!30, !12, i64 16}
!81 = !{!30, !16, i64 32}
!82 = !{!30, !16, i64 34}
!83 = !{!30, !16, i64 36}
!84 = !{!30, !16, i64 38}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = !{!31, !16, i64 34}
!88 = !{!31, !16, i64 32}
!89 = !{!31, !16, i64 38}
!90 = !{!32, !12, i64 4}
!91 = !{!31, !12, i64 16}
!92 = !{!32, !12, i64 0}
!93 = !{!31, !12, i64 8}
!94 = !{!95, !12, i64 4}
!95 = !{!"gx_ht_bit_s", !12, i64 0, !12, i64 4}
!96 = !{!95, !12, i64 0}
!97 = !{!30, !15, i64 24}
!98 = !{!99, !7, i64 32}
!99 = !{!"gs_memory_struct_type_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!100 = !{!99, !7, i64 40}
!101 = distinct !{!101, !86}
