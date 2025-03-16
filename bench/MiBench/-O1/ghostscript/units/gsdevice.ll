; ModuleID = 'gsdevice.c'
source_filename = "gsdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_null_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_forward_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"gx_device\00", align 1
@st_device = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 488, ptr @.str, ptr null, ptr null, ptr @gs_no_struct_enum_ptrs, ptr @gs_no_struct_reloc_ptrs, ptr @gx_device_finalize }, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"gx_device_forward\00", align 1
@st_device_forward = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 496, ptr @.str.1, ptr null, ptr null, ptr @device_forward_enum_ptrs, ptr @device_forward_reloc_ptrs, ptr @gx_device_finalize }, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"gx_device_null\00", align 1
@st_device_null = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 496, ptr @.str.2, ptr null, ptr null, ptr @device_forward_enum_ptrs, ptr @device_forward_reloc_ptrs, ptr @gx_device_finalize }, align 8
@gs_null_device = external global %struct.gx_device_null_s, align 8
@st_device_unknown = internal constant %struct.gs_memory_struct_type_s { i32 1, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr @gx_device_finalize }, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"gs_copydevice(unknown)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"gs_copydevice\00", align 1
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"gx_device(unknown)\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @gx_device_finalize(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = tail call i32 %7(ptr noundef %0) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32 0, ptr %2, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %1, %5, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_closedevice(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = tail call i32 %7(ptr noundef %0) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  store i32 0, ptr %2, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %1, %10, %5
  %12 = phi i32 [ %8, %5 ], [ %8, %10 ], [ 0, %1 ]
  ret i32 %12
}

declare ptr @gs_no_struct_enum_ptrs(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare void @gs_no_struct_reloc_ptrs(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef ptr @device_forward_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr null, ptr %8
  br label %15

15:                                               ; preds = %6, %10
  %16 = phi ptr [ null, %6 ], [ %14, %10 ]
  store ptr %16, ptr %3, align 8, !tbaa !20
  br label %17

17:                                               ; preds = %4, %15
  %18 = phi ptr [ @ptr_struct_procs, %15 ], [ null, %4 ]
  ret ptr %18
}

; Function Attrs: nounwind uwtable
define internal void @device_forward_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_forward_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef nonnull %5, ptr noundef %2) #10
  br label %13

13:                                               ; preds = %3, %7, %11
  %14 = phi ptr [ %12, %11 ], [ %5, %7 ], [ %5, %3 ]
  store ptr %14, ptr %4, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gx_device_enum_ptr(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr null, ptr %0
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %7, %3 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define dso_local ptr @gx_device_reloc_ptr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef nonnull %0, ptr noundef %1) #10
  br label %10

10:                                               ; preds = %2, %4, %8
  %11 = phi ptr [ %9, %8 ], [ %0, %4 ], [ %0, %2 ]
  ret ptr %11
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gx_device_set_procs(ptr nocapture noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %6, ptr noundef nonnull align 8 dereferenceable(296) %3, i64 296, i1 false), !tbaa.struct !22
  store ptr null, ptr %2, align 8, !tbaa !21
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gdev_initialize(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(488) @gs_null_device, i64 488, i1 false), !tbaa.struct !23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_flushpage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = tail call i32 %5(ptr noundef %3) #10
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_currentdevice(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_copypage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %3 = load ptr, ptr %2, align 8, !tbaa !28
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call i32 %5(ptr noundef %3, i32 noundef 1, i32 noundef 0) #10
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 17
  %10 = load i64, ptr %9, align 8, !tbaa !39
  %11 = add nsw i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !39
  br label %12

12:                                               ; preds = %1, %8
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_output_page(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 19
  %7 = load i32, ptr %6, align 8, !tbaa !40
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 %1, i32 1
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  %12 = tail call i32 %11(ptr noundef %5, i32 noundef %9, i32 noundef %2) #10
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 17
  %17 = load i64, ptr %16, align 8, !tbaa !39
  %18 = add nsw i64 %17, %15
  store i64 %18, ptr %16, align 8, !tbaa !39
  br label %19

19:                                               ; preds = %14, %3
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_copyscanlines(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef writeonly %4, ptr noundef writeonly %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !41
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !42
  %12 = sext i32 %11 to i64
  %13 = mul nsw i64 %12, %9
  %14 = add nsw i64 %13, 7
  %15 = lshr i64 %14, 3
  %16 = trunc i64 %15 to i32
  %17 = udiv i32 %3, %16
  %18 = icmp ugt i32 %16, %3
  br i1 %18, label %43, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 12
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %22 = and i64 %15, 4294967295
  br label %23

23:                                               ; preds = %19, %39
  %24 = phi i32 [ undef, %19 ], [ %37, %39 ]
  %25 = phi ptr [ %2, %19 ], [ %41, %39 ]
  %26 = phi i32 [ 0, %19 ], [ %40, %39 ]
  %27 = load ptr, ptr %20, align 8, !tbaa !43
  %28 = add i32 %26, %1
  %29 = tail call i32 %27(ptr noundef %0, i32 noundef %28, ptr noundef %25, ptr noundef null) #10
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, ptr %21, align 4, !tbaa !44
  %33 = icmp eq i32 %28, %32
  %34 = select i1 %33, i32 %24, i32 %29
  %35 = select i1 %33, i32 2, i32 1
  br label %36

36:                                               ; preds = %23, %31
  %37 = phi i32 [ %34, %31 ], [ %24, %23 ]
  %38 = phi i32 [ %35, %31 ], [ 0, %23 ]
  switch i32 %38, label %51 [
    i32 0, label %39
    i32 2, label %43
  ]

39:                                               ; preds = %36
  %40 = add nuw i32 %26, 1
  %41 = getelementptr inbounds i8, ptr %25, i64 %22
  %42 = icmp ult i32 %40, %17
  br i1 %42, label %23, label %43, !llvm.loop !45

43:                                               ; preds = %39, %36, %6
  %44 = phi i32 [ 0, %6 ], [ %40, %39 ], [ %26, %36 ]
  %45 = icmp eq ptr %4, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 %44, ptr %4, align 4, !tbaa !24
  br label %47

47:                                               ; preds = %46, %43
  %48 = icmp eq ptr %5, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = mul i32 %44, %16
  store i32 %50, ptr %5, align 4, !tbaa !24
  br label %51

51:                                               ; preds = %36, %47, %49
  %52 = phi i32 [ 0, %49 ], [ 0, %47 ], [ %37, %36 ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gx_device_raster(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !42
  %8 = sext i32 %7 to i64
  %9 = mul nsw i64 %8, %5
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = add nsw i64 %9, 63
  %13 = lshr i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, -8
  br label %20

16:                                               ; preds = %2
  %17 = add nsw i64 %9, 7
  %18 = lshr i64 %17, 3
  %19 = trunc i64 %18 to i32
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i32 [ %15, %11 ], [ %19, %16 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @gs_devicename(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_deviceinitialmatrix(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr @gx_default_get_initial_matrix, ptr %3, align 8, !tbaa !48
  br label %7

7:                                                ; preds = %6, %2
  %8 = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %8(ptr noundef %0, ptr noundef %1) #10
  ret void
}

declare void @gx_default_get_initial_matrix(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_getdevice(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  %3 = call i32 @gs_lib_device_list(ptr noundef nonnull %2, ptr noundef null) #10
  %4 = icmp sgt i32 %0, -1
  %5 = icmp sgt i32 %3, %0
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !20
  %9 = zext nneg i32 %0 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %11, %7 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret ptr %13
}

declare i32 @gs_lib_device_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_copydevice(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %10 = call i32 @gs_lib_device_list(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  %13 = load ptr, ptr %4, align 8, !tbaa !20
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = icmp eq ptr %14, %1
  br i1 %15, label %32, label %16

16:                                               ; preds = %9
  %17 = zext i32 %10 to i64
  br label %23

18:                                               ; preds = %23
  %19 = add nuw nsw i64 %24, 1
  %20 = getelementptr inbounds ptr, ptr %13, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !20
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %32, label %23, !llvm.loop !50

23:                                               ; preds = %16, %18
  %24 = phi i64 [ 0, %16 ], [ %19, %18 ]
  %25 = icmp eq i64 %24, %17
  br i1 %25, label %26, label %18

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = load i32, ptr %1, align 8, !tbaa !54
  %30 = load ptr, ptr %5, align 8, !tbaa !20
  %31 = call ptr %28(ptr noundef %2, i32 noundef %29, ptr noundef %30, ptr noundef nonnull @.str.3) #10
  br label %50

32:                                               ; preds = %18, %9
  %33 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %34 = load ptr, ptr %5, align 8, !tbaa !20
  %35 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %34, i64 %33
  store ptr %35, ptr %5, align 8, !tbaa !20
  %36 = icmp eq ptr %12, null
  %37 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 21
  %38 = select i1 %36, ptr %37, ptr %12
  %39 = getelementptr inbounds %struct.gx_device_procs_s, ptr %38, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !55
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.gx_device_procs_s, ptr %38, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = icmp eq ptr %44, @gx_forward_get_xfont_procs
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %35, ptr noundef nonnull align 8 dereferenceable(56) @st_device_forward, i64 56, i1 false), !tbaa.struct !57
  br label %48

47:                                               ; preds = %42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %35, ptr noundef nonnull align 8 dereferenceable(56) @st_device, i64 56, i1 false), !tbaa.struct !57
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, ptr %1, align 8, !tbaa !54
  store i32 %49, ptr %35, align 8, !tbaa !58
  br label %50

50:                                               ; preds = %26, %48
  %51 = phi ptr [ %31, %26 ], [ undef, %48 ]
  %52 = phi ptr [ @st_device_unknown, %26 ], [ %35, %48 ]
  %53 = phi i32 [ 5, %26 ], [ 0, %48 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  switch i32 %53, label %69 [
    i32 0, label %54
    i32 5, label %59
  ]

54:                                               ; preds = %50, %3
  %55 = phi ptr [ %52, %50 ], [ %7, %3 ]
  %56 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !60
  %58 = call ptr %57(ptr noundef %2, ptr noundef %55, ptr noundef nonnull @.str.4) #10
  br label %59

59:                                               ; preds = %54, %50
  %60 = phi ptr [ %51, %50 ], [ %58, %54 ]
  %61 = phi ptr [ %52, %50 ], [ %55, %54 ]
  %62 = icmp eq ptr %60, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %1, align 8, !tbaa !54
  %65 = sext i32 %64 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %60, ptr nonnull align 8 %1, i64 %65, i1 false)
  %66 = getelementptr inbounds %struct.gx_device_s, ptr %60, i64 0, i32 3
  store ptr %2, ptr %66, align 8, !tbaa !19
  %67 = getelementptr inbounds %struct.gx_device_s, ptr %60, i64 0, i32 4
  store ptr %61, ptr %67, align 8, !tbaa !49
  %68 = getelementptr inbounds %struct.gx_device_s, ptr %60, i64 0, i32 5
  store i32 0, ptr %68, align 8, !tbaa !5
  store ptr %60, ptr %0, align 8, !tbaa !20
  br label %69

69:                                               ; preds = %59, %63, %50
  %70 = phi i32 [ undef, %50 ], [ 0, %63 ], [ -25, %59 ]
  ret i32 %70
}

declare ptr @gx_forward_get_xfont_procs(ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setdevice(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @gs_setdevice_no_erase(ptr noundef %0, ptr noundef %1), !range !61
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @gs_erasepage(ptr noundef %0) #10
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ %3, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setdevice_no_erase(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %2
  tail call void @gx_device_fill_in_procs(ptr noundef %1) #10
  %7 = tail call i32 @gs_device_is_memory(ptr noundef %1) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9, %17
  %14 = phi ptr [ %19, %17 ], [ %11, %9 ]
  %15 = tail call i32 @gs_device_is_memory(ptr noundef nonnull %14) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gx_device_memory_s, ptr %14, i64 0, i32 22
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !62

21:                                               ; preds = %13, %17, %9
  %22 = phi ptr [ %11, %9 ], [ %14, %13 ], [ %19, %17 ]
  %23 = getelementptr inbounds %struct.gx_device_memory_s, ptr %1, i64 0, i32 22
  store ptr %22, ptr %23, align 8, !tbaa !63
  br label %24

24:                                               ; preds = %21, %6
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %1, i64 0, i32 21
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = tail call i32 %26(ptr noundef %1) #10
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %24
  store i32 1, ptr %3, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %29, %2
  %31 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  store ptr %1, ptr %31, align 8, !tbaa !28
  tail call void @gx_set_cmap_procs(ptr noundef %0, ptr noundef %1) #10
  %32 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 27
  store i32 0, ptr %32, align 4, !tbaa !69
  %33 = tail call i32 @gs_initmatrix(ptr noundef %0) #10
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = tail call i32 @gs_initclip(ptr noundef %0) #10
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  store ptr @gx_dc_procs_none, ptr %40, align 8, !tbaa !71
  %41 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 39
  store i8 0, ptr %41, align 4, !tbaa !77
  %42 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 40
  store i32 0, ptr %42, align 8, !tbaa !78
  %43 = zext i1 %5 to i32
  br label %44

44:                                               ; preds = %30, %35, %24, %38
  %45 = phi i32 [ %43, %38 ], [ %27, %24 ], [ %33, %30 ], [ %36, %35 ]
  ret i32 %45
}

declare i32 @gs_erasepage(ptr noundef) local_unnamed_addr #1

declare void @gx_device_fill_in_procs(ptr noundef) local_unnamed_addr #1

declare i32 @gs_device_is_memory(ptr noundef) local_unnamed_addr #1

declare void @gx_set_cmap_procs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_initmatrix(ptr noundef) local_unnamed_addr #1

declare i32 @gs_initclip(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gs_make_null_device(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #4 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %0, ptr noundef nonnull align 8 dereferenceable(496) @gs_null_device, i64 496, i1 false), !tbaa.struct !79
  %3 = getelementptr inbounds %struct.gx_device_null_s, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_nulldevice(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gs_setdevice_no_erase(ptr noundef %0, ptr noundef nonnull @gs_null_device), !range !61
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @gs_erasepage(ptr noundef %0) #10
  br label %6

6:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_device_no_output(ptr nocapture noundef writeonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  store ptr @gs_null_device, ptr %2, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gx_set_device_only(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gx_device_adjust_resolution(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = sitofp i32 %1 to double
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !41
  %8 = sitofp i32 %7 to double
  %9 = fdiv double %5, %8
  %10 = sitofp i32 %2 to double
  %11 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %10, %13
  %15 = icmp eq i32 %3, 0
  %16 = fcmp ogt double %9, %14
  %17 = fcmp olt double %9, %14
  %18 = select i1 %15, i1 %16, i1 %17
  %19 = select i1 %18, double %9, double %14
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %21 = load float, ptr %20, align 4, !tbaa !82
  %22 = fpext float %21 to double
  %23 = fmul double %19, %22
  %24 = fptrunc double %23 to float
  store float %24, ptr %20, align 4, !tbaa !82
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !82
  %27 = fpext float %26 to double
  %28 = fmul double %19, %27
  %29 = fptrunc double %28 to float
  store float %29, ptr %25, align 4, !tbaa !82
  store i32 %1, ptr %6, align 8, !tbaa !41
  store i32 %2, ptr %11, align 4, !tbaa !44
  %30 = fmul double %5, 7.200000e+01
  %31 = fpext float %24 to double
  %32 = fdiv double %30, %31
  %33 = fptrunc double %32 to float
  %34 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10
  store float %33, ptr %34, align 8, !tbaa !82
  %35 = fmul double %10, 7.200000e+01
  %36 = fpext float %29 to double
  %37 = fdiv double %35, %36
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10, i64 1
  store float %38, ptr %39, align 4, !tbaa !82
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_device_set_width_height(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  store i32 %1, ptr %4, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  store i32 %2, ptr %5, align 4, !tbaa !44
  %6 = sitofp i32 %1 to double
  %7 = fmul double %6, 7.200000e+01
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %9 = load float, ptr %8, align 4, !tbaa !82
  %10 = fpext float %9 to double
  %11 = fdiv double %7, %10
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10
  store float %12, ptr %13, align 8, !tbaa !82
  %14 = sitofp i32 %2 to double
  %15 = fmul double %14, 7.200000e+01
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !82
  %18 = fpext float %17 to double
  %19 = fdiv double %15, %18
  %20 = fptrunc double %19 to float
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10, i64 1
  store float %20, ptr %21, align 4, !tbaa !82
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @gx_device_set_margins(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %10, %4 ]
  %6 = getelementptr inbounds float, ptr %1, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !82
  %8 = fmul float %7, 7.200000e+01
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 16, i64 %5
  store float %8, ptr %9, align 4, !tbaa !82
  %10 = add nuw nsw i64 %5, 1
  %11 = icmp eq i64 %10, 4
  br i1 %11, label %12, label %4, !llvm.loop !83

12:                                               ; preds = %4
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %28, label %14

14:                                               ; preds = %12
  %15 = load float, ptr %1, align 4, !tbaa !82
  %16 = fneg float %15
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 14
  %18 = load float, ptr %17, align 4, !tbaa !82
  %19 = fmul float %18, %16
  %20 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 15
  store float %19, ptr %20, align 4, !tbaa !82
  %21 = getelementptr inbounds float, ptr %1, i64 3
  %22 = load float, ptr %21, align 4, !tbaa !82
  %23 = fneg float %22
  %24 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 14, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !82
  %26 = fmul float %25, %23
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 15, i64 1
  store float %26, ptr %27, align 4, !tbaa !82
  br label %28

28:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_device_set_resolution(ptr nocapture noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #8 {
  %4 = fptrunc double %1 to float
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  store float %4, ptr %5, align 4, !tbaa !82
  %6 = fptrunc double %2 to float
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  store float %6, ptr %7, align 4, !tbaa !82
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10
  %9 = load float, ptr %8, align 8, !tbaa !82
  %10 = fpext float %9 to double
  %11 = fmul double %10, %1
  %12 = fdiv double %11, 7.200000e+01
  %13 = fadd double %12, 5.000000e-01
  %14 = fptosi double %13 to i32
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  store i32 %14, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !82
  %18 = fpext float %17 to double
  %19 = fmul double %18, %2
  %20 = fdiv double %19, 7.200000e+01
  %21 = fadd double %20, 5.000000e-01
  %22 = fptosi double %21 to i32
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  store i32 %22, ptr %23, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gx_device_set_media_size(ptr nocapture noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #8 {
  %4 = fptrunc double %1 to float
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10
  store float %4, ptr %5, align 8, !tbaa !82
  %6 = fptrunc double %2 to float
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 10, i64 1
  store float %6, ptr %7, align 4, !tbaa !82
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %9 = load float, ptr %8, align 4, !tbaa !82
  %10 = fpext float %9 to double
  %11 = fmul double %10, %1
  %12 = fdiv double %11, 7.200000e+01
  %13 = fadd double %12, 4.990000e-01
  %14 = fptosi double %13 to i32
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  store i32 %14, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !82
  %18 = fpext float %17 to double
  %19 = fmul double %18, %2
  %20 = fdiv double %19, 7.200000e+01
  %21 = fadd double %20, 4.990000e-01
  %22 = fptosi double %21 to i32
  %23 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  store i32 %22, ptr %23, align 4, !tbaa !44
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 40}
!6 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!6, !10, i64 224}
!17 = !{!18, !10, i64 488}
!18 = !{!"gx_device_forward_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488}
!19 = !{!6, !10, i64 24}
!20 = !{!10, !10, i64 0}
!21 = !{!6, !10, i64 8}
!22 = !{i64 0, i64 8, !20, i64 8, i64 8, !20, i64 16, i64 8, !20, i64 24, i64 8, !20, i64 32, i64 8, !20, i64 40, i64 8, !20, i64 48, i64 8, !20, i64 56, i64 8, !20, i64 64, i64 8, !20, i64 72, i64 8, !20, i64 80, i64 8, !20, i64 88, i64 8, !20, i64 96, i64 8, !20, i64 104, i64 8, !20, i64 112, i64 8, !20, i64 120, i64 8, !20, i64 128, i64 8, !20, i64 136, i64 8, !20, i64 144, i64 8, !20, i64 152, i64 8, !20, i64 160, i64 8, !20, i64 168, i64 8, !20, i64 176, i64 8, !20, i64 184, i64 8, !20, i64 192, i64 8, !20, i64 200, i64 8, !20, i64 208, i64 8, !20, i64 216, i64 8, !20, i64 224, i64 8, !20, i64 232, i64 8, !20, i64 240, i64 8, !20, i64 248, i64 8, !20, i64 256, i64 8, !20, i64 264, i64 8, !20, i64 272, i64 8, !20, i64 280, i64 8, !20, i64 288, i64 8, !20}
!23 = !{i64 0, i64 4, !24, i64 8, i64 8, !20, i64 16, i64 8, !20, i64 24, i64 8, !20, i64 32, i64 8, !20, i64 40, i64 4, !24, i64 44, i64 4, !24, i64 48, i64 4, !24, i64 52, i64 4, !24, i64 56, i64 2, !25, i64 58, i64 2, !25, i64 60, i64 2, !25, i64 62, i64 2, !25, i64 64, i64 4, !24, i64 68, i64 4, !24, i64 72, i64 8, !26, i64 80, i64 16, !26, i64 96, i64 4, !24, i64 100, i64 8, !26, i64 108, i64 8, !26, i64 116, i64 8, !26, i64 124, i64 16, !26, i64 144, i64 8, !27, i64 152, i64 8, !27, i64 160, i64 4, !24, i64 168, i64 8, !20, i64 176, i64 8, !20, i64 184, i64 8, !20, i64 192, i64 8, !20, i64 200, i64 8, !20, i64 208, i64 8, !20, i64 216, i64 8, !20, i64 224, i64 8, !20, i64 232, i64 8, !20, i64 240, i64 8, !20, i64 248, i64 8, !20, i64 256, i64 8, !20, i64 264, i64 8, !20, i64 272, i64 8, !20, i64 280, i64 8, !20, i64 288, i64 8, !20, i64 296, i64 8, !20, i64 304, i64 8, !20, i64 312, i64 8, !20, i64 320, i64 8, !20, i64 328, i64 8, !20, i64 336, i64 8, !20, i64 344, i64 8, !20, i64 352, i64 8, !20, i64 360, i64 8, !20, i64 368, i64 8, !20, i64 376, i64 8, !20, i64 384, i64 8, !20, i64 392, i64 8, !20, i64 400, i64 8, !20, i64 408, i64 8, !20, i64 416, i64 8, !20, i64 424, i64 8, !20, i64 432, i64 8, !20, i64 440, i64 8, !20, i64 448, i64 8, !20, i64 456, i64 8, !20, i64 464, i64 8, !20, i64 472, i64 8, !20, i64 480, i64 8, !20}
!24 = !{!7, !7, i64 0}
!25 = !{!12, !12, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!13, !13, i64 0}
!28 = !{!29, !10, i64 536}
!29 = !{!"gs_state_s", !10, i64 0, !30, i64 8, !33, i64 80, !7, i64 128, !12, i64 132, !7, i64 136, !31, i64 140, !34, i64 144, !7, i64 160, !7, i64 164, !10, i64 168, !8, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !8, i64 232, !8, i64 264, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !35, i64 336, !7, i64 360, !35, i64 364, !7, i64 388, !10, i64 392, !10, i64 400, !7, i64 408, !7, i64 412, !10, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !33, i64 456, !7, i64 504, !8, i64 508, !7, i64 512, !10, i64 520, !7, i64 528, !10, i64 536, !10, i64 544, !36, i64 552}
!30 = !{!"gx_line_params_s", !31, i64 0, !7, i64 4, !7, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !31, i64 24, !32, i64 32}
!31 = !{!"float", !8, i64 0}
!32 = !{!"gx_dash_params_s", !10, i64 0, !7, i64 8, !31, i64 12, !7, i64 16, !31, i64 20, !7, i64 24, !7, i64 28, !31, i64 32}
!33 = !{!"gs_matrix_fixed_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20, !13, i64 24, !13, i64 32, !7, i64 40}
!34 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!35 = !{!"gs_matrix_s", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !31, i64 16, !31, i64 20}
!36 = !{!"gs_state_client_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!37 = !{!6, !10, i64 208}
!38 = !{!6, !10, i64 216}
!39 = !{!6, !13, i64 144}
!40 = !{!6, !7, i64 160}
!41 = !{!6, !7, i64 64}
!42 = !{!6, !7, i64 52}
!43 = !{!6, !10, i64 288}
!44 = !{!6, !7, i64 68}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!6, !10, i64 16}
!48 = !{!6, !10, i64 200}
!49 = !{!6, !10, i64 32}
!50 = distinct !{!50, !46}
!51 = !{!52, !10, i64 56}
!52 = !{!"gs_memory_s", !53, i64 0}
!53 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!54 = !{!6, !7, i64 0}
!55 = !{!15, !10, i64 56}
!56 = !{!15, !10, i64 128}
!57 = !{i64 0, i64 4, !24, i64 8, i64 8, !20, i64 16, i64 8, !20, i64 24, i64 8, !20, i64 32, i64 8, !20, i64 40, i64 8, !20, i64 48, i64 8, !20}
!58 = !{!59, !7, i64 0}
!59 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!60 = !{!52, !10, i64 24}
!61 = !{i32 -2147483648, i32 2}
!62 = distinct !{!62, !46}
!63 = !{!64, !10, i64 488}
!64 = !{!"gx_device_memory_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !35, i64 496, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 536, !10, i64 544, !65, i64 552, !66, i64 568, !67, i64 592, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !13, i64 624}
!65 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!66 = !{!"_c24", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!67 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!68 = !{!6, !10, i64 192}
!69 = !{!29, !7, i64 388}
!70 = !{!29, !10, i64 432}
!71 = !{!72, !10, i64 0}
!72 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !73, i64 48, !74, i64 56}
!73 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!74 = !{!"_mask", !75, i64 0, !13, i64 24, !10, i64 32}
!75 = !{!"gs_client_color_s", !76, i64 0, !10, i64 16}
!76 = !{!"gs_paint_color_s", !8, i64 0}
!77 = !{!29, !8, i64 508}
!78 = !{!29, !7, i64 512}
!79 = !{i64 0, i64 4, !24, i64 8, i64 8, !20, i64 16, i64 8, !20, i64 24, i64 8, !20, i64 32, i64 8, !20, i64 40, i64 4, !24, i64 44, i64 4, !24, i64 48, i64 4, !24, i64 52, i64 4, !24, i64 56, i64 2, !25, i64 58, i64 2, !25, i64 60, i64 2, !25, i64 62, i64 2, !25, i64 64, i64 4, !24, i64 68, i64 4, !24, i64 72, i64 8, !26, i64 80, i64 16, !26, i64 96, i64 4, !24, i64 100, i64 8, !26, i64 108, i64 8, !26, i64 116, i64 8, !26, i64 124, i64 16, !26, i64 144, i64 8, !27, i64 152, i64 8, !27, i64 160, i64 4, !24, i64 168, i64 8, !20, i64 176, i64 8, !20, i64 184, i64 8, !20, i64 192, i64 8, !20, i64 200, i64 8, !20, i64 208, i64 8, !20, i64 216, i64 8, !20, i64 224, i64 8, !20, i64 232, i64 8, !20, i64 240, i64 8, !20, i64 248, i64 8, !20, i64 256, i64 8, !20, i64 264, i64 8, !20, i64 272, i64 8, !20, i64 280, i64 8, !20, i64 288, i64 8, !20, i64 296, i64 8, !20, i64 304, i64 8, !20, i64 312, i64 8, !20, i64 320, i64 8, !20, i64 328, i64 8, !20, i64 336, i64 8, !20, i64 344, i64 8, !20, i64 352, i64 8, !20, i64 360, i64 8, !20, i64 368, i64 8, !20, i64 376, i64 8, !20, i64 384, i64 8, !20, i64 392, i64 8, !20, i64 400, i64 8, !20, i64 408, i64 8, !20, i64 416, i64 8, !20, i64 424, i64 8, !20, i64 432, i64 8, !20, i64 440, i64 8, !20, i64 448, i64 8, !20, i64 456, i64 8, !20, i64 464, i64 8, !20, i64 472, i64 8, !20, i64 480, i64 8, !20, i64 488, i64 8, !20}
!80 = !{!81, !10, i64 24}
!81 = !{!"gx_device_null_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488}
!82 = !{!31, !31, i64 0}
!83 = distinct !{!83, !46}
