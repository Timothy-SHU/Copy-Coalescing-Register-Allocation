; ModuleID = 'zupath.c'
source_filename = "zupath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_point_s = type { double, double }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }

@zupath_l2_op_defs.op_defs_ = internal constant [14 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zineofill }, %struct.op_def { ptr @.str.2, ptr @zinfill }, %struct.op_def { ptr @.str.3, ptr @zinstroke }, %struct.op_def { ptr @.str.4, ptr @zinueofill }, %struct.op_def { ptr @.str.5, ptr @zinufill }, %struct.op_def { ptr @.str.6, ptr @zinustroke }, %struct.op_def { ptr @.str.7, ptr @zuappend }, %struct.op_def { ptr @.str.8, ptr @zueofill }, %struct.op_def { ptr @.str.9, ptr @zufill }, %struct.op_def { ptr @.str.10, ptr @zustroke }, %struct.op_def { ptr @.str.11, ptr @zustrokepath }, %struct.op_def { ptr @.str.12, ptr @zucache }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"1ineofill\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"1infill\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"1instroke\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"2inueofill\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"2inufill\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"2inustroke\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"1uappend\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"1ueofill\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"1ufill\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"1ustroke\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"1ustrokepath\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"0ucache\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@hit_device = internal unnamed_addr constant %struct.gx_device_s { i32 488, ptr null, ptr @.str.13, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gx_default_w_b_map_rgb_color, ptr @gx_default_w_b_map_color_rgb, ptr @hit_fill_rectangle, ptr null, ptr null, ptr null, ptr @gx_default_draw_line, ptr null, ptr null, ptr null, ptr @gx_default_map_cmyk_color, ptr null, ptr null, ptr @gx_default_map_rgb_alpha_color, ptr @gx_default_get_page_device, ptr @gx_default_get_alpha_bits, ptr null, ptr @gx_default_get_band, ptr null, ptr @gx_default_fill_path, ptr null, ptr null, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_default_strip_copy_rop, ptr @gx_get_largest_clipping_box } }, align 8
@up_nargs = internal unnamed_addr constant [12 x i8] c"\04\02\02\02\02\06\06\05\05\05\00\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@up_ops = internal unnamed_addr constant [12 x ptr] [ptr @zsetbbox, ptr @zmoveto, ptr @zrmoveto, ptr @zlineto, ptr @zrlineto, ptr @zcurveto, ptr @zrcurveto, ptr @zarc, ptr @zarcn, ptr @zarct, ptr @zclosepath, ptr @zucache], align 16
@ref_systemdict = external global %struct.ref_s, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"hit detector\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zupath_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zupath_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zineofill(ptr noundef %0) #1 {
  %2 = alloca %struct.gx_device_s, align 8
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %2) #7
  %3 = call fastcc i32 @in_path(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %2), !range !5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !6
  %7 = call i32 @gs_eofill(ptr noundef %6) #7, !callees !10
  %8 = load ptr, ptr @igs, align 8, !tbaa !6
  %9 = call i32 @gs_grestore(ptr noundef %8) #7
  switch i32 %7, label %20 [
    i32 -8, label %11
    i32 0, label %10
  ]

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %5
  %12 = phi i16 [ 0, %10 ], [ 1, %5 ]
  %13 = add nsw i32 %3, -1
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %15 = sext i32 %13 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds %struct.ref_s, ptr %14, i64 %16
  store ptr %17, ptr @o_stack, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %16
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %16, i32 1
  store i16 %12, ptr %19, align 8, !tbaa !17
  store i16 256, ptr %18, align 8, !tbaa !18
  br label %20

20:                                               ; preds = %1, %5, %11
  %21 = phi i32 [ %3, %1 ], [ 0, %11 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %2) #7
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zinfill(ptr noundef %0) #1 {
  %2 = alloca %struct.gx_device_s, align 8
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %2) #7
  %3 = call fastcc i32 @in_path(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %2), !range !5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !6
  %7 = call i32 @gs_fill(ptr noundef %6) #7, !callees !10
  %8 = load ptr, ptr @igs, align 8, !tbaa !6
  %9 = call i32 @gs_grestore(ptr noundef %8) #7
  switch i32 %7, label %20 [
    i32 -8, label %11
    i32 0, label %10
  ]

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %5
  %12 = phi i16 [ 0, %10 ], [ 1, %5 ]
  %13 = add nsw i32 %3, -1
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %15 = sext i32 %13 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds %struct.ref_s, ptr %14, i64 %16
  store ptr %17, ptr @o_stack, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %16
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %16, i32 1
  store i16 %12, ptr %19, align 8, !tbaa !17
  store i16 256, ptr %18, align 8, !tbaa !18
  br label %20

20:                                               ; preds = %1, %5, %11
  %21 = phi i32 [ %3, %1 ], [ 0, %11 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %2) #7
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zinstroke(ptr noundef %0) #1 {
  %2 = alloca %struct.gx_device_s, align 8
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %2) #7
  %3 = call fastcc i32 @in_path(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %2), !range !5
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @igs, align 8, !tbaa !6
  %7 = call i32 @gs_stroke(ptr noundef %6) #7, !callees !10
  %8 = load ptr, ptr @igs, align 8, !tbaa !6
  %9 = call i32 @gs_grestore(ptr noundef %8) #7
  switch i32 %7, label %20 [
    i32 -8, label %11
    i32 0, label %10
  ]

10:                                               ; preds = %5
  br label %11

11:                                               ; preds = %10, %5
  %12 = phi i16 [ 0, %10 ], [ 1, %5 ]
  %13 = add nsw i32 %3, -1
  %14 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %15 = sext i32 %13 to i64
  %16 = sub nsw i64 0, %15
  %17 = getelementptr inbounds %struct.ref_s, ptr %14, i64 %16
  store ptr %17, ptr @o_stack, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %16
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %16, i32 1
  store i16 %12, ptr %19, align 8, !tbaa !17
  store i16 256, ptr %18, align 8, !tbaa !18
  br label %20

20:                                               ; preds = %1, %5, %11
  %21 = phi i32 [ %3, %1 ], [ 0, %11 ], [ %7, %5 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %2) #7
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @zinueofill(ptr noundef %0) #1 {
  %2 = alloca %struct.gx_device_s, align 8
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %2) #7
  %3 = load ptr, ptr @igs, align 8, !tbaa !6
  %4 = tail call i32 @gs_gsave(ptr noundef %3) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %0)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %11 = call fastcc i32 @in_path(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %2), !range !5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %6
  %14 = load ptr, ptr @igs, align 8, !tbaa !6
  %15 = call i32 @gs_grestore(ptr noundef %14) #7
  br label %18

16:                                               ; preds = %9
  %17 = add nuw nsw i32 %11, 1
  br label %18

18:                                               ; preds = %16, %13, %1
  %19 = phi i32 [ %7, %13 ], [ %17, %16 ], [ %4, %1 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @igs, align 8, !tbaa !6
  %23 = call i32 @gs_eofill(ptr noundef %22) #7, !callees !19
  %24 = load ptr, ptr @igs, align 8, !tbaa !6
  %25 = call i32 @gs_grestore(ptr noundef %24) #7
  %26 = load ptr, ptr @igs, align 8, !tbaa !6
  %27 = call i32 @gs_grestore(ptr noundef %26) #7
  switch i32 %23, label %38 [
    i32 -8, label %29
    i32 0, label %28
  ]

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i16 [ 0, %28 ], [ 1, %21 ]
  %31 = add nsw i32 %19, -1
  %32 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %33 = sext i32 %31 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds %struct.ref_s, ptr %32, i64 %34
  store ptr %35, ptr @o_stack, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %34
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %34, i32 1
  store i16 %30, ptr %37, align 8, !tbaa !17
  store i16 256, ptr %36, align 8, !tbaa !18
  br label %38

38:                                               ; preds = %18, %21, %29
  %39 = phi i32 [ %19, %18 ], [ 0, %29 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %2) #7
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @zinufill(ptr noundef %0) #1 {
  %2 = alloca %struct.gx_device_s, align 8
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %2) #7
  %3 = load ptr, ptr @igs, align 8, !tbaa !6
  %4 = tail call i32 @gs_gsave(ptr noundef %3) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %0)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %11 = call fastcc i32 @in_path(ptr noundef nonnull %10, ptr noundef %0, ptr noundef nonnull %2), !range !5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %6
  %14 = load ptr, ptr @igs, align 8, !tbaa !6
  %15 = call i32 @gs_grestore(ptr noundef %14) #7
  br label %18

16:                                               ; preds = %9
  %17 = add nuw nsw i32 %11, 1
  br label %18

18:                                               ; preds = %16, %13, %1
  %19 = phi i32 [ %7, %13 ], [ %17, %16 ], [ %4, %1 ]
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @igs, align 8, !tbaa !6
  %23 = call i32 @gs_fill(ptr noundef %22) #7, !callees !19
  %24 = load ptr, ptr @igs, align 8, !tbaa !6
  %25 = call i32 @gs_grestore(ptr noundef %24) #7
  %26 = load ptr, ptr @igs, align 8, !tbaa !6
  %27 = call i32 @gs_grestore(ptr noundef %26) #7
  switch i32 %23, label %38 [
    i32 -8, label %29
    i32 0, label %28
  ]

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %21
  %30 = phi i16 [ 0, %28 ], [ 1, %21 ]
  %31 = add nsw i32 %19, -1
  %32 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %33 = sext i32 %31 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds %struct.ref_s, ptr %32, i64 %34
  store ptr %35, ptr @o_stack, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %34
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %34, i32 1
  store i16 %30, ptr %37, align 8, !tbaa !17
  store i16 256, ptr %36, align 8, !tbaa !18
  br label %38

38:                                               ; preds = %18, %21, %29
  %39 = phi i32 [ %19, %18 ], [ 0, %29 ], [ %23, %21 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %2) #7
  ret i32 %39
}

; Function Attrs: nounwind uwtable
define internal i32 @zinustroke(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = alloca %struct.gx_device_s, align 8
  %4 = load ptr, ptr @igs, align 8, !tbaa !6
  %5 = tail call i32 @gs_gsave(ptr noundef %4) #7
  call void @llvm.lifetime.start.p0(i64 488, ptr nonnull %3) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %8 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #7
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %12 = call fastcc i32 @upath_append(ptr noundef nonnull %11, ptr noundef %0)
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load ptr, ptr @igs, align 8, !tbaa !6
  %16 = call i32 @gs_concat(ptr noundef %15, ptr noundef nonnull %2) #7
  br label %19

17:                                               ; preds = %7
  %18 = call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %0)
  br label %19

19:                                               ; preds = %10, %14, %17
  %20 = phi i32 [ %18, %17 ], [ %16, %14 ], [ %12, %10 ]
  %21 = phi i32 [ 1, %17 ], [ 2, %14 ], [ 2, %10 ]
  %22 = icmp slt i32 %20, 0
  %23 = select i1 %22, i32 %20, i32 %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br i1 %22, label %30, label %24

24:                                               ; preds = %19
  %25 = zext nneg i32 %23 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %26
  %28 = call fastcc i32 @in_path(ptr noundef nonnull %27, ptr noundef %0, ptr noundef nonnull %3), !range !5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24, %19
  %31 = load ptr, ptr @igs, align 8, !tbaa !6
  %32 = call i32 @gs_grestore(ptr noundef %31) #7
  br label %51

33:                                               ; preds = %24
  %34 = load ptr, ptr @igs, align 8, !tbaa !6
  %35 = call i32 @gs_stroke(ptr noundef %34) #7
  %36 = load ptr, ptr @igs, align 8, !tbaa !6
  %37 = call i32 @gs_grestore(ptr noundef %36) #7
  %38 = load ptr, ptr @igs, align 8, !tbaa !6
  %39 = call i32 @gs_grestore(ptr noundef %38) #7
  switch i32 %35, label %51 [
    i32 -8, label %41
    i32 0, label %40
  ]

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %33
  %42 = phi i16 [ 0, %40 ], [ 1, %33 ]
  %43 = add nsw i32 %23, -1
  %44 = add i32 %43, %28
  %45 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %46 = sext i32 %44 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds %struct.ref_s, ptr %45, i64 %47
  store ptr %48, ptr @o_stack, align 8, !tbaa !11
  %49 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %47
  %50 = getelementptr inbounds %struct.ref_s, ptr %0, i64 %47, i32 1
  store i16 %42, ptr %50, align 8, !tbaa !17
  store i16 256, ptr %49, align 8, !tbaa !18
  br label %51

51:                                               ; preds = %41, %33, %1, %30
  %52 = phi i32 [ %5, %30 ], [ %5, %1 ], [ 0, %41 ], [ %35, %33 ]
  call void @llvm.lifetime.end.p0(i64 488, ptr nonnull %3) #7
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define internal i32 @zuappend(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !6
  %3 = tail call i32 @gs_gsave(ptr noundef %2) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %0)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @igs, align 8, !tbaa !6
  %10 = tail call i32 @gs_upmergepath(ptr noundef %9) #7
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %10, %8 ], [ %6, %5 ]
  %13 = load ptr, ptr @igs, align 8, !tbaa !6
  %14 = tail call i32 @gs_grestore(ptr noundef %13) #7
  %15 = icmp slt i32 %12, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -1
  store ptr %18, ptr @o_stack, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %11, %1, %16
  %20 = phi i32 [ 0, %16 ], [ %3, %1 ], [ %12, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zueofill(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !6
  %3 = tail call i32 @gs_gsave(ptr noundef %2) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %0)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @igs, align 8, !tbaa !6
  %10 = tail call i32 @gs_eofill(ptr noundef %9) #7
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %10, %8 ], [ %6, %5 ]
  %13 = load ptr, ptr @igs, align 8, !tbaa !6
  %14 = tail call i32 @gs_grestore(ptr noundef %13) #7
  %15 = icmp slt i32 %12, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -1
  store ptr %18, ptr @o_stack, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %11, %1, %16
  %20 = phi i32 [ 0, %16 ], [ %3, %1 ], [ %12, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zufill(ptr noundef %0) #1 {
  %2 = load ptr, ptr @igs, align 8, !tbaa !6
  %3 = tail call i32 @gs_gsave(ptr noundef %2) #7
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %0)
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr @igs, align 8, !tbaa !6
  %10 = tail call i32 @gs_fill(ptr noundef %9) #7
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i32 [ %10, %8 ], [ %6, %5 ]
  %13 = load ptr, ptr @igs, align 8, !tbaa !6
  %14 = tail call i32 @gs_grestore(ptr noundef %13) #7
  %15 = icmp slt i32 %12, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -1
  store ptr %18, ptr @o_stack, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %11, %1, %16
  %20 = phi i32 [ 0, %16 ], [ %3, %1 ], [ %12, %11 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @zustroke(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = load ptr, ptr @igs, align 8, !tbaa !6
  %4 = tail call i32 @gs_gsave(ptr noundef %3) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %36, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %7 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #7
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %11 = call fastcc i32 @upath_append(ptr noundef nonnull %10, ptr noundef %0)
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load ptr, ptr @igs, align 8, !tbaa !6
  %15 = call i32 @gs_concat(ptr noundef %14, ptr noundef nonnull %2) #7
  br label %18

16:                                               ; preds = %6
  %17 = call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %0)
  br label %18

18:                                               ; preds = %9, %13, %16
  %19 = phi i32 [ %17, %16 ], [ %15, %13 ], [ %11, %9 ]
  %20 = phi i32 [ 1, %16 ], [ 2, %13 ], [ 2, %9 ]
  %21 = icmp sgt i32 %19, -1
  %22 = select i1 %21, i32 %20, i32 %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br i1 %21, label %23, label %26

23:                                               ; preds = %18
  %24 = load ptr, ptr @igs, align 8, !tbaa !6
  %25 = call i32 @gs_stroke(ptr noundef %24) #7
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ %25, %23 ], [ %22, %18 ]
  %28 = load ptr, ptr @igs, align 8, !tbaa !6
  %29 = call i32 @gs_grestore(ptr noundef %28) #7
  %30 = icmp slt i32 %27, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %33 = sext i32 %22 to i64
  %34 = sub nsw i64 0, %33
  %35 = getelementptr inbounds %struct.ref_s, ptr %32, i64 %34
  store ptr %35, ptr @o_stack, align 8, !tbaa !11
  br label %36

36:                                               ; preds = %26, %1, %31
  %37 = phi i32 [ 0, %31 ], [ %4, %1 ], [ %27, %26 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal i32 @zustrokepath(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_matrix_s, align 4
  %3 = load ptr, ptr @igs, align 8, !tbaa !6
  %4 = tail call i32 @gs_gsave(ptr noundef %3) #7
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #7
  %7 = call i32 @read_matrix(ptr noundef %0, ptr noundef nonnull %2) #7
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %11 = call fastcc i32 @upath_append(ptr noundef nonnull %10, ptr noundef %0)
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load ptr, ptr @igs, align 8, !tbaa !6
  %15 = call i32 @gs_concat(ptr noundef %14, ptr noundef nonnull %2) #7
  br label %18

16:                                               ; preds = %6
  %17 = call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %0)
  br label %18

18:                                               ; preds = %9, %13, %16
  %19 = phi i32 [ %17, %16 ], [ %15, %13 ], [ %11, %9 ]
  %20 = phi i32 [ 1, %16 ], [ 2, %13 ], [ 2, %9 ]
  %21 = icmp slt i32 %19, 0
  %22 = select i1 %21, i32 %19, i32 %20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #7
  br i1 %21, label %30, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr @igs, align 8, !tbaa !6
  %25 = call i32 @gs_strokepath(ptr noundef %24) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @igs, align 8, !tbaa !6
  %29 = call i32 @gs_upmergepath(ptr noundef %28) #7
  br label %30

30:                                               ; preds = %27, %23, %18
  %31 = phi i32 [ %22, %18 ], [ %25, %23 ], [ %29, %27 ]
  %32 = load ptr, ptr @igs, align 8, !tbaa !6
  %33 = call i32 @gs_grestore(ptr noundef %32) #7
  %34 = icmp slt i32 %31, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr @o_stack, align 8, !tbaa !11
  %37 = sext i32 %22 to i64
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds %struct.ref_s, ptr %36, i64 %38
  store ptr %39, ptr @o_stack, align 8, !tbaa !11
  br label %40

40:                                               ; preds = %30, %1, %35
  %41 = phi i32 [ 0, %35 ], [ %4, %1 ], [ %31, %30 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @zucache(ptr nocapture readnone %0) #0 {
  ret i32 0
}

declare i32 @gs_eofill(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @in_path(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca [2 x float], align 4
  %5 = alloca %struct.gs_point_s, align 8
  %6 = alloca %struct.gs_fixed_rect_s, align 8
  %7 = alloca %struct.gx_path_s, align 8
  %8 = load ptr, ptr @igs, align 8, !tbaa !6
  %9 = tail call i32 @gs_gsave(ptr noundef %8) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %63, label %11

11:                                               ; preds = %3
  %12 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %4) #7
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %14, label %38

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #7
  %15 = load ptr, ptr @igs, align 8, !tbaa !6
  %16 = load float, ptr %4, align 4, !tbaa !20
  %17 = fpext float %16 to double
  %18 = getelementptr inbounds [2 x float], ptr %4, i64 0, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !20
  %20 = fpext float %19 to double
  %21 = call i32 @gs_transform(ptr noundef %15, double noundef %17, double noundef %20, ptr noundef nonnull %5) #7
  %22 = load double, ptr %5, align 8, !tbaa !22
  %23 = fmul double %22, 4.096000e+03
  %24 = fptosi double %23 to i64
  %25 = and i64 %24, -4096
  store i64 %25, ptr %6, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct.gs_point_s, ptr %5, i64 0, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !29
  %28 = fmul double %27, 4.096000e+03
  %29 = fptosi double %28 to i64
  %30 = and i64 %29, -4096
  %31 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %6, i64 0, i32 1
  store i64 %30, ptr %31, align 8, !tbaa !30
  %32 = add nsw i64 %25, 4096
  %33 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %6, i64 0, i32 1
  store i64 %32, ptr %33, align 8, !tbaa !31
  %34 = add nsw i64 %30, 4096
  %35 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %6, i64 0, i32 1, i32 1
  store i64 %34, ptr %35, align 8, !tbaa !32
  %36 = load ptr, ptr @igs, align 8, !tbaa !6
  %37 = call i32 @gx_clip_to_rectangle(ptr noundef %36, ptr noundef nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %54

38:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7)
  %39 = load ptr, ptr @igs, align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.gs_state_s, ptr %39, i64 0, i32 28
  %41 = load ptr, ptr %40, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(128) %41, i64 128, i1 false), !tbaa.struct !40
  call void @gx_path_reset(ptr noundef %41) #7
  %42 = call fastcc i32 @upath_append(ptr noundef %0, ptr noundef %1)
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load ptr, ptr @igs, align 8, !tbaa !6
  %46 = call i32 @gx_clip_to_path(ptr noundef %45) #7
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i32 [ %46, %44 ], [ %42, %38 ]
  %49 = load ptr, ptr @igs, align 8, !tbaa !6
  %50 = call i32 @gs_newpath(ptr noundef %49) #7
  %51 = load ptr, ptr @igs, align 8, !tbaa !6
  %52 = getelementptr inbounds %struct.gs_state_s, ptr %51, i64 0, i32 28
  %53 = load ptr, ptr %52, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %53, ptr noundef nonnull align 8 dereferenceable(128) %7, i64 128, i1 false), !tbaa.struct !40
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7)
  br label %54

54:                                               ; preds = %47, %14
  %55 = phi i32 [ %37, %14 ], [ %48, %47 ]
  %56 = phi i32 [ 2, %14 ], [ 1, %47 ]
  %57 = icmp slt i32 %55, 0
  %58 = load ptr, ptr @igs, align 8, !tbaa !6
  br i1 %57, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @gs_grestore(ptr noundef %58) #7
  br label %63

61:                                               ; preds = %54
  call void @gx_set_device_color_1(ptr noundef %58) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %2, ptr noundef nonnull align 8 dereferenceable(488) @hit_device, i64 488, i1 false), !tbaa.struct !44
  call void @gx_device_fill_in_procs(ptr noundef %2) #7
  %62 = load ptr, ptr @igs, align 8, !tbaa !6
  call void @gx_set_device_only(ptr noundef %62, ptr noundef %2) #7
  br label %63

63:                                               ; preds = %3, %61, %59
  %64 = phi i32 [ %55, %59 ], [ %56, %61 ], [ %9, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %64
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare i32 @gs_gsave(ptr noundef) local_unnamed_addr #2

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_transform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_clip_to_rectangle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @gx_path_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @upath_append(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca ptr, align 8
  %5 = load i16, ptr %0, align 8, !tbaa !18
  %6 = and i16 %5, 32
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %199, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr @igs, align 8, !tbaa !6
  %10 = tail call i32 @gs_newpath(ptr noundef %9) #7
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !17
  %13 = icmp eq i8 %12, 4
  br i1 %13, label %14, label %105

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !46
  %17 = icmp eq i16 %16, 2
  br i1 %17, label %18, label %105

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = getelementptr inbounds i8, ptr %20, i64 17
  %22 = load i8, ptr %21, align 1, !tbaa !17
  %23 = icmp eq i8 %22, 18
  br i1 %23, label %24, label %105

24:                                               ; preds = %18
  %25 = tail call i32 @num_array_format(ptr noundef %20) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %102, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %19, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.ref_s, ptr %28, i64 1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !17
  %31 = getelementptr inbounds %struct.ref_s, ptr %28, i64 1, i32 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !46
  %33 = zext i16 %32 to i32
  br label %34

34:                                               ; preds = %96, %27
  %35 = phi i32 [ %33, %27 ], [ %41, %96 ]
  %36 = phi i32 [ 0, %27 ], [ %97, %96 ]
  %37 = phi ptr [ %30, %27 ], [ %44, %96 ]
  %38 = phi i32 [ 1, %27 ], [ %99, %96 ]
  %39 = phi ptr [ %1, %27 ], [ %100, %96 ]
  %40 = phi i32 [ undef, %27 ], [ %101, %96 ]
  %41 = add nsw i32 %35, -1
  %42 = icmp eq i32 %35, 0
  br i1 %42, label %102, label %43

43:                                               ; preds = %34
  %44 = getelementptr inbounds i8, ptr %37, i64 1
  %45 = load i8, ptr %37, align 1, !tbaa !17
  %46 = icmp ugt i8 %45, 32
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = zext i8 %45 to i32
  %49 = add nsw i32 %48, -32
  br label %96

50:                                               ; preds = %43
  %51 = icmp ugt i8 %45, 11
  br i1 %51, label %96, label %52

52:                                               ; preds = %50
  %53 = zext nneg i8 %45 to i64
  %54 = getelementptr inbounds [12 x i8], ptr @up_nargs, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !17
  %56 = and i8 %45, 14
  %57 = icmp eq i8 %56, 10
  %58 = getelementptr inbounds [12 x ptr], ptr @up_ops, i64 0, i64 %53
  br label %59

59:                                               ; preds = %52, %93
  %60 = phi i32 [ %89, %93 ], [ %36, %52 ]
  %61 = phi i32 [ %94, %93 ], [ %38, %52 ]
  %62 = phi ptr [ %91, %93 ], [ %39, %52 ]
  %63 = phi i32 [ %92, %93 ], [ %40, %52 ]
  br i1 %57, label %80, label %64

64:                                               ; preds = %59, %77
  %65 = phi i8 [ %68, %77 ], [ %55, %59 ]
  %66 = phi ptr [ %69, %77 ], [ %62, %59 ]
  %67 = phi i32 [ %74, %77 ], [ %60, %59 ]
  %68 = add i8 %65, -1
  %69 = getelementptr inbounds %struct.ref_s, ptr %66, i64 1
  %70 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !47
  %71 = icmp ugt ptr %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !48
  br label %88

73:                                               ; preds = %64
  store ptr %69, ptr @o_stack, align 8, !tbaa !11
  %74 = add i32 %67, 1
  %75 = tail call i32 @num_array_get(ptr noundef %20, i32 noundef %25, i32 noundef %67, ptr noundef nonnull %69) #7
  switch i32 %75, label %88 [
    i32 11, label %77
    i32 16, label %76
  ]

76:                                               ; preds = %73
  br label %77

77:                                               ; preds = %73, %76
  %78 = phi i16 [ 4096, %76 ], [ 2816, %73 ]
  store i16 %78, ptr %69, align 8, !tbaa !18
  %79 = icmp eq i8 %68, 0
  br i1 %79, label %80, label %64, !llvm.loop !49

80:                                               ; preds = %77, %59
  %81 = phi i32 [ %60, %59 ], [ %74, %77 ]
  %82 = phi ptr [ %62, %59 ], [ %69, %77 ]
  %83 = load ptr, ptr %58, align 8, !tbaa !6
  %84 = tail call i32 %83(ptr noundef %82) #7
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr @o_stack, align 8, !tbaa !11
  br label %88

88:                                               ; preds = %73, %80, %86, %72
  %89 = phi i32 [ %67, %72 ], [ %81, %86 ], [ %81, %80 ], [ %74, %73 ]
  %90 = phi i1 [ false, %72 ], [ true, %86 ], [ false, %80 ], [ false, %73 ]
  %91 = phi ptr [ %69, %72 ], [ %87, %86 ], [ %82, %80 ], [ %69, %73 ]
  %92 = phi i32 [ -16, %72 ], [ %63, %86 ], [ %84, %80 ], [ -20, %73 ]
  br i1 %90, label %93, label %96

93:                                               ; preds = %88
  %94 = add nsw i32 %61, -1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %59, !llvm.loop !51

96:                                               ; preds = %93, %88, %47, %50
  %97 = phi i32 [ %36, %50 ], [ %36, %47 ], [ %89, %88 ], [ %89, %93 ]
  %98 = phi i1 [ false, %50 ], [ true, %47 ], [ %90, %88 ], [ %90, %93 ]
  %99 = phi i32 [ %38, %50 ], [ %49, %47 ], [ 1, %93 ], [ %61, %88 ]
  %100 = phi ptr [ %39, %50 ], [ %39, %47 ], [ %91, %88 ], [ %91, %93 ]
  %101 = phi i32 [ -15, %50 ], [ %40, %47 ], [ %92, %88 ], [ %92, %93 ]
  br i1 %98, label %34, label %102, !llvm.loop !52

102:                                              ; preds = %34, %96, %24
  %103 = phi i1 [ false, %24 ], [ %42, %96 ], [ %42, %34 ]
  %104 = phi i32 [ %25, %24 ], [ %40, %34 ], [ %101, %96 ]
  br i1 %103, label %198, label %199

105:                                              ; preds = %18, %14, %8
  %106 = load i16, ptr %0, align 8, !tbaa !18
  %107 = and i16 %106, 15360
  %108 = icmp eq i16 %107, 1024
  br i1 %108, label %109, label %199

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %111 = load i16, ptr %110, align 2, !tbaa !46
  %112 = zext i16 %111 to i64
  %113 = icmp eq i16 %111, 0
  br i1 %113, label %191, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds i8, ptr %3, i64 1
  br label %119

116:                                              ; preds = %184
  %117 = add nuw nsw i64 %123, 1
  %118 = icmp eq i64 %117, %112
  br i1 %118, label %189, label %119, !llvm.loop !53

119:                                              ; preds = %114, %116
  %120 = phi i32 [ undef, %114 ], [ %188, %116 ]
  %121 = phi ptr [ %1, %114 ], [ %187, %116 ]
  %122 = phi i32 [ 0, %114 ], [ %186, %116 ]
  %123 = phi i64 [ 0, %114 ], [ %117, %116 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %124 = call i32 @array_get(ptr noundef nonnull %0, i64 noundef %123, ptr noundef nonnull %3) #7
  %125 = load i8, ptr %115, align 1, !tbaa !17
  switch i8 %125, label %184 [
    i8 11, label %126
    i8 16, label %126
    i8 13, label %133
    i8 15, label %151
  ]

126:                                              ; preds = %119, %119
  %127 = add nsw i32 %122, 1
  %128 = getelementptr inbounds %struct.ref_s, ptr %121, i64 1
  %129 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !47
  %130 = icmp ugt ptr %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !48
  br label %184

132:                                              ; preds = %126
  store ptr %128, ptr @o_stack, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %128, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !54
  br label %184

133:                                              ; preds = %119
  %134 = load i16, ptr %3, align 8, !tbaa !18
  %135 = and i16 %134, 128
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %184, label %137

137:                                              ; preds = %133
  %138 = call i32 @dict_find(ptr noundef nonnull @ref_systemdict, ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %184, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %4, align 8, !tbaa !6
  %142 = load i16, ptr %141, align 8, !tbaa !18
  %143 = icmp ugt i16 %142, 5375
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds i8, ptr %141, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !17
  %147 = zext i8 %146 to i32
  br label %148

148:                                              ; preds = %140, %144
  %149 = phi i32 [ %147, %144 ], [ 15, %140 ]
  %150 = icmp eq i32 %149, 15
  br i1 %150, label %152, label %184

151:                                              ; preds = %119
  store ptr %3, ptr %4, align 8, !tbaa !6
  br label %152

152:                                              ; preds = %148, %151
  %153 = load ptr, ptr %4, align 8, !tbaa !6
  %154 = load i16, ptr %153, align 8, !tbaa !18
  %155 = and i16 %154, 128
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %184, label %157

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.ref_s, ptr %153, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !17
  br label %160

160:                                              ; preds = %157, %165
  %161 = phi i64 [ 0, %157 ], [ %166, %165 ]
  %162 = getelementptr inbounds [12 x ptr], ptr @up_ops, i64 0, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = icmp eq ptr %159, %163
  br i1 %164, label %168, label %165

165:                                              ; preds = %160
  %166 = add nuw nsw i64 %161, 1
  %167 = icmp eq i64 %166, 12
  br i1 %167, label %170, label %160, !llvm.loop !55

168:                                              ; preds = %160
  %169 = trunc i64 %161 to i32
  br label %170

170:                                              ; preds = %165, %168
  %171 = phi i32 [ %169, %168 ], [ 12, %165 ]
  %172 = icmp ugt i32 %171, 11
  br i1 %172, label %184, label %173

173:                                              ; preds = %170
  %174 = zext nneg i32 %171 to i64
  %175 = getelementptr inbounds [12 x i8], ptr @up_nargs, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !17
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %122, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %173
  %180 = call i32 %159(ptr noundef %121) #7
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %179
  %183 = load ptr, ptr @o_stack, align 8, !tbaa !11
  br label %184

184:                                              ; preds = %132, %182, %119, %179, %170, %173, %152, %148, %137, %133, %131
  %185 = phi i1 [ false, %131 ], [ false, %133 ], [ false, %137 ], [ false, %148 ], [ false, %152 ], [ false, %173 ], [ false, %170 ], [ false, %179 ], [ false, %119 ], [ true, %182 ], [ true, %132 ]
  %186 = phi i32 [ %127, %131 ], [ %122, %133 ], [ %122, %137 ], [ %122, %148 ], [ %122, %152 ], [ %122, %173 ], [ %122, %170 ], [ %122, %179 ], [ %122, %119 ], [ 0, %182 ], [ %127, %132 ]
  %187 = phi ptr [ %128, %131 ], [ %121, %133 ], [ %121, %137 ], [ %121, %148 ], [ %121, %152 ], [ %121, %173 ], [ %121, %170 ], [ %121, %179 ], [ %121, %119 ], [ %183, %182 ], [ %128, %132 ]
  %188 = phi i32 [ -16, %131 ], [ -20, %133 ], [ -21, %137 ], [ -20, %148 ], [ -20, %152 ], [ -20, %173 ], [ -20, %170 ], [ %180, %179 ], [ -20, %119 ], [ %120, %182 ], [ %120, %132 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br i1 %185, label %116, label %195

189:                                              ; preds = %116
  %190 = icmp eq i32 %186, 0
  br label %191

191:                                              ; preds = %189, %109
  %192 = phi i1 [ true, %109 ], [ %190, %189 ]
  %193 = phi i32 [ undef, %109 ], [ %188, %189 ]
  %194 = select i1 %192, i32 %193, i32 -20
  br label %195

195:                                              ; preds = %184, %191
  %196 = phi i1 [ %192, %191 ], [ false, %184 ]
  %197 = phi i32 [ %194, %191 ], [ %188, %184 ]
  br i1 %196, label %198, label %199

198:                                              ; preds = %195, %102
  br label %199

199:                                              ; preds = %105, %195, %102, %2, %198
  %200 = phi i32 [ %104, %102 ], [ 0, %198 ], [ %197, %195 ], [ -7, %2 ], [ -20, %105 ]
  ret i32 %200
}

declare i32 @gx_clip_to_path(ptr noundef) local_unnamed_addr #2

declare i32 @gs_newpath(ptr noundef) local_unnamed_addr #2

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #2

declare void @gx_set_device_color_1(ptr noundef) local_unnamed_addr #2

declare void @gx_device_fill_in_procs(ptr noundef) local_unnamed_addr #2

declare void @gx_set_device_only(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @num_array_format(ptr noundef) local_unnamed_addr #2

declare i32 @num_array_get(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zsetbbox(ptr noundef) #2

declare i32 @zmoveto(ptr noundef) #2

declare i32 @zrmoveto(ptr noundef) #2

declare i32 @zlineto(ptr noundef) #2

declare i32 @zrlineto(ptr noundef) #2

declare i32 @zcurveto(ptr noundef) #2

declare i32 @zrcurveto(ptr noundef) #2

declare i32 @zarc(ptr noundef) #2

declare i32 @zarcn(ptr noundef) #2

declare i32 @zarct(ptr noundef) #2

declare i32 @zclosepath(ptr noundef) #2

declare i32 @gx_default_install(ptr noundef, ptr noundef) #2

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #2

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #2

declare i64 @gx_default_w_b_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

declare i32 @gx_default_w_b_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @hit_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 %5) #5 {
  %7 = or i32 %2, %1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %11 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %12 = add nsw i32 %11, %3
  %13 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %14 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %15 = add nsw i32 %14, %4
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i32 [ %1, %6 ], [ %10, %9 ]
  %18 = phi i32 [ %2, %6 ], [ %13, %9 ]
  %19 = phi i32 [ %3, %6 ], [ %12, %9 ]
  %20 = phi i32 [ %4, %6 ], [ %15, %9 ]
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !56
  %23 = sub nsw i32 %22, %19
  %24 = icmp sgt i32 %17, %23
  %25 = sub nsw i32 %22, %17
  %26 = select i1 %24, i32 %25, i32 %19
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !61
  %29 = sub nsw i32 %28, %20
  %30 = icmp sgt i32 %18, %29
  %31 = sub nsw i32 %28, %18
  %32 = select i1 %30, i32 %31, i32 %20
  %33 = icmp slt i32 %26, 1
  %34 = icmp slt i32 %32, 1
  %35 = select i1 %33, i1 true, i1 %34
  %36 = select i1 %35, i32 0, i32 -8
  ret i32 %36
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #2

declare i64 @gx_default_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

declare i64 @gx_default_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #2

declare ptr @gx_default_get_page_device(ptr noundef) #2

declare i32 @gx_default_get_alpha_bits(ptr noundef, i32 noundef) #2

declare i32 @gx_default_get_band(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #2

declare i32 @gx_default_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #2

declare i32 @gx_default_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare void @gx_get_largest_clipping_box(ptr noundef, ptr noundef) #2

declare i32 @gs_fill(ptr noundef) local_unnamed_addr #2

declare i32 @gs_stroke(ptr noundef) local_unnamed_addr #2

declare i32 @read_matrix(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_concat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_upmergepath(ptr noundef) local_unnamed_addr #2

declare i32 @gs_strokepath(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 -2147483648, i32 3}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{ptr @gs_eofill, ptr @gs_fill, ptr @gs_stroke}
!11 = !{!12, !7, i64 0}
!12 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !13, i64 24, !16, i64 40, !16, i64 44, !13, i64 48, !16, i64 64, !16, i64 68, !16, i64 72, !16, i64 76, !16, i64 80, !13, i64 88, !16, i64 104, !16, i64 108, !16, i64 112, !7, i64 120}
!13 = !{!"ref_s", !14, i64 0, !8, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !8, i64 0}
!16 = !{!"int", !8, i64 0}
!17 = !{!8, !8, i64 0}
!18 = !{!13, !15, i64 0}
!19 = !{ptr @gs_eofill, ptr @gs_fill}
!20 = !{!21, !21, i64 0}
!21 = !{!"float", !8, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"gs_point_s", !24, i64 0, !24, i64 8}
!24 = !{!"double", !8, i64 0}
!25 = !{!26, !28, i64 0}
!26 = !{!"gs_fixed_rect_s", !27, i64 0, !27, i64 16}
!27 = !{!"gs_fixed_point_s", !28, i64 0, !28, i64 8}
!28 = !{!"long", !8, i64 0}
!29 = !{!23, !24, i64 8}
!30 = !{!26, !28, i64 8}
!31 = !{!26, !28, i64 16}
!32 = !{!26, !28, i64 24}
!33 = !{!34, !7, i64 392}
!34 = !{!"gs_state_s", !7, i64 0, !35, i64 8, !37, i64 80, !16, i64 128, !15, i64 132, !16, i64 136, !21, i64 140, !27, i64 144, !16, i64 160, !16, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !38, i64 336, !16, i64 360, !38, i64 364, !16, i64 388, !7, i64 392, !7, i64 400, !16, i64 408, !16, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !37, i64 456, !16, i64 504, !8, i64 508, !16, i64 512, !7, i64 520, !16, i64 528, !7, i64 536, !7, i64 544, !39, i64 552}
!35 = !{!"gx_line_params_s", !21, i64 0, !16, i64 4, !16, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !36, i64 32}
!36 = !{!"gx_dash_params_s", !7, i64 0, !16, i64 8, !21, i64 12, !16, i64 16, !21, i64 20, !16, i64 24, !16, i64 28, !21, i64 32}
!37 = !{!"gs_matrix_fixed_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !28, i64 24, !28, i64 32, !16, i64 40}
!38 = !{!"gs_matrix_s", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20}
!39 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!40 = !{i64 0, i64 8, !6, i64 8, i64 8, !41, i64 16, i64 8, !41, i64 24, i64 8, !41, i64 32, i64 8, !41, i64 40, i64 8, !6, i64 48, i64 8, !6, i64 56, i64 8, !6, i64 64, i64 4, !42, i64 68, i64 4, !42, i64 72, i64 8, !41, i64 80, i64 8, !41, i64 88, i64 8, !43, i64 96, i64 8, !43, i64 104, i64 8, !43, i64 112, i64 8, !43, i64 120, i64 1, !17, i64 121, i64 1, !17, i64 122, i64 1, !17, i64 123, i64 1, !17}
!41 = !{!28, !28, i64 0}
!42 = !{!16, !16, i64 0}
!43 = !{!24, !24, i64 0}
!44 = !{i64 0, i64 4, !42, i64 8, i64 8, !6, i64 16, i64 8, !6, i64 24, i64 8, !6, i64 32, i64 8, !6, i64 40, i64 4, !42, i64 44, i64 4, !42, i64 48, i64 4, !42, i64 52, i64 4, !42, i64 56, i64 2, !45, i64 58, i64 2, !45, i64 60, i64 2, !45, i64 62, i64 2, !45, i64 64, i64 4, !42, i64 68, i64 4, !42, i64 72, i64 8, !17, i64 80, i64 16, !17, i64 96, i64 4, !42, i64 100, i64 8, !17, i64 108, i64 8, !17, i64 116, i64 8, !17, i64 124, i64 16, !17, i64 144, i64 8, !41, i64 152, i64 8, !41, i64 160, i64 4, !42, i64 168, i64 8, !6, i64 176, i64 8, !6, i64 184, i64 8, !6, i64 192, i64 8, !6, i64 200, i64 8, !6, i64 208, i64 8, !6, i64 216, i64 8, !6, i64 224, i64 8, !6, i64 232, i64 8, !6, i64 240, i64 8, !6, i64 248, i64 8, !6, i64 256, i64 8, !6, i64 264, i64 8, !6, i64 272, i64 8, !6, i64 280, i64 8, !6, i64 288, i64 8, !6, i64 296, i64 8, !6, i64 304, i64 8, !6, i64 312, i64 8, !6, i64 320, i64 8, !6, i64 328, i64 8, !6, i64 336, i64 8, !6, i64 344, i64 8, !6, i64 352, i64 8, !6, i64 360, i64 8, !6, i64 368, i64 8, !6, i64 376, i64 8, !6, i64 384, i64 8, !6, i64 392, i64 8, !6, i64 400, i64 8, !6, i64 408, i64 8, !6, i64 416, i64 8, !6, i64 424, i64 8, !6, i64 432, i64 8, !6, i64 440, i64 8, !6, i64 448, i64 8, !6, i64 456, i64 8, !6, i64 464, i64 8, !6, i64 472, i64 8, !6, i64 480, i64 8, !6}
!45 = !{!15, !15, i64 0}
!46 = !{!13, !15, i64 2}
!47 = !{!12, !7, i64 16}
!48 = !{!12, !16, i64 64}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = distinct !{!51, !50}
!52 = distinct !{!52, !50}
!53 = distinct !{!53, !50}
!54 = !{i64 0, i64 2, !45, i64 2, i64 2, !45, i64 8, i64 8, !41, i64 8, i64 2, !45, i64 8, i64 4, !20, i64 8, i64 8, !41, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6, i64 8, i64 8, !6}
!55 = distinct !{!55, !50}
!56 = !{!57, !16, i64 64}
!57 = !{!"gx_device_s", !16, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !16, i64 40, !16, i64 44, !58, i64 48, !16, i64 64, !16, i64 68, !8, i64 72, !8, i64 80, !16, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !28, i64 144, !28, i64 152, !16, i64 160, !59, i64 168, !60, i64 192}
!58 = !{!"gx_device_color_info_s", !16, i64 0, !16, i64 4, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14}
!59 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!60 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!61 = !{!57, !16, i64 68}
