; ModuleID = 'zchar42.c'
source_filename = "zchar42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_base_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gs_point_s = type { double, double }
%struct.gs_uid_s = type { i64, ptr }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_show_enum_s = type { ptr, i32, %struct.gs_const_string_s, float, float, i64, float, float, i32, i32, i32, i32, ptr, i32, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, ptr, %struct.gs_log2_scale_point_s, ptr, ptr, ptr, i32, i64, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, %struct.gs_point_s, i32, %struct.gs_log2_scale_point_s, %struct.gx_font_stack_s, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { ptr, i32 }

@zchar42_op_defs.op_defs_ = internal constant [2 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @ztype42execchar }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [17 x i8] c"4.type42execchar\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zchar42_op_defs() local_unnamed_addr #0 {
  ret ptr @zchar42_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype42execchar(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %5 = call i32 @font_param(ptr noundef nonnull %4, ptr noundef nonnull %2) #4
  %6 = call ptr @op_show_find() #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #4
  %7 = icmp slt i32 %5, 0
  br i1 %7, label %77, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %6, null
  br i1 %9, label %77, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %2, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.gs_font_s, ptr %11, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !9
  switch i32 %13, label %77 [
    i32 42, label %14
    i32 11, label %14
  ]

14:                                               ; preds = %10, %10
  %15 = getelementptr inbounds %struct.gs_font_s, ptr %11, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !17
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @igs, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.gs_font_s, ptr %11, i64 0, i32 14
  %21 = load float, ptr %20, align 4, !tbaa !18
  %22 = fpext float %21 to double
  %23 = call i32 @gs_setlinewidth(ptr noundef %19, double noundef %22) #4
  br label %24

24:                                               ; preds = %18, %14
  %25 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %26 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -3
  %28 = icmp ugt ptr %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 3) #4
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %77

32:                                               ; preds = %29, %24
  %33 = load i16, ptr %0, align 8, !tbaa !25
  %34 = and i16 %33, 15552
  %35 = icmp eq i16 %34, 1216
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @zchar_exec_char_proc(ptr noundef nonnull %0) #4
  br label %77

38:                                               ; preds = %32
  %39 = getelementptr inbounds i8, ptr %0, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !26
  %41 = icmp eq i8 %40, 11
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = call i32 @check_type_failed(ptr noundef nonnull %0) #4
  br label %77

44:                                               ; preds = %38
  %45 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !24
  %46 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = icmp slt i64 %49, 48
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !27
  br label %77

52:                                               ; preds = %44
  %53 = load ptr, ptr %2, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %55 = call i32 @zchar_get_metrics(ptr noundef %53, ptr noundef nonnull %54, ptr noundef nonnull %3) #4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr @igs, align 8, !tbaa !5
  %59 = call i32 @gs_moveto(ptr noundef %58, double noundef 0.000000e+00, double noundef 0.000000e+00) #4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %57
  %62 = icmp eq i32 %55, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %61
  %64 = load ptr, ptr %2, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !26
  %67 = trunc i64 %66 to i32
  %68 = call i32 @gs_type42_get_metrics(ptr noundef %64, i32 noundef %67, ptr noundef nonnull %3) #4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %63, %61
  %71 = load ptr, ptr %2, align 8, !tbaa !5
  %72 = icmp eq i32 %55, 2
  %73 = select i1 %72, ptr %3, ptr null
  %74 = getelementptr inbounds float, ptr %3, i64 2
  %75 = getelementptr inbounds %struct.gs_font_base_s, ptr %71, i64 0, i32 18
  %76 = call i32 @zchar_set_cache(ptr noundef nonnull %0, ptr noundef %71, ptr noundef nonnull %54, ptr noundef %73, ptr noundef nonnull %74, ptr noundef nonnull %75, ptr noundef nonnull @type42_fill, ptr noundef nonnull @type42_stroke) #4
  br label %77

77:                                               ; preds = %63, %57, %52, %8, %10, %1, %29, %70, %51, %42, %36
  %78 = phi i32 [ %37, %36 ], [ -16, %51 ], [ %76, %70 ], [ %43, %42 ], [ %30, %29 ], [ %5, %1 ], [ -21, %10 ], [ -21, %8 ], [ %55, %52 ], [ %59, %57 ], [ %68, %63 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %78
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @font_param(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @op_show_find() local_unnamed_addr #3

declare i32 @gs_setlinewidth(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @zchar_exec_char_proc(ptr noundef) local_unnamed_addr #3

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @zchar_get_metrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_moveto(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @gs_type42_get_metrics(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @zchar_set_cache(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @type42_fill(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %4 = tail call ptr @op_show_find() #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %5 = getelementptr inbounds i8, ptr %0, i64 -47
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 5
  %11 = icmp ugt ptr %10, %0
  br i1 %11, label %56, label %12

12:                                               ; preds = %8
  %13 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %0, %1 ], [ %16, %15 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !26
  %21 = icmp eq i8 %20, 11
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @check_type_failed(ptr noundef %18) #4
  br label %56

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ref_s, ptr %18, i64 -3
  %26 = call i32 @font_param(ptr noundef nonnull %25, ptr noundef nonnull %2) #4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %4, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %2, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !9
  switch i32 %33, label %56 [
    i32 42, label %34
    i32 11, label %34
  ]

34:                                               ; preds = %30, %30
  %35 = getelementptr inbounds %struct.ref_s, ptr %18, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !26
  %37 = trunc i64 %36 to i32
  %38 = load ptr, ptr %4, align 8, !tbaa !29
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %38, i64 0, i32 28
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct.gs_show_enum_s, ptr %4, i64 0, i32 32
  %42 = call i32 @gs_show_in_charpath(ptr noundef nonnull %4) #4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load ptr, ptr %2, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.gs_font_s, ptr %45, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !17
  %48 = call i32 @gs_type42_append(i32 noundef %37, ptr noundef %38, ptr noundef %40, ptr noundef nonnull %41, i32 noundef %44, i32 noundef %47, ptr noundef %45) #4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %34
  %51 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %52 = select i1 %7, i64 -4, i64 -6
  %53 = getelementptr inbounds %struct.ref_s, ptr %51, i64 %52
  store ptr %53, ptr @o_stack, align 8, !tbaa !19
  %54 = load ptr, ptr %4, align 8, !tbaa !29
  %55 = call i32 @gs_fill(ptr noundef %54) #4, !callees !46
  br label %56

56:                                               ; preds = %8, %12, %22, %24, %28, %30, %34, %50
  %57 = phi i32 [ %55, %50 ], [ %23, %22 ], [ -17, %8 ], [ %13, %12 ], [ %26, %24 ], [ -21, %30 ], [ -21, %28 ], [ %48, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define internal i32 @type42_stroke(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #4
  %4 = tail call ptr @op_show_find() #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  %5 = getelementptr inbounds i8, ptr %0, i64 -47
  %6 = load i8, ptr %5, align 1, !tbaa !26
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !28
  %10 = getelementptr inbounds %struct.ref_s, ptr %9, i64 5
  %11 = icmp ugt ptr %10, %0
  br i1 %11, label %56, label %12

12:                                               ; preds = %8
  %13 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %3) #4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %0, %1 ], [ %16, %15 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !26
  %21 = icmp eq i8 %20, 11
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @check_type_failed(ptr noundef %18) #4
  br label %56

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ref_s, ptr %18, i64 -3
  %26 = call i32 @font_param(ptr noundef nonnull %25, ptr noundef nonnull %2) #4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %56, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %4, null
  br i1 %29, label %56, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %2, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.gs_font_s, ptr %31, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !9
  switch i32 %33, label %56 [
    i32 42, label %34
    i32 11, label %34
  ]

34:                                               ; preds = %30, %30
  %35 = getelementptr inbounds %struct.ref_s, ptr %18, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !26
  %37 = trunc i64 %36 to i32
  %38 = load ptr, ptr %4, align 8, !tbaa !29
  %39 = getelementptr inbounds %struct.gs_state_s, ptr %38, i64 0, i32 28
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = getelementptr inbounds %struct.gs_show_enum_s, ptr %4, i64 0, i32 32
  %42 = call i32 @gs_show_in_charpath(ptr noundef nonnull %4) #4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load ptr, ptr %2, align 8, !tbaa !5
  %46 = getelementptr inbounds %struct.gs_font_s, ptr %45, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !17
  %48 = call i32 @gs_type42_append(i32 noundef %37, ptr noundef %38, ptr noundef %40, ptr noundef nonnull %41, i32 noundef %44, i32 noundef %47, ptr noundef %45) #4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %34
  %51 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %52 = select i1 %7, i64 -4, i64 -6
  %53 = getelementptr inbounds %struct.ref_s, ptr %51, i64 %52
  store ptr %53, ptr @o_stack, align 8, !tbaa !19
  %54 = load ptr, ptr %4, align 8, !tbaa !29
  %55 = call i32 @gs_stroke(ptr noundef %54) #4, !callees !46
  br label %56

56:                                               ; preds = %8, %12, %22, %24, %28, %30, %34, %50
  %57 = phi i32 [ %55, %50 ], [ %23, %22 ], [ -17, %8 ], [ %13, %12 ], [ %26, %24 ], [ -21, %30 ], [ -21, %28 ], [ %48, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #4
  ret i32 %57
}

declare i32 @gs_fill(ptr noundef) local_unnamed_addr #3

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_type42_append(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_show_in_charpath(ptr noundef) local_unnamed_addr #3

declare i32 @gs_stroke(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!9 = !{!10, !13, i64 72}
!10 = !{!"gs_font_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !11, i64 48, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !12, i64 100, !14, i64 104, !16, i64 176, !16, i64 228}
!11 = !{!"gs_matrix_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!12 = !{!"float", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!"gs_font_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !15, i64 32, !6, i64 48, !6, i64 56, !6, i64 64}
!15 = !{!"gx_xfont_callbacks_s", !6, i64 0, !6, i64 8}
!16 = !{!"gs_font_name_s", !7, i64 0, !13, i64 48}
!17 = !{!10, !13, i64 96}
!18 = !{!10, !12, i64 100}
!19 = !{!20, !6, i64 0}
!20 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !21, i64 24, !13, i64 40, !13, i64 44, !21, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !21, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !6, i64 120}
!21 = !{!"ref_s", !22, i64 0, !7, i64 8}
!22 = !{!"tas_s", !23, i64 0, !23, i64 2}
!23 = !{!"short", !7, i64 0}
!24 = !{!20, !6, i64 16}
!25 = !{!21, !23, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!20, !13, i64 64}
!28 = !{!20, !6, i64 8}
!29 = !{!30, !6, i64 0}
!30 = !{!"gs_show_enum_s", !6, i64 0, !13, i64 8, !31, i64 16, !12, i64 32, !12, i64 36, !32, i64 40, !12, i64 48, !12, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !6, i64 72, !13, i64 80, !13, i64 84, !33, i64 88, !33, i64 104, !13, i64 120, !13, i64 124, !6, i64 128, !35, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !13, i64 168, !32, i64 176, !32, i64 184, !36, i64 192, !36, i64 208, !6, i64 224, !37, i64 232, !13, i64 248, !35, i64 252, !39, i64 264, !6, i64 368}
!31 = !{!"gs_const_string_s", !6, i64 0, !13, i64 8}
!32 = !{!"long", !7, i64 0}
!33 = !{!"gs_int_rect_s", !34, i64 0, !34, i64 8}
!34 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!35 = !{!"gs_log2_scale_point_s", !13, i64 0, !13, i64 4}
!36 = !{!"gs_fixed_point_s", !32, i64 0, !32, i64 8}
!37 = !{!"gs_point_s", !38, i64 0, !38, i64 8}
!38 = !{!"double", !7, i64 0}
!39 = !{!"gx_font_stack_s", !13, i64 0, !7, i64 8}
!40 = !{!41, !6, i64 392}
!41 = !{!"gs_state_s", !6, i64 0, !42, i64 8, !44, i64 80, !13, i64 128, !23, i64 132, !13, i64 136, !12, i64 140, !36, i64 144, !13, i64 160, !13, i64 164, !6, i64 168, !7, i64 176, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !7, i64 232, !7, i64 264, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !11, i64 336, !13, i64 360, !11, i64 364, !13, i64 388, !6, i64 392, !6, i64 400, !13, i64 408, !13, i64 412, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !44, i64 456, !13, i64 504, !7, i64 508, !13, i64 512, !6, i64 520, !13, i64 528, !6, i64 536, !6, i64 544, !45, i64 552}
!42 = !{!"gx_line_params_s", !12, i64 0, !13, i64 4, !13, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !43, i64 32}
!43 = !{!"gx_dash_params_s", !6, i64 0, !13, i64 8, !12, i64 12, !13, i64 16, !12, i64 20, !13, i64 24, !13, i64 28, !12, i64 32}
!44 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !32, i64 24, !32, i64 32, !13, i64 40}
!45 = !{!"gs_state_client_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!46 = !{ptr @gs_fill, ptr @gs_stroke}
