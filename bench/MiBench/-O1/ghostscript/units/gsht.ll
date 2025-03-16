; ModuleID = 'gsht.c'
source_filename = "gsht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, ptr, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.gs_point_s = type { double, double }
%struct.gs_screen_enum_s = type { %struct.gs_halftone_s, %struct.gx_ht_order_s, %struct.gs_matrix_s, i32, i32, i32, i32, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_ht_bit_s = type { i32, i32 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32 }
%struct.gx_ht_cache_s = type { ptr, i32, ptr, i32, %struct.gx_ht_order_s, i32, i32, i64 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"gx_ht_order\00", align 1
@st_ht_order = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 96, ptr @.str, ptr null, ptr null, ptr @ht_order_enum_ptrs, ptr @ht_order_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"gx_ht_order_component[]\00", align 1
@st_ht_order_component_element = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 104, ptr @.str.1, ptr null, ptr null, ptr @ht_order_element_enum_ptrs, ptr @ht_order_element_reloc_ptrs, ptr null }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"gs_halftone\00", align 1
@st_halftone = dso_local constant %struct.gs_memory_struct_type_s { i32 128, ptr @.str.2, ptr null, ptr null, ptr @halftone_enum_ptrs, ptr @halftone_reloc_ptrs, ptr null }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"gx_device_halftone\00", align 1
@st_device_halftone = dso_local constant %struct.gs_memory_struct_type_s { i32 168, ptr @.str.3, ptr null, ptr null, ptr @device_halftone_enum_ptrs, ptr @device_halftone_reloc_ptrs, ptr null }, align 8
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"ht order(levels)\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ht order(bits)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"gx_ht_order_release(transfer)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"gx_ht_order_release(bits)\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"gx_ht_order_release(levels)\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"gx_dev_ht_release(components)\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"gx_imager_dev_ht_install\00", align 1
@gx_imager_dev_ht_install.dcnames = internal unnamed_addr constant [5 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] [i32 0, i32 0, i32 0, i32 1], [4 x i32] zeroinitializer, [4 x i32] [i32 2, i32 3, i32 4, i32 0], [4 x i32] [i32 5, i32 6, i32 7, i32 8]], align 16
@gx_imager_dev_ht_install.cscnames = internal unnamed_addr constant [4 x i32] [i32 2, i32 3, i32 4, i32 0], align 16
@.str.11 = private unnamed_addr constant [28 x i8] c"gx_ht_install(new halftone)\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"gx_ht_install(old halftone)\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @ht_order_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %16 [
    i32 0, label %5
    i32 1, label %7
    i32 2, label %9
    i32 3, label %11
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  br label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  br label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 12
  br label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 13
  br label %13

13:                                               ; preds = %11, %9, %7, %5
  %14 = phi ptr [ %6, %5 ], [ %8, %7 ], [ %10, %9 ], [ %12, %11 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  store ptr %15, ptr %3, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %13 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal void @ht_order_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #15
  store ptr %6, ptr %4, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #15
  store ptr %9, ptr %7, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #15
  store ptr %12, ptr %10, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #15
  store ptr %15, ptr %13, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @ht_order_element_enum_ptrs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp ult i32 %1, 104
  br i1 %5, label %24, label %6

6:                                                ; preds = %4
  %7 = udiv i32 %1, 104
  %8 = urem i32 %2, %7
  %9 = zext nneg i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 104
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = udiv i32 %2, %7
  switch i32 %12, label %24 [
    i32 0, label %13
    i32 1, label %15
    i32 2, label %17
    i32 3, label %19
  ]

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.gx_ht_order_s, ptr %11, i64 0, i32 10
  br label %21

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.gx_ht_order_s, ptr %11, i64 0, i32 11
  br label %21

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.gx_ht_order_s, ptr %11, i64 0, i32 12
  br label %21

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.gx_ht_order_s, ptr %11, i64 0, i32 13
  br label %21

21:                                               ; preds = %13, %15, %17, %19
  %22 = phi ptr [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  store ptr %23, ptr %3, align 8, !tbaa !5
  br label %24

24:                                               ; preds = %21, %6, %4
  %25 = phi ptr [ null, %4 ], [ null, %6 ], [ @ptr_struct_procs, %21 ]
  ret ptr %25
}

; Function Attrs: nounwind uwtable
define internal void @ht_order_element_reloc_ptrs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp ult i32 %1, 104
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %1, 104
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %22, %7 ], [ %6, %5 ]
  %9 = phi ptr [ %23, %7 ], [ %0, %5 ]
  %10 = getelementptr inbounds %struct.gx_ht_order_s, ptr %9, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #15
  store ptr %12, ptr %10, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.gx_ht_order_s, ptr %9, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #15
  store ptr %15, ptr %13, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.gx_ht_order_s, ptr %9, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !16
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %17, ptr noundef %2) #15
  store ptr %18, ptr %16, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.gx_ht_order_s, ptr %9, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %20, ptr noundef %2) #15
  store ptr %21, ptr %19, align 8, !tbaa !17
  %22 = add nsw i32 %8, -1
  %23 = getelementptr inbounds i8, ptr %9, i64 104
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %7, !llvm.loop !18

25:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @halftone_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8, !tbaa !20
  switch i32 %7, label %16 [
    i32 4, label %8
    i32 5, label %10
    i32 6, label %10
  ]

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, i32 2
  br label %13

10:                                               ; preds = %6, %6
  %11 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  br label %13

13:                                               ; preds = %8, %10
  %14 = phi ptr [ %12, %10 ], [ %9, %8 ]
  %15 = phi ptr [ @ptr_struct_procs, %10 ], [ @ptr_const_string_procs, %8 ]
  store ptr %14, ptr %3, align 8, !tbaa !5
  br label %16

16:                                               ; preds = %13, %6, %4
  %17 = phi ptr [ null, %4 ], [ null, %6 ], [ %15, %13 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal void @halftone_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = load i32, ptr %0, align 8, !tbaa !20
  switch i32 %4, label %11 [
    i32 4, label %5
    i32 5, label %7
    i32 6, label %7
  ]

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, i32 2
  tail call void @gs_reloc_const_string(ptr noundef nonnull %6, ptr noundef %2) #15
  br label %11

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.gs_halftone_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !23
  %10 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %9, ptr noundef %2) #15
  store ptr %10, ptr %8, align 8, !tbaa !23
  br label %11

11:                                               ; preds = %3, %7, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @device_halftone_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %18 [
    i32 0, label %13
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
    i32 4, label %11
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  br label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 12
  br label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 13
  br label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %5, %7, %9, %11
  %16 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %14, %13 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  store ptr %17, ptr %3, align 8, !tbaa !5
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %15 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define internal void @device_halftone_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #15
  store ptr %6, ptr %4, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #15
  store ptr %9, ptr %7, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %11, ptr noundef %2) #15
  store ptr %12, ptr %10, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #15
  store ptr %15, ptr %13, align 8, !tbaa !17
  %16 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !24
  %18 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %17, ptr noundef %2) #15
  store ptr %18, ptr %16, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_setscreen(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %struct.gs_point_s, align 8
  %4 = alloca %struct.gs_screen_enum_s, align 8
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %4) #15
  %5 = tail call i32 @gs_currentaccuratescreens() #15
  %6 = load ptr, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %7 = call i32 @gs_screen_init_memory(ptr noundef nonnull %4, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %5, ptr noundef %6) #15
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct.gs_point_s, ptr %3, i64 0, i32 1
  br label %12

12:                                               ; preds = %15, %9
  %13 = call i32 @gs_screen_currentpoint(ptr noundef nonnull %4, ptr noundef nonnull %3) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load ptr, ptr %10, align 8, !tbaa !35
  %17 = load double, ptr %3, align 8, !tbaa !37
  %18 = load double, ptr %11, align 8, !tbaa !40
  %19 = call float %16(double noundef %17, double noundef %18) #15
  %20 = fpext float %19 to double
  %21 = call i32 @gs_screen_next(ptr noundef nonnull %4, double noundef %20) #15
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %12, !llvm.loop !41

23:                                               ; preds = %12, %15, %2
  %24 = phi i32 [ %7, %2 ], [ %21, %15 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @gs_screen_install(ptr noundef nonnull %4) #15
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi i32 [ %27, %26 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %4) #15
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_ht_process_screen_memory(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
  %6 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %7 = tail call i32 @gs_screen_init_memory(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #15
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %2, i64 0, i32 2
  %11 = getelementptr inbounds %struct.gs_point_s, ptr %6, i64 0, i32 1
  br label %12

12:                                               ; preds = %9, %15
  %13 = call i32 @gs_screen_currentpoint(ptr noundef %0, ptr noundef nonnull %6) #15
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load ptr, ptr %10, align 8, !tbaa !35
  %17 = load double, ptr %6, align 8, !tbaa !37
  %18 = load double, ptr %11, align 8, !tbaa !40
  %19 = call float %16(double noundef %17, double noundef %18) #15
  %20 = fpext float %19 to double
  %21 = call i32 @gs_screen_next(ptr noundef %0, double noundef %20) #15
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %12, !llvm.loop !41

23:                                               ; preds = %12, %15, %5
  %24 = phi i32 [ %7, %5 ], [ %21, %15 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i32 %24
}

declare i32 @gs_currentaccuratescreens() local_unnamed_addr #3

declare i32 @gs_screen_install(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_currentscreen(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  %5 = load i32, ptr %4, align 8, !tbaa !20
  switch i32 %5, label %12 [
    i32 1, label %6
    i32 2, label %8
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gs_halftone_s, ptr %4, i64 0, i32 2
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.gs_halftone_s, ptr %4, i64 0, i32 2, i32 0, i32 0, i32 0, i64 3
  br label %10

10:                                               ; preds = %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false)
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi i32 [ -21, %2 ], [ 0, %10 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @gs_currentscreenlevels(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.gx_ht_order_s, ptr %3, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !44
  ret i32 %5
}

; Function Attrs: nofree nosync nounwind memory(argmem: write) uwtable
define dso_local noundef i32 @gx_imager_setscreenphase(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
  %5 = icmp eq i32 %3, -1
  br i1 %5, label %6, label %11

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %4 ]
  %8 = tail call i32 @gx_imager_setscreenphase(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %7), !range !45
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %7, 0
  br i1 %10, label %6, label %17, !llvm.loop !46

11:                                               ; preds = %4
  %12 = icmp ugt i32 %3, 1
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = zext nneg i32 %3 to i64
  %15 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 11, i64 %14
  store i32 %1, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 11, i64 %14, i32 1
  store i32 %2, ptr %16, align 4, !tbaa !49
  br label %17

17:                                               ; preds = %6, %11, %13
  %18 = phi i32 [ 0, %13 ], [ -15, %11 ], [ 0, %6 ]
  ret i32 %18
}

; Function Attrs: nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_setscreenphase(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #8 {
  %5 = tail call i32 @gx_imager_setscreenphase(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3), !range !45
  %6 = icmp sgt i32 %5, -1
  %7 = add i32 %3, 1
  %8 = icmp ult i32 %7, 2
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %12 = load ptr, ptr %11, align 8, !tbaa !50
  store ptr @gx_dc_procs_none, ptr %12, align 8, !tbaa !51
  br label %13

13:                                               ; preds = %10, %4
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_currentscreenphase(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %2, 1
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 11, i64 %6
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %1, align 4
  br label %9

9:                                                ; preds = %3, %5
  %10 = phi i32 [ 0, %5 ], [ -15, %3 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_currenthalftone(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false), !tbaa.struct !56
  ret i32 0
}

declare i32 @gs_screen_init_memory(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_screen_currentpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_screen_next(ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_ht_alloc_order(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #1 {
  %7 = alloca %struct.gx_ht_order_s, align 8
  %8 = mul i32 %2, %1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false), !tbaa.struct !60
  call void @gx_compute_cell_values(ptr noundef nonnull %7) #15
  %9 = trunc i32 %1 to i16
  %10 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 1
  store i16 %9, ptr %10, align 8, !tbaa !62
  %11 = trunc i32 %2 to i16
  %12 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 2
  store i16 %11, ptr %12, align 2, !tbaa !63
  %13 = add i32 %1, 63
  %14 = lshr i32 %13, 3
  %15 = trunc i32 %14 to i16
  %16 = and i16 %15, -8
  %17 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 3
  store i16 %16, ptr %17, align 4, !tbaa !64
  %18 = trunc i32 %3 to i16
  %19 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 4
  store i16 %18, ptr %19, align 2, !tbaa !65
  %20 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 5
  store i16 %11, ptr %20, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 6
  store i16 %18, ptr %21, align 2, !tbaa !67
  %22 = and i32 %3, 65535
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = and i32 %2, 65535
  br label %33

26:                                               ; preds = %6
  %27 = and i32 %1, 65535
  %28 = call i32 @igcd(i32 noundef %27, i32 noundef %22) #15
  %29 = sdiv i32 %27, %28
  %30 = load i16, ptr %12, align 2, !tbaa !63
  %31 = zext i16 %30 to i32
  %32 = mul nsw i32 %29, %31
  br label %33

33:                                               ; preds = %26, %24
  %34 = phi i32 [ %25, %24 ], [ %32, %26 ]
  %35 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 7
  store i32 %34, ptr %35, align 4, !tbaa !68
  %36 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 8
  store i32 %4, ptr %36, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 9
  store i32 %8, ptr %37, align 4, !tbaa !70
  %38 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !71
  %40 = call ptr %39(ptr noundef %5, i32 noundef %4, i32 noundef 4, ptr noundef nonnull @.str.4) #15
  %41 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 10
  store ptr %40, ptr %41, align 8, !tbaa !9
  %42 = load ptr, ptr %38, align 8, !tbaa !71
  %43 = call ptr %42(ptr noundef %5, i32 noundef %8, i32 noundef 8, ptr noundef nonnull @.str.5) #15
  %44 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 11
  store ptr %43, ptr %44, align 8, !tbaa !15
  %45 = load ptr, ptr %41, align 8, !tbaa !9
  %46 = icmp eq ptr %45, null
  %47 = icmp eq ptr %43, null
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !74
  call void %51(ptr noundef %5, ptr noundef %43, ptr noundef nonnull @.str.5) #15
  %52 = load ptr, ptr %50, align 8, !tbaa !74
  %53 = load ptr, ptr %41, align 8, !tbaa !9
  call void %52(ptr noundef %5, ptr noundef %53, ptr noundef nonnull @.str.4) #15
  br label %56

54:                                               ; preds = %33
  %55 = getelementptr inbounds %struct.gx_ht_order_s, ptr %7, i64 0, i32 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 96, i1 false), !tbaa.struct !60
  br label %56

56:                                               ; preds = %54, %49
  %57 = phi i32 [ -25, %49 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #15
  ret i32 %57
}

declare void @gx_compute_cell_values(ptr noundef) local_unnamed_addr #3

declare i32 @igcd(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @gx_sort_ht_order(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %0, i64 %7
  %9 = trunc i64 %7 to i32
  store i32 %9, ptr %8, align 4, !tbaa !75
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !77

12:                                               ; preds = %6, %2
  %13 = zext i32 %1 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %13, i64 noundef 8, ptr noundef nonnull @compare_samples) #15
  ret void
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_samples(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !78
  %5 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !78
  %7 = icmp ult i32 %4, %6
  %8 = icmp ugt i32 %4, %6
  %9 = zext i1 %8 to i32
  %10 = select i1 %7, i32 -1, i32 %9
  ret i32 %10
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @gx_ht_construct_spot_order(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !62
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !67
  %13 = zext i16 %12 to i32
  %14 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !70
  %18 = urem i32 %6, %4
  %19 = sub nuw i32 %6, %18
  %20 = udiv i32 %17, %19
  %21 = zext i32 %17 to i64
  %22 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %8, i64 %21
  %23 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %22, i64 -1
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = zext i32 %6 to i64
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %31, %27 ]
  %29 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %8, i64 %28
  %30 = trunc i64 %28 to i32
  store i32 %30, ptr %29, align 4, !tbaa !75
  %31 = add nuw nsw i64 %28, 1
  %32 = icmp eq i64 %31, %26
  br i1 %32, label %33, label %27, !llvm.loop !77

33:                                               ; preds = %27, %1
  %34 = zext i32 %6 to i64
  tail call void @qsort(ptr noundef %8, i64 noundef %34, i64 noundef 8, ptr noundef nonnull @compare_samples) #15
  %35 = icmp eq i32 %6, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %33
  %37 = icmp ugt i32 %19, %17
  %38 = sub nsw i32 %4, %13
  %39 = zext i32 %6 to i64
  br label %43

40:                                               ; preds = %56, %43
  %41 = phi ptr [ %45, %43 ], [ %63, %56 ]
  %42 = icmp eq i32 %47, 0
  br i1 %42, label %68, label %43, !llvm.loop !79

43:                                               ; preds = %36, %40
  %44 = phi i64 [ %39, %36 ], [ %46, %40 ]
  %45 = phi ptr [ %23, %36 ], [ %41, %40 ]
  %46 = add nsw i64 %44, -1
  %47 = trunc i64 %46 to i32
  %48 = and i64 %46, 4294967295
  %49 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %8, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !75
  %51 = mul i32 %20, %47
  %52 = getelementptr inbounds i32, ptr %10, i64 %48
  store i32 %51, ptr %52, align 4, !tbaa !57
  br i1 %37, label %40, label %53

53:                                               ; preds = %43
  %54 = urem i32 %50, %4
  %55 = sub i32 %50, %54
  br label %56

56:                                               ; preds = %53, %56
  %57 = phi i32 [ %62, %56 ], [ 0, %53 ]
  %58 = phi i32 [ %64, %56 ], [ %55, %53 ]
  %59 = phi i32 [ %66, %56 ], [ %54, %53 ]
  %60 = phi ptr [ %63, %56 ], [ %45, %53 ]
  %61 = add i32 %58, %59
  store i32 %61, ptr %60, align 4, !tbaa !75
  %62 = add nuw i32 %57, 1
  %63 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %60, i64 -1
  %64 = add i32 %58, %6
  %65 = add nsw i32 %38, %59
  %66 = urem i32 %65, %4
  %67 = icmp ult i32 %62, %20
  br i1 %67, label %56, label %40, !llvm.loop !80

68:                                               ; preds = %40, %33
  %69 = mul i32 %15, %4
  %70 = icmp eq i32 %17, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = trunc i32 %15 to i16
  %73 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 2
  store i16 %72, ptr %73, align 2, !tbaa !63
  %74 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 4
  store i16 0, ptr %74, align 2, !tbaa !65
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i16, ptr %2, align 8, !tbaa !62
  %77 = zext i16 %76 to i32
  %78 = load i32, ptr %16, align 4, !tbaa !70
  %79 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 3
  %80 = load i16, ptr %79, align 4, !tbaa !64
  %81 = zext i16 %80 to i32
  %82 = shl nuw nsw i32 %81, 3
  %83 = sub nsw i32 %82, %77
  %84 = icmp eq i32 %78, 0
  br i1 %84, label %124, label %85

85:                                               ; preds = %75
  %86 = load ptr, ptr %7, align 8, !tbaa !15
  %87 = shl nuw nsw i32 %77, 1
  %88 = sub nsw i32 32, %87
  %89 = icmp ult i16 %76, 17
  br label %90

90:                                               ; preds = %120, %85
  %91 = phi i32 [ 0, %85 ], [ %121, %120 ]
  %92 = phi ptr [ %86, %85 ], [ %122, %120 ]
  %93 = load i32, ptr %92, align 4, !tbaa !75
  %94 = udiv i32 %93, %77
  %95 = mul i32 %94, %83
  %96 = add i32 %95, %93
  %97 = ashr i32 %96, 3
  %98 = and i32 %97, -4
  store i32 %98, ptr %92, align 4, !tbaa !75
  %99 = and i32 %96, 31
  %100 = xor i32 %99, 31
  %101 = shl nuw i32 1, %100
  br i1 %89, label %102, label %109

102:                                              ; preds = %90, %102
  %103 = phi i32 [ %107, %102 ], [ %88, %90 ]
  %104 = phi i32 [ %106, %102 ], [ %101, %90 ]
  %105 = lshr i32 %104, %77
  %106 = or i32 %105, %104
  %107 = sub nsw i32 %103, %77
  %108 = icmp sgt i32 %107, -1
  br i1 %108, label %102, label %109, !llvm.loop !81

109:                                              ; preds = %102, %90
  %110 = phi i32 [ %101, %90 ], [ %106, %102 ]
  %111 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %92, i64 0, i32 1
  store i32 0, ptr %111, align 4, !tbaa !78
  %112 = getelementptr inbounds i8, ptr %92, i64 7
  br label %113

113:                                              ; preds = %113, %109
  %114 = phi i32 [ %117, %113 ], [ %110, %109 ]
  %115 = phi ptr [ %118, %113 ], [ %112, %109 ]
  %116 = trunc i32 %114 to i8
  store i8 %116, ptr %115, align 1, !tbaa !23
  %117 = lshr i32 %114, 8
  %118 = getelementptr inbounds i8, ptr %115, i64 -1
  %119 = icmp ult i32 %114, 256
  br i1 %119, label %120, label %113, !llvm.loop !82

120:                                              ; preds = %113
  %121 = add nuw i32 %91, 1
  %122 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %92, i64 1
  %123 = icmp eq i32 %121, %78
  br i1 %123, label %124, label %90, !llvm.loop !83

124:                                              ; preds = %120, %75
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @gx_ht_construct_bits(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !62
  %4 = zext i16 %3 to i32
  %5 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !70
  %7 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 4, !tbaa !64
  %9 = zext i16 %8 to i32
  %10 = shl nuw nsw i32 %9, 3
  %11 = sub nsw i32 %10, %4
  %12 = icmp eq i32 %6, 0
  br i1 %12, label %53, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = shl nuw nsw i32 %4, 1
  %17 = sub nsw i32 32, %16
  %18 = icmp ult i16 %3, 17
  br label %19

19:                                               ; preds = %13, %49
  %20 = phi i32 [ 0, %13 ], [ %50, %49 ]
  %21 = phi ptr [ %15, %13 ], [ %51, %49 ]
  %22 = load i32, ptr %21, align 4, !tbaa !75
  %23 = udiv i32 %22, %4
  %24 = mul i32 %23, %11
  %25 = add i32 %24, %22
  %26 = ashr i32 %25, 3
  %27 = and i32 %26, -4
  store i32 %27, ptr %21, align 4, !tbaa !75
  %28 = and i32 %25, 31
  %29 = xor i32 %28, 31
  %30 = shl nuw i32 1, %29
  br i1 %18, label %31, label %38

31:                                               ; preds = %19, %31
  %32 = phi i32 [ %36, %31 ], [ %17, %19 ]
  %33 = phi i32 [ %35, %31 ], [ %30, %19 ]
  %34 = lshr i32 %33, %4
  %35 = or i32 %34, %33
  %36 = sub nsw i32 %32, %4
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %31, label %38, !llvm.loop !81

38:                                               ; preds = %31, %19
  %39 = phi i32 [ %30, %19 ], [ %35, %31 ]
  %40 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %21, i64 0, i32 1
  store i32 0, ptr %40, align 4, !tbaa !78
  %41 = getelementptr inbounds i8, ptr %21, i64 7
  br label %42

42:                                               ; preds = %38, %42
  %43 = phi i32 [ %46, %42 ], [ %39, %38 ]
  %44 = phi ptr [ %47, %42 ], [ %41, %38 ]
  %45 = trunc i32 %43 to i8
  store i8 %45, ptr %44, align 1, !tbaa !23
  %46 = lshr i32 %43, 8
  %47 = getelementptr inbounds i8, ptr %44, i64 -1
  %48 = icmp ult i32 %43, 256
  br i1 %48, label %49, label %42, !llvm.loop !82

49:                                               ; preds = %42
  %50 = add nuw i32 %20, 1
  %51 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %21, i64 1
  %52 = icmp eq i32 %50, %6
  br i1 %52, label %53, label %19, !llvm.loop !83

53:                                               ; preds = %49, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gx_ht_order_release(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @gx_ht_free_cache(ptr noundef %1, ptr noundef nonnull %7) #15
  br label %10

10:                                               ; preds = %9, %5, %3
  %11 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !74
  %13 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !17
  tail call void %12(ptr noundef %1, ptr noundef %14, ptr noundef nonnull @.str.6) #15
  %15 = load ptr, ptr %11, align 8, !tbaa !74
  %16 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  tail call void %15(ptr noundef %1, ptr noundef %17, ptr noundef nonnull @.str.7) #15
  %18 = load ptr, ptr %11, align 8, !tbaa !74
  %19 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !9
  tail call void %18(ptr noundef %1, ptr noundef %20, ptr noundef nonnull @.str.8) #15
  ret void
}

declare void @gx_ht_free_cache(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @gx_device_halftone_release(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !84
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %12 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  br label %13

13:                                               ; preds = %10, %35
  %14 = phi i64 [ 0, %10 ], [ %36, %35 ]
  %15 = load ptr, ptr %3, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %15, i64 %14
  %17 = getelementptr inbounds %struct.gx_ht_order_s, ptr %16, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = load ptr, ptr %11, align 8, !tbaa !87
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %35, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.gx_ht_order_s, ptr %16, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @gx_ht_free_cache(ptr noundef %1, ptr noundef nonnull %23) #15
  br label %26

26:                                               ; preds = %21, %25
  %27 = load ptr, ptr %12, align 8, !tbaa !74
  %28 = getelementptr inbounds %struct.gx_ht_order_s, ptr %16, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !17
  tail call void %27(ptr noundef %1, ptr noundef %29, ptr noundef nonnull @.str.6) #15
  %30 = load ptr, ptr %12, align 8, !tbaa !74
  %31 = load ptr, ptr %17, align 8, !tbaa !15
  tail call void %30(ptr noundef %1, ptr noundef %31, ptr noundef nonnull @.str.7) #15
  %32 = load ptr, ptr %12, align 8, !tbaa !74
  %33 = getelementptr inbounds %struct.gx_ht_order_s, ptr %16, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !9
  tail call void %32(ptr noundef %1, ptr noundef %34, ptr noundef nonnull @.str.8) #15
  br label %35

35:                                               ; preds = %13, %26
  %36 = add nuw nsw i64 %14, 1
  %37 = load i32, ptr %7, align 8, !tbaa !84
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %13, label %40, !llvm.loop !88

40:                                               ; preds = %35, %6
  %41 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %0, i64 0, i32 4
  %42 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  %43 = load ptr, ptr %42, align 8, !tbaa !74
  %44 = load ptr, ptr %3, align 8, !tbaa !24
  tail call void %43(ptr noundef %1, ptr noundef %44, ptr noundef nonnull @.str.9) #15
  store ptr null, ptr %3, align 8, !tbaa !24
  store i32 0, ptr %41, align 8, !tbaa !84
  br label %45

45:                                               ; preds = %40, %2
  %46 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %1, i64 0, i32 11
  %47 = load ptr, ptr %46, align 8, !tbaa !74
  %48 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 13
  %49 = load ptr, ptr %48, align 8, !tbaa !17
  tail call void %47(ptr noundef %1, ptr noundef %49, ptr noundef nonnull @.str.6) #15
  %50 = load ptr, ptr %46, align 8, !tbaa !74
  %51 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !15
  tail call void %50(ptr noundef %1, ptr noundef %52, ptr noundef nonnull @.str.7) #15
  %53 = load ptr, ptr %46, align 8, !tbaa !74
  %54 = getelementptr inbounds %struct.gx_ht_order_s, ptr %0, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  tail call void %53(ptr noundef %1, ptr noundef %55, ptr noundef nonnull @.str.8) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_imager_dev_ht_install(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #1 {
  %5 = alloca %struct.rc_header_s, align 8
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !89
  %8 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 3
  %9 = load i16, ptr %8, align 4, !tbaa !91
  %10 = zext i16 %9 to i64
  %11 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !93
  %15 = zext i16 %14 to i32
  %16 = udiv i32 %12, %15
  %17 = zext i32 %16 to i64
  %18 = mul nuw nsw i64 %17, %10
  %19 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !94
  %21 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %20, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !95
  %23 = zext i32 %22 to i64
  %24 = icmp ugt i64 %18, %23
  br i1 %24, label %189, label %25

25:                                               ; preds = %4
  %26 = icmp eq ptr %7, null
  br i1 %26, label %49, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %7, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !97
  %30 = icmp eq i64 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %7, i64 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %1, i64 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  %36 = icmp eq ptr %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  tail call void @gx_device_halftone_release(ptr noundef nonnull %7, ptr noundef %33)
  br label %70

38:                                               ; preds = %27, %31
  br i1 %26, label %49, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %7, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !97
  %42 = icmp sgt i64 %41, 1
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %7, i64 0, i32 1, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !98
  %46 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %1, i64 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !98
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %68, label %49

49:                                               ; preds = %25, %43, %39, %38
  %50 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %1, i64 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !98
  %52 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !99
  %54 = tail call ptr %53(ptr noundef %51, ptr noundef nonnull @st_device_halftone, ptr noundef nonnull @.str.10) #15
  %55 = icmp eq ptr %54, null
  br i1 %55, label %189, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %54, i64 0, i32 1
  store i64 1, ptr %57, align 8, !tbaa !97
  %58 = load ptr, ptr %50, align 8, !tbaa !98
  %59 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %54, i64 0, i32 1, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %54, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %60, align 8, !tbaa !100
  %61 = load ptr, ptr %6, align 8, !tbaa !89
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %61, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !97
  %66 = add nsw i64 %65, -1
  store i64 %66, ptr %64, align 8, !tbaa !97
  br label %67

67:                                               ; preds = %63, %56
  store ptr %54, ptr %6, align 8, !tbaa !89
  br label %68

68:                                               ; preds = %67, %43
  %69 = load ptr, ptr %6, align 8, !tbaa !89
  br label %70

70:                                               ; preds = %68, %37
  %71 = phi ptr [ %7, %37 ], [ %69, %68 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  %72 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %71, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %72, i64 24, i1 false), !tbaa.struct !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %71, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 168, i1 false), !tbaa.struct !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %72, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  %73 = tail call i64 @gs_next_ids(i32 noundef 1) #15
  %74 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %71, i64 0, i32 2
  store i64 %73, ptr %74, align 8, !tbaa !103
  %75 = load ptr, ptr %19, align 8, !tbaa !94
  %76 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %75, i64 0, i32 4, i32 10
  %77 = getelementptr inbounds %struct.gx_ht_cache_s, ptr %75, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %76, i8 0, i64 16, i1 false)
  %78 = load ptr, ptr %77, align 8, !tbaa !104
  store ptr null, ptr %78, align 8, !tbaa !105
  %79 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %1, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !24
  %81 = icmp eq ptr %80, null
  br i1 %81, label %149, label %82

82:                                               ; preds = %70
  %83 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !108
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [5 x [4 x i32]], ptr @gx_imager_dev_ht_install.dcnames, i64 0, i64 %85
  %87 = icmp eq i32 %84, 4
  %88 = and i32 %2, -5
  %89 = icmp eq i32 %88, 2
  %90 = and i1 %89, %87
  %91 = select i1 %90, ptr @gx_imager_dev_ht_install.cscnames, ptr %86
  %92 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %71, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %92, i8 0, i64 16, i1 false)
  %93 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %1, i64 0, i32 4
  %94 = load i32, ptr %93, align 8, !tbaa !84
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %118, label %96

96:                                               ; preds = %82
  %97 = load ptr, ptr %79, align 8, !tbaa !24
  br label %98

98:                                               ; preds = %96, %113
  %99 = phi i64 [ 0, %96 ], [ %114, %113 ]
  %100 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %97, i64 %99, i32 1
  %101 = trunc i64 %99 to i32
  br label %102

102:                                              ; preds = %98, %110
  %103 = phi i64 [ 0, %98 ], [ %111, %110 ]
  %104 = load i32, ptr %100, align 8, !tbaa !113
  %105 = getelementptr inbounds i32, ptr %91, i64 %103
  %106 = load i32, ptr %105, align 4, !tbaa !57
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %71, i64 0, i32 5, i64 %103
  store i32 %101, ptr %109, align 4, !tbaa !57
  br label %110

110:                                              ; preds = %102, %108
  %111 = add nuw nsw i64 %103, 1
  %112 = icmp eq i64 %111, 4
  br i1 %112, label %113, label %102, !llvm.loop !114

113:                                              ; preds = %110
  %114 = add nuw nsw i64 %99, 1
  %115 = load i32, ptr %93, align 8, !tbaa !84
  %116 = zext i32 %115 to i64
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %98, label %118, !llvm.loop !115

118:                                              ; preds = %113, %82
  br label %119

119:                                              ; preds = %118, %119
  %120 = phi i64 [ %145, %119 ], [ 0, %118 ]
  %121 = phi i32 [ %140, %119 ], [ 1, %118 ]
  %122 = phi i32 [ %144, %119 ], [ 1, %118 ]
  %123 = load ptr, ptr %79, align 8, !tbaa !24
  %124 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %71, i64 0, i32 5, i64 %120
  %125 = load i32, ptr %124, align 4, !tbaa !57
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %123, i64 %126
  %128 = getelementptr inbounds %struct.gx_ht_order_s, ptr %127, i64 0, i32 1
  %129 = load i16, ptr %128, align 8, !tbaa !116
  %130 = zext i16 %129 to i32
  %131 = getelementptr inbounds %struct.gx_ht_order_s, ptr %127, i64 0, i32 7
  %132 = load i32, ptr %131, align 4, !tbaa !117
  %133 = tail call i32 @igcd(i32 noundef %121, i32 noundef %130) #15
  %134 = sdiv i32 %121, %133
  %135 = tail call i32 @igcd(i32 noundef %122, i32 noundef %132) #15
  %136 = sdiv i32 %122, %135
  %137 = sdiv i32 2147483647, %134
  %138 = icmp ult i32 %137, %130
  %139 = mul i32 %134, %130
  %140 = select i1 %138, i32 2147483647, i32 %139
  %141 = sdiv i32 2147483647, %136
  %142 = icmp ugt i32 %132, %141
  %143 = mul i32 %136, %132
  %144 = select i1 %142, i32 2147483647, i32 %143
  %145 = add nuw nsw i64 %120, 1
  %146 = icmp eq i64 %145, 4
  br i1 %146, label %147, label %119, !llvm.loop !118

147:                                              ; preds = %119
  %148 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %71, i64 0, i32 6
  store i32 %140, ptr %148, align 4, !tbaa !119
  br label %156

149:                                              ; preds = %70
  %150 = getelementptr inbounds %struct.gx_ht_order_s, ptr %71, i64 0, i32 1
  %151 = load i16, ptr %150, align 8, !tbaa !93
  %152 = zext i16 %151 to i32
  %153 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %71, i64 0, i32 6
  store i32 %152, ptr %153, align 4, !tbaa !119
  %154 = getelementptr inbounds %struct.gx_ht_order_s, ptr %71, i64 0, i32 7
  %155 = load i32, ptr %154, align 4, !tbaa !120
  br label %156

156:                                              ; preds = %147, %149
  %157 = phi i32 [ %144, %147 ], [ %155, %149 ]
  %158 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %71, i64 0, i32 7
  store i32 %157, ptr %158, align 8, !tbaa !121
  %159 = load ptr, ptr %6, align 8, !tbaa !89
  %160 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18
  %161 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %160, ptr noundef nonnull align 8 dereferenceable(32) %161, i64 32, i1 false), !tbaa.struct !122
  %162 = icmp eq ptr %159, null
  br i1 %162, label %189, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %159, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !24
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.gx_ht_order_s, ptr %159, i64 0, i32 13
  %169 = load ptr, ptr %168, align 8, !tbaa !123
  %170 = icmp eq ptr %169, null
  br i1 %170, label %189, label %171

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 3
  store ptr %169, ptr %172, align 8, !tbaa !23
  %173 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 2
  store ptr %169, ptr %173, align 8, !tbaa !23
  %174 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 1
  store ptr %169, ptr %174, align 8, !tbaa !23
  store ptr %169, ptr %160, align 8, !tbaa !23
  br label %189

175:                                              ; preds = %163, %186
  %176 = phi i64 [ %187, %186 ], [ 0, %163 ]
  %177 = load ptr, ptr %164, align 8, !tbaa !24
  %178 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %159, i64 0, i32 5, i64 %176
  %179 = load i32, ptr %178, align 4, !tbaa !57
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %177, i64 %180, i32 0, i32 13
  %182 = load ptr, ptr %181, align 8, !tbaa !124
  %183 = icmp eq ptr %182, null
  br i1 %183, label %186, label %184

184:                                              ; preds = %175
  %185 = getelementptr inbounds [4 x ptr], ptr %160, i64 0, i64 %176
  store ptr %182, ptr %185, align 8, !tbaa !23
  br label %186

186:                                              ; preds = %184, %175
  %187 = add nuw nsw i64 %176, 1
  %188 = icmp eq i64 %187, 4
  br i1 %188, label %189, label %175, !llvm.loop !125

189:                                              ; preds = %186, %171, %167, %156, %49, %4
  %190 = phi i32 [ -13, %4 ], [ -25, %49 ], [ 0, %156 ], [ 0, %167 ], [ 0, %171 ], [ 0, %186 ]
  ret i32 %190
}

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #3

declare i64 @gs_next_ids(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @gx_imager_set_effective_xfer(ptr nocapture noundef %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18
  %5 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !122
  %6 = icmp eq ptr %3, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gx_ht_order_s, ptr %3, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 3
  store ptr %13, ptr %16, align 8, !tbaa !23
  %17 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 2
  store ptr %13, ptr %17, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 1
  store ptr %13, ptr %18, align 8, !tbaa !23
  store ptr %13, ptr %4, align 8, !tbaa !23
  br label %33

19:                                               ; preds = %7, %30
  %20 = phi i64 [ %31, %30 ], [ 0, %7 ]
  %21 = load ptr, ptr %8, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %3, i64 0, i32 5, i64 %20
  %23 = load i32, ptr %22, align 4, !tbaa !57
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %21, i64 %24, i32 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 %20
  store ptr %26, ptr %29, align 8, !tbaa !23
  br label %30

30:                                               ; preds = %28, %19
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %19, !llvm.loop !125

33:                                               ; preds = %30, %15, %11, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gx_ht_install(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
  %4 = alloca %struct.rc_header_s, align 8
  %5 = getelementptr inbounds %struct.gs_halftone_s, ptr %1, i64 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  %9 = icmp ne ptr %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.gs_halftone_s, ptr %8, i64 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %13 = icmp eq ptr %12, %6
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.gs_halftone_s, ptr %8, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !127
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %27, label %18

18:                                               ; preds = %3, %10, %14
  %19 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !99
  %21 = tail call ptr %20(ptr noundef %6, ptr noundef nonnull @st_halftone, ptr noundef nonnull @.str.11) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.gs_halftone_s, ptr %21, i64 0, i32 1
  store i64 1, ptr %24, align 8, !tbaa !127
  %25 = getelementptr inbounds %struct.gs_halftone_s, ptr %21, i64 0, i32 1, i32 1
  store ptr %6, ptr %25, align 8, !tbaa !126
  %26 = getelementptr inbounds %struct.gs_halftone_s, ptr %21, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %26, align 8, !tbaa !128
  br label %27

27:                                               ; preds = %14, %23
  %28 = phi ptr [ %21, %23 ], [ %8, %14 ]
  %29 = load i32, ptr %1, align 8, !tbaa !20
  %30 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 43
  %31 = load ptr, ptr %30, align 8, !tbaa !129
  %32 = tail call i32 @gx_imager_dev_ht_install(ptr noundef %0, ptr noundef %2, i32 noundef %29, ptr noundef %31), !range !130
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = icmp eq ptr %28, %8
  br i1 %35, label %56, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 11
  %38 = load ptr, ptr %37, align 8, !tbaa !74
  tail call void %38(ptr noundef %6, ptr noundef nonnull %28, ptr noundef nonnull @.str.11) #15
  br label %56

39:                                               ; preds = %27
  %40 = icmp ne ptr %28, %8
  %41 = and i1 %9, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.gs_halftone_s, ptr %8, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !127
  %45 = add nsw i64 %44, -1
  store i64 %45, ptr %43, align 8, !tbaa !127
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.gs_halftone_s, ptr %8, i64 0, i32 1, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !128
  %50 = getelementptr inbounds %struct.gs_halftone_s, ptr %8, i64 0, i32 1, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !126
  tail call void %49(ptr noundef %51, ptr noundef nonnull %8, ptr noundef nonnull @.str.12) #15
  br label %52

52:                                               ; preds = %42, %47, %39
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  %53 = getelementptr inbounds %struct.gs_halftone_s, ptr %28, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %53, i64 24, i1 false), !tbaa.struct !101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %28, ptr noundef nonnull align 8 dereferenceable(128) %1, i64 128, i1 false), !tbaa.struct !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !101
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  store ptr %28, ptr %7, align 8, !tbaa !42
  %54 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 34
  %55 = load ptr, ptr %54, align 8, !tbaa !50
  store ptr @gx_dc_procs_none, ptr %55, align 8, !tbaa !51
  br label %56

56:                                               ; preds = %34, %36, %18, %52
  %57 = phi i32 [ 0, %52 ], [ -25, %18 ], [ %32, %36 ], [ %32, %34 ]
  ret i32 %57
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @gx_set_effective_transfer(ptr nocapture noundef %0) local_unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18
  %5 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !122
  %6 = icmp eq ptr %3, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gx_ht_order_s, ptr %3, i64 0, i32 13
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  %14 = icmp eq ptr %13, null
  br i1 %14, label %33, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 3
  store ptr %13, ptr %16, align 8, !tbaa !23
  %17 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 2
  store ptr %13, ptr %17, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.gs_imager_state_s, ptr %0, i64 0, i32 18, i32 0, i64 1
  store ptr %13, ptr %18, align 8, !tbaa !23
  store ptr %13, ptr %4, align 8, !tbaa !23
  br label %33

19:                                               ; preds = %7, %30
  %20 = phi i64 [ %31, %30 ], [ 0, %7 ]
  %21 = load ptr, ptr %8, align 8, !tbaa !24
  %22 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %3, i64 0, i32 5, i64 %20
  %23 = load i32, ptr %22, align 4, !tbaa !57
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %21, i64 %24, i32 0, i32 13
  %26 = load ptr, ptr %25, align 8, !tbaa !124
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 %20
  store ptr %26, ptr %29, align 8, !tbaa !23
  br label %30

30:                                               ; preds = %28, %19
  %31 = add nuw nsw i64 %20, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %19, !llvm.loop !125

33:                                               ; preds = %30, %1, %11, %15
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 64}
!10 = !{!"gx_ht_order_s", !11, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !14, i64 52, !14, i64 56, !14, i64 60, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!11 = !{!"gx_ht_cell_params_s", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !13, i64 16, !12, i64 24, !12, i64 26, !14, i64 28, !14, i64 32, !14, i64 36}
!12 = !{!"short", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{!10, !6, i64 72}
!16 = !{!10, !6, i64 80}
!17 = !{!10, !6, i64 88}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!21, !14, i64 0}
!21 = !{!"gs_halftone_s", !14, i64 0, !22, i64 8, !7, i64 32}
!22 = !{!"rc_header_s", !13, i64 0, !6, i64 8, !6, i64 16}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !6, i64 128}
!25 = !{!"gx_device_halftone_s", !10, i64 0, !22, i64 96, !13, i64 120, !6, i64 128, !14, i64 136, !7, i64 140, !14, i64 156, !14, i64 160}
!26 = !{!27, !6, i64 0}
!27 = !{!"gs_state_s", !6, i64 0, !28, i64 8, !31, i64 80, !14, i64 128, !12, i64 132, !14, i64 136, !29, i64 140, !32, i64 144, !14, i64 160, !14, i64 164, !6, i64 168, !7, i64 176, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !7, i64 232, !7, i64 264, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !33, i64 336, !14, i64 360, !33, i64 364, !14, i64 388, !6, i64 392, !6, i64 400, !14, i64 408, !14, i64 412, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !31, i64 456, !14, i64 504, !7, i64 508, !14, i64 512, !6, i64 520, !14, i64 528, !6, i64 536, !6, i64 544, !34, i64 552}
!28 = !{!"gx_line_params_s", !29, i64 0, !14, i64 4, !14, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !29, i64 24, !30, i64 32}
!29 = !{!"float", !7, i64 0}
!30 = !{!"gx_dash_params_s", !6, i64 0, !14, i64 8, !29, i64 12, !14, i64 16, !29, i64 20, !14, i64 24, !14, i64 28, !29, i64 32}
!31 = !{!"gs_matrix_fixed_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20, !13, i64 24, !13, i64 32, !14, i64 40}
!32 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!33 = !{!"gs_matrix_s", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !29, i64 16, !29, i64 20}
!34 = !{!"gs_state_client_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!35 = !{!36, !6, i64 8}
!36 = !{!"gs_screen_halftone_s", !29, i64 0, !29, i64 4, !6, i64 8, !29, i64 16, !29, i64 20}
!37 = !{!38, !39, i64 0}
!38 = !{!"gs_point_s", !39, i64 0, !39, i64 8}
!39 = !{!"double", !7, i64 0}
!40 = !{!38, !39, i64 8}
!41 = distinct !{!41, !19}
!42 = !{!27, !6, i64 168}
!43 = !{!27, !6, i64 192}
!44 = !{!25, !14, i64 56}
!45 = !{i32 -15, i32 1}
!46 = distinct !{!46, !19}
!47 = !{!48, !14, i64 0}
!48 = !{!"gs_int_point_s", !14, i64 0, !14, i64 4}
!49 = !{!48, !14, i64 4}
!50 = !{!27, !6, i64 432}
!51 = !{!52, !6, i64 0}
!52 = !{!"gx_device_color_s", !6, i64 0, !7, i64 8, !48, i64 48, !53, i64 56}
!53 = !{!"_mask", !54, i64 0, !13, i64 24, !6, i64 32}
!54 = !{!"gs_client_color_s", !55, i64 0, !6, i64 16}
!55 = !{!"gs_paint_color_s", !7, i64 0}
!56 = !{i64 0, i64 4, !57, i64 8, i64 8, !58, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 4, !59, i64 36, i64 4, !59, i64 40, i64 8, !5, i64 48, i64 4, !59, i64 52, i64 4, !59, i64 32, i64 96, !23, i64 32, i64 4, !59, i64 36, i64 4, !59, i64 40, i64 8, !5, i64 48, i64 4, !59, i64 52, i64 4, !59, i64 56, i64 4, !59, i64 60, i64 4, !59, i64 64, i64 8, !5, i64 72, i64 4, !59, i64 76, i64 4, !59, i64 80, i64 4, !59, i64 84, i64 4, !59, i64 88, i64 8, !5, i64 96, i64 4, !59, i64 100, i64 4, !59, i64 104, i64 4, !59, i64 108, i64 4, !59, i64 112, i64 8, !5, i64 120, i64 4, !59, i64 124, i64 4, !59, i64 32, i64 4, !59, i64 36, i64 4, !59, i64 40, i64 8, !5, i64 48, i64 4, !59, i64 52, i64 4, !59, i64 56, i64 4, !57, i64 64, i64 8, !5, i64 32, i64 4, !57, i64 36, i64 4, !57, i64 40, i64 8, !5, i64 48, i64 4, !57, i64 56, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 4, !57}
!57 = !{!14, !14, i64 0}
!58 = !{!13, !13, i64 0}
!59 = !{!29, !29, i64 0}
!60 = !{i64 0, i64 2, !61, i64 2, i64 2, !61, i64 4, i64 2, !61, i64 6, i64 2, !61, i64 8, i64 2, !61, i64 10, i64 2, !61, i64 16, i64 8, !58, i64 24, i64 2, !61, i64 26, i64 2, !61, i64 28, i64 4, !57, i64 32, i64 4, !57, i64 36, i64 4, !57, i64 40, i64 2, !61, i64 42, i64 2, !61, i64 44, i64 2, !61, i64 46, i64 2, !61, i64 48, i64 2, !61, i64 50, i64 2, !61, i64 52, i64 4, !57, i64 56, i64 4, !57, i64 60, i64 4, !57, i64 64, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 8, !5, i64 88, i64 8, !5}
!61 = !{!12, !12, i64 0}
!62 = !{!10, !12, i64 40}
!63 = !{!10, !12, i64 42}
!64 = !{!10, !12, i64 44}
!65 = !{!10, !12, i64 46}
!66 = !{!10, !12, i64 48}
!67 = !{!10, !12, i64 50}
!68 = !{!10, !14, i64 52}
!69 = !{!10, !14, i64 56}
!70 = !{!10, !14, i64 60}
!71 = !{!72, !6, i64 32}
!72 = !{!"gs_memory_s", !73, i64 0}
!73 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!74 = !{!72, !6, i64 88}
!75 = !{!76, !14, i64 0}
!76 = !{!"gx_ht_bit_s", !14, i64 0, !14, i64 4}
!77 = distinct !{!77, !19}
!78 = !{!76, !14, i64 4}
!79 = distinct !{!79, !19}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = !{!25, !14, i64 136}
!85 = !{!86, !6, i64 72}
!86 = !{!"gx_ht_order_component_s", !10, i64 0, !14, i64 96}
!87 = !{!25, !6, i64 72}
!88 = distinct !{!88, !19}
!89 = !{!90, !6, i64 192}
!90 = !{!"gs_imager_state_s", !6, i64 0, !28, i64 8, !31, i64 80, !14, i64 128, !12, i64 132, !14, i64 136, !29, i64 140, !32, i64 144, !14, i64 160, !14, i64 164, !6, i64 168, !7, i64 176, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !7, i64 232, !7, i64 264, !6, i64 296, !6, i64 304, !6, i64 312}
!91 = !{!25, !12, i64 44}
!92 = !{!25, !14, i64 60}
!93 = !{!25, !12, i64 40}
!94 = !{!90, !6, i64 200}
!95 = !{!96, !14, i64 8}
!96 = !{!"gx_ht_cache_s", !6, i64 0, !14, i64 8, !6, i64 16, !14, i64 24, !10, i64 32, !14, i64 128, !14, i64 132, !13, i64 136}
!97 = !{!25, !13, i64 96}
!98 = !{!25, !6, i64 104}
!99 = !{!72, !6, i64 16}
!100 = !{!25, !6, i64 112}
!101 = !{i64 0, i64 8, !58, i64 8, i64 8, !5, i64 16, i64 8, !5}
!102 = !{i64 0, i64 2, !61, i64 2, i64 2, !61, i64 4, i64 2, !61, i64 6, i64 2, !61, i64 8, i64 2, !61, i64 10, i64 2, !61, i64 16, i64 8, !58, i64 24, i64 2, !61, i64 26, i64 2, !61, i64 28, i64 4, !57, i64 32, i64 4, !57, i64 36, i64 4, !57, i64 40, i64 2, !61, i64 42, i64 2, !61, i64 44, i64 2, !61, i64 46, i64 2, !61, i64 48, i64 2, !61, i64 50, i64 2, !61, i64 52, i64 4, !57, i64 56, i64 4, !57, i64 60, i64 4, !57, i64 64, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 8, !5, i64 88, i64 8, !5, i64 96, i64 8, !58, i64 104, i64 8, !5, i64 112, i64 8, !5, i64 120, i64 8, !58, i64 128, i64 8, !5, i64 136, i64 4, !57, i64 140, i64 16, !23, i64 156, i64 4, !57, i64 160, i64 4, !57}
!103 = !{!25, !13, i64 120}
!104 = !{!96, !6, i64 16}
!105 = !{!106, !6, i64 0}
!106 = !{!"gx_ht_tile_s", !107, i64 0, !14, i64 40, !14, i64 44}
!107 = !{!"gx_strip_bitmap_s", !6, i64 0, !14, i64 8, !48, i64 12, !13, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38}
!108 = !{!109, !14, i64 48}
!109 = !{!"gx_device_s", !14, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !14, i64 40, !14, i64 44, !110, i64 48, !14, i64 64, !14, i64 68, !7, i64 72, !7, i64 80, !14, i64 96, !7, i64 100, !7, i64 108, !7, i64 116, !7, i64 124, !13, i64 144, !13, i64 152, !14, i64 160, !111, i64 168, !112, i64 192}
!110 = !{!"gx_device_color_info_s", !14, i64 0, !14, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!111 = !{!"gx_page_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16}
!112 = !{!"gx_device_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !6, i64 240, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !6, i64 280, !6, i64 288}
!113 = !{!86, !14, i64 96}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !19}
!116 = !{!86, !12, i64 40}
!117 = !{!86, !14, i64 52}
!118 = distinct !{!118, !19}
!119 = !{!25, !14, i64 156}
!120 = !{!25, !14, i64 52}
!121 = !{!25, !14, i64 160}
!122 = !{i64 0, i64 32, !23, i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5}
!123 = !{!25, !6, i64 88}
!124 = !{!86, !6, i64 88}
!125 = distinct !{!125, !19}
!126 = !{!21, !6, i64 16}
!127 = !{!21, !13, i64 8}
!128 = !{!21, !6, i64 24}
!129 = !{!27, !6, i64 536}
!130 = !{i32 -25, i32 1}
