; ModuleID = 'gxtype1.c'
source_filename = "gxtype1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_font_type1_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32, %struct.gs_type1_data_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_type1_data_s = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i64, i64, i64, i32, float, float, %struct.anon, float, i32, %struct.anon.0, %struct.anon.1, i32, %struct.anon.2, i32, %struct.anon.3, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.anon.7 }
%struct.anon = type { i32, [14 x float] }
%struct.anon.0 = type { i32, [14 x float] }
%struct.anon.1 = type { i32, [10 x float] }
%struct.anon.2 = type { i32, [10 x float] }
%struct.anon.3 = type { i32, [1 x float] }
%struct.anon.4 = type { i32, [1 x float] }
%struct.anon.5 = type { i32, [12 x float] }
%struct.anon.6 = type { i32, [12 x float] }
%struct.anon.7 = type { i32, [16 x float] }
%struct.gs_type1_state_s = type { ptr, ptr, ptr, i32, i32, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.font_hints_s, %struct.gs_fixed_point_s, [48 x i64], i32, [11 x %struct.ip_state], i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, i32, [8 x %struct.gs_fixed_point_s], i32, i32, i32, i32, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, ptr, i32, %struct.gs_fixed_point_s, %struct.stem_hint_table, %struct.stem_hint_table, [32 x i64] }
%struct.fixed_coeff = type { %struct.coeff1, %struct.coeff1, %struct.coeff1, %struct.coeff1, i32, i32, i32, i64 }
%struct.coeff1 = type { i64, i64 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i64, i64, i32 }
%struct.font_hints_s = type { i32, i32, i32, i32, i32, %struct.point_scale_s, %struct.stem_snap_table, %struct.stem_snap_table, i64, i64, i32, i32, [12 x %struct.alignment_zone] }
%struct.stem_snap_table = type { i32, [13 x i64] }
%struct.alignment_zone = type { i32, i64, i64, i64 }
%struct.ip_state = type { ptr, i16, %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.stem_hint_table = type { i32, i32, i32, [96 x %struct.stem_hint] }
%struct.stem_hint = type { i64, i64, i64, i64 }
%struct.gs_op1_state_s = type { ptr, ptr, %struct.fixed_coeff, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.subpath_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr, i32, %struct.line_close_segment, i8 }
%struct.line_close_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, ptr }
%struct.segment_s = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s }
%struct.curve_segment = type { ptr, ptr, i16, i16, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }

@.str = private unnamed_addr constant [14 x i8] c"gs_font_type1\00", align 1
@st_gs_font_type1 = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 848, ptr @.str, ptr null, ptr null, ptr @font_type1_enum_ptrs, ptr @font_type1_reloc_ptrs, ptr @gs_font_finalize }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gs_type1_state\00", align 1
@st_gs_type1_state = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 8400, ptr @.str.1, ptr null, ptr null, ptr @gs_type1_state_enum_ptrs, ptr @gs_type1_state_reloc_ptrs, ptr null }, align 8
@gs_charstring_interpreter = dso_local local_unnamed_addr global [3 x ptr] [ptr @gs_no_charstring_interpret, ptr @gs_no_charstring_interpret, ptr @gs_no_charstring_interpret], align 16
@st_gs_font_base = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define internal ptr @font_type1_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_gs_font_base, i64 0, i32 4), align 8, !tbaa !5
  %8 = add i32 %2, -1
  %9 = tail call ptr %7(ptr noundef %0, i32 noundef %1, i32 noundef %8, ptr noundef %3) #9
  br label %13

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gs_font_type1_s, ptr %0, i64 0, i32 22, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  store ptr %12, ptr %3, align 8, !tbaa !25
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ @ptr_struct_procs, %10 ], [ %9, %6 ]
  ret ptr %14
}

; Function Attrs: nounwind uwtable
define internal void @font_type1_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_gs_font_base, i64 0, i32 5), align 8, !tbaa !26
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9
  %5 = getelementptr inbounds %struct.gs_font_type1_s, ptr %0, i64 0, i32 22, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #9
  store ptr %7, ptr %5, align 8, !tbaa !11
  ret void
}

declare void @gs_font_finalize(ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_type1_encrypt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #2 {
  %5 = load i16, ptr %3, align 2, !tbaa !27
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %22, %7 ], [ %2, %4 ]
  %9 = phi ptr [ %21, %7 ], [ %0, %4 ]
  %10 = phi ptr [ %20, %7 ], [ %1, %4 ]
  %11 = phi i16 [ %19, %7 ], [ %5, %4 ]
  %12 = load i8, ptr %10, align 1, !tbaa !29
  %13 = lshr i16 %11, 8
  %14 = trunc i16 %13 to i8
  %15 = xor i8 %12, %14
  store i8 %15, ptr %9, align 1, !tbaa !29
  %16 = zext i8 %15 to i16
  %17 = add i16 %11, %16
  %18 = mul i16 %17, -12691
  %19 = add i16 %18, 22719
  %20 = getelementptr inbounds i8, ptr %10, i64 1
  %21 = getelementptr inbounds i8, ptr %9, i64 1
  %22 = add i32 %8, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %7, !llvm.loop !30

24:                                               ; preds = %7, %4
  %25 = phi i16 [ %5, %4 ], [ %19, %7 ]
  store i16 %25, ptr %3, align 2, !tbaa !27
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_type1_decrypt(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #2 {
  %5 = load i16, ptr %3, align 2, !tbaa !27
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %4, %7
  %8 = phi i16 [ %20, %7 ], [ %5, %4 ]
  %9 = phi i32 [ %22, %7 ], [ %2, %4 ]
  %10 = phi ptr [ %21, %7 ], [ %0, %4 ]
  %11 = phi ptr [ %12, %7 ], [ %1, %4 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %11, align 1, !tbaa !29
  %14 = zext i8 %13 to i16
  %15 = lshr i16 %8, 8
  %16 = trunc i16 %15 to i8
  %17 = xor i8 %13, %16
  store i8 %17, ptr %10, align 1, !tbaa !29
  %18 = add i16 %8, %14
  %19 = mul i16 %18, -12691
  %20 = add i16 %19, 22719
  %21 = getelementptr inbounds i8, ptr %10, i64 1
  %22 = add i32 %9, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %7, !llvm.loop !32

24:                                               ; preds = %7, %4
  %25 = phi i16 [ %5, %4 ], [ %20, %7 ]
  store i16 %25, ptr %3, align 2, !tbaa !27
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @gs_type1_state_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #4 {
  switch i32 %2, label %5 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %19
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 13
  %7 = load i32, ptr %6, align 8, !tbaa !33
  %8 = add nsw i32 %7, 3
  %9 = icmp ugt i32 %8, %2
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = add i32 %2, -3
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %12, i32 2
  br label %22

14:                                               ; preds = %4
  %15 = load ptr, ptr %0, align 8, !tbaa !43
  br label %22

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  br label %22

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %19, %16, %14, %10
  %23 = phi ptr [ %13, %10 ], [ %15, %14 ], [ %18, %16 ], [ %21, %19 ]
  %24 = phi ptr [ @ptr_const_string_procs, %10 ], [ @ptr_struct_procs, %14 ], [ @ptr_struct_procs, %16 ], [ @ptr_struct_procs, %19 ]
  store ptr %23, ptr %3, align 8, !tbaa !25
  br label %25

25:                                               ; preds = %22, %5
  %26 = phi ptr [ null, %5 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define internal void @gs_type1_state_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %4, ptr noundef %2) #9
  store ptr %5, ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  %8 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %7, ptr noundef %2) #9
  store ptr %8, ptr %6, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #9
  store ptr %11, ptr %9, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 8, !tbaa !33
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %3, %15
  %16 = phi i64 [ %28, %15 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 %16, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  tail call void @gs_reloc_const_string(ptr noundef nonnull %19, ptr noundef %2) #9
  %24 = load ptr, ptr %19, align 8, !tbaa !49
  %25 = shl i64 %23, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds i8, ptr %24, i64 %26
  store ptr %27, ptr %17, align 8, !tbaa !46
  %28 = add nuw nsw i64 %16, 1
  %29 = load i32, ptr %12, align 8, !tbaa !33
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %15, label %32, !llvm.loop !50

32:                                               ; preds = %15, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gs_no_charstring_interpret(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) #5 {
  ret i32 -15
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_type1_interpret(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.gs_font_type1_s, ptr %4, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !51
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [3 x ptr], ptr @gs_charstring_interpreter, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = tail call i32 %9(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #9
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @accum_xy_proc(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 {
  %4 = add nsw i64 %1, 4194304
  %5 = and i64 %4, -8384513
  %6 = icmp eq i64 %5, 0
  %7 = shl i64 %1, 20
  %8 = ashr i64 %7, 32
  br i1 %6, label %18, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !52
  %12 = mul nsw i64 %11, %8
  %13 = and i64 %1, 4095
  %14 = mul nsw i64 %11, %13
  %15 = add nsw i64 %14, 2048
  %16 = ashr i64 %15, 12
  %17 = add nsw i64 %16, %12
  br label %29

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !54
  %21 = mul nsw i64 %20, %8
  %22 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 7
  %23 = load i64, ptr %22, align 8, !tbaa !55
  %24 = add nsw i64 %21, %23
  %25 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !56
  %27 = zext nneg i32 %26 to i64
  %28 = ashr i64 %24, %27
  br label %29

29:                                               ; preds = %18, %9
  %30 = phi i64 [ %17, %9 ], [ %28, %18 ]
  %31 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !57
  %33 = add nsw i64 %32, %30
  store i64 %33, ptr %31, align 8, !tbaa !57
  %34 = add nsw i64 %2, 4194304
  %35 = and i64 %34, -8384513
  %36 = icmp eq i64 %35, 0
  %37 = shl i64 %2, 20
  %38 = ashr i64 %37, 32
  br i1 %36, label %48, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 3, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !58
  %42 = mul nsw i64 %41, %38
  %43 = and i64 %2, 4095
  %44 = mul nsw i64 %41, %43
  %45 = add nsw i64 %44, 2048
  %46 = ashr i64 %45, 12
  %47 = add nsw i64 %46, %42
  br label %59

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !59
  %51 = mul nsw i64 %50, %38
  %52 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 7
  %53 = load i64, ptr %52, align 8, !tbaa !55
  %54 = add nsw i64 %51, %53
  %55 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !56
  %57 = zext nneg i32 %56 to i64
  %58 = ashr i64 %54, %57
  br label %59

59:                                               ; preds = %48, %39
  %60 = phi i64 [ %47, %39 ], [ %58, %48 ]
  %61 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 4, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !60
  %63 = add nsw i64 %62, %60
  store i64 %63, ptr %61, align 8, !tbaa !60
  %64 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !61
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %118, label %67

67:                                               ; preds = %59
  %68 = shl i64 %2, 20
  %69 = ashr i64 %68, 32
  br i1 %36, label %79, label %70

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 2, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !62
  %73 = mul nsw i64 %72, %69
  %74 = and i64 %2, 4095
  %75 = mul nsw i64 %72, %74
  %76 = add nsw i64 %75, 2048
  %77 = ashr i64 %76, 12
  %78 = add nsw i64 %77, %73
  br label %90

79:                                               ; preds = %67
  %80 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !63
  %82 = mul nsw i64 %81, %69
  %83 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 7
  %84 = load i64, ptr %83, align 8, !tbaa !55
  %85 = add nsw i64 %82, %84
  %86 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 5
  %87 = load i32, ptr %86, align 4, !tbaa !56
  %88 = zext nneg i32 %87 to i64
  %89 = ashr i64 %85, %88
  br label %90

90:                                               ; preds = %79, %70
  %91 = phi i64 [ %78, %70 ], [ %89, %79 ]
  %92 = add nsw i64 %91, %33
  store i64 %92, ptr %31, align 8, !tbaa !57
  %93 = shl i64 %1, 20
  %94 = ashr i64 %93, 32
  br i1 %6, label %104, label %95

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 1, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !64
  %98 = mul nsw i64 %97, %94
  %99 = and i64 %1, 4095
  %100 = mul nsw i64 %97, %99
  %101 = add nsw i64 %100, 2048
  %102 = ashr i64 %101, 12
  %103 = add nsw i64 %102, %98
  br label %115

104:                                              ; preds = %90
  %105 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !65
  %107 = mul nsw i64 %106, %94
  %108 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 7
  %109 = load i64, ptr %108, align 8, !tbaa !55
  %110 = add nsw i64 %107, %109
  %111 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 2, i32 5
  %112 = load i32, ptr %111, align 4, !tbaa !56
  %113 = zext nneg i32 %112 to i64
  %114 = ashr i64 %110, %113
  br label %115

115:                                              ; preds = %104, %95
  %116 = phi i64 [ %103, %95 ], [ %114, %104 ]
  %117 = add nsw i64 %116, %63
  store i64 %117, ptr %61, align 8, !tbaa !60
  br label %118

118:                                              ; preds = %115, %59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_type1_interp_init(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #4 {
  store ptr %6, ptr %0, align 8, !tbaa !43
  %8 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  store ptr %1, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 3
  store i32 0, ptr %10, align 8, !tbaa !66
  %11 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 4
  store i32 %5, ptr %11, align 4, !tbaa !67
  %12 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %12, align 8, !tbaa !68
  %13 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 13
  store i32 1, ptr %13, align 8, !tbaa !33
  %14 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12
  store ptr null, ptr %14, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !49
  %16 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 12, i64 0, i32 2, i32 1
  store i32 0, ptr %16, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 27
  store i32 0, ptr %17, align 4, !tbaa !70
  %18 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 14
  store i32 -1, ptr %18, align 4, !tbaa !71
  %19 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 15
  store i32 0, ptr %19, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 16
  store i32 0, ptr %20, align 4, !tbaa !73
  %21 = load i32, ptr %3, align 4, !tbaa !74
  %22 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 0, i32 2
  store i32 %21, ptr %23, align 8, !tbaa !76
  %24 = zext nneg i32 %21 to i64
  %25 = shl i64 2048, %24
  %26 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 0, i32 1
  store i64 %25, ptr %26, align 8, !tbaa !77
  %27 = shl i64 4096, %24
  store i64 %27, ptr %22, align 8, !tbaa !78
  %28 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %3, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !79
  %30 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 1
  %31 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 1, i32 2
  store i32 %29, ptr %31, align 8, !tbaa !80
  %32 = zext nneg i32 %29 to i64
  %33 = shl i64 2048, %32
  %34 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 1, i32 1
  store i64 %33, ptr %34, align 8, !tbaa !81
  %35 = shl i64 4096, %32
  store i64 %35, ptr %30, align 8, !tbaa !82
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_type1_set_lsb(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load double, ptr %1, align 8, !tbaa !83
  %4 = fmul double %3, 4.096000e+03
  %5 = fptosi double %4 to i64
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18
  store i64 %5, ptr %6, align 8, !tbaa !84
  %7 = getelementptr inbounds %struct.gs_point_s, ptr %1, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !85
  %9 = fmul double %8, 4.096000e+03
  %10 = fptosi double %9 to i64
  %11 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !86
  %12 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 15
  store i32 1, ptr %12, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_type1_set_width(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load double, ptr %1, align 8, !tbaa !83
  %4 = fmul double %3, 4.096000e+03
  %5 = fptosi double %4 to i64
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 19
  store i64 %5, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %struct.gs_point_s, ptr %1, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !85
  %9 = fmul double %8, 4.096000e+03
  %10 = fptosi double %9 to i64
  %11 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 19, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !88
  %12 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 16
  store i32 1, ptr %12, align 4, !tbaa !73
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_type1_finish_init(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gs_log2_scale_point_s, align 4
  %4 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 5
  %8 = tail call i32 @gx_matrix_to_fixed_coeff(ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef 11) #9
  %9 = getelementptr inbounds %struct.gs_op1_state_s, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %9, ptr noundef nonnull align 8 dereferenceable(88) %7, i64 88, i1 false), !tbaa.struct !89
  %10 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds %struct.gx_path_s, ptr %11, i64 0, i32 7
  %13 = load i64, ptr %12, align 8, !tbaa !92
  %14 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 9
  store i64 %13, ptr %14, align 8, !tbaa !95
  %15 = getelementptr inbounds %struct.gs_op1_state_s, ptr %1, i64 0, i32 4
  store i64 %13, ptr %15, align 8, !tbaa !57
  %16 = getelementptr inbounds %struct.gx_path_s, ptr %11, i64 0, i32 7, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !96
  %18 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 9, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !97
  %19 = getelementptr inbounds %struct.gs_op1_state_s, ptr %1, i64 0, i32 4, i32 1
  store i64 %17, ptr %19, align 8, !tbaa !60
  %20 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 17
  store i32 0, ptr %20, align 8, !tbaa !98
  %21 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 20
  store i32 -1, ptr %21, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 21
  %23 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  store i32 8, ptr %23, align 8, !tbaa !100
  %24 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 28
  store i32 -1, ptr %24, align 8, !tbaa !101
  %25 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 29
  %26 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 33
  store ptr null, ptr %26, align 8, !tbaa !102
  %27 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 34
  store i32 0, ptr %27, align 8, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  %28 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !76
  store i32 %29, ptr %3, align 4, !tbaa !74
  %30 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 1, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !80
  %32 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %3, i64 0, i32 1
  store i32 %31, ptr %32, align 4, !tbaa !79
  %33 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !66
  %35 = icmp eq i32 %34, 0
  %36 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8
  br i1 %35, label %38, label %37

37:                                               ; preds = %2
  call void @reset_font_hints(ptr noundef nonnull %36, ptr noundef nonnull %3) #9
  br label %41

38:                                               ; preds = %2
  %39 = load ptr, ptr %0, align 8, !tbaa !43
  %40 = getelementptr inbounds %struct.gs_font_type1_s, ptr %39, i64 0, i32 22
  call void @compute_font_hints(ptr noundef nonnull %36, ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef nonnull %40) #9
  br label %41

41:                                               ; preds = %38, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  call void @reset_stem_hints(ptr noundef %0) #9
  %42 = load float, ptr %6, align 8, !tbaa !104
  %43 = call float @llvm.fabs.f32(float %42)
  %44 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 2, i32 3
  %45 = load float, ptr %44, align 4, !tbaa !109
  %46 = call float @llvm.fabs.f32(float %45)
  %47 = fcmp olt float %46, %43
  %48 = select i1 %47, float %46, float %43
  %49 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 2, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !110
  %51 = fcmp oeq float %50, 0.000000e+00
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 2, i32 2
  %54 = load float, ptr %53, align 8, !tbaa !111
  %55 = fcmp oeq float %54, 0.000000e+00
  br i1 %55, label %65, label %56

56:                                               ; preds = %52, %41
  %57 = call float @llvm.fabs.f32(float %50)
  %58 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 2, i32 2
  %59 = load float, ptr %58, align 8, !tbaa !111
  %60 = call float @llvm.fabs.f32(float %59)
  %61 = fcmp olt float %57, %48
  %62 = select i1 %61, float %57, float %48
  %63 = fcmp olt float %60, %62
  %64 = select i1 %63, float %60, float %62
  br label %65

65:                                               ; preds = %56, %52
  %66 = phi float [ %48, %52 ], [ %64, %56 ]
  %67 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 6
  %68 = load float, ptr %67, align 4, !tbaa !112
  %69 = fcmp ogt float %66, %68
  %70 = select i1 %69, float %68, float %66
  %71 = fpext float %70 to double
  %72 = fcmp olt double %71, 2.000000e-01
  %73 = select i1 %72, float 0.000000e+00, float %70
  %74 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 6
  store float %73, ptr %74, align 8, !tbaa !113
  %75 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18
  %76 = load i64, ptr %75, align 8, !tbaa !84
  %77 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !86
  call void @accum_xy_proc(ptr noundef %1, i64 noundef %76, i64 noundef %78)
  %79 = load i64, ptr %15, align 8, !tbaa !57
  %80 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23
  store i64 %79, ptr %80, align 8, !tbaa !114
  %81 = load i64, ptr %19, align 8, !tbaa !60
  %82 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 23, i32 1
  store i64 %81, ptr %82, align 8, !tbaa !115
  %83 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 14
  store i32 1, ptr %83, align 4, !tbaa !71
  ret void
}

declare i32 @gx_matrix_to_fixed_coeff(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @reset_font_hints(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @compute_font_hints(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @reset_stem_hints(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_op1_closepath(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  %3 = getelementptr inbounds %struct.gx_path_s, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.subpath_s, ptr %4, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.segment_s, ptr %8, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !121
  %13 = getelementptr inbounds %struct.subpath_s, ptr %4, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !123
  %15 = sub nsw i64 %12, %14
  %16 = tail call i64 @llvm.abs.i64(i64 %15, i1 true)
  %17 = icmp ult i64 %16, 409
  br i1 %17, label %18, label %41

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.segment_s, ptr %8, i64 0, i32 4, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !124
  %21 = getelementptr inbounds %struct.subpath_s, ptr %4, i64 0, i32 4, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !125
  %23 = sub nsw i64 %20, %22
  %24 = tail call i64 @llvm.abs.i64(i64 %23, i1 true)
  %25 = icmp ult i64 %24, 409
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.segment_s, ptr %8, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !126
  switch i16 %28, label %38 [
    i16 1, label %29
    i16 3, label %31
  ]

29:                                               ; preds = %26
  %30 = tail call i32 @gx_path_pop_close_notes(ptr noundef %2, i32 noundef 0) #9
  br label %43

31:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !127
  %32 = getelementptr inbounds %struct.curve_segment, ptr %8, i64 0, i32 6
  %33 = load i64, ptr %32, align 8, !tbaa !128
  %34 = sub nsw i64 %33, %15
  store i64 %34, ptr %32, align 8, !tbaa !128
  %35 = getelementptr inbounds %struct.curve_segment, ptr %8, i64 0, i32 6, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !130
  %37 = sub nsw i64 %36, %23
  store i64 %37, ptr %35, align 8, !tbaa !130
  br label %38

38:                                               ; preds = %26, %31
  %39 = load ptr, ptr %0, align 8, !tbaa !116
  %40 = tail call i32 @gx_path_close_subpath_notes(ptr noundef %39, i32 noundef 0) #9
  br label %43

41:                                               ; preds = %18, %10, %6, %1
  %42 = tail call i32 @gx_path_close_subpath_notes(ptr noundef %2, i32 noundef 0) #9
  br label %43

43:                                               ; preds = %29, %38, %41
  %44 = phi i32 [ %40, %38 ], [ %30, %29 ], [ %42, %41 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 4
  %48 = load i64, ptr %47, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 4, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !60
  %51 = tail call i32 @gx_path_add_point(ptr noundef %2, i64 noundef %48, i64 noundef %50) #9
  br label %52

52:                                               ; preds = %43, %46
  %53 = phi i32 [ %51, %46 ], [ %44, %43 ]
  ret i32 %53
}

declare i32 @gx_path_pop_close_notes(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_op1_rrcurveto(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #0 {
  %8 = load ptr, ptr %0, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.gx_path_s, ptr %8, i64 0, i32 7
  %10 = load i64, ptr %9, align 8, !tbaa !92
  %11 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !57
  %13 = sub i64 %10, %12
  %14 = getelementptr inbounds %struct.gx_path_s, ptr %8, i64 0, i32 7, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !96
  %16 = getelementptr inbounds %struct.gs_op1_state_s, ptr %0, i64 0, i32 4, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !60
  %18 = sub i64 %15, %17
  tail call void @accum_xy_proc(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2)
  %19 = load i64, ptr %11, align 8, !tbaa !57
  %20 = add nsw i64 %13, %19
  %21 = load i64, ptr %16, align 8, !tbaa !60
  %22 = add nsw i64 %18, %21
  tail call void @accum_xy_proc(ptr noundef nonnull %0, i64 noundef %3, i64 noundef %4)
  %23 = load i64, ptr %11, align 8, !tbaa !57
  %24 = load i64, ptr %16, align 8, !tbaa !60
  tail call void @accum_xy_proc(ptr noundef nonnull %0, i64 noundef %5, i64 noundef %6)
  %25 = load ptr, ptr %0, align 8, !tbaa !116
  %26 = load i64, ptr %11, align 8, !tbaa !57
  %27 = load i64, ptr %16, align 8, !tbaa !60
  %28 = tail call i32 @gx_path_add_curve_notes(ptr noundef %25, i64 noundef %20, i64 noundef %22, i64 noundef %23, i64 noundef %24, i64 noundef %26, i64 noundef %27, i32 noundef 0) #9
  ret i32 %28
}

declare i32 @gx_path_add_curve_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @gs_type1_sbw(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #4 {
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 15
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18
  store i64 %1, ptr %10, align 8, !tbaa !84
  %11 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 18, i32 1
  store i64 %2, ptr %11, align 8, !tbaa !86
  store i32 1, ptr %6, align 8, !tbaa !72
  br label %12

12:                                               ; preds = %9, %5
  %13 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 16
  %14 = load i32, ptr %13, align 4, !tbaa !73
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 19
  store i64 %3, ptr %17, align 8, !tbaa !87
  %18 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 19, i32 1
  store i64 %4, ptr %18, align 8, !tbaa !88
  store i32 1, ptr %13, align 4, !tbaa !73
  br label %19

19:                                               ; preds = %16, %12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_type1_endchar(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gs_fixed_point_s, align 8
  %3 = alloca %struct.gs_fixed_rect_s, align 8
  %4 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 33
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gx_path_s, ptr %7, i64 0, i32 11
  %13 = load i8, ptr %12, align 1, !tbaa !131
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  tail call void @type1_apply_path_hints(ptr noundef %0, i32 noundef 1, ptr noundef %7) #9
  br label %17

17:                                               ; preds = %16, %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #9
  %18 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 2
  %19 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 19
  %20 = load i64, ptr %19, align 8, !tbaa !87
  %21 = sitofp i64 %20 to double
  %22 = fmul double %21, 0x3F30000000000000
  %23 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 19, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !88
  %25 = sitofp i64 %24 to double
  %26 = fmul double %25, 0x3F30000000000000
  %27 = call i32 @gs_point_transform2fixed(ptr noundef nonnull %18, double noundef %22, double noundef %26, ptr noundef nonnull %2) #9
  %28 = load i64, ptr %2, align 8, !tbaa !132
  %29 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %2, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !133
  %31 = call i32 @gx_path_add_point(ptr noundef %7, i64 noundef %28, i64 noundef %30) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #9
  %32 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !76
  %34 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 7, i32 1, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !80
  %36 = sub i32 0, %35
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %39 = call i32 @gx_path_bbox(ptr noundef %7, ptr noundef nonnull %3) #9
  %40 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %3, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !134
  %42 = load i64, ptr %3, align 8, !tbaa !135
  %43 = add i64 %41, 4095
  %44 = sub i64 %43, %42
  %45 = lshr i64 %44, 12
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %3, i64 0, i32 1, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !136
  %49 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %3, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !137
  %51 = add i64 %48, 4095
  %52 = sub i64 %51, %50
  %53 = lshr i64 %52, 12
  %54 = trunc i64 %53 to i32
  %55 = call i32 @llvm.smax.i32(i32 %46, i32 %54)
  %56 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 6
  %57 = load i32, ptr %56, align 8, !tbaa !138
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %38
  %60 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !139
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 8, i32 11
  %65 = load i32, ptr %64, align 4, !tbaa !140
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %38, %59, %63, %67
  %69 = phi i32 [ 10, %67 ], [ 15, %63 ], [ 15, %59 ], [ 15, %38 ]
  %70 = phi i64 [ 204, %67 ], [ 0, %63 ], [ 0, %59 ], [ 0, %38 ]
  %71 = phi i64 [ 819, %67 ], [ 614, %63 ], [ 614, %59 ], [ 614, %38 ]
  %72 = icmp slt i32 %55, %69
  %73 = icmp slt i32 %55, 25
  %74 = select i1 %73, i64 409, i64 %70
  %75 = select i1 %72, i64 %71, i64 %74
  %76 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 7
  %77 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 7, i32 1
  store i64 %75, ptr %77, align 8, !tbaa !141
  store i64 %75, ptr %76, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %80

78:                                               ; preds = %17
  %79 = getelementptr inbounds %struct.gs_imager_state_s, ptr %5, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, i8 0, i64 16, i1 false)
  br label %80

80:                                               ; preds = %78, %68
  %81 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !66
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.gs_type1_state_s, ptr %0, i64 0, i32 6
  %86 = load float, ptr %85, align 8, !tbaa !113
  %87 = fpext float %86 to double
  %88 = call i32 @gs_imager_setflat(ptr noundef %5, double noundef %87) #9
  br label %89

89:                                               ; preds = %84, %80
  ret i32 0
}

declare void @type1_apply_path_hints(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_point_transform2fixed(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_path_bbox(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_imager_setflat(ptr noundef, double noundef) local_unnamed_addr #1

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!5 = !{!6, !10, i64 32}
!6 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!12, !10, i64 376}
!12 = !{!"gs_font_type1_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !13, i64 48, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !14, i64 100, !15, i64 104, !17, i64 176, !17, i64 228, !18, i64 280, !21, i64 312, !7, i64 328, !7, i64 332, !23, i64 336}
!13 = !{!"gs_matrix_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20}
!14 = !{!"float", !8, i64 0}
!15 = !{!"gs_font_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !16, i64 32, !10, i64 48, !10, i64 56, !10, i64 64}
!16 = !{!"gx_xfont_callbacks_s", !10, i64 0, !10, i64 8}
!17 = !{!"gs_font_name_s", !8, i64 0, !7, i64 48}
!18 = !{!"gs_rect_s", !19, i64 0, !19, i64 16}
!19 = !{!"gs_point_s", !20, i64 0, !20, i64 8}
!20 = !{!"double", !8, i64 0}
!21 = !{!"gs_uid_s", !22, i64 0, !10, i64 8}
!22 = !{!"long", !8, i64 0}
!23 = !{!"gs_type1_data_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !7, i64 88, !14, i64 92, !14, i64 96, !24, i64 100, !14, i64 160, !7, i64 164, !24, i64 168, !24, i64 228, !7, i64 272, !24, i64 276, !7, i64 320, !24, i64 324, !24, i64 332, !24, i64 340, !24, i64 392, !24, i64 444}
!24 = !{!"", !7, i64 0, !8, i64 4}
!25 = !{!10, !10, i64 0}
!26 = !{!6, !10, i64 40}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = !{!8, !8, i64 0}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !31}
!33 = !{!34, !7, i64 1640}
!34 = !{!"gs_type1_state_s", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !35, i64 32, !14, i64 120, !37, i64 128, !39, i64 176, !41, i64 880, !8, i64 896, !7, i64 1280, !8, i64 1288, !7, i64 1640, !7, i64 1644, !7, i64 1648, !7, i64 1652, !7, i64 1656, !41, i64 1664, !41, i64 1680, !7, i64 1696, !41, i64 1704, !22, i64 1720, !41, i64 1728, !7, i64 1744, !8, i64 1752, !7, i64 1880, !7, i64 1884, !7, i64 1888, !7, i64 1892, !41, i64 1896, !7, i64 1912, !41, i64 1920, !10, i64 1936, !7, i64 1944, !41, i64 1952, !42, i64 1968, !42, i64 5056, !8, i64 8144}
!35 = !{!"", !36, i64 0, !36, i64 16, !36, i64 32, !36, i64 48, !7, i64 64, !7, i64 68, !7, i64 72, !22, i64 80}
!36 = !{!"", !22, i64 0, !22, i64 8}
!37 = !{!"point_scale_s", !38, i64 0, !38, i64 24}
!38 = !{!"pixel_scale_s", !22, i64 0, !22, i64 8, !7, i64 16}
!39 = !{!"font_hints_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !37, i64 24, !40, i64 72, !40, i64 184, !22, i64 296, !22, i64 304, !7, i64 312, !7, i64 316, !8, i64 320}
!40 = !{!"", !7, i64 0, !8, i64 8}
!41 = !{!"gs_fixed_point_s", !22, i64 0, !22, i64 8}
!42 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 16}
!43 = !{!34, !10, i64 0}
!44 = !{!34, !10, i64 8}
!45 = !{!34, !10, i64 16}
!46 = !{!47, !10, i64 0}
!47 = !{!"", !10, i64 0, !28, i64 8, !48, i64 16}
!48 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!49 = !{!47, !10, i64 16}
!50 = distinct !{!50, !31}
!51 = !{!12, !7, i64 336}
!52 = !{!53, !22, i64 24}
!53 = !{!"gs_op1_state_s", !10, i64 0, !10, i64 8, !35, i64 16, !41, i64 104, !41, i64 120}
!54 = !{!53, !22, i64 16}
!55 = !{!53, !22, i64 96}
!56 = !{!53, !7, i64 84}
!57 = !{!53, !22, i64 120}
!58 = !{!53, !22, i64 72}
!59 = !{!53, !22, i64 64}
!60 = !{!53, !22, i64 128}
!61 = !{!53, !7, i64 80}
!62 = !{!53, !22, i64 56}
!63 = !{!53, !22, i64 48}
!64 = !{!53, !22, i64 40}
!65 = !{!53, !22, i64 32}
!66 = !{!34, !7, i64 24}
!67 = !{!34, !7, i64 28}
!68 = !{!34, !7, i64 1280}
!69 = !{!47, !7, i64 24}
!70 = !{!34, !7, i64 1884}
!71 = !{!34, !7, i64 1644}
!72 = !{!34, !7, i64 1648}
!73 = !{!34, !7, i64 1652}
!74 = !{!75, !7, i64 0}
!75 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!76 = !{!34, !7, i64 144}
!77 = !{!34, !22, i64 136}
!78 = !{!34, !22, i64 128}
!79 = !{!75, !7, i64 4}
!80 = !{!34, !7, i64 168}
!81 = !{!34, !22, i64 160}
!82 = !{!34, !22, i64 152}
!83 = !{!19, !20, i64 0}
!84 = !{!34, !22, i64 1664}
!85 = !{!19, !20, i64 8}
!86 = !{!34, !22, i64 1672}
!87 = !{!34, !22, i64 1680}
!88 = !{!34, !22, i64 1688}
!89 = !{i64 0, i64 8, !90, i64 8, i64 8, !90, i64 16, i64 8, !90, i64 24, i64 8, !90, i64 32, i64 8, !90, i64 40, i64 8, !90, i64 48, i64 8, !90, i64 56, i64 8, !90, i64 64, i64 4, !91, i64 68, i64 4, !91, i64 72, i64 4, !91, i64 80, i64 8, !90}
!90 = !{!22, !22, i64 0}
!91 = !{!7, !7, i64 0}
!92 = !{!93, !22, i64 72}
!93 = !{!"gx_path_s", !10, i64 0, !94, i64 8, !10, i64 40, !10, i64 48, !10, i64 56, !7, i64 64, !7, i64 68, !41, i64 72, !19, i64 88, !19, i64 104, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123}
!94 = !{!"gs_fixed_rect_s", !41, i64 0, !41, i64 16}
!95 = !{!34, !22, i64 880}
!96 = !{!93, !22, i64 80}
!97 = !{!34, !22, i64 888}
!98 = !{!34, !7, i64 1656}
!99 = !{!34, !7, i64 1696}
!100 = !{!34, !7, i64 1880}
!101 = !{!34, !7, i64 1888}
!102 = !{!34, !10, i64 1936}
!103 = !{!34, !7, i64 1944}
!104 = !{!105, !14, i64 80}
!105 = !{!"gs_imager_state_s", !10, i64 0, !106, i64 8, !108, i64 80, !7, i64 128, !28, i64 132, !7, i64 136, !14, i64 140, !41, i64 144, !7, i64 160, !7, i64 164, !10, i64 168, !8, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !8, i64 232, !8, i64 264, !10, i64 296, !10, i64 304, !10, i64 312}
!106 = !{!"gx_line_params_s", !14, i64 0, !7, i64 4, !7, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !107, i64 32}
!107 = !{!"gx_dash_params_s", !10, i64 0, !7, i64 8, !14, i64 12, !7, i64 16, !14, i64 20, !7, i64 24, !7, i64 28, !14, i64 32}
!108 = !{!"gs_matrix_fixed_s", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !22, i64 24, !22, i64 32, !7, i64 40}
!109 = !{!105, !14, i64 92}
!110 = !{!105, !14, i64 84}
!111 = !{!105, !14, i64 88}
!112 = !{!105, !14, i64 140}
!113 = !{!34, !14, i64 120}
!114 = !{!34, !22, i64 1728}
!115 = !{!34, !22, i64 1736}
!116 = !{!53, !10, i64 0}
!117 = !{!93, !10, i64 56}
!118 = !{!119, !10, i64 40}
!119 = !{!"subpath_s", !10, i64 0, !10, i64 8, !28, i64 16, !28, i64 18, !41, i64 24, !10, i64 40, !7, i64 48, !120, i64 56, !8, i64 104}
!120 = !{!"", !10, i64 0, !10, i64 8, !28, i64 16, !28, i64 18, !41, i64 24, !10, i64 40}
!121 = !{!122, !22, i64 24}
!122 = !{!"segment_s", !10, i64 0, !10, i64 8, !28, i64 16, !28, i64 18, !41, i64 24}
!123 = !{!119, !22, i64 24}
!124 = !{!122, !22, i64 32}
!125 = !{!119, !22, i64 32}
!126 = !{!122, !28, i64 16}
!127 = !{i64 0, i64 8, !90, i64 8, i64 8, !90}
!128 = !{!129, !22, i64 56}
!129 = !{!"", !10, i64 0, !10, i64 8, !28, i64 16, !28, i64 18, !41, i64 24, !41, i64 40, !41, i64 56}
!130 = !{!129, !22, i64 64}
!131 = !{!93, !8, i64 121}
!132 = !{!41, !22, i64 0}
!133 = !{!41, !22, i64 8}
!134 = !{!94, !22, i64 16}
!135 = !{!94, !22, i64 0}
!136 = !{!94, !22, i64 24}
!137 = !{!94, !22, i64 8}
!138 = !{!34, !7, i64 248}
!139 = !{!34, !7, i64 360}
!140 = !{!34, !7, i64 492}
!141 = !{!105, !22, i64 152}
!142 = !{!105, !22, i64 144}
