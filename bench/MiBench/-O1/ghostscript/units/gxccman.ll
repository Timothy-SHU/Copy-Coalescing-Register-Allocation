; ModuleID = 'gxccman.c'
source_filename = "gxccman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_font_dir_s = type { ptr, ptr, i32, i32, %struct.fm_pair_cache_s, %struct.char_cache_s, i32, i32 }
%struct.fm_pair_cache_s = type { i32, i32, ptr, i32 }
%struct.char_cache_s = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.cached_fm_pair_s = type { ptr, %struct.gs_uid_s, i32, float, float, float, float, i32, i32, ptr, ptr, i32 }
%struct.gs_uid_s = type { i64, ptr }
%struct.cached_char_s = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, ptr, i64, i8, ptr, i32, i32, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_xfont_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_base_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }

@st_cached_fm_pair_element = internal constant %struct.gs_memory_struct_type_s { i32 80, ptr @.str.4, ptr null, ptr null, ptr @fm_pair_element_enum_ptrs, ptr @fm_pair_element_reloc_ptrs, ptr null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"font_dir_alloc(mdata)\00", align 1
@st_cached_char_ptr_element = internal constant %struct.gs_memory_struct_type_s { i32 8, ptr @.str.6, ptr null, ptr null, ptr @cc_ptr_element_enum_ptrs, ptr @cc_ptr_element_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"font_dir_alloc(chars)\00", align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"initial_chunk\00", align 1
@gx_add_cached_char.no_scale = internal constant %struct.gs_log2_scale_point_s zeroinitializer, align 4
@gs_debug = external local_unnamed_addr global [128 x i8], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"[K]uncompressed bits\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cached_fm_pair[]\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"cached_char *[]\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"char cache chunk\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_char_cache_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = lshr i32 %4, 1
  %8 = add i32 %7, %4
  %9 = or i32 %8, 31
  %10 = add i32 %9, 1
  %11 = and i32 %10, %9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %6, %13
  %14 = phi i32 [ %16, %13 ], [ %9, %6 ]
  %15 = lshr i32 %14, 1
  %16 = or i32 %15, %14
  %17 = add i32 %16, 1
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %13, !llvm.loop !5

20:                                               ; preds = %13, %6
  %21 = phi i32 [ %9, %6 ], [ %16, %13 ]
  %22 = phi i32 [ %10, %6 ], [ %17, %13 ]
  %23 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = tail call ptr %24(ptr noundef %0, i32 noundef %3, ptr noundef nonnull @st_cached_fm_pair_element, ptr noundef nonnull @.str) #9
  %26 = load ptr, ptr %23, align 8, !tbaa !7
  %27 = tail call ptr %26(ptr noundef %0, i32 noundef %22, ptr noundef nonnull @st_cached_char_ptr_element, ptr noundef nonnull @.str.1) #9
  %28 = icmp eq ptr %25, null
  %29 = icmp eq ptr %27, null
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !13
  tail call void %33(ptr noundef %0, ptr noundef %27, ptr noundef nonnull @.str.1) #9
  %34 = load ptr, ptr %32, align 8, !tbaa !13
  tail call void %34(ptr noundef %0, ptr noundef %25, ptr noundef nonnull @.str) #9
  br label %72

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 4, i32 1
  store i32 %3, ptr %36, align 4, !tbaa !14
  %37 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 4, i32 2
  store ptr %25, ptr %37, align 8, !tbaa !19
  %38 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5, i32 4
  store ptr %0, ptr %38, align 8, !tbaa !20
  %39 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5, i32 7
  store i32 %2, ptr %39, align 4, !tbaa !21
  %40 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5, i32 8
  store i32 %4, ptr %40, align 8, !tbaa !22
  %41 = udiv i32 %5, 10
  %42 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5, i32 10
  store i32 %41, ptr %42, align 8, !tbaa !23
  %43 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5, i32 11
  store i32 %5, ptr %43, align 4, !tbaa !24
  %44 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5, i32 5
  store ptr %27, ptr %44, align 8, !tbaa !25
  %45 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5, i32 6
  store i32 %21, ptr %45, align 8, !tbaa !26
  %46 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !27
  %47 = tail call ptr %46(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef 24, ptr noundef nonnull @.str.2) #9
  %48 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 4
  store i32 0, ptr %48, align 8, !tbaa !28
  %49 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 4, i32 3
  store i32 0, ptr %49, align 8, !tbaa !29
  tail call void @gx_bits_cache_chunk_init(ptr noundef %47, ptr noundef null, i32 noundef 0) #9
  %50 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5
  tail call void @gx_bits_cache_init(ptr noundef nonnull %50, ptr noundef %47) #9
  %51 = getelementptr inbounds %struct.gs_font_dir_s, ptr %1, i64 0, i32 5, i32 9
  store i32 0, ptr %51, align 4, !tbaa !30
  %52 = load ptr, ptr %44, align 8, !tbaa !25
  %53 = load i32, ptr %45, align 8, !tbaa !26
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = shl nuw nsw i64 %55, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %52, i8 0, i64 %56, i1 false)
  %57 = load i32, ptr %36, align 4, !tbaa !14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %35
  %60 = load ptr, ptr %37, align 8, !tbaa !19
  br label %61

61:                                               ; preds = %61, %59
  %62 = phi i32 [ %69, %61 ], [ 0, %59 ]
  %63 = phi ptr [ %70, %61 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %63, i64 0, i32 11
  store i32 %62, ptr %64, align 8, !tbaa !31
  store ptr null, ptr %63, align 8, !tbaa !36
  %65 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %63, i64 0, i32 1
  store i64 16777216, ptr %65, align 8, !tbaa !37
  %66 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %63, i64 0, i32 1, i32 1
  store ptr null, ptr %66, align 8, !tbaa !38
  %67 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %63, i64 0, i32 8
  store i32 0, ptr %67, align 8, !tbaa !39
  %68 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %63, i64 0, i32 9
  store ptr null, ptr %68, align 8, !tbaa !40
  %69 = add nuw nsw i32 %62, 1
  %70 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %63, i64 1
  %71 = icmp eq i32 %69, %57
  br i1 %71, label %72, label %61, !llvm.loop !41

72:                                               ; preds = %61, %35, %31
  %73 = phi i32 [ -25, %31 ], [ 0, %35 ], [ 0, %61 ]
  ret i32 %73
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @gx_char_cache_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !27
  %3 = tail call ptr %2(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef 24, ptr noundef nonnull @.str.2) #9
  %4 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %4, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 3
  store i32 0, ptr %5, align 8, !tbaa !29
  tail call void @gx_bits_cache_chunk_init(ptr noundef %3, ptr noundef null, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5
  tail call void @gx_bits_cache_init(ptr noundef nonnull %6, ptr noundef %3) #9
  %7 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 9
  store i32 0, ptr %7, align 4, !tbaa !30
  %8 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !26
  %12 = add i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 %14, i1 false)
  %15 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i32 [ %29, %21 ], [ 0, %18 ]
  %23 = phi ptr [ %30, %21 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %23, i64 0, i32 11
  store i32 %22, ptr %24, align 8, !tbaa !31
  store ptr null, ptr %23, align 8, !tbaa !36
  %25 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %23, i64 0, i32 1
  store i64 16777216, ptr %25, align 8, !tbaa !37
  %26 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %23, i64 0, i32 1, i32 1
  store ptr null, ptr %26, align 8, !tbaa !38
  %27 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %23, i64 0, i32 8
  store i32 0, ptr %27, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %23, i64 0, i32 9
  store ptr null, ptr %28, align 8, !tbaa !40
  %29 = add nuw nsw i32 %22, 1
  %30 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %23, i64 1
  %31 = icmp eq i32 %29, %16
  br i1 %31, label %32, label %21, !llvm.loop !41

32:                                               ; preds = %21, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @gx_bits_cache_chunk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gx_bits_cache_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local void @gx_purge_selected_cached_chars(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !26
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %93, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %9 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 1
  br label %11

11:                                               ; preds = %7, %90
  %12 = phi i32 [ 0, %7 ], [ %91, %90 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !25
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %88, label %18

18:                                               ; preds = %11
  %19 = tail call i32 %1(ptr noundef nonnull %16, ptr noundef %2) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %88, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 8, !tbaa !26
  %23 = and i32 %22, %12
  %24 = load ptr, ptr %8, align 8, !tbaa !25
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  store ptr null, ptr %26, align 8, !tbaa !42
  %27 = add i32 %23, 1
  %28 = and i32 %27, %22
  %29 = load ptr, ptr %8, align 8, !tbaa !25
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = icmp eq ptr %32, null
  br i1 %33, label %71, label %34

34:                                               ; preds = %21, %62
  %35 = phi ptr [ %69, %62 ], [ %32, %21 ]
  %36 = phi i64 [ %67, %62 ], [ %30, %21 ]
  %37 = phi ptr [ %66, %62 ], [ %29, %21 ]
  %38 = phi i32 [ %65, %62 ], [ %28, %21 ]
  %39 = phi i32 [ %63, %62 ], [ %23, %21 ]
  %40 = getelementptr inbounds %struct.cached_char_s, ptr %35, i64 0, i32 7
  %41 = load i64, ptr %40, align 8, !tbaa !43
  %42 = trunc i64 %41 to i32
  %43 = mul i32 %42, 59
  %44 = getelementptr inbounds %struct.cached_char_s, ptr %35, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !49
  %48 = mul i32 %47, 73
  %49 = add i32 %48, %43
  %50 = icmp ult i32 %39, %38
  %51 = icmp ule i32 %39, %49
  %52 = icmp ult i32 %49, %38
  br i1 %50, label %53, label %55

53:                                               ; preds = %34
  %54 = and i1 %51, %52
  br i1 %54, label %57, label %62

55:                                               ; preds = %34
  %56 = or i1 %51, %52
  br i1 %56, label %57, label %62

57:                                               ; preds = %55, %53
  %58 = zext i32 %39 to i64
  %59 = getelementptr inbounds ptr, ptr %37, i64 %58
  store ptr %35, ptr %59, align 8, !tbaa !42
  %60 = load ptr, ptr %8, align 8, !tbaa !25
  %61 = getelementptr inbounds ptr, ptr %60, i64 %36
  store ptr null, ptr %61, align 8, !tbaa !42
  br label %62

62:                                               ; preds = %57, %55, %53
  %63 = phi i32 [ %38, %57 ], [ %39, %53 ], [ %39, %55 ]
  %64 = add i32 %38, 1
  %65 = and i32 %64, %22
  %66 = load ptr, ptr %8, align 8, !tbaa !25
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds ptr, ptr %66, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %34, !llvm.loop !50

71:                                               ; preds = %62, %21
  %72 = getelementptr inbounds %struct.cached_char_s, ptr %16, i64 0, i32 9
  %73 = load ptr, ptr %72, align 8, !tbaa !51
  store ptr %73, ptr %9, align 8, !tbaa !52
  %74 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !53
  %76 = ptrtoint ptr %16 to i64
  %77 = ptrtoint ptr %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, ptr %10, align 8, !tbaa !55
  %80 = getelementptr inbounds %struct.cached_char_s, ptr %16, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !48
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %81, i64 0, i32 7
  %85 = load i32, ptr %84, align 4, !tbaa !56
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr %84, align 4, !tbaa !56
  br label %87

87:                                               ; preds = %71, %83
  tail call void @gx_bits_cache_free(ptr noundef nonnull %9, ptr noundef nonnull %16, ptr noundef %73) #9
  br label %90

88:                                               ; preds = %18, %11
  %89 = add nsw i32 %12, 1
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i32 [ %12, %87 ], [ %89, %88 ]
  %92 = icmp sgt i32 %91, %5
  br i1 %92, label %93, label %11, !llvm.loop !57

93:                                               ; preds = %90, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_free_cached_char(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5
  store ptr %4, ptr %5, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = ptrtoint ptr %1 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 1
  store i32 %11, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %14, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = add nsw i32 %18, -1
  store i32 %19, ptr %17, align 4, !tbaa !56
  br label %20

20:                                               ; preds = %2, %16
  tail call void @gx_bits_cache_free(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @gx_add_fm_pair(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !29
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %7, i64 %10
  %12 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !14
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %7, i64 %14
  %16 = load i32, ptr %5, align 8, !tbaa !28
  %17 = icmp eq i32 %16, %13
  br i1 %17, label %18, label %139

18:                                               ; preds = %4
  %19 = icmp sgt i32 %13, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %18, %26
  %21 = phi i32 [ %27, %26 ], [ %13, %18 ]
  %22 = phi ptr [ %30, %26 ], [ %11, %18 ]
  %23 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %22, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !56
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = add nsw i32 %21, -1
  %28 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %22, i64 1
  %29 = icmp eq ptr %28, %15
  %30 = select i1 %29, ptr %7, ptr %28
  %31 = icmp sgt i32 %21, 1
  br i1 %31, label %20, label %32, !llvm.loop !58

32:                                               ; preds = %20, %26, %18
  %33 = phi ptr [ %11, %18 ], [ %22, %20 ], [ %30, %26 ]
  %34 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %33, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !40
  %36 = icmp eq ptr %35, null
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load ptr, ptr %35, align 8, !tbaa !59
  %39 = getelementptr inbounds %struct.gx_xfont_procs_s, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !62
  %41 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %33, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  %43 = tail call i32 %40(ptr noundef nonnull %35, ptr noundef %42) #9
  %44 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %33, i64 0, i32 8
  store i32 0, ptr %44, align 8, !tbaa !39
  store ptr null, ptr %34, align 8, !tbaa !40
  br label %45

45:                                               ; preds = %32, %37
  %46 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !26
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %134, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %51 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5
  %52 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 1
  br label %53

53:                                               ; preds = %131, %49
  %54 = phi i32 [ 0, %49 ], [ %132, %131 ]
  %55 = load ptr, ptr %50, align 8, !tbaa !25
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !42
  %59 = icmp eq ptr %58, null
  br i1 %59, label %129, label %60

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.cached_char_s, ptr %58, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = icmp eq ptr %62, %33
  br i1 %63, label %64, label %129

64:                                               ; preds = %60
  %65 = load i32, ptr %46, align 8, !tbaa !26
  %66 = and i32 %65, %54
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds ptr, ptr %55, i64 %67
  store ptr null, ptr %68, align 8, !tbaa !42
  %69 = add i32 %66, 1
  %70 = and i32 %69, %65
  %71 = load ptr, ptr %50, align 8, !tbaa !25
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !42
  %75 = icmp eq ptr %74, null
  br i1 %75, label %113, label %76

76:                                               ; preds = %64, %104
  %77 = phi ptr [ %111, %104 ], [ %74, %64 ]
  %78 = phi i64 [ %109, %104 ], [ %72, %64 ]
  %79 = phi ptr [ %108, %104 ], [ %71, %64 ]
  %80 = phi i32 [ %107, %104 ], [ %70, %64 ]
  %81 = phi i32 [ %105, %104 ], [ %66, %64 ]
  %82 = getelementptr inbounds %struct.cached_char_s, ptr %77, i64 0, i32 7
  %83 = load i64, ptr %82, align 8, !tbaa !43
  %84 = trunc i64 %83 to i32
  %85 = mul i32 %84, 59
  %86 = getelementptr inbounds %struct.cached_char_s, ptr %77, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !48
  %88 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %87, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !49
  %90 = mul i32 %89, 73
  %91 = add i32 %90, %85
  %92 = icmp ult i32 %81, %80
  %93 = icmp ule i32 %81, %91
  %94 = icmp ult i32 %91, %80
  br i1 %92, label %95, label %97

95:                                               ; preds = %76
  %96 = and i1 %93, %94
  br i1 %96, label %99, label %104

97:                                               ; preds = %76
  %98 = or i1 %93, %94
  br i1 %98, label %99, label %104

99:                                               ; preds = %97, %95
  %100 = zext i32 %81 to i64
  %101 = getelementptr inbounds ptr, ptr %79, i64 %100
  store ptr %77, ptr %101, align 8, !tbaa !42
  %102 = load ptr, ptr %50, align 8, !tbaa !25
  %103 = getelementptr inbounds ptr, ptr %102, i64 %78
  store ptr null, ptr %103, align 8, !tbaa !42
  br label %104

104:                                              ; preds = %99, %97, %95
  %105 = phi i32 [ %80, %99 ], [ %81, %95 ], [ %81, %97 ]
  %106 = add i32 %80, 1
  %107 = and i32 %106, %65
  %108 = load ptr, ptr %50, align 8, !tbaa !25
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !42
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %76, !llvm.loop !50

113:                                              ; preds = %104, %64
  %114 = getelementptr inbounds %struct.cached_char_s, ptr %58, i64 0, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !51
  store ptr %115, ptr %51, align 8, !tbaa !52
  %116 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !53
  %118 = ptrtoint ptr %58 to i64
  %119 = ptrtoint ptr %117 to i64
  %120 = sub i64 %118, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, ptr %52, align 8, !tbaa !55
  %122 = load ptr, ptr %61, align 8, !tbaa !48
  %123 = icmp eq ptr %122, null
  br i1 %123, label %128, label %124

124:                                              ; preds = %113
  %125 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %122, i64 0, i32 7
  %126 = load i32, ptr %125, align 4, !tbaa !56
  %127 = add nsw i32 %126, -1
  store i32 %127, ptr %125, align 4, !tbaa !56
  br label %128

128:                                              ; preds = %124, %113
  tail call void @gx_bits_cache_free(ptr noundef nonnull %51, ptr noundef nonnull %58, ptr noundef %115) #9
  br label %131

129:                                              ; preds = %60, %53
  %130 = add nsw i32 %54, 1
  br label %131

131:                                              ; preds = %129, %128
  %132 = phi i32 [ %54, %128 ], [ %130, %129 ]
  %133 = icmp sgt i32 %132, %47
  br i1 %133, label %134, label %53, !llvm.loop !57

134:                                              ; preds = %131, %45
  store ptr null, ptr %33, align 8, !tbaa !36
  %135 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %33, i64 0, i32 1
  store i64 16777216, ptr %135, align 8, !tbaa !37
  %136 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %33, i64 0, i32 1, i32 1
  store ptr null, ptr %136, align 8, !tbaa !38
  %137 = load i32, ptr %5, align 8, !tbaa !28
  %138 = add i32 %137, -1
  store i32 %138, ptr %5, align 8, !tbaa !28
  br label %151

139:                                              ; preds = %4, %147
  %140 = phi ptr [ %150, %147 ], [ %11, %4 ]
  %141 = load ptr, ptr %140, align 8, !tbaa !36
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %140, i64 0, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !37
  %146 = icmp eq i64 %145, 16777216
  br i1 %146, label %151, label %147

147:                                              ; preds = %139, %143
  %148 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %140, i64 1
  %149 = icmp eq ptr %148, %15
  %150 = select i1 %149, ptr %7, ptr %148
  br label %139, !llvm.loop !65

151:                                              ; preds = %143, %134
  %152 = phi ptr [ %33, %134 ], [ %140, %143 ]
  %153 = load i32, ptr %5, align 8, !tbaa !28
  %154 = add i32 %153, 1
  store i32 %154, ptr %5, align 8, !tbaa !28
  %155 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 1
  %156 = load ptr, ptr %6, align 8, !tbaa !19
  %157 = ptrtoint ptr %155 to i64
  %158 = ptrtoint ptr %156 to i64
  %159 = sub i64 %157, %158
  %160 = sdiv exact i64 %159, 80
  %161 = trunc i64 %160 to i32
  store i32 %161, ptr %8, align 8, !tbaa !29
  %162 = load i32, ptr %12, align 4, !tbaa !14
  %163 = icmp eq i32 %162, %161
  %164 = select i1 %163, i32 0, i32 %161
  store i32 %164, ptr %8, align 8
  store ptr %1, ptr %152, align 8, !tbaa !36
  %165 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %165, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !66
  %166 = ptrtoint ptr %152 to i64
  %167 = trunc i64 %166 to i32
  %168 = urem i32 %167, 549
  %169 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 2
  store i32 %168, ptr %169, align 8, !tbaa !49
  %170 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 37
  %171 = load float, ptr %170, align 8, !tbaa !68
  %172 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 3
  store float %171, ptr %172, align 4, !tbaa !75
  %173 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 37, i32 1
  %174 = load float, ptr %173, align 4, !tbaa !76
  %175 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 4
  store float %174, ptr %175, align 8, !tbaa !77
  %176 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 37, i32 2
  %177 = load float, ptr %176, align 8, !tbaa !78
  %178 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 5
  store float %177, ptr %178, align 4, !tbaa !79
  %179 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 37, i32 3
  %180 = load float, ptr %179, align 4, !tbaa !80
  %181 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 6
  store float %180, ptr %181, align 8, !tbaa !81
  %182 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 7
  store i32 0, ptr %182, align 4, !tbaa !56
  %183 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 8
  store i32 0, ptr %183, align 8, !tbaa !39
  %184 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %152, i64 0, i32 9
  store ptr null, ptr %184, align 8, !tbaa !40
  ret ptr %152
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_purge_fm_pair(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !59
  %9 = getelementptr inbounds %struct.gx_xfont_procs_s, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = tail call i32 %10(ptr noundef nonnull %5, ptr noundef %12) #9
  %14 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 8
  store i32 0, ptr %14, align 8, !tbaa !39
  store ptr null, ptr %4, align 8, !tbaa !40
  br label %15

15:                                               ; preds = %7, %3
  %16 = icmp eq i32 %2, 0
  %17 = select i1 %16, ptr @purge_fm_pair_char, ptr @purge_fm_pair_char_xfont
  tail call void @gx_purge_selected_cached_chars(ptr noundef %0, ptr noundef nonnull %17, ptr noundef %1)
  br i1 %16, label %18, label %24

18:                                               ; preds = %15
  store ptr null, ptr %1, align 8, !tbaa !36
  %19 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 1
  store i64 16777216, ptr %19, align 8, !tbaa !37
  %20 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 1, i32 1
  store ptr null, ptr %20, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4
  %22 = load i32, ptr %21, align 8, !tbaa !28
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 8, !tbaa !28
  br label %24

24:                                               ; preds = %18, %15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @gx_lookup_xfont(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_matrix_s, align 4
  %5 = tail call ptr @gs_currentdevice(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !82
  %8 = tail call ptr %7(ptr noundef %5) #9
  %9 = load ptr, ptr %1, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %8, i64 0, i32 21, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !87
  %12 = tail call ptr %11(ptr noundef %8) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %117, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !88
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %117

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %19 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 3
  %20 = load float, ptr %19, align 4, !tbaa !75
  store float %20, ptr %4, align 4, !tbaa !93
  %21 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 4
  %22 = load float, ptr %21, align 8, !tbaa !77
  %23 = getelementptr inbounds %struct.gs_matrix_s, ptr %4, i64 0, i32 1
  store float %22, ptr %23, align 4, !tbaa !94
  %24 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 5
  %25 = load float, ptr %24, align 4, !tbaa !79
  %26 = getelementptr inbounds %struct.gs_matrix_s, ptr %4, i64 0, i32 2
  store float %25, ptr %26, align 4, !tbaa !95
  %27 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 6
  %28 = load float, ptr %27, align 8, !tbaa !81
  %29 = getelementptr inbounds %struct.gs_matrix_s, ptr %4, i64 0, i32 3
  store float %28, ptr %29, align 4, !tbaa !96
  %30 = getelementptr inbounds %struct.gs_matrix_s, ptr %4, i64 0, i32 4
  store float 0.000000e+00, ptr %30, align 4, !tbaa !97
  %31 = getelementptr inbounds %struct.gs_matrix_s, ptr %4, i64 0, i32 5
  store float 0.000000e+00, ptr %31, align 4, !tbaa !98
  %32 = load ptr, ptr %0, align 8, !tbaa !99
  %33 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 10
  store ptr %32, ptr %33, align 8, !tbaa !64
  %34 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 16
  %35 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 16, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !100
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %18
  %39 = load ptr, ptr %12, align 8, !tbaa !101
  %40 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 16, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !102
  %42 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 1
  %43 = call ptr %39(ptr noundef %8, ptr noundef nonnull %34, i32 noundef %41, i32 noundef %2, ptr noundef nonnull %42, ptr noundef nonnull %4, ptr noundef %32) #9
  br label %44

44:                                               ; preds = %38, %18
  %45 = phi ptr [ %43, %38 ], [ null, %18 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 17
  %49 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 17, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !103
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %35, align 8, !tbaa !100
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = zext i32 %50 to i64
  %57 = call i32 @bcmp(ptr nonnull %48, ptr nonnull %34, i64 %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55, %52
  %60 = load ptr, ptr %12, align 8, !tbaa !101
  %61 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 17, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !102
  %63 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 1
  %64 = load ptr, ptr %33, align 8, !tbaa !64
  %65 = call ptr %60(ptr noundef %8, ptr noundef nonnull %48, i32 noundef %62, i32 noundef %2, ptr noundef nonnull %63, ptr noundef nonnull %4, ptr noundef %64) #9
  br label %66

66:                                               ; preds = %59, %55, %47, %44
  %67 = phi ptr [ %65, %59 ], [ null, %55 ], [ null, %47 ], [ %45, %44 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %115

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 7
  %71 = load i32, ptr %70, align 8, !tbaa !104
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %115, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.gs_font_base_s, ptr %9, i64 0, i32 19
  %75 = load i64, ptr %74, align 8, !tbaa !105
  %76 = icmp eq i64 %75, 16777216
  br i1 %76, label %115, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.gs_font_s, ptr %9, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !110
  %80 = load ptr, ptr %79, align 8, !tbaa !42
  %81 = icmp eq ptr %80, null
  br i1 %81, label %115, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 1
  br label %84

84:                                               ; preds = %82, %112
  %85 = phi ptr [ %80, %82 ], [ %113, %112 ]
  %86 = getelementptr inbounds %struct.gs_font_s, ptr %85, i64 0, i32 7
  %87 = load i32, ptr %86, align 8, !tbaa !104
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %112, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.gs_font_base_s, ptr %85, i64 0, i32 19
  %91 = call i32 @uid_equal(ptr noundef nonnull %90, ptr noundef nonnull %74) #9
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.gs_font_s, ptr %85, i64 0, i32 16
  %95 = getelementptr inbounds %struct.gs_font_s, ptr %85, i64 0, i32 16, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !100
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = load i32, ptr %35, align 8, !tbaa !100
  %100 = icmp eq i32 %99, %96
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = zext i32 %99 to i64
  %103 = call i32 @bcmp(ptr nonnull %34, ptr nonnull %94, i64 %102)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %101, %98
  %106 = load ptr, ptr %12, align 8, !tbaa !101
  %107 = getelementptr inbounds %struct.gs_font_s, ptr %85, i64 0, i32 16, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !102
  %109 = load ptr, ptr %33, align 8, !tbaa !64
  %110 = call ptr %106(ptr noundef %8, ptr noundef nonnull %94, i32 noundef %108, i32 noundef %2, ptr noundef nonnull %83, ptr noundef nonnull %4, ptr noundef %109) #9
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %84, %89, %93, %101, %105
  %113 = load ptr, ptr %85, align 8, !tbaa !42
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %84, !llvm.loop !111

115:                                              ; preds = %105, %112, %77, %73, %69, %66
  %116 = phi ptr [ null, %73 ], [ null, %69 ], [ %67, %66 ], [ null, %77 ], [ null, %112 ], [ %110, %105 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %117

117:                                              ; preds = %115, %14, %3
  %118 = phi ptr [ %116, %115 ], [ null, %14 ], [ null, %3 ]
  %119 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 9
  store ptr %118, ptr %119, align 8, !tbaa !40
  ret void
}

declare ptr @gs_currentdevice(ptr noundef) local_unnamed_addr #2

declare i32 @uid_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @purge_fm_pair_char_xfont(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.cached_char_s, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %1, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.cached_char_s, ptr %0, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !112
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %10, %6, %2
  %16 = phi i32 [ 0, %6 ], [ 0, %2 ], [ %14, %10 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @purge_fm_pair_char(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #5 {
  %3 = getelementptr inbounds %struct.cached_char_s, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_alloc_char_bits(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca %struct.gx_device_memory_s, align 8
  %9 = load i32, ptr %5, align 4, !tbaa !113
  %10 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %5, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !115
  %12 = ashr i32 %6, 1
  %13 = zext i16 %3 to i32
  %14 = lshr i32 %13, %9
  %15 = shl i32 %14, %12
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %8) #9
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 3
  store ptr null, ptr %18, align 8, !tbaa !116
  %19 = getelementptr inbounds %struct.gx_device_memory_s, ptr %8, i64 0, i32 22
  store ptr null, ptr %19, align 8, !tbaa !120
  br label %20

20:                                               ; preds = %17, %7
  %21 = phi ptr [ %8, %17 ], [ %1, %7 ]
  %22 = icmp eq ptr %2, null
  %23 = select i1 %22, ptr %21, ptr %2
  %24 = add i32 %15, 63
  %25 = lshr i32 %24, 3
  %26 = and i32 %25, 536870904
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = zext i16 %4 to i32
  %30 = lshr i32 %29, %11
  %31 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !24
  %33 = udiv i32 %32, %26
  %34 = icmp ugt i32 %30, %33
  br i1 %34, label %165, label %35

35:                                               ; preds = %28, %20
  br i1 %22, label %36, label %45

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  %39 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 22
  %40 = load ptr, ptr %39, align 8, !tbaa !120
  call void @gs_make_mem_mono_device(ptr noundef nonnull %21, ptr noundef %38, ptr noundef %40) #9
  %41 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 8
  store i32 %13, ptr %41, align 8, !tbaa !121
  %42 = zext i16 %4 to i32
  %43 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 9
  store i32 %42, ptr %43, align 4, !tbaa !122
  %44 = call i64 @gdev_mem_data_size(ptr noundef nonnull %21, i32 noundef %13, i32 noundef %42) #9
  br label %62

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.gx_device_memory_s, ptr %2, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !116
  tail call void @gs_make_mem_alpha_device(ptr noundef nonnull %2, ptr noundef %47, ptr noundef null, i32 noundef %6) #9
  %48 = getelementptr inbounds %struct.gx_device_memory_s, ptr %2, i64 0, i32 8
  store i32 %14, ptr %48, align 8, !tbaa !121
  %49 = zext i16 %4 to i32
  %50 = lshr i32 %49, %11
  %51 = getelementptr inbounds %struct.gx_device_memory_s, ptr %2, i64 0, i32 9
  store i32 %50, ptr %51, align 4, !tbaa !122
  %52 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !116
  tail call void @gs_make_mem_abuf_device(ptr noundef %1, ptr noundef %53, ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %6, i32 noundef 0) #9
  %54 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 8
  store i32 %13, ptr %54, align 8, !tbaa !121
  %55 = shl i32 2, %11
  %56 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 9
  store i32 %55, ptr %56, align 4, !tbaa !122
  %57 = tail call i64 @gdev_mem_data_size(ptr noundef %1, i32 noundef %13, i32 noundef %55) #9
  %58 = load i32, ptr %48, align 8, !tbaa !121
  %59 = load i32, ptr %51, align 4, !tbaa !122
  %60 = tail call i64 @gdev_mem_data_size(ptr noundef nonnull %2, i32 noundef %58, i32 noundef %59) #9
  %61 = add i64 %60, %57
  br label %62

62:                                               ; preds = %45, %36
  %63 = phi i64 [ %44, %36 ], [ %61, %45 ]
  %64 = add i64 %63, 104
  %65 = call fastcc ptr @alloc_char_in_chunk(ptr noundef %0, i64 noundef %64)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %112

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5
  %69 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 9
  %70 = load i32, ptr %69, align 4, !tbaa !30
  %71 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !21
  %73 = icmp ult i32 %70, %72
  %74 = load ptr, ptr %68, align 8, !tbaa !52
  br i1 %73, label %75, label %98

75:                                               ; preds = %67
  %76 = udiv i32 %72, 5
  %77 = add nuw nsw i32 %76, 1
  %78 = sub i32 %72, %70
  %79 = icmp ult i32 %76, %78
  %80 = select i1 %79, i32 %77, i32 %78
  %81 = add i64 %63, 112
  %82 = zext nneg i32 %80 to i64
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %112, label %84

84:                                               ; preds = %75
  %85 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !27
  %86 = call ptr %85(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef 24, ptr noundef nonnull @.str.8) #9
  %87 = icmp eq ptr %86, null
  br i1 %87, label %112, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !27
  %90 = call ptr %89(ptr noundef nonnull @gs_memory_default, i32 noundef %80, i32 noundef 1, ptr noundef nonnull @.str.8) #9
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !13
  call void %93(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %86, ptr noundef nonnull @.str.8) #9
  br label %112

94:                                               ; preds = %88
  call void @gx_bits_cache_chunk_init(ptr noundef nonnull %86, ptr noundef nonnull %90, i32 noundef %80) #9
  %95 = load ptr, ptr %74, align 8, !tbaa !123
  store ptr %95, ptr %86, align 8, !tbaa !123
  store ptr %86, ptr %74, align 8, !tbaa !123
  %96 = load i32, ptr %69, align 4, !tbaa !30
  %97 = add i32 %96, %80
  store i32 %97, ptr %69, align 4, !tbaa !30
  store ptr %86, ptr %68, align 8, !tbaa !52
  br label %109

98:                                               ; preds = %67
  %99 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 1
  br label %100

100:                                              ; preds = %104, %98
  %101 = phi ptr [ %74, %98 ], [ %102, %104 ]
  %102 = load ptr, ptr %101, align 8, !tbaa !123
  store ptr %102, ptr %68, align 8, !tbaa !52
  %103 = icmp eq ptr %102, %74
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  store i32 0, ptr %99, align 8, !tbaa !55
  %105 = call fastcc ptr @alloc_char_in_chunk(ptr noundef %0, i64 noundef %64)
  %106 = icmp eq ptr %105, null
  br i1 %106, label %100, label %107, !llvm.loop !124

107:                                              ; preds = %104, %100
  %108 = phi ptr [ %105, %104 ], [ undef, %100 ]
  br i1 %103, label %109, label %112

109:                                              ; preds = %107, %94
  %110 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 1
  store i32 0, ptr %110, align 8, !tbaa !55
  %111 = call fastcc ptr @alloc_char_in_chunk(ptr noundef %0, i64 noundef %64)
  br label %112

112:                                              ; preds = %62, %75, %84, %92, %107, %109
  %113 = phi ptr [ %108, %107 ], [ %111, %109 ], [ %65, %62 ], [ null, %84 ], [ null, %75 ], [ null, %92 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %165, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %113, i64 0, i32 1
  store i32 %6, ptr %116, align 4, !tbaa !125
  %117 = getelementptr inbounds %struct.cached_char_s, ptr %113, i64 0, i32 12
  store i64 -1, ptr %117, align 8, !tbaa !126
  %118 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 8
  %119 = getelementptr inbounds %struct.gx_device_memory_s, ptr %2, i64 0, i32 8
  %120 = select i1 %22, ptr %118, ptr %119
  %121 = load i32, ptr %120, align 8, !tbaa !121
  %122 = trunc i32 %121 to i16
  %123 = getelementptr inbounds %struct.cached_char_s, ptr %113, i64 0, i32 1
  store i16 %122, ptr %123, align 8, !tbaa !127
  %124 = getelementptr inbounds %struct.gx_device_memory_s, ptr %21, i64 0, i32 9
  %125 = getelementptr inbounds %struct.gx_device_memory_s, ptr %2, i64 0, i32 9
  %126 = select i1 %22, ptr %124, ptr %125
  %127 = load i32, ptr %126, align 4, !tbaa !122
  %128 = trunc i32 %127 to i16
  %129 = getelementptr inbounds %struct.cached_char_s, ptr %113, i64 0, i32 2
  store i16 %128, ptr %129, align 2, !tbaa !128
  %130 = getelementptr inbounds %struct.cached_char_s, ptr %113, i64 0, i32 3
  store i16 0, ptr %130, align 4, !tbaa !129
  %131 = call i32 @gx_device_raster(ptr noundef nonnull %23, i32 noundef 1) #9
  %132 = trunc i32 %131 to i16
  %133 = getelementptr inbounds %struct.cached_char_s, ptr %113, i64 0, i32 4
  store i16 %132, ptr %133, align 2, !tbaa !130
  %134 = getelementptr inbounds %struct.cached_char_s, ptr %113, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, i8 0, i64 16, i1 false)
  br i1 %22, label %150, label %135

135:                                              ; preds = %115
  %136 = getelementptr inbounds i8, ptr %113, i64 104
  %137 = load i32, ptr %119, align 8, !tbaa !121
  %138 = load i32, ptr %125, align 4, !tbaa !122
  %139 = call i64 @gdev_mem_data_size(ptr noundef nonnull %2, i32 noundef %137, i32 noundef %138) #9
  %140 = and i64 %139, 4294967295
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %136, i8 0, i64 %140, i1 false)
  %141 = getelementptr inbounds %struct.gx_device_memory_s, ptr %2, i64 0, i32 26
  store ptr %136, ptr %141, align 8, !tbaa !131
  %142 = getelementptr inbounds %struct.gx_device_memory_s, ptr %2, i64 0, i32 21
  %143 = load ptr, ptr %142, align 8, !tbaa !132
  %144 = call i32 %143(ptr noundef nonnull %2) #9
  %145 = getelementptr inbounds i8, ptr %136, i64 %140
  %146 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 26
  store ptr %145, ptr %146, align 8, !tbaa !131
  %147 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 21
  %148 = load ptr, ptr %147, align 8, !tbaa !132
  %149 = call i32 %148(ptr noundef %1) #9
  br label %165

150:                                              ; preds = %115
  br i1 %16, label %165, label %151

151:                                              ; preds = %150
  %152 = getelementptr inbounds i8, ptr %113, i64 104
  %153 = load i16, ptr %123, align 8, !tbaa !127
  %154 = zext i16 %153 to i32
  %155 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 8
  store i32 %154, ptr %155, align 8, !tbaa !121
  %156 = load i16, ptr %129, align 2, !tbaa !128
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 9
  store i32 %157, ptr %158, align 4, !tbaa !122
  %159 = call i64 @gdev_mem_data_size(ptr noundef nonnull %1, i32 noundef %154, i32 noundef %157) #9
  %160 = and i64 %159, 4294967295
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %152, i8 0, i64 %160, i1 false)
  %161 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 26
  store ptr %152, ptr %161, align 8, !tbaa !131
  %162 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 21
  %163 = load ptr, ptr %162, align 8, !tbaa !132
  %164 = call i32 %163(ptr noundef nonnull %1) #9
  br label %165

165:                                              ; preds = %135, %151, %150, %112, %28
  %166 = phi ptr [ null, %28 ], [ null, %112 ], [ %113, %150 ], [ %113, %151 ], [ %113, %135 ]
  call void @llvm.lifetime.end.p0(i64 632, ptr nonnull %8) #9
  ret ptr %166
}

declare void @gs_make_mem_mono_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @gdev_mem_data_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gs_make_mem_alpha_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gs_make_mem_abuf_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_device_raster(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gx_open_cache_device(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, ptr %1, i64 104
  %4 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !127
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 8
  store i32 %6, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !128
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  store i32 %10, ptr %11, align 4, !tbaa !122
  %12 = tail call i64 @gdev_mem_data_size(ptr noundef %0, i32 noundef %6, i32 noundef %10) #9
  %13 = and i64 %12, 4294967295
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %3, i8 0, i64 %13, i1 false)
  %14 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  store ptr %3, ptr %14, align 8, !tbaa !131
  %15 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21
  %16 = load ptr, ptr %15, align 8, !tbaa !132
  %17 = tail call i32 %16(ptr noundef %0) #9
  ret void
}

declare void @gx_bits_cache_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gx_add_cached_char(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 21, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = tail call i32 %9(ptr noundef nonnull %1) #9
  %11 = tail call i32 @gs_device_is_abuf(ptr noundef nonnull %1) #9
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr %4, ptr @gx_add_cached_char.no_scale
  tail call void @gx_add_char_bits(ptr noundef %0, ptr noundef %2, ptr noundef %13)
  br label %14

14:                                               ; preds = %7, %5
  %15 = getelementptr inbounds %struct.cached_char_s, ptr %2, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !43
  %17 = trunc i64 %16 to i32
  %18 = mul i32 %17, 59
  %19 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %3, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !49
  %21 = mul i32 %20, 73
  %22 = add i32 %18, %21
  %23 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !26
  br label %27

27:                                               ; preds = %27, %14
  %28 = phi i32 [ %22, %14 ], [ %34, %27 ]
  %29 = and i32 %26, %28
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %24, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = icmp eq ptr %32, null
  %34 = add i32 %29, 1
  br i1 %33, label %35, label %27, !llvm.loop !134

35:                                               ; preds = %27
  %36 = getelementptr inbounds ptr, ptr %24, i64 %30
  store ptr %2, ptr %36, align 8, !tbaa !42
  %37 = getelementptr inbounds %struct.cached_char_s, ptr %2, i64 0, i32 6
  store ptr %3, ptr %37, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %3, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !31
  %40 = getelementptr inbounds %struct.cached_char_s, ptr %2, i64 0, i32 11
  store i32 %39, ptr %40, align 4, !tbaa !135
  %41 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %3, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !56
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 4, !tbaa !56
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_add_char_bits(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_int_rect_s, align 4
  %5 = load i32, ptr %2, align 4, !tbaa !113
  %6 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !115
  %8 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 4
  %9 = load i16, ptr %8, align 2, !tbaa !130
  %10 = zext i16 %9 to i32
  %11 = getelementptr inbounds i8, ptr %1, i64 104
  %12 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !125
  %14 = ashr i32 %13, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %15 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !128
  %17 = zext i16 %16 to i32
  call void @bits_bounding_box(ptr noundef nonnull %11, i32 noundef %17, i32 noundef %10, ptr noundef nonnull %4) #9
  %18 = or i32 %7, %5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %68, label %20

20:                                               ; preds = %3
  %21 = load i8, ptr getelementptr inbounds ([128 x i8], ptr @gs_debug, i64 0, i64 75), align 1, !tbaa !136
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i16, ptr %15, align 2, !tbaa !128
  %25 = zext i16 %24 to i32
  call void @debug_dump_bitmap(ptr noundef nonnull %11, i32 noundef %10, i32 noundef %25, ptr noundef nonnull @.str.3) #9
  br label %26

26:                                               ; preds = %23, %20
  %27 = shl nuw i32 1, %5
  %28 = sub nsw i32 0, %27
  %29 = load i32, ptr %4, align 4, !tbaa !137
  %30 = and i32 %29, %28
  store i32 %30, ptr %4, align 4, !tbaa !137
  %31 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !140
  %33 = add i32 %27, -1
  %34 = add i32 %33, %32
  %35 = and i32 %34, %28
  store i32 %35, ptr %31, align 4, !tbaa !140
  %36 = shl nuw i32 1, %7
  %37 = sub nsw i32 0, %36
  %38 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !141
  %40 = and i32 %39, %37
  store i32 %40, ptr %38, align 4, !tbaa !141
  %41 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !142
  %43 = add i32 %36, -1
  %44 = add i32 %43, %42
  %45 = and i32 %44, %37
  store i32 %45, ptr %41, align 4, !tbaa !142
  %46 = sub nsw i32 %35, %30
  %47 = ashr i32 %46, %5
  %48 = trunc i32 %47 to i16
  %49 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 1
  store i16 %48, ptr %49, align 8, !tbaa !127
  %50 = sub nsw i32 %45, %40
  %51 = ashr i32 %50, %7
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %15, align 2, !tbaa !128
  %53 = and i32 %47, 65535
  %54 = shl i32 %53, %14
  %55 = add i32 %54, 63
  %56 = lshr i32 %55, 3
  %57 = and i32 %56, 536870904
  %58 = mul i32 %40, %10
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %11, i64 %59
  %61 = shl i32 %53, %5
  %62 = and i32 %51, 65535
  %63 = shl i32 %62, %7
  call void @bits_compress_scaled(ptr noundef nonnull %60, i32 noundef %30, i32 noundef %61, i32 noundef %63, i32 noundef %10, ptr noundef nonnull %11, i32 noundef %57, ptr noundef nonnull %2, i32 noundef %14) #9
  %64 = load i32, ptr %4, align 4, !tbaa !137
  %65 = ashr i32 %64, %5
  store i32 %65, ptr %4, align 4, !tbaa !137
  %66 = load i32, ptr %38, align 4, !tbaa !141
  %67 = ashr i32 %66, %7
  store i32 %67, ptr %38, align 4, !tbaa !141
  br label %120

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !141
  %71 = mul i32 %70, %10
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, ptr %11, i64 %72
  %74 = load i32, ptr %4, align 4, !tbaa !137
  %75 = ashr i32 %74, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %73, i64 %76
  %78 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1
  %79 = getelementptr inbounds %struct.gs_int_rect_s, ptr %4, i64 0, i32 1, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !142
  %81 = sub nsw i32 %80, %70
  %82 = trunc i32 %81 to i16
  store i16 %82, ptr %15, align 2, !tbaa !128
  %83 = and i32 %74, -8
  %84 = ashr i32 %83, %14
  store i32 %84, ptr %4, align 4, !tbaa !137
  %85 = load i32, ptr %78, align 4, !tbaa !140
  %86 = add i32 %13, -1
  %87 = add i32 %86, %85
  %88 = ashr i32 %87, %14
  store i32 %88, ptr %78, align 4, !tbaa !140
  %89 = sub nsw i32 %88, %84
  %90 = trunc i32 %89 to i16
  %91 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 1
  store i16 %90, ptr %91, align 8, !tbaa !127
  %92 = and i32 %89, 65535
  %93 = shl i32 %92, %14
  %94 = add i32 %93, 63
  %95 = lshr i32 %94, 3
  %96 = and i32 %95, 536870904
  %97 = icmp eq i32 %84, 0
  %98 = icmp eq i32 %96, %10
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %114, label %100

100:                                              ; preds = %68
  %101 = and i32 %81, 65535
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %100
  %104 = zext nneg i32 %96 to i64
  %105 = zext i16 %9 to i64
  br label %106

106:                                              ; preds = %103, %106
  %107 = phi i32 [ %101, %103 ], [ %110, %106 ]
  %108 = phi ptr [ %11, %103 ], [ %112, %106 ]
  %109 = phi ptr [ %77, %103 ], [ %111, %106 ]
  %110 = add nsw i32 %107, -1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %108, ptr align 1 %109, i64 %104, i1 false)
  %111 = getelementptr inbounds i8, ptr %109, i64 %105
  %112 = getelementptr inbounds i8, ptr %108, i64 %104
  %113 = icmp eq i32 %110, 0
  br i1 %113, label %120, label %106, !llvm.loop !143

114:                                              ; preds = %68
  %115 = icmp eq i32 %70, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %114
  %117 = and i32 %81, 65535
  %118 = mul nuw i32 %117, %10
  %119 = zext i32 %118 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %11, ptr nonnull align 1 %77, i64 %119, i1 false)
  br label %120

120:                                              ; preds = %106, %100, %116, %114, %26
  %121 = phi i32 [ %57, %26 ], [ %96, %114 ], [ %96, %116 ], [ %96, %100 ], [ %96, %106 ]
  %122 = load i32, ptr %4, align 4, !tbaa !137
  %123 = sext i32 %122 to i64
  %124 = shl nsw i64 %123, 12
  %125 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 14
  %126 = load i64, ptr %125, align 8, !tbaa !144
  %127 = sub nsw i64 %126, %124
  store i64 %127, ptr %125, align 8, !tbaa !144
  %128 = getelementptr inbounds %struct.gs_int_point_s, ptr %4, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !141
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 12
  %132 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 14, i32 1
  %133 = load i64, ptr %132, align 8, !tbaa !145
  %134 = sub nsw i64 %133, %131
  store i64 %134, ptr %132, align 8, !tbaa !145
  %135 = trunc i32 %121 to i16
  store i16 %135, ptr %8, align 2, !tbaa !130
  %136 = load i32, ptr %1, align 8, !tbaa !146
  %137 = add i32 %136, -104
  %138 = load i16, ptr %15, align 2, !tbaa !128
  %139 = zext i16 %138 to i32
  %140 = mul i32 %121, %139
  %141 = sub i32 %137, %140
  %142 = icmp ugt i32 %141, 7
  br i1 %142, label %143, label %148

143:                                              ; preds = %120
  %144 = and i32 %141, -8
  %145 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5
  %146 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 9
  %147 = load ptr, ptr %146, align 8, !tbaa !51
  call void @gx_bits_cache_shorten(ptr noundef nonnull %145, ptr noundef nonnull %1, i32 noundef %144, ptr noundef %147) #9
  br label %148

148:                                              ; preds = %143, %120
  %149 = call i64 @gs_next_ids(i32 noundef 1) #9
  %150 = getelementptr inbounds %struct.cached_char_s, ptr %1, i64 0, i32 5
  store i64 %149, ptr %150, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret void
}

declare i32 @gs_device_is_abuf(ptr noundef) local_unnamed_addr #2

declare void @bits_bounding_box(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @debug_dump_bitmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @bits_compress_scaled(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @gs_purge_font_from_char_caches(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %128, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 6
  %10 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %11 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 1
  %13 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 4
  br label %14

14:                                               ; preds = %6, %125
  %15 = phi i32 [ %4, %6 ], [ %17, %125 ]
  %16 = phi ptr [ %8, %6 ], [ %126, %125 ]
  %17 = add nsw i32 %15, -1
  %18 = load ptr, ptr %16, align 8, !tbaa !36
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %20, label %125

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %16, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !37
  %23 = icmp eq i64 %22, 16777216
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store ptr null, ptr %16, align 8, !tbaa !36
  br label %125

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %16, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !59
  %31 = getelementptr inbounds %struct.gx_xfont_procs_s, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !62
  %33 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %16, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = tail call i32 %32(ptr noundef nonnull %27, ptr noundef %34) #9
  %36 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %16, i64 0, i32 8
  store i32 0, ptr %36, align 8, !tbaa !39
  store ptr null, ptr %26, align 8, !tbaa !40
  br label %37

37:                                               ; preds = %25, %29
  %38 = load i32, ptr %9, align 8, !tbaa !26
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %121, label %40

40:                                               ; preds = %37, %118
  %41 = phi i32 [ %119, %118 ], [ 0, %37 ]
  %42 = load ptr, ptr %10, align 8, !tbaa !25
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  %46 = icmp eq ptr %45, null
  br i1 %46, label %116, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.cached_char_s, ptr %45, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = icmp eq ptr %49, %16
  br i1 %50, label %51, label %116

51:                                               ; preds = %47
  %52 = load i32, ptr %9, align 8, !tbaa !26
  %53 = and i32 %52, %41
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %42, i64 %54
  store ptr null, ptr %55, align 8, !tbaa !42
  %56 = add i32 %53, 1
  %57 = and i32 %56, %52
  %58 = load ptr, ptr %10, align 8, !tbaa !25
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = icmp eq ptr %61, null
  br i1 %62, label %100, label %63

63:                                               ; preds = %51, %91
  %64 = phi ptr [ %98, %91 ], [ %61, %51 ]
  %65 = phi i64 [ %96, %91 ], [ %59, %51 ]
  %66 = phi ptr [ %95, %91 ], [ %58, %51 ]
  %67 = phi i32 [ %94, %91 ], [ %57, %51 ]
  %68 = phi i32 [ %92, %91 ], [ %53, %51 ]
  %69 = getelementptr inbounds %struct.cached_char_s, ptr %64, i64 0, i32 7
  %70 = load i64, ptr %69, align 8, !tbaa !43
  %71 = trunc i64 %70 to i32
  %72 = mul i32 %71, 59
  %73 = getelementptr inbounds %struct.cached_char_s, ptr %64, i64 0, i32 6
  %74 = load ptr, ptr %73, align 8, !tbaa !48
  %75 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %74, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !49
  %77 = mul i32 %76, 73
  %78 = add i32 %77, %72
  %79 = icmp ult i32 %68, %67
  %80 = icmp ule i32 %68, %78
  %81 = icmp ult i32 %78, %67
  br i1 %79, label %82, label %84

82:                                               ; preds = %63
  %83 = and i1 %80, %81
  br i1 %83, label %86, label %91

84:                                               ; preds = %63
  %85 = or i1 %80, %81
  br i1 %85, label %86, label %91

86:                                               ; preds = %84, %82
  %87 = zext i32 %68 to i64
  %88 = getelementptr inbounds ptr, ptr %66, i64 %87
  store ptr %64, ptr %88, align 8, !tbaa !42
  %89 = load ptr, ptr %10, align 8, !tbaa !25
  %90 = getelementptr inbounds ptr, ptr %89, i64 %65
  store ptr null, ptr %90, align 8, !tbaa !42
  br label %91

91:                                               ; preds = %86, %84, %82
  %92 = phi i32 [ %67, %86 ], [ %68, %82 ], [ %68, %84 ]
  %93 = add i32 %67, 1
  %94 = and i32 %93, %52
  %95 = load ptr, ptr %10, align 8, !tbaa !25
  %96 = zext i32 %94 to i64
  %97 = getelementptr inbounds ptr, ptr %95, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !42
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %63, !llvm.loop !50

100:                                              ; preds = %91, %51
  %101 = getelementptr inbounds %struct.cached_char_s, ptr %45, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !51
  store ptr %102, ptr %11, align 8, !tbaa !52
  %103 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !53
  %105 = ptrtoint ptr %45 to i64
  %106 = ptrtoint ptr %104 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, ptr %12, align 8, !tbaa !55
  %109 = load ptr, ptr %48, align 8, !tbaa !48
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %109, i64 0, i32 7
  %113 = load i32, ptr %112, align 4, !tbaa !56
  %114 = add nsw i32 %113, -1
  store i32 %114, ptr %112, align 4, !tbaa !56
  br label %115

115:                                              ; preds = %111, %100
  tail call void @gx_bits_cache_free(ptr noundef nonnull %11, ptr noundef nonnull %45, ptr noundef %102) #9
  br label %118

116:                                              ; preds = %47, %40
  %117 = add nsw i32 %41, 1
  br label %118

118:                                              ; preds = %116, %115
  %119 = phi i32 [ %41, %115 ], [ %117, %116 ]
  %120 = icmp sgt i32 %119, %38
  br i1 %120, label %121, label %40, !llvm.loop !57

121:                                              ; preds = %118, %37
  store ptr null, ptr %16, align 8, !tbaa !36
  store i64 16777216, ptr %21, align 8, !tbaa !37
  %122 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %16, i64 0, i32 1, i32 1
  store ptr null, ptr %122, align 8, !tbaa !38
  %123 = load i32, ptr %13, align 8, !tbaa !28
  %124 = add i32 %123, -1
  store i32 %124, ptr %13, align 8, !tbaa !28
  br label %125

125:                                              ; preds = %24, %121, %14
  %126 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %16, i64 1
  %127 = icmp eq i32 %17, 0
  br i1 %127, label %128, label %14, !llvm.loop !147

128:                                              ; preds = %125, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @fm_pair_element_enum_ptrs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #6 {
  %5 = icmp ult i32 %1, 80
  br i1 %5, label %20, label %6

6:                                                ; preds = %4
  %7 = udiv i32 %1, 80
  %8 = urem i32 %2, %7
  %9 = zext nneg i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 80
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = udiv i32 %2, %7
  switch i32 %12, label %20 [
    i32 0, label %17
    i32 1, label %13
    i32 2, label %15
  ]

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %11, i64 0, i32 1, i32 1
  br label %17

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %11, i64 0, i32 9
  br label %17

17:                                               ; preds = %6, %13, %15
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ], [ %11, %6 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  store ptr %19, ptr %3, align 8, !tbaa !42
  br label %20

20:                                               ; preds = %17, %6, %4
  %21 = phi ptr [ null, %4 ], [ null, %6 ], [ @ptr_struct_procs, %17 ]
  ret ptr %21
}

; Function Attrs: nounwind uwtable
define internal void @fm_pair_element_reloc_ptrs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = icmp ult i32 %1, 80
  br i1 %4, label %21, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %1, 80
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %18, %7 ], [ %6, %5 ]
  %9 = phi ptr [ %19, %7 ], [ %0, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #9
  store ptr %11, ptr %9, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %9, i64 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %13, ptr noundef %2) #9
  store ptr %14, ptr %12, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %9, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !40
  %17 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %16, ptr noundef %2) #9
  store ptr %17, ptr %15, align 8, !tbaa !40
  %18 = add nsw i32 %8, -1
  %19 = getelementptr inbounds i8, ptr %9, i64 80
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %7, !llvm.loop !148

21:                                               ; preds = %7, %3
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noalias noundef ptr @cc_ptr_element_enum_ptrs(ptr nocapture readnone %0, i32 %1, i32 %2, ptr nocapture readnone %3) #7 {
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @cc_ptr_element_reloc_ptrs(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2) #7 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @alloc_char_in_chunk(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %6 = call i32 @gx_bits_cache_alloc(ptr noundef nonnull %4, i64 noundef %1, ptr noundef nonnull %3) #9
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %105

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %10 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 6
  %11 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 5
  %12 = getelementptr inbounds %struct.gs_font_dir_s, ptr %0, i64 0, i32 5, i32 1
  br label %13

13:                                               ; preds = %8, %102
  %14 = load ptr, ptr %3, align 8, !tbaa !42
  %15 = icmp eq ptr %14, null
  br i1 %15, label %115, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.cached_char_s, ptr %14, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !48
  %19 = icmp eq ptr %18, null
  br i1 %19, label %85, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.cached_char_s, ptr %14, i64 0, i32 7
  %22 = load i64, ptr %21, align 8, !tbaa !43
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %23, 59
  %25 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %18, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !49
  %27 = mul i32 %26, 73
  %28 = add i32 %24, %27
  %29 = load ptr, ptr %9, align 8, !tbaa !25
  %30 = load i32, ptr %10, align 8, !tbaa !26
  br label %31

31:                                               ; preds = %31, %20
  %32 = phi i32 [ %28, %20 ], [ %38, %31 ]
  %33 = and i32 %30, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds ptr, ptr %29, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !42
  %37 = icmp eq ptr %36, %14
  %38 = add i32 %32, 1
  br i1 %37, label %39, label %31, !llvm.loop !149

39:                                               ; preds = %31
  %40 = getelementptr inbounds ptr, ptr %29, i64 %34
  store ptr null, ptr %40, align 8, !tbaa !42
  %41 = add i32 %33, 1
  %42 = and i32 %41, %30
  %43 = load ptr, ptr %11, align 8, !tbaa !25
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !42
  %47 = icmp eq ptr %46, null
  br i1 %47, label %85, label %48

48:                                               ; preds = %39, %76
  %49 = phi ptr [ %83, %76 ], [ %46, %39 ]
  %50 = phi i64 [ %81, %76 ], [ %44, %39 ]
  %51 = phi ptr [ %80, %76 ], [ %43, %39 ]
  %52 = phi i32 [ %79, %76 ], [ %42, %39 ]
  %53 = phi i32 [ %77, %76 ], [ %33, %39 ]
  %54 = getelementptr inbounds %struct.cached_char_s, ptr %49, i64 0, i32 7
  %55 = load i64, ptr %54, align 8, !tbaa !43
  %56 = trunc i64 %55 to i32
  %57 = mul i32 %56, 59
  %58 = getelementptr inbounds %struct.cached_char_s, ptr %49, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %59, i64 0, i32 2
  %61 = load i32, ptr %60, align 8, !tbaa !49
  %62 = mul i32 %61, 73
  %63 = add i32 %62, %57
  %64 = icmp ult i32 %53, %52
  %65 = icmp ule i32 %53, %63
  %66 = icmp ult i32 %63, %52
  br i1 %64, label %67, label %69

67:                                               ; preds = %48
  %68 = and i1 %65, %66
  br i1 %68, label %71, label %76

69:                                               ; preds = %48
  %70 = or i1 %65, %66
  br i1 %70, label %71, label %76

71:                                               ; preds = %69, %67
  %72 = zext i32 %53 to i64
  %73 = getelementptr inbounds ptr, ptr %51, i64 %72
  store ptr %49, ptr %73, align 8, !tbaa !42
  %74 = load ptr, ptr %11, align 8, !tbaa !25
  %75 = getelementptr inbounds ptr, ptr %74, i64 %50
  store ptr null, ptr %75, align 8, !tbaa !42
  br label %76

76:                                               ; preds = %71, %69, %67
  %77 = phi i32 [ %52, %71 ], [ %53, %67 ], [ %53, %69 ]
  %78 = add i32 %52, 1
  %79 = and i32 %78, %30
  %80 = load ptr, ptr %11, align 8, !tbaa !25
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds ptr, ptr %80, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !42
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %48, !llvm.loop !50

85:                                               ; preds = %76, %39, %16
  %86 = load ptr, ptr %3, align 8, !tbaa !42
  %87 = getelementptr inbounds %struct.cached_char_s, ptr %86, i64 0, i32 9
  %88 = load ptr, ptr %87, align 8, !tbaa !51
  store ptr %88, ptr %4, align 8, !tbaa !52
  %89 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !53
  %91 = ptrtoint ptr %86 to i64
  %92 = ptrtoint ptr %90 to i64
  %93 = sub i64 %91, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, ptr %12, align 8, !tbaa !55
  %95 = getelementptr inbounds %struct.cached_char_s, ptr %86, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !48
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.cached_fm_pair_s, ptr %96, i64 0, i32 7
  %100 = load i32, ptr %99, align 4, !tbaa !56
  %101 = add nsw i32 %100, -1
  store i32 %101, ptr %99, align 4, !tbaa !56
  br label %102

102:                                              ; preds = %85, %98
  call void @gx_bits_cache_free(ptr noundef nonnull %4, ptr noundef %86, ptr noundef %88) #9
  %103 = call i32 @gx_bits_cache_alloc(ptr noundef nonnull %4, i64 noundef %1, ptr noundef nonnull %3) #9
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %13, label %105, !llvm.loop !150

105:                                              ; preds = %102, %2
  %106 = load ptr, ptr %3, align 8, !tbaa !42
  %107 = getelementptr inbounds %struct.cached_char_s, ptr %106, i64 0, i32 9
  store ptr %5, ptr %107, align 8, !tbaa !51
  %108 = getelementptr inbounds %struct.gx_bits_cache_chunk_s, ptr %5, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !53
  %110 = ptrtoint ptr %106 to i64
  %111 = ptrtoint ptr %109 to i64
  %112 = sub i64 %110, %111
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.cached_char_s, ptr %106, i64 0, i32 10
  store i32 %113, ptr %114, align 8, !tbaa !151
  br label %115

115:                                              ; preds = %13, %105
  %116 = phi ptr [ %106, %105 ], [ null, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret ptr %116
}

declare i32 @gx_bits_cache_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @gx_bits_cache_shorten(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind willreturn memory(argmem: read) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !10, i64 48}
!8 = !{!"gs_memory_s", !9, i64 0}
!9 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!8, !10, i64 88}
!14 = !{!15, !16, i64 28}
!15 = !{!"gs_font_dir_s", !10, i64 0, !10, i64 8, !16, i64 16, !16, i64 20, !17, i64 24, !18, i64 48, !16, i64 128, !16, i64 132}
!16 = !{!"int", !11, i64 0}
!17 = !{!"fm_pair_cache_s", !16, i64 0, !16, i64 4, !10, i64 8, !16, i64 16}
!18 = !{!"char_cache_s", !10, i64 0, !16, i64 8, !16, i64 12, !16, i64 16, !10, i64 24, !10, i64 32, !16, i64 40, !16, i64 44, !16, i64 48, !16, i64 52, !16, i64 56, !16, i64 60, !10, i64 64, !10, i64 72}
!19 = !{!15, !10, i64 32}
!20 = !{!15, !10, i64 72}
!21 = !{!15, !16, i64 92}
!22 = !{!15, !16, i64 96}
!23 = !{!15, !16, i64 104}
!24 = !{!15, !16, i64 108}
!25 = !{!15, !10, i64 80}
!26 = !{!15, !16, i64 88}
!27 = !{!8, !10, i64 32}
!28 = !{!15, !16, i64 24}
!29 = !{!15, !16, i64 40}
!30 = !{!15, !16, i64 100}
!31 = !{!32, !16, i64 72}
!32 = !{!"cached_fm_pair_s", !10, i64 0, !33, i64 8, !16, i64 24, !35, i64 28, !35, i64 32, !35, i64 36, !35, i64 40, !16, i64 44, !16, i64 48, !10, i64 56, !10, i64 64, !16, i64 72}
!33 = !{!"gs_uid_s", !34, i64 0, !10, i64 8}
!34 = !{!"long", !11, i64 0}
!35 = !{!"float", !11, i64 0}
!36 = !{!32, !10, i64 0}
!37 = !{!32, !34, i64 8}
!38 = !{!32, !10, i64 16}
!39 = !{!32, !16, i64 48}
!40 = !{!32, !10, i64 56}
!41 = distinct !{!41, !6}
!42 = !{!10, !10, i64 0}
!43 = !{!44, !34, i64 32}
!44 = !{!"cached_char_s", !45, i64 0, !46, i64 8, !46, i64 10, !46, i64 12, !46, i64 14, !34, i64 16, !10, i64 24, !34, i64 32, !11, i64 40, !10, i64 48, !16, i64 56, !16, i64 60, !34, i64 64, !47, i64 72, !47, i64 88}
!45 = !{!"gx_cached_bits_head_s", !16, i64 0, !16, i64 4}
!46 = !{!"short", !11, i64 0}
!47 = !{!"gs_fixed_point_s", !34, i64 0, !34, i64 8}
!48 = !{!44, !10, i64 24}
!49 = !{!32, !16, i64 24}
!50 = distinct !{!50, !6}
!51 = !{!44, !10, i64 48}
!52 = !{!15, !10, i64 48}
!53 = !{!54, !10, i64 8}
!54 = !{!"gx_bits_cache_chunk_s", !10, i64 0, !10, i64 8, !16, i64 16, !16, i64 20}
!55 = !{!15, !16, i64 56}
!56 = !{!32, !16, i64 44}
!57 = distinct !{!57, !6}
!58 = distinct !{!58, !6}
!59 = !{!60, !10, i64 0}
!60 = !{!"gx_xfont_s", !61, i64 0}
!61 = !{!"gx_xfont_common_s", !10, i64 0}
!62 = !{!63, !10, i64 32}
!63 = !{!"gx_xfont_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40}
!64 = !{!32, !10, i64 64}
!65 = distinct !{!65, !6}
!66 = !{i64 0, i64 8, !67, i64 8, i64 8, !42}
!67 = !{!34, !34, i64 0}
!68 = !{!69, !35, i64 456}
!69 = !{!"gs_state_s", !10, i64 0, !70, i64 8, !72, i64 80, !16, i64 128, !46, i64 132, !16, i64 136, !35, i64 140, !47, i64 144, !16, i64 160, !16, i64 164, !10, i64 168, !11, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !11, i64 232, !11, i64 264, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !73, i64 336, !16, i64 360, !73, i64 364, !16, i64 388, !10, i64 392, !10, i64 400, !16, i64 408, !16, i64 412, !10, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !72, i64 456, !16, i64 504, !11, i64 508, !16, i64 512, !10, i64 520, !16, i64 528, !10, i64 536, !10, i64 544, !74, i64 552}
!70 = !{!"gx_line_params_s", !35, i64 0, !16, i64 4, !16, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !35, i64 24, !71, i64 32}
!71 = !{!"gx_dash_params_s", !10, i64 0, !16, i64 8, !35, i64 12, !16, i64 16, !35, i64 20, !16, i64 24, !16, i64 28, !35, i64 32}
!72 = !{!"gs_matrix_fixed_s", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20, !34, i64 24, !34, i64 32, !16, i64 40}
!73 = !{!"gs_matrix_s", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !35, i64 16, !35, i64 20}
!74 = !{!"gs_state_client_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!75 = !{!32, !35, i64 28}
!76 = !{!69, !35, i64 460}
!77 = !{!32, !35, i64 32}
!78 = !{!69, !35, i64 464}
!79 = !{!32, !35, i64 36}
!80 = !{!69, !35, i64 468}
!81 = !{!32, !35, i64 40}
!82 = !{!83, !10, i64 328}
!83 = !{!"gx_device_s", !16, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !16, i64 40, !16, i64 44, !84, i64 48, !16, i64 64, !16, i64 68, !11, i64 72, !11, i64 80, !16, i64 96, !11, i64 100, !11, i64 108, !11, i64 116, !11, i64 124, !34, i64 144, !34, i64 152, !16, i64 160, !85, i64 168, !86, i64 192}
!84 = !{!"gx_device_color_info_s", !16, i64 0, !16, i64 4, !46, i64 8, !46, i64 10, !46, i64 12, !46, i64 14}
!85 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!86 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!87 = !{!83, !10, i64 320}
!88 = !{!89, !16, i64 96}
!89 = !{!"gs_font_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !73, i64 48, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !35, i64 100, !90, i64 104, !92, i64 176, !92, i64 228}
!90 = !{!"gs_font_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !91, i64 32, !10, i64 48, !10, i64 56, !10, i64 64}
!91 = !{!"gx_xfont_callbacks_s", !10, i64 0, !10, i64 8}
!92 = !{!"gs_font_name_s", !11, i64 0, !16, i64 48}
!93 = !{!73, !35, i64 0}
!94 = !{!73, !35, i64 4}
!95 = !{!73, !35, i64 8}
!96 = !{!73, !35, i64 12}
!97 = !{!73, !35, i64 16}
!98 = !{!73, !35, i64 20}
!99 = !{!69, !10, i64 0}
!100 = !{!89, !16, i64 224}
!101 = !{!63, !10, i64 0}
!102 = !{!92, !16, i64 48}
!103 = !{!89, !16, i64 276}
!104 = !{!89, !16, i64 72}
!105 = !{!106, !34, i64 312}
!106 = !{!"gs_font_base_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !73, i64 48, !16, i64 72, !16, i64 76, !16, i64 80, !16, i64 84, !16, i64 88, !16, i64 92, !16, i64 96, !35, i64 100, !90, i64 104, !92, i64 176, !92, i64 228, !107, i64 280, !33, i64 312, !16, i64 328, !16, i64 332}
!107 = !{!"gs_rect_s", !108, i64 0, !108, i64 16}
!108 = !{!"gs_point_s", !109, i64 0, !109, i64 8}
!109 = !{!"double", !11, i64 0}
!110 = !{!89, !10, i64 24}
!111 = distinct !{!111, !6}
!112 = !{!44, !34, i64 16}
!113 = !{!114, !16, i64 0}
!114 = !{!"gs_log2_scale_point_s", !16, i64 0, !16, i64 4}
!115 = !{!114, !16, i64 4}
!116 = !{!117, !10, i64 24}
!117 = !{!"gx_device_memory_s", !16, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !16, i64 40, !16, i64 44, !84, i64 48, !16, i64 64, !16, i64 68, !11, i64 72, !11, i64 80, !16, i64 96, !11, i64 100, !11, i64 108, !11, i64 116, !11, i64 124, !34, i64 144, !34, i64 152, !16, i64 160, !85, i64 168, !86, i64 192, !10, i64 488, !73, i64 496, !16, i64 520, !16, i64 524, !10, i64 528, !10, i64 536, !10, i64 544, !118, i64 552, !119, i64 568, !114, i64 592, !16, i64 600, !16, i64 604, !16, i64 608, !16, i64 612, !16, i64 616, !34, i64 624}
!118 = !{!"gs_const_string_s", !10, i64 0, !16, i64 8}
!119 = !{!"_c24", !34, i64 0, !16, i64 8, !16, i64 12, !16, i64 16}
!120 = !{!117, !10, i64 488}
!121 = !{!117, !16, i64 64}
!122 = !{!117, !16, i64 68}
!123 = !{!54, !10, i64 0}
!124 = distinct !{!124, !6}
!125 = !{!44, !16, i64 4}
!126 = !{!44, !34, i64 64}
!127 = !{!44, !46, i64 8}
!128 = !{!44, !46, i64 10}
!129 = !{!44, !46, i64 12}
!130 = !{!44, !46, i64 14}
!131 = !{!117, !10, i64 528}
!132 = !{!117, !10, i64 192}
!133 = !{!117, !10, i64 224}
!134 = distinct !{!134, !6}
!135 = !{!44, !16, i64 60}
!136 = !{!11, !11, i64 0}
!137 = !{!138, !16, i64 0}
!138 = !{!"gs_int_rect_s", !139, i64 0, !139, i64 8}
!139 = !{!"gs_int_point_s", !16, i64 0, !16, i64 4}
!140 = !{!138, !16, i64 8}
!141 = !{!138, !16, i64 4}
!142 = !{!138, !16, i64 12}
!143 = distinct !{!143, !6}
!144 = !{!44, !34, i64 88}
!145 = !{!44, !34, i64 96}
!146 = !{!44, !16, i64 0}
!147 = distinct !{!147, !6}
!148 = distinct !{!148, !6}
!149 = distinct !{!149, !6}
!150 = distinct !{!150, !6}
!151 = !{!44, !16, i64 56}
