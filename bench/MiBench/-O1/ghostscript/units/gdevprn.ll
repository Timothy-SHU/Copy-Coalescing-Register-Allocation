; ModuleID = 'gdevprn.c'
source_filename = "gdevprn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_printer_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [944 x i8], %struct.gx_printer_device_procs_s, %struct.gdev_prn_space_params_s, [80 x i8], i32, i32, i32, i32, i32, i32, ptr, i64, ptr, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_printer_device_procs_s = type { ptr, ptr, ptr }
%struct.gdev_prn_space_params_s = type { i64, i64, %struct.gx_band_params_s }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_param_string_s = type { ptr, i32, i32 }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_param_collection_s = type { ptr, i32 }
%struct._clc = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, i32, %struct.gx_band_params_s, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, ptr, i32, i32, %struct.gx_band_page_info_s, i32 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_bits_cache_s = type { ptr, i32, i32, i32 }
%struct.gx_band_page_info_s = type { [60 x i8], ptr, [60 x i8], ptr, i32, i64, %struct.gx_band_params_s }
%struct.input_media_s = type { [2 x float], ptr, float, ptr }
%struct.gs_param_float_array_s = type { ptr, i32, i32 }

@prn_std_procs = dso_local local_unnamed_addr global %struct.gx_device_procs_s { ptr @gdev_prn_open, ptr null, ptr null, ptr @gdev_prn_output_page, ptr @gdev_prn_close, ptr @gx_default_b_w_map_rgb_color, ptr @gx_default_b_w_map_color_rgb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gdev_prn_get_params, ptr @gdev_prn_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@gs_stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [10 x i8] c"MaxBitmap\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"BufferSpace\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"BandWidth\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"BandHeight\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"BandBufferSpace\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"NumCopies\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"OpenOutputFile\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Duplex\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"OutputFile\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"InputAttributes\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"OutputAttributes\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"PageSize\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"MediaColor\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"MediaWeight\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"MediaType\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"OutputType\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"printer buffer\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"printer memory left\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"printer buffer(open)\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"command list buffer\00", align 1
@gs_clist_device_procs = external local_unnamed_addr global %struct.gx_device_procs_s, align 8
@.str.22 = private unnamed_addr constant [32 x i8] c"command list buffer(retry open)\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"command list buffer(close)\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"printer buffer(close)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_open(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 32
  store ptr null, ptr %2, align 8, !tbaa !5
  %3 = tail call fastcc i32 @gdev_prn_alloc(ptr noundef %0)
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 28
  %7 = load i32, ptr %6, align 8, !tbaa !19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @gdev_prn_open_printer(ptr noundef %0, i32 noundef 1), !range !20
  br label %11

11:                                               ; preds = %5, %9, %1
  %12 = phi i32 [ %3, %1 ], [ %10, %9 ], [ %3, %5 ]
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_output_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %3
  %6 = tail call i32 @gdev_prn_open_printer(ptr noundef %0, i32 noundef 1), !range !20
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 23, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !21
  %11 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 32
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = tail call i32 %10(ptr noundef %0, ptr noundef %12, i32 noundef %1) #11
  %14 = load ptr, ptr %11, align 8, !tbaa !5
  %15 = tail call i32 @ferror(ptr noundef %14) #11
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 -12
  %18 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 25
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %18, i32 noundef 37) #12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  tail call void @gp_close_printer(ptr noundef %14, ptr noundef nonnull %18) #11
  store ptr null, ptr %11, align 8, !tbaa !5
  br label %22

22:                                               ; preds = %21, %8, %5
  %23 = phi i32 [ undef, %5 ], [ %17, %8 ], [ %17, %21 ]
  %24 = phi i32 [ undef, %5 ], [ %13, %8 ], [ %13, %21 ]
  br i1 %7, label %25, label %41

25:                                               ; preds = %3, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %3 ]
  %27 = phi i32 [ %24, %22 ], [ 0, %3 ]
  %28 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  %29 = load i64, ptr %28, align 8, !tbaa !22
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = tail call i32 @clist_finish_page(ptr noundef %0, i32 noundef %2) #11
  br label %33

33:                                               ; preds = %25, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %25 ]
  %35 = icmp slt i32 %27, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = icmp slt i32 %26, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %36
  %39 = icmp slt i32 %34, 0
  %40 = select i1 %39, i32 %34, i32 %27
  br label %41

41:                                               ; preds = %38, %36, %33, %22
  %42 = phi i32 [ %6, %22 ], [ %27, %33 ], [ %26, %36 ], [ %40, %38 ]
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gdev_prn_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  %3 = load i64, ptr %2, align 8, !tbaa !22
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 4), align 8, !tbaa !23
  %7 = tail call i32 %6(ptr noundef %0) #11
  %8 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 34
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  tail call void %8(ptr noundef nonnull @gs_memory_default, ptr noundef %10, ptr noundef nonnull @.str.23) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %15

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  %13 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  tail call void %12(ptr noundef nonnull @gs_memory_default, ptr noundef %14, ptr noundef nonnull @.str.24) #11
  store ptr null, ptr %13, align 8, !tbaa !28
  br label %15

15:                                               ; preds = %5, %11
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21
  %17 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %16, ptr noundef nonnull align 8 dereferenceable(296) %17, i64 296, i1 false), !tbaa.struct !35
  %18 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 32
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @gs_stdout, align 8, !tbaa !36
  %23 = icmp eq ptr %19, %22
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 25
  tail call void @gp_close_printer(ptr noundef nonnull %19, ptr noundef nonnull %25) #11
  br label %26

26:                                               ; preds = %24, %21
  store ptr null, ptr %18, align 8, !tbaa !5
  br label %27

27:                                               ; preds = %26, %15
  ret i32 0
}

declare i64 @gx_default_b_w_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare i32 @gx_default_b_w_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_get_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.gs_param_string_s, align 8
  %4 = tail call i32 @gx_default_get_params(ptr noundef %0, ptr noundef %1) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %92, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24
  %11 = tail call i32 %9(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %10) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %92, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %1, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !39
  %17 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24, i32 1
  %18 = tail call i32 %16(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %17) #11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %92, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %1, align 8, !tbaa !37
  %22 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24, i32 2
  %25 = tail call i32 %23(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %24) #11
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %92, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %1, align 8, !tbaa !37
  %29 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24, i32 2, i32 1
  %32 = tail call i32 %30(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %31) #11
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %92, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr %1, align 8, !tbaa !37
  %36 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24, i32 2, i32 2
  %39 = tail call i32 %37(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %38) #11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %92, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 27
  %43 = load i32, ptr %42, align 4, !tbaa !42
  %44 = icmp eq i32 %43, 0
  %45 = load ptr, ptr %1, align 8, !tbaa !37
  br i1 %44, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %45, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  %49 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 26
  %50 = tail call i32 %48(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %49) #11
  br label %54

51:                                               ; preds = %41
  %52 = load ptr, ptr %45, align 8, !tbaa !43
  %53 = tail call i32 %52(ptr noundef nonnull %1, ptr noundef nonnull @.str.5) #11
  br label %54

54:                                               ; preds = %51, %46
  %55 = phi i32 [ %50, %46 ], [ %53, %51 ]
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %92, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %1, align 8, !tbaa !37
  %59 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !44
  %61 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 28
  %62 = tail call i32 %60(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %61) #11
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %92, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 30
  %66 = load i32, ptr %65, align 8, !tbaa !45
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = icmp eq i32 %66, 0
  %70 = load ptr, ptr %1, align 8, !tbaa !37
  br i1 %69, label %76, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %70, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !44
  %74 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 29
  %75 = tail call i32 %73(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %74) #11
  br label %79

76:                                               ; preds = %68
  %77 = load ptr, ptr %70, align 8, !tbaa !43
  %78 = tail call i32 %77(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #11
  br label %79

79:                                               ; preds = %76, %71
  %80 = phi i32 [ %75, %71 ], [ %78, %76 ]
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %79, %64
  %83 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 25
  store ptr %83, ptr %3, align 8, !tbaa !46
  %84 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %83) #12
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 1
  store i32 %85, ptr %86, align 8, !tbaa !48
  %87 = getelementptr inbounds %struct.gs_param_string_s, ptr %3, i64 0, i32 2
  store i32 0, ptr %87, align 4, !tbaa !49
  %88 = load ptr, ptr %1, align 8, !tbaa !37
  %89 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %88, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !50
  %91 = call i32 %90(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %3) #11
  br label %92

92:                                               ; preds = %2, %6, %13, %20, %27, %34, %54, %57, %79, %82
  %93 = phi i32 [ %91, %82 ], [ %4, %2 ], [ %11, %6 ], [ %18, %13 ], [ %25, %20 ], [ %32, %27 ], [ %39, %34 ], [ %55, %54 ], [ %62, %57 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_put_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gdev_prn_space_params_s, align 8
  %7 = alloca %struct.gdev_prn_space_params_s, align 8
  %8 = alloca %struct.gs_param_string_s, align 8
  %9 = alloca %struct.gs_param_collection_s, align 8
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %12 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 26
  %13 = load i32, ptr %12, align 8, !tbaa !53
  store i32 %13, ptr %3, align 4, !tbaa !54
  %14 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 27
  %15 = load i32, ptr %14, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %16 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 28
  %17 = load i32, ptr %16, align 8, !tbaa !19
  store i32 %17, ptr %4, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  %22 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 32, i1 false), !tbaa.struct !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %22, i64 32, i1 false)
  %23 = load ptr, ptr %1, align 8, !tbaa !37
  %24 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = call i32 %25(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #11
  switch i32 %26, label %30 [
    i32 0, label %27
    i32 1, label %41
  ]

27:                                               ; preds = %2
  %28 = load i32, ptr %3, align 4, !tbaa !54
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %35, label %41

30:                                               ; preds = %2
  %31 = load ptr, ptr %1, align 8, !tbaa !37
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = call i32 %32(ptr noundef %1, ptr noundef nonnull @.str.5) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30, %27
  %36 = phi i32 [ -15, %27 ], [ %33, %30 ]
  %37 = load ptr, ptr %1, align 8, !tbaa !37
  %38 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %37, i64 0, i32 15
  %39 = load ptr, ptr %38, align 8, !tbaa !59
  %40 = call i32 %39(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i32 noundef %36) #11
  br label %41

41:                                               ; preds = %30, %27, %35, %2
  %42 = phi i32 [ %15, %35 ], [ %15, %2 ], [ 1, %27 ], [ 0, %30 ]
  %43 = phi i32 [ %36, %35 ], [ 0, %2 ], [ 0, %27 ], [ 0, %30 ]
  %44 = load ptr, ptr %1, align 8, !tbaa !37
  %45 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  %47 = call i32 %46(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %4) #11
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr %1, align 8, !tbaa !37
  %51 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %50, i64 0, i32 15
  %52 = load ptr, ptr %51, align 8, !tbaa !59
  %53 = call i32 %52(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %47) #11
  br label %54

54:                                               ; preds = %41, %49
  %55 = phi i32 [ %47, %49 ], [ %43, %41 ]
  %56 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 30
  %57 = load i32, ptr %56, align 8, !tbaa !45
  %58 = icmp sgt i32 %57, -1
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load ptr, ptr %1, align 8, !tbaa !37
  %61 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !44
  %63 = call i32 %62(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %5) #11
  switch i32 %63, label %65 [
    i32 0, label %64
    i32 1, label %75
  ]

64:                                               ; preds = %59
  br label %75

65:                                               ; preds = %59
  %66 = load ptr, ptr %1, align 8, !tbaa !37
  %67 = load ptr, ptr %66, align 8, !tbaa !43
  %68 = call i32 %67(ptr noundef %1, ptr noundef nonnull @.str.7) #11
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %1, align 8, !tbaa !37
  %72 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %71, i64 0, i32 15
  %73 = load ptr, ptr %72, align 8, !tbaa !59
  %74 = call i32 %73(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, i32 noundef %68) #11
  br label %75

75:                                               ; preds = %65, %64, %59, %70, %54
  %76 = phi i1 [ false, %70 ], [ false, %59 ], [ true, %64 ], [ false, %54 ], [ true, %65 ]
  %77 = phi i32 [ -1, %70 ], [ -1, %59 ], [ 1, %64 ], [ -1, %54 ], [ 0, %65 ]
  %78 = phi i32 [ %68, %70 ], [ %55, %59 ], [ %55, %64 ], [ %55, %54 ], [ %55, %65 ]
  %79 = load ptr, ptr %1, align 8, !tbaa !37
  %80 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !39
  %82 = call i32 %81(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %6) #11
  switch i32 %82, label %86 [
    i32 0, label %83
    i32 1, label %92
  ]

83:                                               ; preds = %75
  %84 = load i64, ptr %6, align 8, !tbaa !60
  %85 = icmp slt i64 %84, 10000
  br i1 %85, label %86, label %92

86:                                               ; preds = %75, %83
  %87 = phi i32 [ -15, %83 ], [ %82, %75 ]
  %88 = load ptr, ptr %1, align 8, !tbaa !37
  %89 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %88, i64 0, i32 15
  %90 = load ptr, ptr %89, align 8, !tbaa !59
  %91 = call i32 %90(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %87) #11
  br label %92

92:                                               ; preds = %83, %86, %75
  %93 = phi i32 [ %87, %86 ], [ %78, %75 ], [ %78, %83 ]
  %94 = load ptr, ptr %1, align 8, !tbaa !37
  %95 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %94, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !39
  %97 = getelementptr inbounds %struct.gdev_prn_space_params_s, ptr %6, i64 0, i32 1
  %98 = call i32 %96(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %97) #11
  switch i32 %98, label %102 [
    i32 0, label %99
    i32 1, label %108
  ]

99:                                               ; preds = %92
  %100 = load i64, ptr %97, align 8, !tbaa !61
  %101 = icmp slt i64 %100, 10000
  br i1 %101, label %102, label %108

102:                                              ; preds = %92, %99
  %103 = phi i32 [ -15, %99 ], [ %98, %92 ]
  %104 = load ptr, ptr %1, align 8, !tbaa !37
  %105 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %104, i64 0, i32 15
  %106 = load ptr, ptr %105, align 8, !tbaa !59
  %107 = call i32 %106(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef %103) #11
  br label %108

108:                                              ; preds = %99, %102, %92
  %109 = phi i32 [ %103, %102 ], [ %93, %92 ], [ %93, %99 ]
  %110 = load ptr, ptr %1, align 8, !tbaa !37
  %111 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !41
  %113 = getelementptr inbounds %struct.gdev_prn_space_params_s, ptr %6, i64 0, i32 2
  %114 = call i32 %112(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %113) #11
  switch i32 %114, label %118 [
    i32 0, label %115
    i32 1, label %124
  ]

115:                                              ; preds = %108
  %116 = load i32, ptr %113, align 8, !tbaa !62
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %108, %115
  %119 = phi i32 [ -15, %115 ], [ %114, %108 ]
  %120 = load ptr, ptr %1, align 8, !tbaa !37
  %121 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %120, i64 0, i32 15
  %122 = load ptr, ptr %121, align 8, !tbaa !59
  %123 = call i32 %122(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef %119) #11
  br label %124

124:                                              ; preds = %115, %118, %108
  %125 = phi i32 [ %119, %118 ], [ %109, %108 ], [ %109, %115 ]
  %126 = load ptr, ptr %1, align 8, !tbaa !37
  %127 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !41
  %129 = getelementptr inbounds %struct.gdev_prn_space_params_s, ptr %6, i64 0, i32 2, i32 1
  %130 = call i32 %128(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %129) #11
  switch i32 %130, label %134 [
    i32 0, label %131
    i32 1, label %140
  ]

131:                                              ; preds = %124
  %132 = load i32, ptr %129, align 4, !tbaa !63
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %124, %131
  %135 = phi i32 [ -15, %131 ], [ %130, %124 ]
  %136 = load ptr, ptr %1, align 8, !tbaa !37
  %137 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %136, i64 0, i32 15
  %138 = load ptr, ptr %137, align 8, !tbaa !59
  %139 = call i32 %138(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i32 noundef %135) #11
  br label %140

140:                                              ; preds = %131, %134, %124
  %141 = phi i32 [ %135, %134 ], [ %125, %124 ], [ %125, %131 ]
  %142 = load ptr, ptr %1, align 8, !tbaa !37
  %143 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %142, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !39
  %145 = getelementptr inbounds %struct.gdev_prn_space_params_s, ptr %6, i64 0, i32 2, i32 2
  %146 = call i32 %144(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %145) #11
  switch i32 %146, label %150 [
    i32 0, label %147
    i32 1, label %156
  ]

147:                                              ; preds = %140
  %148 = load i64, ptr %145, align 8, !tbaa !64
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %140, %147
  %151 = phi i32 [ -15, %147 ], [ %146, %140 ]
  %152 = load ptr, ptr %1, align 8, !tbaa !37
  %153 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %152, i64 0, i32 15
  %154 = load ptr, ptr %153, align 8, !tbaa !59
  %155 = call i32 %154(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, i32 noundef %151) #11
  br label %156

156:                                              ; preds = %147, %150, %140
  %157 = phi i32 [ %151, %150 ], [ %141, %140 ], [ %141, %147 ]
  %158 = load ptr, ptr %1, align 8, !tbaa !37
  %159 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %158, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !50
  %161 = call i32 %160(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %8) #11
  switch i32 %161, label %207 [
    i32 0, label %162
    i32 1, label %213
  ]

162:                                              ; preds = %156
  %163 = getelementptr inbounds %struct.gs_param_string_s, ptr %8, i64 0, i32 1
  %164 = load i32, ptr %163, align 8
  %165 = icmp ugt i32 %164, 79
  br i1 %165, label %207, label %166

166:                                              ; preds = %162
  %167 = icmp eq i32 %164, 0
  br i1 %167, label %204, label %168

168:                                              ; preds = %166
  %169 = load ptr, ptr %8, align 8, !tbaa !46
  %170 = add nsw i32 %164, -1
  br label %171

171:                                              ; preds = %168, %199
  %172 = phi i32 [ 0, %168 ], [ %201, %199 ]
  %173 = phi i32 [ 0, %168 ], [ %202, %199 ]
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %169, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !65
  %177 = icmp eq i8 %176, 37
  br i1 %177, label %178, label %199

178:                                              ; preds = %171
  %179 = add i32 %173, 1
  %180 = icmp ult i32 %179, %164
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = zext i32 %179 to i64
  %183 = getelementptr inbounds i8, ptr %169, i64 %182
  %184 = load i8, ptr %183, align 1, !tbaa !65
  %185 = icmp eq i8 %184, 37
  br i1 %185, label %199, label %186

186:                                              ; preds = %181, %178
  %187 = icmp eq i32 %172, 0
  %188 = select i1 %187, i32 %173, i32 %170
  %189 = add i32 %188, 1
  %190 = icmp eq i32 %189, %164
  br i1 %190, label %204, label %191

191:                                              ; preds = %186, %196
  %192 = phi i32 [ %197, %196 ], [ %189, %186 ]
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %169, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !65
  switch i8 %195, label %204 [
    i8 32, label %196
    i8 35, label %196
    i8 43, label %196
    i8 45, label %196
    i8 48, label %196
    i8 49, label %196
    i8 50, label %196
    i8 51, label %196
    i8 52, label %196
    i8 53, label %196
    i8 54, label %196
    i8 55, label %196
    i8 56, label %196
    i8 57, label %196
    i8 108, label %196
    i8 100, label %199
    i8 105, label %199
    i8 117, label %199
    i8 111, label %199
    i8 120, label %199
    i8 88, label %199
  ]

196:                                              ; preds = %191, %191, %191, %191, %191, %191, %191, %191, %191, %191, %191, %191, %191, %191, %191
  %197 = add i32 %192, 1
  %198 = icmp eq i32 %197, %164
  br i1 %198, label %204, label %191

199:                                              ; preds = %191, %191, %191, %191, %191, %191, %171, %181
  %200 = phi i32 [ %173, %181 ], [ %173, %171 ], [ %192, %191 ], [ %192, %191 ], [ %192, %191 ], [ %192, %191 ], [ %192, %191 ], [ %192, %191 ]
  %201 = phi i32 [ %172, %181 ], [ %172, %171 ], [ 1, %191 ], [ 1, %191 ], [ 1, %191 ], [ 1, %191 ], [ 1, %191 ], [ 1, %191 ]
  %202 = add i32 %200, 1
  %203 = icmp ult i32 %202, %164
  br i1 %203, label %171, label %204, !llvm.loop !66

204:                                              ; preds = %199, %186, %196, %191, %166
  %205 = phi i32 [ %157, %166 ], [ -15, %191 ], [ -15, %196 ], [ %157, %199 ], [ -15, %186 ]
  %206 = phi i32 [ 16, %166 ], [ 21, %191 ], [ 21, %196 ], [ 16, %199 ], [ 21, %186 ]
  switch i32 %206, label %328 [
    i32 16, label %215
    i32 21, label %207
  ]

207:                                              ; preds = %156, %162, %204
  %208 = phi i32 [ %205, %204 ], [ -13, %162 ], [ %161, %156 ]
  %209 = load ptr, ptr %1, align 8, !tbaa !37
  %210 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %209, i64 0, i32 15
  %211 = load ptr, ptr %210, align 8, !tbaa !59
  %212 = call i32 %211(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, i32 noundef %208) #11
  br label %213

213:                                              ; preds = %156, %207
  %214 = phi i32 [ %208, %207 ], [ %157, %156 ]
  store ptr null, ptr %8, align 8, !tbaa !46
  br label %215

215:                                              ; preds = %213, %204
  %216 = phi i32 [ %214, %213 ], [ %205, %204 ]
  %217 = load ptr, ptr %1, align 8, !tbaa !37
  %218 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %217, i64 0, i32 11
  %219 = load ptr, ptr %218, align 8, !tbaa !68
  %220 = call i32 %219(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %9, i32 noundef 1) #11
  switch i32 %220, label %226 [
    i32 0, label %221
    i32 1, label %231
  ]

221:                                              ; preds = %215
  %222 = load ptr, ptr %1, align 8, !tbaa !37
  %223 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %222, i64 0, i32 12
  %224 = load ptr, ptr %223, align 8, !tbaa !69
  %225 = call i32 %224(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %9) #11
  br label %231

226:                                              ; preds = %215
  %227 = load ptr, ptr %1, align 8, !tbaa !37
  %228 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %227, i64 0, i32 15
  %229 = load ptr, ptr %228, align 8, !tbaa !59
  %230 = call i32 %229(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, i32 noundef %220) #11
  br label %231

231:                                              ; preds = %226, %215, %221
  %232 = phi i32 [ %220, %226 ], [ %216, %215 ], [ %216, %221 ]
  %233 = load ptr, ptr %1, align 8, !tbaa !37
  %234 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %233, i64 0, i32 11
  %235 = load ptr, ptr %234, align 8, !tbaa !68
  %236 = call i32 %235(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %9, i32 noundef 1) #11
  switch i32 %236, label %242 [
    i32 0, label %237
    i32 1, label %247
  ]

237:                                              ; preds = %231
  %238 = load ptr, ptr %1, align 8, !tbaa !37
  %239 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %238, i64 0, i32 12
  %240 = load ptr, ptr %239, align 8, !tbaa !69
  %241 = call i32 %240(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %9) #11
  br label %247

242:                                              ; preds = %231
  %243 = load ptr, ptr %1, align 8, !tbaa !37
  %244 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %243, i64 0, i32 15
  %245 = load ptr, ptr %244, align 8, !tbaa !59
  %246 = call i32 %245(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, i32 noundef %236) #11
  br label %247

247:                                              ; preds = %242, %231, %237
  %248 = phi i32 [ %236, %242 ], [ %232, %231 ], [ %232, %237 ]
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %328, label %250

250:                                              ; preds = %247
  store i32 0, ptr %10, align 8, !tbaa !51
  %251 = call i32 @gx_default_put_params(ptr noundef %0, ptr noundef nonnull %1) #11
  store i32 %11, ptr %10, align 8, !tbaa !51
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %328, label %253

253:                                              ; preds = %250
  %254 = load i32, ptr %3, align 4, !tbaa !54
  store i32 %254, ptr %12, align 8, !tbaa !53
  store i32 %42, ptr %14, align 4, !tbaa !42
  %255 = load i32, ptr %4, align 4, !tbaa !54
  store i32 %255, ptr %16, align 8, !tbaa !19
  br i1 %76, label %256, label %259

256:                                              ; preds = %253
  %257 = load i32, ptr %5, align 4, !tbaa !54
  %258 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 29
  store i32 %257, ptr %258, align 4, !tbaa !70
  store i32 %77, ptr %56, align 8, !tbaa !45
  br label %259

259:                                              ; preds = %256, %253
  %260 = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %6, ptr noundef nonnull dereferenceable(32) %7, i64 32)
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load i32, ptr %18, align 8, !tbaa !55
  %264 = icmp eq i32 %263, %19
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, ptr %20, align 4, !tbaa !56
  %267 = icmp eq i32 %266, %21
  br i1 %267, label %294, label %268

268:                                              ; preds = %265, %262, %259
  %269 = icmp eq i32 %11, 0
  br i1 %269, label %293, label %270

270:                                              ; preds = %268
  %271 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  %272 = load i64, ptr %271, align 8, !tbaa !22
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %280, label %274

274:                                              ; preds = %270
  %275 = load ptr, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 4), align 8, !tbaa !23
  %276 = call i32 %275(ptr noundef %0) #11
  %277 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  %278 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 34
  %279 = load ptr, ptr %278, align 8, !tbaa !27
  call void %277(ptr noundef nonnull @gs_memory_default, ptr noundef %279, ptr noundef nonnull @.str.23) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %271, i8 0, i64 16, i1 false)
  br label %284

280:                                              ; preds = %270
  %281 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  %282 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %283 = load ptr, ptr %282, align 8, !tbaa !28
  call void %281(ptr noundef nonnull @gs_memory_default, ptr noundef %283, ptr noundef nonnull @.str.24) #11
  store ptr null, ptr %282, align 8, !tbaa !28
  br label %284

284:                                              ; preds = %274, %280
  %285 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21
  %286 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %285, ptr noundef nonnull align 8 dereferenceable(296) %286, i64 296, i1 false), !tbaa.struct !35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !57
  %287 = call fastcc i32 @gdev_prn_alloc(ptr noundef %0)
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !57
  call void @gx_device_set_width_height(ptr noundef %0, i32 noundef %19, i32 noundef %21) #11
  %290 = call fastcc i32 @gdev_prn_alloc(ptr noundef %0)
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %328

292:                                              ; preds = %289
  store i32 0, ptr %10, align 8, !tbaa !51
  br label %328

293:                                              ; preds = %268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !57
  br label %294

294:                                              ; preds = %293, %284, %265
  %295 = load ptr, ptr %8, align 8, !tbaa !46
  %296 = icmp eq ptr %295, null
  br i1 %296, label %318, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds %struct.gs_param_string_s, ptr %8, i64 0, i32 1
  %299 = load i32, ptr %298, align 8, !tbaa !48
  %300 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 25
  %301 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %300) #12
  %302 = trunc i64 %301 to i32
  %303 = call i32 @bytes_compare(ptr noundef nonnull %295, i32 noundef %299, ptr noundef nonnull %300, i32 noundef %302) #11
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %318, label %305

305:                                              ; preds = %297
  %306 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 32
  %307 = load ptr, ptr %306, align 8, !tbaa !5
  %308 = icmp eq ptr %307, null
  %309 = load ptr, ptr @gs_stdout, align 8
  %310 = icmp eq ptr %307, %309
  %311 = select i1 %308, i1 true, i1 %310
  br i1 %311, label %313, label %312

312:                                              ; preds = %305
  call void @gp_close_printer(ptr noundef nonnull %307, ptr noundef nonnull %300) #11
  br label %313

313:                                              ; preds = %312, %305
  store ptr null, ptr %306, align 8, !tbaa !5
  %314 = load ptr, ptr %8, align 8, !tbaa !46
  %315 = load i32, ptr %298, align 8, !tbaa !48
  %316 = zext i32 %315 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %300, ptr align 1 %314, i64 %316, i1 false)
  %317 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 25, i64 %316
  store i8 0, ptr %317, align 1, !tbaa !65
  br label %318

318:                                              ; preds = %313, %297, %294
  %319 = load i32, ptr %10, align 8, !tbaa !51
  %320 = icmp ne i32 %319, 0
  %321 = load i32, ptr %4, align 4
  %322 = icmp ne i32 %321, 0
  %323 = select i1 %320, i1 %322, i1 false
  br i1 %323, label %324, label %327

324:                                              ; preds = %318
  %325 = call i32 @gdev_prn_open_printer(ptr noundef %0, i32 noundef 1), !range !20
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %324, %318
  br label %328

328:                                              ; preds = %324, %289, %250, %247, %327, %292, %204
  %329 = phi i32 [ %290, %292 ], [ 0, %327 ], [ undef, %204 ], [ %248, %247 ], [ %251, %250 ], [ %287, %289 ], [ %325, %324 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %329
}

declare ptr @gx_page_device_get_page_device(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gdev_prn_alloc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(944) %2, i8 0, i64 944, i1 false)
  %3 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %3, ptr noundef nonnull align 8 dereferenceable(296) %4, i64 296, i1 false), !tbaa.struct !35
  %5 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !71
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !72
  %9 = tail call i64 @gdev_mem_data_size(ptr noundef %0, i32 noundef %6, i32 noundef %8) #11
  %10 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24
  %11 = load i64, ptr %10, align 8, !tbaa !73
  %12 = icmp ult i64 %9, %11
  %13 = icmp ult i64 %9, 4294967296
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = trunc i64 %9 to i32
  %17 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !74
  %18 = tail call ptr %17(ptr noundef nonnull @gs_memory_default, i32 noundef %16, i32 noundef 1, ptr noundef nonnull @.str.18) #11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !74
  %22 = tail call ptr %21(ptr noundef nonnull @gs_memory_default, i32 noundef 500000, i32 noundef 1, ptr noundef nonnull @.str.19) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %84

24:                                               ; preds = %20, %15, %1
  %25 = phi ptr [ null, %1 ], [ null, %15 ], [ %18, %20 ]
  %26 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  tail call void %26(ptr noundef nonnull @gs_memory_default, ptr noundef %25, ptr noundef nonnull @.str.20) #11
  %27 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !75
  %29 = trunc i64 %28 to i32
  br label %30

30:                                               ; preds = %44, %24
  %31 = phi i32 [ %29, %24 ], [ %45, %44 ]
  %32 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !74
  %33 = tail call ptr %32(ptr noundef nonnull @gs_memory_default, i32 noundef %31, i32 noundef 1, ptr noundef nonnull @.str.21) #11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct._clc, ptr %0, i64 0, i32 24
  %37 = getelementptr inbounds %struct._clc, ptr %0, i64 0, i32 25
  %38 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 23, i32 2
  %39 = getelementptr inbounds %struct._clc, ptr %0, i64 0, i32 23
  %40 = getelementptr inbounds %struct._clc, ptr %0, i64 0, i32 26
  %41 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 24, i32 2
  %42 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 34
  %43 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  br label %47

44:                                               ; preds = %30
  %45 = lshr i32 %31, 1
  %46 = icmp ult i32 %31, 20000
  br i1 %46, label %81, label %30, !llvm.loop !76

47:                                               ; preds = %35, %60
  %48 = phi i32 [ %62, %60 ], [ %31, %35 ]
  %49 = phi ptr [ %64, %60 ], [ %33, %35 ]
  store ptr %49, ptr %36, align 8, !tbaa !65
  store i32 %48, ptr %37, align 8, !tbaa !65
  store ptr %0, ptr %2, align 8, !tbaa !65
  %50 = load ptr, ptr %38, align 8, !tbaa !77
  store ptr %50, ptr %39, align 8, !tbaa !65
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %40, ptr noundef nonnull align 8 dereferenceable(16) %41, i64 16, i1 false), !tbaa.struct !78
  store ptr %49, ptr %42, align 8, !tbaa !27
  %51 = zext i32 %48 to i64
  store i64 %51, ptr %43, align 8, !tbaa !22
  %52 = load ptr, ptr @gs_clist_device_procs, align 8, !tbaa !79
  %53 = tail call i32 %52(ptr noundef %0) #11
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %47
  %56 = icmp eq i32 %53, -13
  br i1 %56, label %57, label %66

57:                                               ; preds = %55
  %58 = load i64, ptr %27, align 8, !tbaa !75
  %59 = icmp sgt i64 %58, %51
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  tail call void %61(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %49, ptr noundef nonnull @.str.22) #11
  %62 = shl i32 %48, 1
  %63 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !74
  %64 = tail call ptr %63(ptr noundef nonnull @gs_memory_default, i32 noundef %62, i32 noundef 1, ptr noundef nonnull @.str.22) #11
  store ptr %64, ptr %42, align 8, !tbaa !27
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %47

66:                                               ; preds = %60, %57, %55
  %67 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  %68 = load i64, ptr %67, align 8, !tbaa !22
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr getelementptr inbounds (%struct.gx_device_procs_s, ptr @gs_clist_device_procs, i64 0, i32 4), align 8, !tbaa !23
  %72 = tail call i32 %71(ptr noundef %0) #11
  %73 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  %74 = load ptr, ptr %42, align 8, !tbaa !27
  tail call void %73(ptr noundef nonnull @gs_memory_default, ptr noundef %74, ptr noundef nonnull @.str.23) #11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, i8 0, i64 16, i1 false)
  br label %79

75:                                               ; preds = %66
  %76 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  %77 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  %78 = load ptr, ptr %77, align 8, !tbaa !28
  tail call void %76(ptr noundef nonnull @gs_memory_default, ptr noundef %78, ptr noundef nonnull @.str.24) #11
  store ptr null, ptr %77, align 8, !tbaa !28
  br label %79

79:                                               ; preds = %70, %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef nonnull align 8 dereferenceable(296) %3, i64 296, i1 false), !tbaa.struct !35
  br label %81

80:                                               ; preds = %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %4, ptr noundef nonnull align 8 dereferenceable(296) @gs_clist_device_procs, i64 296, i1 false), !tbaa.struct !35
  br label %81

81:                                               ; preds = %44, %80, %79
  %82 = phi i1 [ false, %79 ], [ true, %80 ], [ false, %44 ]
  %83 = phi i32 [ %53, %79 ], [ undef, %80 ], [ -25, %44 ]
  br i1 %82, label %98, label %145

84:                                               ; preds = %20
  %85 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  tail call void %85(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %22, ptr noundef nonnull @.str.19) #11
  %86 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  store i64 0, ptr %86, align 8, !tbaa !22
  %87 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 23, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !77
  %89 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !80
  %91 = tail call i32 %88(ptr noundef %0, ptr noundef %0, ptr noundef %90, i32 noundef 0) #11
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !24
  tail call void %94(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %18, ptr noundef nonnull @.str.21) #11
  br label %97

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 26
  store ptr %18, ptr %96, align 8, !tbaa !28
  br label %97

97:                                               ; preds = %95, %93
  br i1 %92, label %98, label %145

98:                                               ; preds = %97, %81
  %99 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !81
  %101 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 1
  store ptr %100, ptr %101, align 8, !tbaa !82
  %102 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !83
  %104 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 3
  store ptr %103, ptr %104, align 8, !tbaa !84
  %105 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !85
  %107 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 4
  store ptr %106, ptr %107, align 8, !tbaa !86
  %108 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !87
  %110 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 5
  store ptr %109, ptr %110, align 8, !tbaa !88
  %111 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !89
  %113 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 6
  store ptr %112, ptr %113, align 8, !tbaa !90
  %114 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 13
  %115 = load ptr, ptr %114, align 8, !tbaa !91
  %116 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 13
  store ptr %115, ptr %116, align 8, !tbaa !92
  %117 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 14
  %118 = load ptr, ptr %117, align 8, !tbaa !93
  %119 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 14
  store ptr %118, ptr %119, align 8, !tbaa !94
  %120 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 15
  %121 = load ptr, ptr %120, align 8, !tbaa !95
  %122 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 15
  store ptr %121, ptr %122, align 8, !tbaa !96
  %123 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 16
  %124 = load ptr, ptr %123, align 8, !tbaa !97
  %125 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 16
  store ptr %124, ptr %125, align 8, !tbaa !98
  %126 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 17
  %127 = load ptr, ptr %126, align 8, !tbaa !99
  %128 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 17
  store ptr %127, ptr %128, align 8, !tbaa !100
  %129 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 18
  %130 = load ptr, ptr %129, align 8, !tbaa !101
  %131 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 18
  store ptr %130, ptr %131, align 8, !tbaa !102
  %132 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 19
  store ptr @gx_page_device_get_page_device, ptr %132, align 8, !tbaa !103
  %133 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 20
  %134 = load ptr, ptr %133, align 8, !tbaa !104
  %135 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 20
  store ptr %134, ptr %135, align 8, !tbaa !105
  %136 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 35, i32 36
  %137 = load ptr, ptr %136, align 8, !tbaa !106
  %138 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 36
  store ptr %137, ptr %138, align 8, !tbaa !107
  %139 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  %140 = load i64, ptr %139, align 8, !tbaa !22
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %98
  %143 = load ptr, ptr %4, align 8, !tbaa !108
  %144 = tail call i32 %143(ptr noundef %0) #11
  br label %145

145:                                              ; preds = %142, %98, %81, %97
  %146 = phi i32 [ %83, %81 ], [ %91, %97 ], [ %144, %142 ], [ 0, %98 ]
  ret i32 %146
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gdev_prn_open_printer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [100 x i8], align 16
  %4 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 25
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #11
  %5 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 17
  %6 = load i64, ptr %5, align 8, !tbaa !109
  %7 = add nsw i64 %6, 1
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 37) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %37, label %10

10:                                               ; preds = %2, %18
  %11 = phi ptr [ %20, %18 ], [ %8, %2 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !65
  %14 = icmp eq i8 %13, 37
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = tail call ptr @__ctype_b_loc() #13
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  br label %22

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %11, i64 2
  %20 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 37) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %10, !llvm.loop !110

22:                                               ; preds = %22, %15
  %23 = phi ptr [ %24, %22 ], [ %11, %15 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !65
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds i16, ptr %17, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !111
  %29 = and i16 %28, 1024
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %22, label %31, !llvm.loop !112

31:                                               ; preds = %22
  %32 = icmp eq i8 %25, 108
  %33 = shl i64 %7, 32
  %34 = ashr exact i64 %33, 32
  %35 = select i1 %32, i64 %7, i64 %34
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %4, i64 noundef %35) #11
  br label %37

37:                                               ; preds = %18, %2, %31
  %38 = phi ptr [ %3, %31 ], [ %4, %2 ], [ %4, %18 ]
  %39 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 32
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(2) @.str.17) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load ptr, ptr @gs_stdout, align 8, !tbaa !36
  store ptr %46, ptr %39, align 8, !tbaa !5
  br label %50

47:                                               ; preds = %42
  %48 = call ptr @gp_open_printer(ptr noundef nonnull %38, i32 noundef %1) #11
  store ptr %48, ptr %39, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %37, %45, %47
  %51 = phi i32 [ 1, %47 ], [ 1, %45 ], [ 0, %37 ]
  %52 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 31
  store i32 %51, ptr %52, align 4, !tbaa !113
  br label %53

53:                                               ; preds = %50, %47
  %54 = phi i32 [ -9, %47 ], [ 0, %50 ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #11
  ret i32 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @gp_close_printer(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_get_params(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @gx_default_put_params(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gx_device_set_width_height(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bytes_compare(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_input_page_size(i32 noundef %0, ptr nocapture noundef readonly %1, double noundef %2, double noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.input_media_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %6 = fptrunc double %2 to float
  store float %6, ptr %5, align 8, !tbaa !114
  %7 = fptrunc double %3 to float
  %8 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %7, ptr %8, align 4, !tbaa !114
  %9 = getelementptr inbounds %struct.input_media_s, ptr %5, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct.input_media_s, ptr %5, i64 0, i32 2
  store float 0.000000e+00, ptr %10, align 8, !tbaa !117
  %11 = getelementptr inbounds %struct.input_media_s, ptr %5, i64 0, i32 3
  store ptr null, ptr %11, align 8, !tbaa !118
  %12 = call i32 @gdev_prn_input_media(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_input_media(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_param_string_s, align 8
  %5 = alloca [25 x i8], align 16
  %6 = alloca %struct.gs_param_collection_s, align 8
  %7 = alloca %struct.gs_param_string_s, align 8
  %8 = alloca %struct.gs_param_float_array_s, align 8
  %9 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %0) #11
  %11 = getelementptr inbounds %struct.gs_param_collection_s, ptr %6, i64 0, i32 1
  store i32 4, ptr %11, align 8, !tbaa !119
  %12 = load ptr, ptr %1, align 8, !tbaa !121
  %13 = load ptr, ptr %12, align 8, !tbaa !37
  %14 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %13, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = call i32 %15(ptr noundef nonnull %12, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #11
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %85, label %18

18:                                               ; preds = %3
  %19 = load float, ptr %2, align 8, !tbaa !114
  %20 = fcmp une float %19, 0.000000e+00
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !114
  %24 = fcmp une float %23, 0.000000e+00
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  store ptr %2, ptr %8, align 8, !tbaa !122
  %26 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %8, i64 0, i32 1
  store i32 2, ptr %26, align 8, !tbaa !124
  %27 = getelementptr inbounds %struct.gs_param_float_array_s, ptr %8, i64 0, i32 2
  store i32 0, ptr %27, align 4, !tbaa !125
  %28 = load ptr, ptr %6, align 8, !tbaa !121
  %29 = load ptr, ptr %28, align 8, !tbaa !37
  %30 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !126
  %32 = call i32 %31(ptr noundef nonnull %28, ptr noundef nonnull @.str.12, ptr noundef nonnull %8) #11
  %33 = icmp sgt i32 %32, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  br i1 %33, label %34, label %85

34:                                               ; preds = %25, %21, %18
  %35 = phi i32 [ %32, %25 ], [ undef, %21 ], [ undef, %18 ]
  %36 = getelementptr inbounds %struct.input_media_s, ptr %2, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !115
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  store ptr %37, ptr %7, align 8, !tbaa !46
  %40 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #12
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.gs_param_string_s, ptr %7, i64 0, i32 1
  store i32 %41, ptr %42, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct.gs_param_string_s, ptr %7, i64 0, i32 2
  store i32 1, ptr %43, align 4, !tbaa !49
  %44 = load ptr, ptr %6, align 8, !tbaa !121
  %45 = load ptr, ptr %44, align 8, !tbaa !37
  %46 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %45, i64 0, i32 5
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = call i32 %47(ptr noundef nonnull %44, ptr noundef nonnull @.str.13, ptr noundef nonnull %7) #11
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %85, label %50

50:                                               ; preds = %39, %34
  %51 = getelementptr inbounds %struct.input_media_s, ptr %2, i64 0, i32 2
  %52 = load float, ptr %51, align 8, !tbaa !117
  %53 = fcmp une float %52, 0.000000e+00
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store float %52, ptr %9, align 4, !tbaa !114
  %55 = load ptr, ptr %6, align 8, !tbaa !121
  %56 = load ptr, ptr %55, align 8, !tbaa !37
  %57 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %56, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !127
  %59 = call i32 %58(ptr noundef nonnull %55, ptr noundef nonnull @.str.14, ptr noundef nonnull %9) #11
  %60 = icmp sgt i32 %59, -1
  %61 = select i1 %60, i32 %35, i32 %59
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br i1 %60, label %62, label %85

62:                                               ; preds = %54, %50
  %63 = getelementptr inbounds %struct.input_media_s, ptr %2, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !118
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %6, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  store ptr %64, ptr %4, align 8, !tbaa !46
  %68 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %64) #12
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  store i32 %69, ptr %70, align 8, !tbaa !48
  %71 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 2
  store i32 1, ptr %71, align 4, !tbaa !49
  %72 = load ptr, ptr %67, align 8, !tbaa !37
  %73 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %72, i64 0, i32 5
  %74 = load ptr, ptr %73, align 8, !tbaa !50
  %75 = call i32 %74(ptr noundef nonnull %67, ptr noundef nonnull @.str.15, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %76

76:                                               ; preds = %62, %66
  %77 = phi i32 [ %75, %66 ], [ 0, %62 ]
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %76
  %80 = load ptr, ptr %1, align 8, !tbaa !121
  %81 = load ptr, ptr %80, align 8, !tbaa !37
  %82 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %81, i64 0, i32 12
  %83 = load ptr, ptr %82, align 8, !tbaa !69
  %84 = call i32 %83(ptr noundef nonnull %80, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %85

85:                                               ; preds = %76, %39, %3, %25, %54, %79
  %86 = phi i32 [ %84, %79 ], [ %61, %54 ], [ %32, %25 ], [ %16, %3 ], [ %48, %39 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #11
  ret i32 %86
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_output_media(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gs_param_string_s, align 8
  %5 = alloca [25 x i8], align 16
  %6 = alloca %struct.gs_param_collection_s, align 8
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %0) #11
  %8 = getelementptr inbounds %struct.gs_param_collection_s, ptr %6, i64 0, i32 1
  store i32 4, ptr %8, align 8, !tbaa !119
  %9 = load ptr, ptr %1, align 8, !tbaa !121
  %10 = load ptr, ptr %9, align 8, !tbaa !37
  %11 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %10, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = call i32 %12(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #11
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %3
  %16 = load ptr, ptr %2, align 8, !tbaa !128
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %6, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  store ptr %16, ptr %4, align 8, !tbaa !46
  %20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #12
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct.gs_param_string_s, ptr %4, i64 0, i32 2
  store i32 1, ptr %23, align 4, !tbaa !49
  %24 = load ptr, ptr %19, align 8, !tbaa !37
  %25 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = call i32 %26(ptr noundef nonnull %19, ptr noundef nonnull @.str.16, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  br label %28

28:                                               ; preds = %15, %18
  %29 = phi i32 [ %27, %18 ], [ 0, %15 ]
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %1, align 8, !tbaa !121
  %33 = load ptr, ptr %32, align 8, !tbaa !37
  %34 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %33, i64 0, i32 12
  %35 = load ptr, ptr %34, align 8, !tbaa !69
  %36 = call i32 %35(ptr noundef nonnull %32, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
  br label %37

37:                                               ; preds = %28, %3, %31
  %38 = phi i32 [ %36, %31 ], [ %13, %3 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %5) #11
  ret i32 %38
}

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gdev_prn_close_printer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 25
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 37) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 32
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  tail call void @gp_close_printer(ptr noundef %7, ptr noundef nonnull %2) #11
  store ptr null, ptr %6, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %5, %1
  ret i32 0
}

declare i32 @clist_finish_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_default_print_page_copies(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 23
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %2, %5 ], [ %9, %7 ]
  %9 = add nsw i32 %8, -1
  %10 = load ptr, ptr %6, align 8, !tbaa !130
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #11
  %12 = icmp sgt i32 %11, -1
  %13 = icmp sgt i32 %8, 1
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %7, label %15, !llvm.loop !131

15:                                               ; preds = %7, %3
  %16 = phi i32 [ 0, %3 ], [ %11, %7 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_print_scan_lines(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !132
  call void %6(ptr noundef %0, ptr noundef nonnull %2) #11
  %7 = getelementptr inbounds %struct.gs_matrix_s, ptr %2, i64 0, i32 3
  %8 = load float, ptr %7, align 4, !tbaa !133
  %9 = fmul float %8, 7.200000e+01
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 15, i64 1
  %12 = load float, ptr %11, align 4, !tbaa !114
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 14, i64 1
  %14 = load float, ptr %13, align 4, !tbaa !114
  %15 = fdiv float %12, %14
  %16 = fmul float %9, %15
  %17 = fptosi float %16 to i32
  %18 = fcmp olt float %9, 0.000000e+00
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 16, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !114
  %22 = fpext float %21 to double
  %23 = fdiv double %22, 7.200000e+01
  %24 = fmul double %23, %10
  %25 = fptosi double %24 to i32
  %26 = sub i32 %4, %17
  %27 = add nsw i32 %26, %25
  br label %37

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 16, i64 3
  %30 = load float, ptr %29, align 4, !tbaa !114
  %31 = fpext float %30 to double
  %32 = fdiv double %31, 7.200000e+01
  %33 = fmul double %32, %10
  %34 = fptosi double %33 to i32
  %35 = add nsw i32 %4, %17
  %36 = sub i32 %35, %34
  br label %37

37:                                               ; preds = %28, %19
  %38 = phi i32 [ %27, %19 ], [ %36, %28 ]
  %39 = call i32 @llvm.smin.i32(i32 %4, i32 %38)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret i32 %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @gp_open_printer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_get_bits(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 21, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = tail call i32 %6(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #11
  %8 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 0) #11
  %9 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !135
  %11 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 7, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !136
  %13 = mul i32 %10, %12
  %14 = sub i32 0, %13
  %15 = and i32 %14, 7
  %16 = icmp slt i32 %7, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %4
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %17
  %20 = icmp eq ptr %3, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %3, align 8, !tbaa !36
  br label %23

23:                                               ; preds = %19, %21
  %24 = phi ptr [ %22, %21 ], [ %2, %19 ]
  %25 = shl nuw nsw i32 255, %15
  %26 = add i32 %8, -1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !65
  %30 = trunc i32 %25 to i8
  %31 = and i8 %29, %30
  store i8 %31, ptr %28, align 1, !tbaa !65
  br label %32

32:                                               ; preds = %17, %23, %4
  %33 = phi i32 [ %7, %4 ], [ 0, %23 ], [ 0, %17 ]
  ret i32 %33
}

declare i32 @gx_device_raster(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_copy_scan_lines(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 0) #11
  %6 = udiv i32 %3, %5
  %7 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 4, !tbaa !137
  %9 = sub nsw i32 %8, %1
  %10 = tail call i32 @llvm.smin.i32(i32 %6, i32 %9)
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 21, i32 12
  %14 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %15 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 7, i32 1
  %16 = zext i32 %5 to i64
  br label %17

17:                                               ; preds = %12, %45
  %18 = phi i32 [ undef, %12 ], [ %44, %45 ]
  %19 = phi ptr [ %2, %12 ], [ %47, %45 ]
  %20 = phi i32 [ 0, %12 ], [ %46, %45 ]
  %21 = add nsw i32 %20, %1
  %22 = load ptr, ptr %13, align 8, !tbaa !134
  %23 = tail call i32 %22(ptr noundef %0, i32 noundef %21, ptr noundef %19, ptr noundef null) #11
  %24 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 0) #11
  %25 = load i32, ptr %14, align 8, !tbaa !135
  %26 = load i32, ptr %15, align 4, !tbaa !136
  %27 = mul i32 %25, %26
  %28 = sub i32 0, %27
  %29 = and i32 %28, 7
  %30 = icmp slt i32 %23, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %17
  %32 = icmp eq i32 %29, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %31
  %34 = shl nuw nsw i32 255, %29
  %35 = add i32 %24, -1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, ptr %19, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !65
  %39 = trunc i32 %34 to i8
  %40 = and i8 %38, %39
  store i8 %40, ptr %37, align 1, !tbaa !65
  br label %41

41:                                               ; preds = %17, %31, %33
  %42 = phi i32 [ %23, %17 ], [ 0, %33 ], [ 0, %31 ]
  %43 = icmp sgt i32 %42, -1
  %44 = select i1 %43, i32 %18, i32 %42
  br i1 %43, label %45, label %49

45:                                               ; preds = %41
  %46 = add nuw nsw i32 %20, 1
  %47 = getelementptr inbounds i8, ptr %19, i64 %16
  %48 = icmp slt i32 %46, %10
  br i1 %48, label %17, label %49, !llvm.loop !138

49:                                               ; preds = %41, %45, %4
  %50 = phi i32 [ %10, %4 ], [ %44, %41 ], [ %10, %45 ]
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare i64 @gdev_mem_data_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 1592}
!6 = !{!"gx_device_printer_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !8, i64 488, !16, i64 1432, !17, i64 1456, !8, i64 1488, !7, i64 1568, !7, i64 1572, !7, i64 1576, !7, i64 1580, !7, i64 1584, !7, i64 1588, !10, i64 1592, !13, i64 1600, !10, i64 1608, !15, i64 1616}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!"gx_printer_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!"gdev_prn_space_params_s", !13, i64 0, !13, i64 8, !18, i64 16}
!18 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !13, i64 8}
!19 = !{!6, !7, i64 1576}
!20 = !{i32 -9, i32 1}
!21 = !{!6, !10, i64 1440}
!22 = !{!6, !13, i64 1600}
!23 = !{!15, !10, i64 32}
!24 = !{!25, !10, i64 88}
!25 = !{!"gs_memory_s", !26, i64 0}
!26 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!27 = !{!6, !10, i64 1608}
!28 = !{!29, !10, i64 528}
!29 = !{!"gx_device_memory_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !30, i64 496, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 536, !10, i64 544, !32, i64 552, !33, i64 568, !34, i64 592, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !13, i64 624}
!30 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!31 = !{!"float", !8, i64 0}
!32 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!33 = !{!"_c24", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!34 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!35 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 8, !36, i64 24, i64 8, !36, i64 32, i64 8, !36, i64 40, i64 8, !36, i64 48, i64 8, !36, i64 56, i64 8, !36, i64 64, i64 8, !36, i64 72, i64 8, !36, i64 80, i64 8, !36, i64 88, i64 8, !36, i64 96, i64 8, !36, i64 104, i64 8, !36, i64 112, i64 8, !36, i64 120, i64 8, !36, i64 128, i64 8, !36, i64 136, i64 8, !36, i64 144, i64 8, !36, i64 152, i64 8, !36, i64 160, i64 8, !36, i64 168, i64 8, !36, i64 176, i64 8, !36, i64 184, i64 8, !36, i64 192, i64 8, !36, i64 200, i64 8, !36, i64 208, i64 8, !36, i64 216, i64 8, !36, i64 224, i64 8, !36, i64 232, i64 8, !36, i64 240, i64 8, !36, i64 248, i64 8, !36, i64 256, i64 8, !36, i64 264, i64 8, !36, i64 272, i64 8, !36, i64 280, i64 8, !36, i64 288, i64 8, !36}
!36 = !{!10, !10, i64 0}
!37 = !{!38, !10, i64 0}
!38 = !{!"gs_param_list_s", !10, i64 0}
!39 = !{!40, !10, i64 24}
!40 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!41 = !{!40, !10, i64 16}
!42 = !{!6, !7, i64 1572}
!43 = !{!40, !10, i64 0}
!44 = !{!40, !10, i64 8}
!45 = !{!6, !7, i64 1584}
!46 = !{!47, !10, i64 0}
!47 = !{!"gs_param_string_s", !10, i64 0, !7, i64 8, !7, i64 12}
!48 = !{!47, !7, i64 8}
!49 = !{!47, !7, i64 12}
!50 = !{!40, !10, i64 40}
!51 = !{!52, !7, i64 40}
!52 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!53 = !{!6, !7, i64 1568}
!54 = !{!7, !7, i64 0}
!55 = !{!52, !7, i64 64}
!56 = !{!52, !7, i64 68}
!57 = !{i64 0, i64 8, !58, i64 8, i64 8, !58, i64 16, i64 4, !54, i64 20, i64 4, !54, i64 24, i64 8, !58}
!58 = !{!13, !13, i64 0}
!59 = !{!40, !10, i64 120}
!60 = !{!17, !13, i64 0}
!61 = !{!17, !13, i64 8}
!62 = !{!17, !7, i64 16}
!63 = !{!17, !7, i64 20}
!64 = !{!17, !13, i64 24}
!65 = !{!8, !8, i64 0}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!40, !10, i64 88}
!69 = !{!40, !10, i64 96}
!70 = !{!6, !7, i64 1580}
!71 = !{!29, !7, i64 64}
!72 = !{!29, !7, i64 68}
!73 = !{!6, !13, i64 1456}
!74 = !{!25, !10, i64 32}
!75 = !{!6, !13, i64 1464}
!76 = distinct !{!76, !67}
!77 = !{!6, !10, i64 1448}
!78 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 8, !58}
!79 = !{!15, !10, i64 0}
!80 = !{!52, !10, i64 24}
!81 = !{!6, !10, i64 1624}
!82 = !{!6, !10, i64 200}
!83 = !{!6, !10, i64 1640}
!84 = !{!6, !10, i64 216}
!85 = !{!6, !10, i64 1648}
!86 = !{!6, !10, i64 224}
!87 = !{!6, !10, i64 1656}
!88 = !{!6, !10, i64 232}
!89 = !{!6, !10, i64 1664}
!90 = !{!6, !10, i64 240}
!91 = !{!6, !10, i64 1720}
!92 = !{!6, !10, i64 296}
!93 = !{!6, !10, i64 1728}
!94 = !{!6, !10, i64 304}
!95 = !{!6, !10, i64 1736}
!96 = !{!6, !10, i64 312}
!97 = !{!6, !10, i64 1744}
!98 = !{!6, !10, i64 320}
!99 = !{!6, !10, i64 1752}
!100 = !{!6, !10, i64 328}
!101 = !{!6, !10, i64 1760}
!102 = !{!6, !10, i64 336}
!103 = !{!6, !10, i64 344}
!104 = !{!6, !10, i64 1776}
!105 = !{!6, !10, i64 352}
!106 = !{!6, !10, i64 1904}
!107 = !{!6, !10, i64 480}
!108 = !{!52, !10, i64 192}
!109 = !{!6, !13, i64 144}
!110 = distinct !{!110, !67}
!111 = !{!12, !12, i64 0}
!112 = distinct !{!112, !67}
!113 = !{!6, !7, i64 1588}
!114 = !{!31, !31, i64 0}
!115 = !{!116, !10, i64 8}
!116 = !{!"input_media_s", !8, i64 0, !10, i64 8, !31, i64 16, !10, i64 24}
!117 = !{!116, !31, i64 16}
!118 = !{!116, !10, i64 24}
!119 = !{!120, !7, i64 8}
!120 = !{!"gs_param_collection_s", !10, i64 0, !7, i64 8}
!121 = !{!120, !10, i64 0}
!122 = !{!123, !10, i64 0}
!123 = !{!"gs_param_float_array_s", !10, i64 0, !7, i64 8, !7, i64 12}
!124 = !{!123, !7, i64 8}
!125 = !{!123, !7, i64 12}
!126 = !{!40, !10, i64 64}
!127 = !{!40, !10, i64 32}
!128 = !{!129, !10, i64 0}
!129 = !{!"output_media_s", !10, i64 0}
!130 = !{!6, !10, i64 1432}
!131 = distinct !{!131, !67}
!132 = !{!52, !10, i64 200}
!133 = !{!30, !31, i64 12}
!134 = !{!6, !10, i64 288}
!135 = !{!6, !7, i64 64}
!136 = !{!6, !7, i64 52}
!137 = !{!6, !7, i64 68}
!138 = distinct !{!138, !67}
