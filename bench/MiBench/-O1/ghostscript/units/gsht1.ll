; ModuleID = 'gsht1.c'
source_filename = "gsht1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_halftone_component_s = type { i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.gs_spot_halftone_s }
%struct.gs_spot_halftone_s = type { %struct.gs_screen_halftone_s, i32, ptr }
%struct.gs_screen_halftone_s = type { float, float, ptr, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct._csc = type { %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s, %struct.gs_screen_halftone_s }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, i32, i32, i32, i32, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32 }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.gs_threshold_halftone_s = type { i32, i32, %struct.gs_const_string_s, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gx_ht_bit_s = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"gs_halftone_component\00", align 1
@st_halftone_component = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 48, ptr @.str, ptr null, ptr null, ptr @halftone_component_enum_ptrs, ptr @halftone_component_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"gs_halftone_component[]\00", align 1
@st_ht_component_element = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 48, ptr @.str.1, ptr null, ptr null, ptr @ht_comp_elt_enum_ptrs, ptr @ht_comp_elt_reloc_ptrs, ptr null }, align 8
@gs_sethalftone_prepare.cnames = internal unnamed_addr constant [4 x i32] [i32 0, i32 2, i32 3, i32 4], align 16
@gs_sethalftone_prepare.cindex = internal unnamed_addr constant [4 x i32] [i32 3, i32 0, i32 1, i32 2], align 16
@st_ht_order_component_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"gs_sethalftone\00", align 1
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"process_transfer\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @halftone_component_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !5
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 2
  store ptr %11, ptr %3, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %6, %4, %10
  %13 = phi ptr [ @ptr_const_string_procs, %10 ], [ null, %4 ], [ null, %6 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @halftone_component_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 2
  tail call void @gs_reloc_const_string(ptr noundef nonnull %8, ptr noundef %2) #6
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @ht_comp_elt_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ult i32 %1, 48
  br i1 %5, label %19, label %6

6:                                                ; preds = %4
  %7 = udiv i32 %1, 48
  %8 = urem i32 %2, %7
  %9 = zext nneg i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 48
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = icmp ugt i32 %7, %2
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %11, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %11, i64 0, i32 2, i32 0, i32 0, i32 2
  store ptr %18, ptr %3, align 8, !tbaa !10
  br label %19

19:                                               ; preds = %17, %13, %6, %4
  %20 = phi ptr [ null, %4 ], [ @ptr_const_string_procs, %17 ], [ null, %6 ], [ null, %13 ]
  ret ptr %20
}

; Function Attrs: nounwind uwtable
define internal void @ht_comp_elt_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp ult i32 %1, 48
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %1, 48
  br label %7

7:                                                ; preds = %5, %15
  %8 = phi i32 [ %16, %15 ], [ %6, %5 ]
  %9 = phi ptr [ %17, %15 ], [ %0, %5 ]
  %10 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !5
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %9, i64 0, i32 2, i32 0, i32 0, i32 2
  tail call void @gs_reloc_const_string(ptr noundef nonnull %14, ptr noundef %2) #6
  br label %15

15:                                               ; preds = %7, %13
  %16 = add nsw i32 %8, -1
  %17 = getelementptr inbounds i8, ptr %9, i64 48
  %18 = icmp eq i32 %16, 0
  br i1 %18, label %19, label %7, !llvm.loop !12

19:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setcolorscreen(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gx_device_halftone_s, align 8
  %4 = alloca %struct.gs_halftone_s, align 8
  %5 = alloca [124 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %5)
  %6 = getelementptr inbounds i8, ptr %5, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  store i32 2, ptr %4, align 8, !tbaa.struct !18
  %7 = getelementptr inbounds i8, ptr %4, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(124) %7, ptr noundef nonnull align 4 dereferenceable(124) %5, i64 124, i1 false), !tbaa.struct !22
  %8 = load ptr, ptr %0, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.gs_halftone_s, ptr %4, i64 0, i32 1, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #6
  %10 = call i32 @gs_sethalftone_prepare(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %9, align 8, !tbaa !32
  %14 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %3, i64 0, i32 1, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !35
  %15 = call i32 @gx_ht_install(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  br label %16

16:                                               ; preds = %2, %12
  %17 = phi i32 [ %15, %12 ], [ %10, %2 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %5)
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_sethalftone(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gx_device_halftone_s, align 8
  %4 = alloca %struct.gs_halftone_s, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !18
  %5 = load ptr, ptr %0, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.gs_halftone_s, ptr %4, i64 0, i32 1, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #6
  %7 = call i32 @gs_sethalftone_prepare(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %3)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %6, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %3, i64 0, i32 1, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !35
  %12 = call i32 @gx_ht_install(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %3) #6
  br label %13

13:                                               ; preds = %2, %9
  %14 = phi i32 [ %12, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_currentcolorscreen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.gs_halftone_s, ptr %4, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(96) %8, i64 96, i1 false), !tbaa.struct !14
  br label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._csc, ptr %1, i64 0, i32 3
  %11 = tail call i32 @gs_currentscreen(ptr noundef %0, ptr noundef nonnull %10) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !41
  %14 = getelementptr inbounds %struct._csc, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !41
  %15 = getelementptr inbounds %struct._csc, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !41
  br label %16

16:                                               ; preds = %9, %13, %7
  %17 = phi i32 [ 0, %7 ], [ 0, %13 ], [ %11, %9 ]
  ret i32 %17
}

declare i32 @gs_currentscreen(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_sethalftone_allocated(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gx_device_halftone_s, align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %3) #6
  %4 = call i32 @gs_sethalftone_prepare(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %3, i64 0, i32 1, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !35
  %10 = call i32 @gx_ht_install(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #6
  br label %11

11:                                               ; preds = %2, %6
  %12 = phi i32 [ %10, %6 ], [ %4, %2 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %3) #6
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_sethalftone_prepare(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.gs_screen_enum_s, align 8
  %5 = alloca %struct.gs_screen_enum_s, align 8
  %6 = alloca %struct.gs_screen_enum_s, align 8
  %7 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !32
  %9 = load i32, ptr %1, align 8, !tbaa !40
  switch i32 %9, label %210 [
    i32 2, label %10
    i32 3, label %66
    i32 4, label %90
    i32 5, label %94
    i32 6, label %94
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !42
  %14 = tail call ptr %13(ptr noundef %8, i32 noundef 4, ptr noundef nonnull @st_ht_order_component_element, ptr noundef nonnull @.str.2) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %63, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %6, i64 0, i32 1
  %18 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %6, i64 0, i32 1, i32 3
  %19 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %6, i64 0, i32 1, i32 9
  %20 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %6, i64 0, i32 1, i32 1
  br label %21

21:                                               ; preds = %52, %16
  %22 = phi i64 [ 0, %16 ], [ %55, %52 ]
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %6) #6
  %23 = getelementptr inbounds [4 x i32], ptr @gs_sethalftone_prepare.cindex, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !19
  %25 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %14, i64 %22
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %11, i64 %26
  %28 = call i32 @gs_currentaccuratescreens() #6
  %29 = call i32 @gx_ht_process_screen_memory(ptr noundef nonnull %6, ptr noundef %0, ptr noundef nonnull %27, i32 noundef %28, ptr noundef %8) #6
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %25, ptr noundef nonnull align 8 dereferenceable(96) %17, i64 96, i1 false), !tbaa.struct !45
  %32 = getelementptr inbounds [4 x i32], ptr @gs_sethalftone_prepare.cnames, i64 0, i64 %22
  %33 = load i32, ptr %32, align 4, !tbaa !19
  %34 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %14, i64 %22, i32 1
  store i32 %33, ptr %34, align 8, !tbaa !47
  %35 = icmp eq i64 %22, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %17, i64 96, i1 false), !tbaa.struct !45
  br label %52

37:                                               ; preds = %31
  %38 = load i16, ptr %18, align 4, !tbaa !49
  %39 = zext i16 %38 to i32
  %40 = load i32, ptr %19, align 4, !tbaa !51
  %41 = load i16, ptr %20, align 8, !tbaa !52
  %42 = zext i16 %41 to i32
  %43 = udiv i32 %40, %42
  %44 = mul i32 %43, %39
  %45 = udiv i32 4096, %44
  %46 = add nuw nsw i32 %45, 1
  %47 = mul i32 %46, %44
  %48 = call ptr @gx_ht_alloc_cache(ptr noundef %8, i32 noundef %46, i32 noundef %47) #6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.gx_ht_order_s, ptr %25, i64 0, i32 12
  store ptr %48, ptr %51, align 8, !tbaa !53
  call void @gx_ht_init_cache(ptr noundef nonnull %48, ptr noundef nonnull %25) #6
  br label %52

52:                                               ; preds = %50, %37, %36, %21
  %53 = phi i1 [ true, %21 ], [ false, %36 ], [ false, %50 ], [ true, %37 ]
  %54 = phi i32 [ %29, %21 ], [ %29, %36 ], [ %29, %50 ], [ -25, %37 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %6) #6
  %55 = add nuw nsw i64 %22, 1
  %56 = icmp eq i64 %55, 4
  %57 = select i1 %53, i1 true, i1 %56
  br i1 %57, label %58, label %21, !llvm.loop !54

58:                                               ; preds = %52
  %59 = icmp slt i32 %54, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %2, i64 0, i32 3
  store ptr %14, ptr %61, align 8, !tbaa !55
  %62 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %2, i64 0, i32 4
  store i32 4, ptr %62, align 8, !tbaa !56
  br label %63

63:                                               ; preds = %58, %10, %60
  %64 = phi i32 [ 0, %60 ], [ 1, %10 ], [ 2, %58 ]
  %65 = phi i32 [ %54, %60 ], [ 0, %10 ], [ %54, %58 ]
  switch i32 %64, label %210 [
    i32 0, label %203
    i32 2, label %203
  ]

66:                                               ; preds = %3
  %67 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %5) #6
  %68 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1
  %69 = load i32, ptr %68, align 8, !tbaa !57
  %70 = call i32 @gx_ht_process_screen_memory(ptr noundef nonnull %5, ptr noundef %0, ptr noundef nonnull %67, i32 noundef %69, ptr noundef %8) #6
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %73, i64 96, i1 false), !tbaa.struct !45
  %74 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 1, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !60
  %76 = icmp eq ptr %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !61
  %80 = call ptr %79(ptr noundef %8, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.3) #6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %80, i64 0, i32 1
  store ptr %75, ptr %83, align 8, !tbaa !62
  %84 = call i64 @gs_next_ids(i32 noundef 1) #6
  %85 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %80, i64 0, i32 2
  store i64 %84, ptr %85, align 8, !tbaa !64
  call void @load_transfer_map(ptr noundef %0, ptr noundef nonnull %80, double noundef 0.000000e+00) #6
  %86 = getelementptr inbounds %struct.gx_ht_order_s, ptr %2, i64 0, i32 13
  store ptr %80, ptr %86, align 8, !tbaa !65
  br label %87

87:                                               ; preds = %66, %72, %77, %82
  %88 = phi i32 [ %70, %66 ], [ 0, %82 ], [ 0, %72 ], [ -25, %77 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %5) #6
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %210, label %200

90:                                               ; preds = %3
  %91 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 2
  %92 = tail call fastcc i32 @process_threshold(ptr noundef %2, ptr noundef %0, ptr noundef nonnull %91, ptr noundef %8), !range !66
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %210, label %200

94:                                               ; preds = %3, %3
  %95 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 2
  %96 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, i32 2
  %97 = load i32, ptr %96, align 8, !tbaa !15
  %98 = load ptr, ptr %95, align 8, !tbaa !15
  %99 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !42
  %101 = tail call ptr %100(ptr noundef %8, i32 noundef %97, ptr noundef nonnull @st_ht_order_component_element, ptr noundef nonnull @.str.2) #6
  %102 = icmp eq ptr %101, null
  br i1 %102, label %197, label %103

103:                                              ; preds = %94
  %104 = icmp eq i32 %97, 0
  br i1 %104, label %185, label %105

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %101, i64 1
  %107 = add i32 %97, -1
  %108 = getelementptr inbounds %struct.gs_screen_enum_s, ptr %4, i64 0, i32 1
  %109 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 2
  br label %110

110:                                              ; preds = %176, %105
  %111 = phi ptr [ %106, %105 ], [ %180, %176 ]
  %112 = phi ptr [ %98, %105 ], [ %182, %176 ]
  %113 = phi i32 [ 0, %105 ], [ %181, %176 ]
  %114 = phi i32 [ 0, %105 ], [ %179, %176 ]
  %115 = load i32, ptr %112, align 8, !tbaa !67
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = icmp eq i32 %114, 0
  br i1 %118, label %125, label %176

119:                                              ; preds = %110
  %120 = icmp ne i32 %113, %107
  %121 = icmp ne i32 %114, 0
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %123, label %176

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %111, i64 1
  br label %125

125:                                              ; preds = %117, %123
  %126 = phi i32 [ %114, %123 ], [ 1, %117 ]
  %127 = phi ptr [ %124, %123 ], [ %111, %117 ]
  %128 = phi ptr [ %111, %123 ], [ %101, %117 ]
  %129 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %128, i64 0, i32 1
  store i32 %115, ptr %129, align 8, !tbaa !47
  %130 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %112, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !5
  switch i32 %131, label %156 [
    i32 3, label %132
    i32 4, label %153
  ]

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %112, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #6
  %134 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %112, i64 0, i32 2, i32 0, i32 1
  %135 = load i32, ptr %134, align 8, !tbaa !57
  %136 = call i32 @gx_ht_process_screen_memory(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %133, i32 noundef %135, ptr noundef %8) #6
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %128, ptr noundef nonnull align 8 dereferenceable(96) %108, i64 96, i1 false), !tbaa.struct !45
  %139 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %112, i64 0, i32 2, i32 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !60
  %141 = icmp eq ptr %140, null
  br i1 %141, label %151, label %142

142:                                              ; preds = %138
  %143 = load ptr, ptr %109, align 8, !tbaa !61
  %144 = call ptr %143(ptr noundef %8, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.3) #6
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %144, i64 0, i32 1
  store ptr %140, ptr %147, align 8, !tbaa !62
  %148 = call i64 @gs_next_ids(i32 noundef 1) #6
  %149 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %144, i64 0, i32 2
  store i64 %148, ptr %149, align 8, !tbaa !64
  call void @load_transfer_map(ptr noundef %0, ptr noundef nonnull %144, double noundef 0.000000e+00) #6
  %150 = getelementptr inbounds %struct.gx_ht_order_s, ptr %128, i64 0, i32 13
  store ptr %144, ptr %150, align 8, !tbaa !65
  br label %151

151:                                              ; preds = %132, %138, %142, %146
  %152 = phi i32 [ %136, %132 ], [ 0, %146 ], [ 0, %138 ], [ -25, %142 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #6
  br label %156

153:                                              ; preds = %125
  %154 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %112, i64 0, i32 2
  %155 = call fastcc i32 @process_threshold(ptr noundef %128, ptr noundef %0, ptr noundef nonnull %154, ptr noundef %8), !range !66
  br label %156

156:                                              ; preds = %125, %153, %151
  %157 = phi i32 [ %155, %153 ], [ %152, %151 ], [ -15, %125 ]
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %176, label %159

159:                                              ; preds = %156
  %160 = icmp eq ptr %128, %101
  br i1 %160, label %176, label %161

161:                                              ; preds = %159
  %162 = getelementptr inbounds %struct.gx_ht_order_s, ptr %128, i64 0, i32 3
  %163 = load i16, ptr %162, align 4, !tbaa !68
  %164 = zext i16 %163 to i32
  %165 = getelementptr inbounds %struct.gx_ht_order_s, ptr %128, i64 0, i32 9
  %166 = load i32, ptr %165, align 4, !tbaa !69
  %167 = getelementptr inbounds %struct.gx_ht_order_s, ptr %128, i64 0, i32 1
  %168 = load i16, ptr %167, align 8, !tbaa !70
  %169 = zext i16 %168 to i32
  %170 = udiv i32 %166, %169
  %171 = mul i32 %170, %164
  %172 = call ptr @gx_ht_alloc_cache(ptr noundef %8, i32 noundef 1, i32 noundef %171) #6
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %161
  %175 = getelementptr inbounds %struct.gx_ht_order_s, ptr %128, i64 0, i32 12
  store ptr %172, ptr %175, align 8, !tbaa !53
  call void @gx_ht_init_cache(ptr noundef nonnull %172, ptr noundef %128) #6
  br label %176

176:                                              ; preds = %174, %161, %159, %156, %119, %117
  %177 = phi i1 [ false, %117 ], [ false, %119 ], [ false, %156 ], [ true, %159 ], [ true, %174 ], [ false, %161 ]
  %178 = phi i32 [ -15, %117 ], [ -15, %119 ], [ %157, %156 ], [ %157, %159 ], [ %157, %174 ], [ -25, %161 ]
  %179 = phi i32 [ 1, %117 ], [ 0, %119 ], [ %126, %156 ], [ %126, %159 ], [ %126, %174 ], [ %126, %161 ]
  %180 = phi ptr [ %111, %117 ], [ %111, %119 ], [ %127, %156 ], [ %127, %159 ], [ %127, %174 ], [ %127, %161 ]
  %181 = add nuw i32 %113, 1
  %182 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %112, i64 1
  %183 = icmp ult i32 %181, %97
  %184 = select i1 %177, i1 %183, i1 false
  br i1 %184, label %110, label %185, !llvm.loop !71

185:                                              ; preds = %176, %103
  %186 = phi i32 [ 0, %103 ], [ %178, %176 ]
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %197, label %188

188:                                              ; preds = %185
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(96) %101, i64 96, i1 false), !tbaa.struct !45
  %189 = icmp eq i32 %97, 1
  br i1 %189, label %190, label %194

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %192 = load ptr, ptr %191, align 8, !tbaa !72
  call void %192(ptr noundef %8, ptr noundef nonnull %101, ptr noundef nonnull @.str.2) #6
  %193 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %2, i64 0, i32 3
  store ptr null, ptr %193, align 8, !tbaa !55
  br label %197

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %2, i64 0, i32 3
  store ptr %101, ptr %195, align 8, !tbaa !55
  %196 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %2, i64 0, i32 4
  store i32 %97, ptr %196, align 8, !tbaa !56
  br label %197

197:                                              ; preds = %190, %194, %185, %94
  %198 = phi i32 [ 1, %94 ], [ 2, %185 ], [ 0, %194 ], [ 0, %190 ]
  %199 = phi i32 [ 0, %94 ], [ %186, %185 ], [ %186, %194 ], [ %186, %190 ]
  switch i32 %198, label %210 [
    i32 0, label %203
    i32 2, label %203
  ]

200:                                              ; preds = %90, %87
  %201 = phi i32 [ %88, %87 ], [ %92, %90 ]
  %202 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %2, i64 0, i32 3
  store ptr null, ptr %202, align 8, !tbaa !55
  br label %203

203:                                              ; preds = %200, %197, %63, %197, %63
  %204 = phi i32 [ %199, %197 ], [ %199, %197 ], [ %65, %63 ], [ %65, %63 ], [ %201, %200 ]
  %205 = phi ptr [ %101, %197 ], [ %101, %197 ], [ %14, %63 ], [ %14, %63 ], [ null, %200 ]
  %206 = icmp slt i32 %204, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %209 = load ptr, ptr %208, align 8, !tbaa !72
  call void %209(ptr noundef %8, ptr noundef %205, ptr noundef nonnull @.str.2) #6
  br label %210

210:                                              ; preds = %203, %207, %3, %90, %87, %197, %63
  %211 = phi i32 [ -25, %197 ], [ -25, %63 ], [ %88, %87 ], [ %92, %90 ], [ -15, %3 ], [ %204, %207 ], [ %204, %203 ]
  ret i32 %211
}

declare i32 @gx_ht_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gx_ht_process_screen_memory(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @gs_currentaccuratescreens() local_unnamed_addr #4

declare ptr @gx_ht_alloc_cache(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @gx_ht_init_cache(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @process_threshold(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #1 {
  %5 = load i32, ptr %2, align 8, !tbaa !73
  %6 = trunc i32 %5 to i16
  store i16 %6, ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 1
  store i16 0, ptr %7, align 2, !tbaa !77
  %8 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 2
  store i16 1, ptr %8, align 4, !tbaa !78
  %9 = getelementptr inbounds %struct.gs_threshold_halftone_s, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !79
  %11 = trunc i32 %10 to i16
  %12 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 3
  store i16 %11, ptr %12, align 2, !tbaa !80
  %13 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 4
  store i16 0, ptr %13, align 8, !tbaa !81
  %14 = getelementptr inbounds %struct.gx_ht_cell_params_s, ptr %0, i64 0, i32 5
  store i16 1, ptr %14, align 2, !tbaa !82
  %15 = tail call i32 @gx_ht_alloc_order(ptr noundef nonnull %0, i32 noundef %5, i32 noundef %10, i32 noundef 0, i32 noundef 256, ptr noundef %3) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %89, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.gs_threshold_halftone_s, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !84
  %22 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = icmp eq i32 %21, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %17
  %28 = zext i32 %21 to i64
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i64 [ 0, %27 ], [ %36, %29 ]
  %31 = getelementptr inbounds i8, ptr %19, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !15
  %33 = tail call i8 @llvm.umax.i8(i8 %32, i8 1)
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %25, i64 %30, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !87
  %36 = add nuw nsw i64 %30, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %38, label %29, !llvm.loop !89

38:                                               ; preds = %29
  tail call void @gx_sort_ht_order(ptr noundef %25, i32 noundef %21) #6
  br i1 %26, label %42, label %39

39:                                               ; preds = %38
  %40 = zext i32 %21 to i64
  br label %47

41:                                               ; preds = %17
  tail call void @gx_sort_ht_order(ptr noundef %25, i32 noundef %21) #6
  br label %42

42:                                               ; preds = %65, %41, %38
  %43 = phi i32 [ 0, %38 ], [ 0, %41 ], [ %66, %65 ]
  %44 = icmp ult i32 %43, 256
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  %46 = zext nneg i32 %43 to i64
  br label %69

47:                                               ; preds = %65, %39
  %48 = phi i64 [ 0, %39 ], [ %67, %65 ]
  %49 = phi i32 [ 0, %39 ], [ %66, %65 ]
  %50 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %25, i64 %48, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !87
  %52 = icmp ult i32 %49, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47
  %54 = zext i32 %49 to i64
  %55 = trunc i64 %48 to i32
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi i64 [ %54, %53 ], [ %58, %56 ]
  %58 = add nuw nsw i64 %57, 1
  %59 = getelementptr inbounds i32, ptr %23, i64 %57
  store i32 %55, ptr %59, align 4, !tbaa !19
  %60 = load i32, ptr %50, align 4, !tbaa !87
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %56, label %63, !llvm.loop !90

63:                                               ; preds = %56
  %64 = trunc i64 %58 to i32
  br label %65

65:                                               ; preds = %63, %47
  %66 = phi i32 [ %49, %47 ], [ %64, %63 ]
  %67 = add nuw nsw i64 %48, 1
  %68 = icmp eq i64 %67, %40
  br i1 %68, label %42, label %47, !llvm.loop !91

69:                                               ; preds = %69, %45
  %70 = phi i64 [ %46, %45 ], [ %71, %69 ]
  %71 = add nuw nsw i64 %70, 1
  %72 = getelementptr inbounds i32, ptr %23, i64 %70
  store i32 %21, ptr %72, align 4, !tbaa !19
  %73 = and i64 %71, 4294967295
  %74 = icmp eq i64 %73, 256
  br i1 %74, label %75, label %69, !llvm.loop !92

75:                                               ; preds = %69, %42
  tail call void @gx_ht_construct_bits(ptr noundef nonnull %0) #6
  %76 = getelementptr inbounds %struct.gs_threshold_halftone_s, ptr %2, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !93
  %78 = icmp eq ptr %77, null
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  %82 = tail call ptr %81(ptr noundef %3, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.3) #6
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %82, i64 0, i32 1
  store ptr %77, ptr %85, align 8, !tbaa !62
  %86 = tail call i64 @gs_next_ids(i32 noundef 1) #6
  %87 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %82, i64 0, i32 2
  store i64 %86, ptr %87, align 8, !tbaa !64
  tail call void @load_transfer_map(ptr noundef %1, ptr noundef nonnull %82, double noundef 0.000000e+00) #6
  %88 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 13
  store ptr %82, ptr %88, align 8, !tbaa !65
  br label %89

89:                                               ; preds = %84, %79, %75, %4
  %90 = phi i32 [ %15, %4 ], [ 0, %84 ], [ 0, %75 ], [ -25, %79 ]
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_ht_construct_threshold_order(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 9
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = zext i32 %4 to i64
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i64 [ 0, %10 ], [ %19, %12 ]
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = tail call i8 @llvm.umax.i8(i8 %15, i8 1)
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %8, i64 %13, i32 1
  store i32 %17, ptr %18, align 4, !tbaa !87
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, %11
  br i1 %20, label %21, label %12, !llvm.loop !89

21:                                               ; preds = %12, %2
  tail call void @gx_sort_ht_order(ptr noundef %8, i32 noundef %4) #6
  %22 = icmp eq i32 %4, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = zext i32 %4 to i64
  br label %30

25:                                               ; preds = %51, %21
  %26 = phi i32 [ 0, %21 ], [ %52, %51 ]
  %27 = icmp ult i32 %26, 256
  br i1 %27, label %28, label %61

28:                                               ; preds = %25
  %29 = zext nneg i32 %26 to i64
  br label %55

30:                                               ; preds = %23, %51
  %31 = phi i64 [ 0, %23 ], [ %53, %51 ]
  %32 = phi i32 [ 0, %23 ], [ %52, %51 ]
  %33 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %8, i64 %31, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !87
  %35 = icmp eq i32 %34, %32
  br i1 %35, label %51, label %36

36:                                               ; preds = %30
  %37 = load i32, ptr %33, align 4, !tbaa !87
  %38 = icmp ult i32 %32, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = zext i32 %32 to i64
  %41 = trunc i64 %31 to i32
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi i64 [ %40, %39 ], [ %44, %42 ]
  %44 = add nuw nsw i64 %43, 1
  %45 = getelementptr inbounds i32, ptr %6, i64 %43
  store i32 %41, ptr %45, align 4, !tbaa !19
  %46 = load i32, ptr %33, align 4, !tbaa !87
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %42, label %49, !llvm.loop !90

49:                                               ; preds = %42
  %50 = trunc i64 %44 to i32
  br label %51

51:                                               ; preds = %49, %36, %30
  %52 = phi i32 [ %32, %30 ], [ %32, %36 ], [ %50, %49 ]
  %53 = add nuw nsw i64 %31, 1
  %54 = icmp eq i64 %53, %24
  br i1 %54, label %25, label %30, !llvm.loop !91

55:                                               ; preds = %28, %55
  %56 = phi i64 [ %29, %28 ], [ %57, %55 ]
  %57 = add nuw nsw i64 %56, 1
  %58 = getelementptr inbounds i32, ptr %6, i64 %56
  store i32 %4, ptr %58, align 4, !tbaa !19
  %59 = and i64 %57, 4294967295
  %60 = icmp eq i64 %59, 256
  br i1 %60, label %61, label %55, !llvm.loop !92

61:                                               ; preds = %55, %25
  tail call void @gx_ht_construct_bits(ptr noundef %0) #6
  ret void
}

declare void @gx_sort_ht_order(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @gx_ht_construct_bits(ptr noundef) local_unnamed_addr #4

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #4

declare void @load_transfer_map(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #4

declare i32 @gx_ht_alloc_order(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 4}
!6 = !{!"gs_halftone_component_s", !7, i64 0, !7, i64 4, !8, i64 8}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{i64 0, i64 96, !15, i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 8, !10, i64 16, i64 4, !16, i64 20, i64 4, !16, i64 24, i64 4, !16, i64 28, i64 4, !16, i64 32, i64 8, !10, i64 40, i64 4, !16, i64 44, i64 4, !16, i64 48, i64 4, !16, i64 52, i64 4, !16, i64 56, i64 8, !10, i64 64, i64 4, !16, i64 68, i64 4, !16, i64 72, i64 4, !16, i64 76, i64 4, !16, i64 80, i64 8, !10, i64 88, i64 4, !16, i64 92, i64 4, !16}
!15 = !{!8, !8, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"float", !8, i64 0}
!18 = !{i64 0, i64 4, !19, i64 8, i64 8, !20, i64 16, i64 8, !10, i64 24, i64 8, !10, i64 32, i64 4, !16, i64 36, i64 4, !16, i64 40, i64 8, !10, i64 48, i64 4, !16, i64 52, i64 4, !16, i64 32, i64 96, !15, i64 32, i64 4, !16, i64 36, i64 4, !16, i64 40, i64 8, !10, i64 48, i64 4, !16, i64 52, i64 4, !16, i64 56, i64 4, !16, i64 60, i64 4, !16, i64 64, i64 8, !10, i64 72, i64 4, !16, i64 76, i64 4, !16, i64 80, i64 4, !16, i64 84, i64 4, !16, i64 88, i64 8, !10, i64 96, i64 4, !16, i64 100, i64 4, !16, i64 104, i64 4, !16, i64 108, i64 4, !16, i64 112, i64 8, !10, i64 120, i64 4, !16, i64 124, i64 4, !16, i64 32, i64 4, !16, i64 36, i64 4, !16, i64 40, i64 8, !10, i64 48, i64 4, !16, i64 52, i64 4, !16, i64 56, i64 4, !19, i64 64, i64 8, !10, i64 32, i64 4, !19, i64 36, i64 4, !19, i64 40, i64 8, !10, i64 48, i64 4, !19, i64 56, i64 8, !10, i64 32, i64 8, !10, i64 40, i64 4, !19}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{i64 4, i64 8, !20, i64 12, i64 8, !10, i64 20, i64 8, !10, i64 28, i64 4, !16, i64 32, i64 4, !16, i64 36, i64 8, !10, i64 44, i64 4, !16, i64 48, i64 4, !16, i64 28, i64 96, !15, i64 28, i64 4, !16, i64 32, i64 4, !16, i64 36, i64 8, !10, i64 44, i64 4, !16, i64 48, i64 4, !16, i64 52, i64 4, !16, i64 56, i64 4, !16, i64 60, i64 8, !10, i64 68, i64 4, !16, i64 72, i64 4, !16, i64 76, i64 4, !16, i64 80, i64 4, !16, i64 84, i64 8, !10, i64 92, i64 4, !16, i64 96, i64 4, !16, i64 100, i64 4, !16, i64 104, i64 4, !16, i64 108, i64 8, !10, i64 116, i64 4, !16, i64 120, i64 4, !16, i64 28, i64 4, !16, i64 32, i64 4, !16, i64 36, i64 8, !10, i64 44, i64 4, !16, i64 48, i64 4, !16, i64 52, i64 4, !19, i64 60, i64 8, !10, i64 28, i64 4, !19, i64 32, i64 4, !19, i64 36, i64 8, !10, i64 44, i64 4, !19, i64 52, i64 8, !10, i64 28, i64 8, !10, i64 36, i64 4, !19}
!23 = !{!24, !11, i64 0}
!24 = !{!"gs_state_s", !11, i64 0, !25, i64 8, !27, i64 80, !7, i64 128, !28, i64 132, !7, i64 136, !17, i64 140, !29, i64 144, !7, i64 160, !7, i64 164, !11, i64 168, !8, i64 176, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !8, i64 232, !8, i64 264, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !30, i64 336, !7, i64 360, !30, i64 364, !7, i64 388, !11, i64 392, !11, i64 400, !7, i64 408, !7, i64 412, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !27, i64 456, !7, i64 504, !8, i64 508, !7, i64 512, !11, i64 520, !7, i64 528, !11, i64 536, !11, i64 544, !31, i64 552}
!25 = !{!"gx_line_params_s", !17, i64 0, !7, i64 4, !7, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !26, i64 32}
!26 = !{!"gx_dash_params_s", !11, i64 0, !7, i64 8, !17, i64 12, !7, i64 16, !17, i64 20, !7, i64 24, !7, i64 28, !17, i64 32}
!27 = !{!"gs_matrix_fixed_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !21, i64 24, !21, i64 32, !7, i64 40}
!28 = !{!"short", !8, i64 0}
!29 = !{!"gs_fixed_point_s", !21, i64 0, !21, i64 8}
!30 = !{!"gs_matrix_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!31 = !{!"gs_state_client_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!32 = !{!33, !11, i64 16}
!33 = !{!"gs_halftone_s", !7, i64 0, !34, i64 8, !8, i64 32}
!34 = !{!"rc_header_s", !21, i64 0, !11, i64 8, !11, i64 16}
!35 = !{!36, !11, i64 104}
!36 = !{!"gx_device_halftone_s", !37, i64 0, !34, i64 96, !21, i64 120, !11, i64 128, !7, i64 136, !8, i64 140, !7, i64 156, !7, i64 160}
!37 = !{!"gx_ht_order_s", !38, i64 0, !28, i64 40, !28, i64 42, !28, i64 44, !28, i64 46, !28, i64 48, !28, i64 50, !7, i64 52, !7, i64 56, !7, i64 60, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!38 = !{!"gx_ht_cell_params_s", !28, i64 0, !28, i64 2, !28, i64 4, !28, i64 6, !28, i64 8, !28, i64 10, !21, i64 16, !28, i64 24, !28, i64 26, !7, i64 28, !7, i64 32, !7, i64 36}
!39 = !{!24, !11, i64 168}
!40 = !{!33, !7, i64 0}
!41 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 8, !10, i64 16, i64 4, !16, i64 20, i64 4, !16}
!42 = !{!43, !11, i64 48}
!43 = !{!"gs_memory_s", !44, i64 0}
!44 = !{!"gs_memory_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!45 = !{i64 0, i64 2, !46, i64 2, i64 2, !46, i64 4, i64 2, !46, i64 6, i64 2, !46, i64 8, i64 2, !46, i64 10, i64 2, !46, i64 16, i64 8, !20, i64 24, i64 2, !46, i64 26, i64 2, !46, i64 28, i64 4, !19, i64 32, i64 4, !19, i64 36, i64 4, !19, i64 40, i64 2, !46, i64 42, i64 2, !46, i64 44, i64 2, !46, i64 46, i64 2, !46, i64 48, i64 2, !46, i64 50, i64 2, !46, i64 52, i64 4, !19, i64 56, i64 4, !19, i64 60, i64 4, !19, i64 64, i64 8, !10, i64 72, i64 8, !10, i64 80, i64 8, !10, i64 88, i64 8, !10}
!46 = !{!28, !28, i64 0}
!47 = !{!48, !7, i64 96}
!48 = !{!"gx_ht_order_component_s", !37, i64 0, !7, i64 96}
!49 = !{!50, !28, i64 172}
!50 = !{!"gs_screen_enum_s", !33, i64 0, !37, i64 128, !30, i64 224, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !11, i64 264}
!51 = !{!50, !7, i64 188}
!52 = !{!50, !28, i64 168}
!53 = !{!48, !11, i64 80}
!54 = distinct !{!54, !13}
!55 = !{!36, !11, i64 128}
!56 = !{!36, !7, i64 136}
!57 = !{!58, !7, i64 24}
!58 = !{!"gs_spot_halftone_s", !59, i64 0, !7, i64 24, !11, i64 32}
!59 = !{!"gs_screen_halftone_s", !17, i64 0, !17, i64 4, !11, i64 8, !17, i64 16, !17, i64 20}
!60 = !{!58, !11, i64 32}
!61 = !{!43, !11, i64 16}
!62 = !{!63, !11, i64 24}
!63 = !{!"gx_transfer_map_s", !34, i64 0, !11, i64 24, !21, i64 32, !8, i64 40}
!64 = !{!63, !21, i64 32}
!65 = !{!37, !11, i64 88}
!66 = !{i32 -2147483648, i32 1}
!67 = !{!6, !7, i64 0}
!68 = !{!48, !28, i64 44}
!69 = !{!48, !7, i64 60}
!70 = !{!48, !28, i64 40}
!71 = distinct !{!71, !13}
!72 = !{!43, !11, i64 88}
!73 = !{!74, !7, i64 0}
!74 = !{!"gs_threshold_halftone_s", !7, i64 0, !7, i64 4, !75, i64 8, !11, i64 24}
!75 = !{!"gs_const_string_s", !11, i64 0, !7, i64 8}
!76 = !{!37, !28, i64 0}
!77 = !{!37, !28, i64 2}
!78 = !{!37, !28, i64 4}
!79 = !{!74, !7, i64 4}
!80 = !{!37, !28, i64 6}
!81 = !{!37, !28, i64 8}
!82 = !{!37, !28, i64 10}
!83 = !{!74, !11, i64 8}
!84 = !{!37, !7, i64 60}
!85 = !{!37, !11, i64 64}
!86 = !{!37, !11, i64 72}
!87 = !{!88, !7, i64 4}
!88 = !{!"gx_ht_bit_s", !7, i64 0, !7, i64 4}
!89 = distinct !{!89, !13}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = !{!74, !11, i64 24}
