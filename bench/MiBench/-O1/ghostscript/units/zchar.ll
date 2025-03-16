; ModuleID = 'zchar.c'
source_filename = "zchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon, %union.anon, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.3, %struct.ref_s, %struct.ref_s }
%union.anon = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.2 }
%struct.ref_cie_procs_s = type { %union.anon.0, %union.anon.1, %struct.ref_s }
%union.anon.0 = type { %struct.ref_s }
%union.anon.1 = type { %struct.ref_s }
%union.anon.2 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.3 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_point_s = type { double, double }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f1 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_show_enum_s = type { ptr, i32, %struct.gs_const_string_s, float, float, i64, float, float, i32, i32, i32, i32, ptr, i32, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, ptr, %struct.gs_log2_scale_point_s, ptr, ptr, ptr, i32, i64, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, %struct.gs_point_s, i32, %struct.gs_log2_scale_point_s, %struct.gx_font_stack_s, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { ptr, i32 }

@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external global %struct.ref_stack_s, align 8
@i_null_pagedevice = external local_unnamed_addr global %struct.ref_s, align 8
@zchar_op_defs.op_defs_ = internal constant [16 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zashow }, %struct.op_def { ptr @.str.1, ptr @zawidthshow }, %struct.op_def { ptr @.str.2, ptr @zcharpath }, %struct.op_def { ptr @.str.3, ptr @zcharboxpath }, %struct.op_def { ptr @.str.4, ptr @zkshow }, %struct.op_def { ptr @.str.5, ptr @zsetcachedevice }, %struct.op_def { ptr @.str.6, ptr @zsetcachedevice2 }, %struct.op_def { ptr @.str.7, ptr @zsetcharwidth }, %struct.op_def { ptr @.str.8, ptr @zshow }, %struct.op_def { ptr @.str.9, ptr @zstringwidth }, %struct.op_def { ptr @.str.10, ptr @zwidthshow }, %struct.op_def { ptr @.str.11, ptr @zfontbbox }, %struct.op_def { ptr @.str.12, ptr @finish_show }, %struct.op_def { ptr @.str.13, ptr @finish_stringwidth }, %struct.op_def { ptr @.str.14, ptr @op_show_continue }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"3ashow\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"6awidthshow\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"2charpath\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"2.charboxpath\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"2kshow\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"6setcachedevice\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c":setcachedevice2\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"2setcharwidth\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"1show\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"1stringwidth\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"4widthshow\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"1.fontbbox\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"0%finish_show\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"0%finish_stringwidth\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"0%op_show_continue\00", align 1
@e_stack = external global %struct.ref_stack_s, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str.15 = private unnamed_addr constant [19 x i8] c"op_show_enum_setup\00", align 1
@ref_language_level = external local_unnamed_addr global %struct.ref_s, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@d_stack = external global %struct.ref_stack_s, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"FontBBox\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetcachedevice(ptr noundef %0) #0 {
  %2 = alloca [6 x float], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !5
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !8
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 1
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %44, %1
  %13 = phi i32 [ 0, %1 ], [ %40, %44 ]
  %14 = phi ptr [ %3, %1 ], [ %42, %44 ]
  %15 = phi ptr [ %4, %1 ], [ %46, %44 ]
  %16 = phi i32 [ %11, %1 ], [ %49, %44 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %12
  %19 = add i32 %16, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ref_s, ptr %15, i64 %20
  %22 = add i32 %16, %13
  br label %23

23:                                               ; preds = %34, %18
  %24 = phi i32 [ %35, %34 ], [ %16, %18 ]
  %25 = phi ptr [ %36, %34 ], [ %21, %18 ]
  %26 = phi i32 [ %37, %34 ], [ %13, %18 ]
  %27 = load i16, ptr %25, align 8, !tbaa !16
  %28 = and i16 %27, 16256
  %29 = icmp eq i16 %28, 3712
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.tas_s, ptr %25, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !17
  %33 = icmp eq i16 %32, 1
  br i1 %33, label %50, label %34

34:                                               ; preds = %30, %23
  %35 = add i32 %24, -1
  %36 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -1
  %37 = add i32 %26, 1
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %23, !llvm.loop !18

39:                                               ; preds = %34, %12
  %40 = phi i32 [ %13, %12 ], [ %22, %34 ]
  %41 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ref_stack_block_s, ptr %42, i64 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.ref_stack_block_s, ptr %42, i64 0, i32 1, i32 0, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !20
  %49 = zext i16 %48 to i32
  br label %12, !llvm.loop !22

50:                                               ; preds = %39, %30
  %51 = phi i32 [ %26, %30 ], [ 0, %39 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = add i32 %51, -7
  %55 = zext i32 %54 to i64
  %56 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %55) #8
  %57 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %50, %53
  %60 = phi ptr [ %58, %53 ], [ null, %50 ]
  %61 = call i32 @num_params(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %2) #8
  %62 = icmp eq ptr %60, null
  br i1 %62, label %83, label %63

63:                                               ; preds = %59
  %64 = icmp slt i32 %61, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %63
  %66 = call i32 @gs_show_width_only(ptr noundef nonnull %60) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 @op_show_return_width(ptr noundef %0, i32 noundef 6, ptr noundef nonnull %2), !range !23
  br label %83

70:                                               ; preds = %65
  %71 = load ptr, ptr @igs, align 8, !tbaa !24
  %72 = call i32 @gs_setcachedevice(ptr noundef nonnull %60, ptr noundef %71, ptr noundef nonnull %2) #8
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %76 = getelementptr inbounds %struct.ref_s, ptr %75, i64 -6
  store ptr %76, ptr @o_stack, align 8, !tbaa !15
  %77 = icmp eq i32 %72, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load ptr, ptr @igs, align 8, !tbaa !24
  %80 = getelementptr inbounds %struct.gs_state_s, ptr %79, i64 0, i32 44
  %81 = load ptr, ptr %80, align 8, !tbaa !25
  %82 = getelementptr inbounds %struct.int_gstate_s, ptr %81, i64 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, ptr noundef nonnull align 8 dereferenceable(16) @i_null_pagedevice, i64 16, i1 false), !tbaa.struct !35
  br label %83

83:                                               ; preds = %74, %78, %70, %63, %59, %68
  %84 = phi i32 [ %69, %68 ], [ -21, %59 ], [ %61, %63 ], [ %72, %70 ], [ 0, %78 ], [ 0, %74 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret i32 %84
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @op_show_find() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !5
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !8
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = lshr exact i64 %7, 4
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %42, %0
  %11 = phi i32 [ 0, %0 ], [ %38, %42 ]
  %12 = phi ptr [ %1, %0 ], [ %40, %42 ]
  %13 = phi ptr [ %2, %0 ], [ %44, %42 ]
  %14 = phi i32 [ %9, %0 ], [ %47, %42 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %10
  %17 = add i32 %14, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ref_s, ptr %13, i64 %18
  %20 = add i32 %14, %11
  br label %21

21:                                               ; preds = %32, %16
  %22 = phi i32 [ %33, %32 ], [ %14, %16 ]
  %23 = phi ptr [ %34, %32 ], [ %19, %16 ]
  %24 = phi i32 [ %35, %32 ], [ %11, %16 ]
  %25 = load i16, ptr %23, align 8, !tbaa !16
  %26 = and i16 %25, 16256
  %27 = icmp eq i16 %26, 3712
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tas_s, ptr %23, i64 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !17
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %48, label %32

32:                                               ; preds = %28, %21
  %33 = add i32 %22, -1
  %34 = getelementptr inbounds %struct.ref_s, ptr %23, i64 -1
  %35 = add i32 %24, 1
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %21, !llvm.loop !18

37:                                               ; preds = %32, %10
  %38 = phi i32 [ %11, %10 ], [ %20, %32 ]
  %39 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ref_stack_block_s, ptr %40, i64 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.ref_stack_block_s, ptr %40, i64 0, i32 1, i32 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !20
  %47 = zext i16 %46 to i32
  br label %10, !llvm.loop !22

48:                                               ; preds = %37, %28
  %49 = phi i32 [ %24, %28 ], [ 0, %37 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = add i32 %49, -7
  %53 = zext i32 %52 to i64
  %54 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %53) #8
  %55 = getelementptr inbounds %struct.ref_s, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !5
  br label %57

57:                                               ; preds = %48, %51
  %58 = phi ptr [ %56, %51 ], [ null, %48 ]
  ret ptr %58
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_show_width_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @op_show_return_width(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !5
  %5 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !8
  %6 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.ref_s, ptr %6, i64 1
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 4
  %12 = trunc i64 %11 to i32
  br label %13

13:                                               ; preds = %45, %3
  %14 = phi i32 [ 0, %3 ], [ %41, %45 ]
  %15 = phi ptr [ %4, %3 ], [ %43, %45 ]
  %16 = phi ptr [ %5, %3 ], [ %47, %45 ]
  %17 = phi i32 [ %12, %3 ], [ %50, %45 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %40, label %19

19:                                               ; preds = %13
  %20 = add i32 %17, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %21
  %23 = add i32 %17, %14
  br label %24

24:                                               ; preds = %35, %19
  %25 = phi i32 [ %36, %35 ], [ %17, %19 ]
  %26 = phi ptr [ %37, %35 ], [ %22, %19 ]
  %27 = phi i32 [ %38, %35 ], [ %14, %19 ]
  %28 = load i16, ptr %26, align 8, !tbaa !16
  %29 = and i16 %28, 16256
  %30 = icmp eq i16 %29, 3712
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.tas_s, ptr %26, i64 0, i32 1
  %33 = load i16, ptr %32, align 2, !tbaa !17
  %34 = icmp eq i16 %33, 1
  br i1 %34, label %51, label %35

35:                                               ; preds = %31, %24
  %36 = add i32 %25, -1
  %37 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -1
  %38 = add i32 %27, 1
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %40, label %24, !llvm.loop !18

40:                                               ; preds = %35, %13
  %41 = phi i32 [ %14, %13 ], [ %23, %35 ]
  %42 = getelementptr inbounds %struct.ref_s, ptr %15, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.ref_stack_block_s, ptr %43, i64 0, i32 1, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.ref_stack_block_s, ptr %43, i64 0, i32 1, i32 0, i32 1
  %49 = load i16, ptr %48, align 2, !tbaa !20
  %50 = zext i16 %49 to i32
  br label %13, !llvm.loop !22

51:                                               ; preds = %40, %31
  %52 = phi i32 [ %27, %31 ], [ 0, %40 ]
  %53 = add i32 %52, -7
  %54 = zext i32 %53 to i64
  %55 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %54) #8
  %56 = getelementptr inbounds %struct.ref_s, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = load ptr, ptr @igs, align 8, !tbaa !24
  %59 = load float, ptr %2, align 4, !tbaa !38
  %60 = fpext float %59 to double
  %61 = getelementptr inbounds float, ptr %2, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !38
  %63 = fpext float %62 to double
  %64 = tail call i32 @gs_setcharwidth(ptr noundef %57, ptr noundef %58, double noundef %60, double noundef %63) #8
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %90, label %66

66:                                               ; preds = %51
  %67 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #8
  %68 = getelementptr %struct.ref_s, ptr %55, i64 -3, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !5
  %70 = trunc i64 %69 to i32
  %71 = sub i32 %67, %70
  %72 = icmp ult i32 %71, %1
  br i1 %72, label %90, label %73

73:                                               ; preds = %66
  %74 = getelementptr %struct.ref_s, ptr %55, i64 -4, i32 1
  %75 = load i64, ptr %74, align 8, !tbaa !5
  %76 = trunc i64 %75 to i32
  %77 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #8
  %78 = icmp ult i32 %77, %76
  br i1 %78, label %90, label %79

79:                                               ; preds = %73
  %80 = icmp ugt i32 %77, %76
  br i1 %80, label %84, label %88

81:                                               ; preds = %84
  %82 = add i32 %85, -1
  %83 = icmp ugt i32 %82, %76
  br i1 %83, label %84, label %88, !llvm.loop !39

84:                                               ; preds = %79, %81
  %85 = phi i32 [ %82, %81 ], [ %77, %79 ]
  %86 = tail call i32 @zend(ptr noundef %0) #8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %90, label %81

88:                                               ; preds = %81, %79
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %71) #8
  %89 = add i32 %52, -8
  tail call void @pop_estack(i32 noundef %89) #8
  br label %90

90:                                               ; preds = %84, %73, %66, %51, %88
  %91 = phi i32 [ 14, %88 ], [ %64, %51 ], [ -17, %66 ], [ -4, %73 ], [ %86, %84 ]
  ret i32 %91
}

declare i32 @gs_setcachedevice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetcachedevice2(ptr noundef %0) #0 {
  %2 = alloca [10 x float], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #8
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !5
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !8
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 1
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %44, %1
  %13 = phi i32 [ 0, %1 ], [ %40, %44 ]
  %14 = phi ptr [ %3, %1 ], [ %42, %44 ]
  %15 = phi ptr [ %4, %1 ], [ %46, %44 ]
  %16 = phi i32 [ %11, %1 ], [ %49, %44 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %12
  %19 = add i32 %16, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ref_s, ptr %15, i64 %20
  %22 = add i32 %16, %13
  br label %23

23:                                               ; preds = %34, %18
  %24 = phi i32 [ %35, %34 ], [ %16, %18 ]
  %25 = phi ptr [ %36, %34 ], [ %21, %18 ]
  %26 = phi i32 [ %37, %34 ], [ %13, %18 ]
  %27 = load i16, ptr %25, align 8, !tbaa !16
  %28 = and i16 %27, 16256
  %29 = icmp eq i16 %28, 3712
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.tas_s, ptr %25, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !17
  %33 = icmp eq i16 %32, 1
  br i1 %33, label %50, label %34

34:                                               ; preds = %30, %23
  %35 = add i32 %24, -1
  %36 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -1
  %37 = add i32 %26, 1
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %23, !llvm.loop !18

39:                                               ; preds = %34, %12
  %40 = phi i32 [ %13, %12 ], [ %22, %34 ]
  %41 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ref_stack_block_s, ptr %42, i64 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.ref_stack_block_s, ptr %42, i64 0, i32 1, i32 0, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !20
  %49 = zext i16 %48 to i32
  br label %12, !llvm.loop !22

50:                                               ; preds = %39, %30
  %51 = phi i32 [ %26, %30 ], [ 0, %39 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = add i32 %51, -7
  %55 = zext i32 %54 to i64
  %56 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %55) #8
  %57 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %50, %53
  %60 = phi ptr [ %58, %53 ], [ null, %50 ]
  %61 = call i32 @num_params(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %2) #8
  %62 = icmp eq ptr %60, null
  br i1 %62, label %89, label %63

63:                                               ; preds = %59
  %64 = icmp slt i32 %61, 0
  br i1 %64, label %89, label %65

65:                                               ; preds = %63
  %66 = call i32 @gs_show_width_only(ptr noundef nonnull %60) #8
  %67 = icmp eq i32 %66, 0
  %68 = load ptr, ptr @igs, align 8, !tbaa !24
  br i1 %67, label %77, label %69

69:                                               ; preds = %65
  %70 = call ptr @gs_rootfont(ptr noundef %68) #8
  %71 = getelementptr inbounds %struct.gs_font_s, ptr %70, i64 0, i32 12
  %72 = load i32, ptr %71, align 4, !tbaa !40
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds [10 x float], ptr %2, i64 0, i64 6
  %75 = select i1 %73, ptr %2, ptr %74
  %76 = call i32 @op_show_return_width(ptr noundef %0, i32 noundef 10, ptr noundef nonnull %75), !range !23
  br label %89

77:                                               ; preds = %65
  %78 = call i32 @gs_setcachedevice2(ptr noundef nonnull %60, ptr noundef %68, ptr noundef nonnull %2) #8
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %82 = getelementptr inbounds %struct.ref_s, ptr %81, i64 -10
  store ptr %82, ptr @o_stack, align 8, !tbaa !15
  %83 = icmp eq i32 %78, 1
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load ptr, ptr @igs, align 8, !tbaa !24
  %86 = getelementptr inbounds %struct.gs_state_s, ptr %85, i64 0, i32 44
  %87 = load ptr, ptr %86, align 8, !tbaa !25
  %88 = getelementptr inbounds %struct.int_gstate_s, ptr %87, i64 0, i32 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(16) @i_null_pagedevice, i64 16, i1 false), !tbaa.struct !35
  br label %89

89:                                               ; preds = %80, %84, %77, %63, %59, %69
  %90 = phi i32 [ %76, %69 ], [ -21, %59 ], [ %61, %63 ], [ %78, %77 ], [ 0, %84 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #8
  ret i32 %90
}

declare ptr @gs_rootfont(ptr noundef) local_unnamed_addr #2

declare i32 @gs_setcachedevice2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zchar_op_defs() local_unnamed_addr #4 {
  ret ptr @zchar_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zashow(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %4 = call i32 @num_params(ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %2) #8
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %83, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr %0, align 8, !tbaa !16
  %8 = and i16 %7, 16160
  %9 = icmp eq i16 %8, 4640
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !5
  %13 = icmp eq i8 %12, 18
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %30

16:                                               ; preds = %6
  %17 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %18 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %19 = getelementptr inbounds %struct.ref_s, ptr %18, i64 -10
  %20 = icmp ugt ptr %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %30

24:                                               ; preds = %21, %16
  %25 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %26 = load ptr, ptr @igs, align 8, !tbaa !24
  %27 = call ptr @gs_show_enum_alloc(ptr noundef %25, ptr noundef %26, ptr noundef nonnull @.str.15) #8
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i32 -25, i32 0
  br label %30

30:                                               ; preds = %10, %14, %21, %24
  %31 = phi ptr [ %27, %24 ], [ undef, %21 ], [ undef, %10 ], [ undef, %14 ]
  %32 = phi i32 [ %29, %24 ], [ %22, %21 ], [ -7, %10 ], [ %15, %14 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %83

34:                                               ; preds = %30
  %35 = load ptr, ptr @igs, align 8, !tbaa !24
  %36 = load float, ptr %2, align 4, !tbaa !38
  %37 = fpext float %36 to double
  %38 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !38
  %40 = fpext float %39 to double
  %41 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %44 = load i16, ptr %43, align 2, !tbaa !17
  %45 = zext i16 %44 to i32
  %46 = call i32 @gs_ashow_n_init(ptr noundef %31, ptr noundef %35, double noundef %37, double noundef %40, ptr noundef %42, i32 noundef %45) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %34
  %49 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %49, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  call void %51(ptr noundef %49, ptr noundef %31, ptr noundef nonnull @.str.15) #8
  br label %83

52:                                               ; preds = %34
  %53 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %54 = getelementptr inbounds %struct.ref_s, ptr %53, i64 8
  store ptr %54, ptr @e_stack, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1
  %56 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %56, align 8, !tbaa !5
  store i16 3712, ptr %55, align 8, !tbaa !16
  %57 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1, i32 0, i32 1
  store i16 1, ptr %57, align 2, !tbaa !17
  %58 = getelementptr inbounds %struct.ref_s, ptr %53, i64 7
  store i16 3584, ptr %58, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct.ref_s, ptr %53, i64 6
  %60 = getelementptr inbounds %struct.ref_s, ptr %53, i64 6, i32 1
  store i64 0, ptr %60, align 8, !tbaa !5
  store i16 2816, ptr %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.ref_s, ptr %53, i64 5
  %62 = getelementptr inbounds %struct.ref_s, ptr %53, i64 5, i32 1
  store i64 0, ptr %62, align 8, !tbaa !5
  store i16 2816, ptr %61, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.ref_s, ptr %53, i64 4
  %64 = getelementptr inbounds %struct.ref_s, ptr %53, i64 4, i32 1
  store i64 0, ptr %64, align 8, !tbaa !5
  store i16 2816, ptr %63, align 8, !tbaa !16
  %65 = load ptr, ptr @igs, align 8, !tbaa !24
  %66 = getelementptr inbounds %struct.gs_state_s, ptr %65, i64 0, i32 42
  %67 = load i32, ptr %66, align 8, !tbaa !51
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ref_s, ptr %53, i64 3
  %70 = getelementptr inbounds %struct.ref_s, ptr %53, i64 3, i32 1
  store i64 %68, ptr %70, align 8, !tbaa !5
  store i16 2816, ptr %69, align 8, !tbaa !16
  %71 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2
  %72 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2, i32 1
  store ptr @finish_show, ptr %72, align 8, !tbaa !5
  store i16 3968, ptr %71, align 8, !tbaa !16
  %73 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2, i32 0, i32 1
  store i16 0, ptr %73, align 2, !tbaa !17
  %74 = getelementptr inbounds %struct.ref_s, ptr %53, i64 8, i32 1
  store ptr %31, ptr %74, align 8, !tbaa !5
  %75 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %76 = trunc i32 %75 to i16
  %77 = add i16 %76, 2048
  store i16 %77, ptr %54, align 8, !tbaa !16
  %78 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %79 = getelementptr inbounds %struct.ref_s, ptr %53, i64 8, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = call i32 @gs_show_next(ptr noundef %80) #8
  %82 = call i32 @op_show_continue_dispatch(ptr noundef nonnull %78, i32 noundef %81)
  br label %83

83:                                               ; preds = %1, %30, %52, %48
  %84 = phi i32 [ %46, %48 ], [ %82, %52 ], [ %4, %1 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define internal i32 @zawidthshow(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  %3 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = getelementptr inbounds i8, ptr %0, i64 -47
  %5 = load i8, ptr %4, align 1, !tbaa !5
  %6 = icmp eq i8 %5, 11
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %9 = tail call i32 @check_type_failed(ptr noundef nonnull %8) #8
  br label %102

10:                                               ; preds = %1
  %11 = getelementptr %struct.ref_s, ptr %0, i64 -3, i32 1
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -4
  %13 = call i32 @num_params(ptr noundef nonnull %12, i32 noundef 2, ptr noundef nonnull %2) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %102, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %17 = call i32 @num_params(ptr noundef nonnull %16, i32 noundef 2, ptr noundef nonnull %3) #8
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %102, label %19

19:                                               ; preds = %15
  %20 = load i16, ptr %0, align 8, !tbaa !16
  %21 = and i16 %20, 16160
  %22 = icmp eq i16 %21, 4640
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, ptr %0, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 18
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %43

29:                                               ; preds = %19
  %30 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %31 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 -10
  %33 = icmp ugt ptr %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %43

37:                                               ; preds = %34, %29
  %38 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %39 = load ptr, ptr @igs, align 8, !tbaa !24
  %40 = call ptr @gs_show_enum_alloc(ptr noundef %38, ptr noundef %39, ptr noundef nonnull @.str.15) #8
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, i32 -25, i32 0
  br label %43

43:                                               ; preds = %23, %27, %34, %37
  %44 = phi ptr [ %40, %37 ], [ undef, %34 ], [ undef, %23 ], [ undef, %27 ]
  %45 = phi i32 [ %42, %37 ], [ %35, %34 ], [ -7, %23 ], [ %28, %27 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %43
  %48 = load ptr, ptr @igs, align 8, !tbaa !24
  %49 = load float, ptr %2, align 4, !tbaa !38
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !38
  %53 = fpext float %52 to double
  %54 = load i64, ptr %11, align 8, !tbaa !5
  %55 = load float, ptr %3, align 4, !tbaa !38
  %56 = fpext float %55 to double
  %57 = getelementptr inbounds [2 x float], ptr %3, i64 0, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !38
  %59 = fpext float %58 to double
  %60 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %63 = load i16, ptr %62, align 2, !tbaa !17
  %64 = zext i16 %63 to i32
  %65 = call i32 @gs_awidthshow_n_init(ptr noundef %44, ptr noundef %48, double noundef %50, double noundef %53, i64 noundef %54, double noundef %56, double noundef %59, ptr noundef %61, i32 noundef %64) #8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %47
  %68 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %69 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %68, i64 0, i32 11
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  call void %70(ptr noundef %68, ptr noundef %44, ptr noundef nonnull @.str.15) #8
  br label %102

71:                                               ; preds = %47
  %72 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %73 = getelementptr inbounds %struct.ref_s, ptr %72, i64 8
  store ptr %73, ptr @e_stack, align 8, !tbaa !15
  %74 = getelementptr inbounds %struct.ref_s, ptr %72, i64 1
  %75 = getelementptr inbounds %struct.ref_s, ptr %72, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %75, align 8, !tbaa !5
  store i16 3712, ptr %74, align 8, !tbaa !16
  %76 = getelementptr inbounds %struct.ref_s, ptr %72, i64 1, i32 0, i32 1
  store i16 1, ptr %76, align 2, !tbaa !17
  %77 = getelementptr inbounds %struct.ref_s, ptr %72, i64 7
  store i16 3584, ptr %77, align 8, !tbaa !16
  %78 = getelementptr inbounds %struct.ref_s, ptr %72, i64 6
  %79 = getelementptr inbounds %struct.ref_s, ptr %72, i64 6, i32 1
  store i64 0, ptr %79, align 8, !tbaa !5
  store i16 2816, ptr %78, align 8, !tbaa !16
  %80 = getelementptr inbounds %struct.ref_s, ptr %72, i64 5
  %81 = getelementptr inbounds %struct.ref_s, ptr %72, i64 5, i32 1
  store i64 0, ptr %81, align 8, !tbaa !5
  store i16 2816, ptr %80, align 8, !tbaa !16
  %82 = getelementptr inbounds %struct.ref_s, ptr %72, i64 4
  %83 = getelementptr inbounds %struct.ref_s, ptr %72, i64 4, i32 1
  store i64 0, ptr %83, align 8, !tbaa !5
  store i16 2816, ptr %82, align 8, !tbaa !16
  %84 = load ptr, ptr @igs, align 8, !tbaa !24
  %85 = getelementptr inbounds %struct.gs_state_s, ptr %84, i64 0, i32 42
  %86 = load i32, ptr %85, align 8, !tbaa !51
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ref_s, ptr %72, i64 3
  %89 = getelementptr inbounds %struct.ref_s, ptr %72, i64 3, i32 1
  store i64 %87, ptr %89, align 8, !tbaa !5
  store i16 2816, ptr %88, align 8, !tbaa !16
  %90 = getelementptr inbounds %struct.ref_s, ptr %72, i64 2
  %91 = getelementptr inbounds %struct.ref_s, ptr %72, i64 2, i32 1
  store ptr @finish_show, ptr %91, align 8, !tbaa !5
  store i16 3968, ptr %90, align 8, !tbaa !16
  %92 = getelementptr inbounds %struct.ref_s, ptr %72, i64 2, i32 0, i32 1
  store i16 0, ptr %92, align 2, !tbaa !17
  %93 = getelementptr inbounds %struct.ref_s, ptr %72, i64 8, i32 1
  store ptr %44, ptr %93, align 8, !tbaa !5
  %94 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %95 = trunc i32 %94 to i16
  %96 = add i16 %95, 2048
  store i16 %96, ptr %73, align 8, !tbaa !16
  %97 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -6
  %98 = getelementptr inbounds %struct.ref_s, ptr %72, i64 8, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = call i32 @gs_show_next(ptr noundef %99) #8
  %101 = call i32 @op_show_continue_dispatch(ptr noundef nonnull %97, i32 noundef %100)
  br label %102

102:                                              ; preds = %10, %15, %43, %71, %67, %7
  %103 = phi i32 [ %65, %67 ], [ %101, %71 ], [ %9, %7 ], [ %13, %10 ], [ %17, %15 ], [ %45, %43 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal i32 @zcharpath(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %81

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %9 = load i16, ptr %8, align 8, !tbaa !16
  %10 = and i16 %9, 16160
  %11 = icmp eq i16 %10, 4640
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %0, i64 -15
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 18
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @check_type_failed(ptr noundef nonnull %8) #8
  br label %32

18:                                               ; preds = %7
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -10
  %22 = icmp ugt ptr %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %18
  %27 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %28 = load ptr, ptr @igs, align 8, !tbaa !24
  %29 = tail call ptr @gs_show_enum_alloc(ptr noundef %27, ptr noundef %28, ptr noundef nonnull @.str.15) #8
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 -25, i32 0
  br label %32

32:                                               ; preds = %26, %23, %16, %12
  %33 = phi ptr [ %29, %26 ], [ undef, %23 ], [ undef, %12 ], [ undef, %16 ]
  %34 = phi i32 [ %31, %26 ], [ %24, %23 ], [ -7, %12 ], [ %17, %16 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = load ptr, ptr @igs, align 8, !tbaa !24
  %38 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !17
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %44 = load i16, ptr %43, align 8, !tbaa !5
  %45 = zext i16 %44 to i32
  %46 = tail call i32 @gs_charpath_n_init(ptr noundef %33, ptr noundef %37, ptr noundef %39, i32 noundef %42, i32 noundef %45) #8, !callees !53
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %49, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  tail call void %51(ptr noundef %49, ptr noundef %33, ptr noundef nonnull @.str.15) #8
  br label %81

52:                                               ; preds = %36
  %53 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %54 = getelementptr inbounds %struct.ref_s, ptr %53, i64 8
  store ptr %54, ptr @e_stack, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1
  %56 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %56, align 8, !tbaa !5
  store i16 3712, ptr %55, align 8, !tbaa !16
  %57 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1, i32 0, i32 1
  store i16 1, ptr %57, align 2, !tbaa !17
  %58 = getelementptr inbounds %struct.ref_s, ptr %53, i64 7
  store i16 3584, ptr %58, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct.ref_s, ptr %53, i64 6
  %60 = getelementptr inbounds %struct.ref_s, ptr %53, i64 6, i32 1
  store i64 0, ptr %60, align 8, !tbaa !5
  store i16 2816, ptr %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.ref_s, ptr %53, i64 5
  %62 = getelementptr inbounds %struct.ref_s, ptr %53, i64 5, i32 1
  store i64 0, ptr %62, align 8, !tbaa !5
  store i16 2816, ptr %61, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.ref_s, ptr %53, i64 4
  %64 = getelementptr inbounds %struct.ref_s, ptr %53, i64 4, i32 1
  store i64 0, ptr %64, align 8, !tbaa !5
  store i16 2816, ptr %63, align 8, !tbaa !16
  %65 = load ptr, ptr @igs, align 8, !tbaa !24
  %66 = getelementptr inbounds %struct.gs_state_s, ptr %65, i64 0, i32 42
  %67 = load i32, ptr %66, align 8, !tbaa !51
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ref_s, ptr %53, i64 3
  %70 = getelementptr inbounds %struct.ref_s, ptr %53, i64 3, i32 1
  store i64 %68, ptr %70, align 8, !tbaa !5
  store i16 2816, ptr %69, align 8, !tbaa !16
  %71 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2
  %72 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2, i32 1
  store ptr @finish_show, ptr %72, align 8, !tbaa !5
  store i16 3968, ptr %71, align 8, !tbaa !16
  %73 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2, i32 0, i32 1
  store i16 0, ptr %73, align 2, !tbaa !17
  %74 = getelementptr inbounds %struct.ref_s, ptr %53, i64 8, i32 1
  store ptr %33, ptr %74, align 8, !tbaa !5
  %75 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %76 = trunc i32 %75 to i16
  %77 = add i16 %76, 2048
  store i16 %77, ptr %54, align 8, !tbaa !16
  %78 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %79 = tail call i32 @gs_show_next(ptr noundef %33) #8
  %80 = tail call i32 @op_show_continue_dispatch(ptr noundef nonnull %78, i32 noundef %79)
  br label %81

81:                                               ; preds = %5, %32, %48, %52
  %82 = phi i32 [ %46, %48 ], [ %80, %52 ], [ %6, %5 ], [ %34, %32 ]
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @zcharboxpath(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %81

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %9 = load i16, ptr %8, align 8, !tbaa !16
  %10 = and i16 %9, 16160
  %11 = icmp eq i16 %10, 4640
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds i8, ptr %0, i64 -15
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 18
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @check_type_failed(ptr noundef nonnull %8) #8
  br label %32

18:                                               ; preds = %7
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -10
  %22 = icmp ugt ptr %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %18
  %27 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %28 = load ptr, ptr @igs, align 8, !tbaa !24
  %29 = tail call ptr @gs_show_enum_alloc(ptr noundef %27, ptr noundef %28, ptr noundef nonnull @.str.15) #8
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 -25, i32 0
  br label %32

32:                                               ; preds = %26, %23, %16, %12
  %33 = phi ptr [ %29, %26 ], [ undef, %23 ], [ undef, %12 ], [ undef, %16 ]
  %34 = phi i32 [ %31, %26 ], [ %24, %23 ], [ -7, %12 ], [ %17, %16 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = load ptr, ptr @igs, align 8, !tbaa !24
  %38 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !17
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %44 = load i16, ptr %43, align 8, !tbaa !5
  %45 = zext i16 %44 to i32
  %46 = tail call i32 @gs_charboxpath_n_init(ptr noundef %33, ptr noundef %37, ptr noundef %39, i32 noundef %42, i32 noundef %45) #8, !callees !53
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %49, i64 0, i32 11
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  tail call void %51(ptr noundef %49, ptr noundef %33, ptr noundef nonnull @.str.15) #8
  br label %81

52:                                               ; preds = %36
  %53 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %54 = getelementptr inbounds %struct.ref_s, ptr %53, i64 8
  store ptr %54, ptr @e_stack, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1
  %56 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %56, align 8, !tbaa !5
  store i16 3712, ptr %55, align 8, !tbaa !16
  %57 = getelementptr inbounds %struct.ref_s, ptr %53, i64 1, i32 0, i32 1
  store i16 1, ptr %57, align 2, !tbaa !17
  %58 = getelementptr inbounds %struct.ref_s, ptr %53, i64 7
  store i16 3584, ptr %58, align 8, !tbaa !16
  %59 = getelementptr inbounds %struct.ref_s, ptr %53, i64 6
  %60 = getelementptr inbounds %struct.ref_s, ptr %53, i64 6, i32 1
  store i64 0, ptr %60, align 8, !tbaa !5
  store i16 2816, ptr %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.ref_s, ptr %53, i64 5
  %62 = getelementptr inbounds %struct.ref_s, ptr %53, i64 5, i32 1
  store i64 0, ptr %62, align 8, !tbaa !5
  store i16 2816, ptr %61, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.ref_s, ptr %53, i64 4
  %64 = getelementptr inbounds %struct.ref_s, ptr %53, i64 4, i32 1
  store i64 0, ptr %64, align 8, !tbaa !5
  store i16 2816, ptr %63, align 8, !tbaa !16
  %65 = load ptr, ptr @igs, align 8, !tbaa !24
  %66 = getelementptr inbounds %struct.gs_state_s, ptr %65, i64 0, i32 42
  %67 = load i32, ptr %66, align 8, !tbaa !51
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ref_s, ptr %53, i64 3
  %70 = getelementptr inbounds %struct.ref_s, ptr %53, i64 3, i32 1
  store i64 %68, ptr %70, align 8, !tbaa !5
  store i16 2816, ptr %69, align 8, !tbaa !16
  %71 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2
  %72 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2, i32 1
  store ptr @finish_show, ptr %72, align 8, !tbaa !5
  store i16 3968, ptr %71, align 8, !tbaa !16
  %73 = getelementptr inbounds %struct.ref_s, ptr %53, i64 2, i32 0, i32 1
  store i16 0, ptr %73, align 2, !tbaa !17
  %74 = getelementptr inbounds %struct.ref_s, ptr %53, i64 8, i32 1
  store ptr %33, ptr %74, align 8, !tbaa !5
  %75 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %76 = trunc i32 %75 to i16
  %77 = add i16 %76, 2048
  store i16 %77, ptr %54, align 8, !tbaa !16
  %78 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %79 = tail call i32 @gs_show_next(ptr noundef %33) #8
  %80 = tail call i32 @op_show_continue_dispatch(ptr noundef nonnull %78, i32 noundef %79)
  br label %81

81:                                               ; preds = %5, %32, %48, %52
  %82 = phi i32 [ %46, %48 ], [ %80, %52 ], [ %6, %5 ], [ %34, %32 ]
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @zkshow(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load i16, ptr %2, align 8, !tbaa !16
  %4 = and i16 %3, 15552
  %5 = icmp eq i16 %4, 1216
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_proc_failed(ptr noundef nonnull %2) #8
  br label %81

8:                                                ; preds = %1
  %9 = load i16, ptr %0, align 8, !tbaa !16
  %10 = and i16 %9, 16160
  %11 = icmp eq i16 %10, 4640
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %0, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %15 = icmp eq i8 %14, 18
  br i1 %15, label %32, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %32

18:                                               ; preds = %8
  %19 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -10
  %22 = icmp ugt ptr %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23, %18
  %27 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %28 = load ptr, ptr @igs, align 8, !tbaa !24
  %29 = tail call ptr @gs_show_enum_alloc(ptr noundef %27, ptr noundef %28, ptr noundef nonnull @.str.15) #8
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 -25, i32 0
  br label %32

32:                                               ; preds = %12, %16, %23, %26
  %33 = phi ptr [ %29, %26 ], [ undef, %23 ], [ undef, %12 ], [ undef, %16 ]
  %34 = phi i32 [ %31, %26 ], [ %24, %23 ], [ -7, %12 ], [ %17, %16 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = load ptr, ptr @igs, align 8, !tbaa !24
  %38 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %41 = load i16, ptr %40, align 2, !tbaa !17
  %42 = zext i16 %41 to i32
  %43 = tail call i32 @gs_kshow_n_init(ptr noundef %33, ptr noundef %37, ptr noundef %39, i32 noundef %42) #8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %47 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %46, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  tail call void %48(ptr noundef %46, ptr noundef %33, ptr noundef nonnull @.str.15) #8
  br label %81

49:                                               ; preds = %36
  %50 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %51 = getelementptr inbounds %struct.ref_s, ptr %50, i64 8
  store ptr %51, ptr @e_stack, align 8, !tbaa !15
  %52 = getelementptr inbounds %struct.ref_s, ptr %50, i64 1
  %53 = getelementptr inbounds %struct.ref_s, ptr %50, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %53, align 8, !tbaa !5
  store i16 3712, ptr %52, align 8, !tbaa !16
  %54 = getelementptr inbounds %struct.ref_s, ptr %50, i64 1, i32 0, i32 1
  store i16 1, ptr %54, align 2, !tbaa !17
  %55 = getelementptr inbounds %struct.ref_s, ptr %50, i64 7
  store i16 3584, ptr %55, align 8, !tbaa !16
  %56 = getelementptr inbounds %struct.ref_s, ptr %50, i64 6
  %57 = getelementptr inbounds %struct.ref_s, ptr %50, i64 6, i32 1
  store i64 0, ptr %57, align 8, !tbaa !5
  store i16 2816, ptr %56, align 8, !tbaa !16
  %58 = getelementptr inbounds %struct.ref_s, ptr %50, i64 5
  %59 = getelementptr inbounds %struct.ref_s, ptr %50, i64 5, i32 1
  store i64 0, ptr %59, align 8, !tbaa !5
  store i16 2816, ptr %58, align 8, !tbaa !16
  %60 = getelementptr inbounds %struct.ref_s, ptr %50, i64 4
  %61 = getelementptr inbounds %struct.ref_s, ptr %50, i64 4, i32 1
  store i64 0, ptr %61, align 8, !tbaa !5
  store i16 2816, ptr %60, align 8, !tbaa !16
  %62 = load ptr, ptr @igs, align 8, !tbaa !24
  %63 = getelementptr inbounds %struct.gs_state_s, ptr %62, i64 0, i32 42
  %64 = load i32, ptr %63, align 8, !tbaa !51
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ref_s, ptr %50, i64 3
  %67 = getelementptr inbounds %struct.ref_s, ptr %50, i64 3, i32 1
  store i64 %65, ptr %67, align 8, !tbaa !5
  store i16 2816, ptr %66, align 8, !tbaa !16
  %68 = getelementptr inbounds %struct.ref_s, ptr %50, i64 2
  %69 = getelementptr inbounds %struct.ref_s, ptr %50, i64 2, i32 1
  store ptr @finish_show, ptr %69, align 8, !tbaa !5
  store i16 3968, ptr %68, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.ref_s, ptr %50, i64 2, i32 0, i32 1
  store i16 0, ptr %70, align 2, !tbaa !17
  %71 = getelementptr inbounds %struct.ref_s, ptr %50, i64 8, i32 1
  store ptr %33, ptr %71, align 8, !tbaa !5
  %72 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %73 = trunc i32 %72 to i16
  %74 = add i16 %73, 2048
  store i16 %74, ptr %51, align 8, !tbaa !16
  %75 = getelementptr inbounds %struct.ref_s, ptr %50, i64 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %75, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !35
  %76 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %77 = getelementptr inbounds %struct.ref_s, ptr %50, i64 8, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = tail call i32 @gs_show_next(ptr noundef %78) #8
  %80 = tail call i32 @op_show_continue_dispatch(ptr noundef nonnull %76, i32 noundef %79)
  br label %81

81:                                               ; preds = %32, %49, %45, %6
  %82 = phi i32 [ %43, %45 ], [ %80, %49 ], [ %7, %6 ], [ %34, %32 ]
  ret i32 %82
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcharwidth(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !5
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !8
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 1
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  br label %12

12:                                               ; preds = %44, %1
  %13 = phi i32 [ 0, %1 ], [ %40, %44 ]
  %14 = phi ptr [ %3, %1 ], [ %42, %44 ]
  %15 = phi ptr [ %4, %1 ], [ %46, %44 ]
  %16 = phi i32 [ %11, %1 ], [ %49, %44 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %12
  %19 = add i32 %16, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ref_s, ptr %15, i64 %20
  %22 = add i32 %16, %13
  br label %23

23:                                               ; preds = %34, %18
  %24 = phi i32 [ %35, %34 ], [ %16, %18 ]
  %25 = phi ptr [ %36, %34 ], [ %21, %18 ]
  %26 = phi i32 [ %37, %34 ], [ %13, %18 ]
  %27 = load i16, ptr %25, align 8, !tbaa !16
  %28 = and i16 %27, 16256
  %29 = icmp eq i16 %28, 3712
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.tas_s, ptr %25, i64 0, i32 1
  %32 = load i16, ptr %31, align 2, !tbaa !17
  %33 = icmp eq i16 %32, 1
  br i1 %33, label %50, label %34

34:                                               ; preds = %30, %23
  %35 = add i32 %24, -1
  %36 = getelementptr inbounds %struct.ref_s, ptr %25, i64 -1
  %37 = add i32 %26, 1
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %23, !llvm.loop !18

39:                                               ; preds = %34, %12
  %40 = phi i32 [ %13, %12 ], [ %22, %34 ]
  %41 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.ref_stack_block_s, ptr %42, i64 0, i32 1, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = getelementptr inbounds %struct.ref_stack_block_s, ptr %42, i64 0, i32 1, i32 0, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !20
  %49 = zext i16 %48 to i32
  br label %12, !llvm.loop !22

50:                                               ; preds = %39, %30
  %51 = phi i32 [ %26, %30 ], [ 0, %39 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = add i32 %51, -7
  %55 = zext i32 %54 to i64
  %56 = tail call ptr @ref_stack_index(ptr noundef nonnull @e_stack, i64 noundef %55) #8
  %57 = getelementptr inbounds %struct.ref_s, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  br label %59

59:                                               ; preds = %50, %53
  %60 = phi ptr [ %58, %53 ], [ null, %50 ]
  %61 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2) #8
  %62 = icmp eq ptr %60, null
  br i1 %62, label %82, label %63

63:                                               ; preds = %59
  %64 = icmp slt i32 %61, 0
  br i1 %64, label %82, label %65

65:                                               ; preds = %63
  %66 = call i32 @gs_show_width_only(ptr noundef nonnull %60) #8
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = call i32 @op_show_return_width(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %2), !range !23
  br label %82

70:                                               ; preds = %65
  %71 = load ptr, ptr @igs, align 8, !tbaa !24
  %72 = load float, ptr %2, align 4, !tbaa !38
  %73 = fpext float %72 to double
  %74 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !38
  %76 = fpext float %75 to double
  %77 = call i32 @gs_setcharwidth(ptr noundef nonnull %60, ptr noundef %71, double noundef %73, double noundef %76) #8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %70
  %80 = load ptr, ptr @o_stack, align 8, !tbaa !15
  %81 = getelementptr inbounds %struct.ref_s, ptr %80, i64 -2
  store ptr %81, ptr @o_stack, align 8, !tbaa !15
  br label %82

82:                                               ; preds = %70, %63, %59, %79, %68
  %83 = phi i32 [ %69, %68 ], [ 0, %79 ], [ -21, %59 ], [ %61, %63 ], [ %77, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @zshow(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !16
  %3 = and i16 %2, 16160
  %4 = icmp eq i16 %3, 4640
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 18
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %25

11:                                               ; preds = %1
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %13 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 -10
  %15 = icmp ugt ptr %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %11
  %20 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %21 = load ptr, ptr @igs, align 8, !tbaa !24
  %22 = tail call ptr @gs_show_enum_alloc(ptr noundef %20, ptr noundef %21, ptr noundef nonnull @.str.15) #8
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i32 -25, i32 0
  br label %25

25:                                               ; preds = %5, %9, %16, %19
  %26 = phi ptr [ %22, %19 ], [ undef, %16 ], [ undef, %5 ], [ undef, %9 ]
  %27 = phi i32 [ %24, %19 ], [ %17, %16 ], [ -7, %5 ], [ %10, %9 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load ptr, ptr @igs, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !17
  %35 = zext i16 %34 to i32
  %36 = tail call i32 @gs_show_n_init(ptr noundef %26, ptr noundef %30, ptr noundef %32, i32 noundef %35) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %39, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  tail call void %41(ptr noundef %39, ptr noundef %26, ptr noundef nonnull @.str.15) #8
  br label %73

42:                                               ; preds = %29
  %43 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.ref_s, ptr %43, i64 8
  store ptr %44, ptr @e_stack, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1
  %46 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %46, align 8, !tbaa !5
  store i16 3712, ptr %45, align 8, !tbaa !16
  %47 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1, i32 0, i32 1
  store i16 1, ptr %47, align 2, !tbaa !17
  %48 = getelementptr inbounds %struct.ref_s, ptr %43, i64 7
  store i16 3584, ptr %48, align 8, !tbaa !16
  %49 = getelementptr inbounds %struct.ref_s, ptr %43, i64 6
  %50 = getelementptr inbounds %struct.ref_s, ptr %43, i64 6, i32 1
  store i64 0, ptr %50, align 8, !tbaa !5
  store i16 2816, ptr %49, align 8, !tbaa !16
  %51 = getelementptr inbounds %struct.ref_s, ptr %43, i64 5
  %52 = getelementptr inbounds %struct.ref_s, ptr %43, i64 5, i32 1
  store i64 0, ptr %52, align 8, !tbaa !5
  store i16 2816, ptr %51, align 8, !tbaa !16
  %53 = getelementptr inbounds %struct.ref_s, ptr %43, i64 4
  %54 = getelementptr inbounds %struct.ref_s, ptr %43, i64 4, i32 1
  store i64 0, ptr %54, align 8, !tbaa !5
  store i16 2816, ptr %53, align 8, !tbaa !16
  %55 = load ptr, ptr @igs, align 8, !tbaa !24
  %56 = getelementptr inbounds %struct.gs_state_s, ptr %55, i64 0, i32 42
  %57 = load i32, ptr %56, align 8, !tbaa !51
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ref_s, ptr %43, i64 3
  %60 = getelementptr inbounds %struct.ref_s, ptr %43, i64 3, i32 1
  store i64 %58, ptr %60, align 8, !tbaa !5
  store i16 2816, ptr %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.ref_s, ptr %43, i64 2
  %62 = getelementptr inbounds %struct.ref_s, ptr %43, i64 2, i32 1
  store ptr @finish_show, ptr %62, align 8, !tbaa !5
  store i16 3968, ptr %61, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.ref_s, ptr %43, i64 2, i32 0, i32 1
  store i16 0, ptr %63, align 2, !tbaa !17
  %64 = getelementptr inbounds %struct.ref_s, ptr %43, i64 8, i32 1
  store ptr %26, ptr %64, align 8, !tbaa !5
  %65 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %66 = trunc i32 %65 to i16
  %67 = add i16 %66, 2048
  store i16 %67, ptr %44, align 8, !tbaa !16
  %68 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %69 = getelementptr inbounds %struct.ref_s, ptr %43, i64 8, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = tail call i32 @gs_show_next(ptr noundef %70) #8
  %72 = tail call i32 @op_show_continue_dispatch(ptr noundef nonnull %68, i32 noundef %71)
  br label %73

73:                                               ; preds = %25, %42, %38
  %74 = phi i32 [ %36, %38 ], [ %72, %42 ], [ %27, %25 ]
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @zstringwidth(ptr noundef %0) #0 {
  %2 = load i16, ptr %0, align 8, !tbaa !16
  %3 = and i16 %2, 16160
  %4 = icmp eq i16 %3, 4640
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !5
  %8 = icmp eq i8 %7, 18
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %25

11:                                               ; preds = %1
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %13 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.ref_s, ptr %13, i64 -10
  %15 = icmp ugt ptr %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %18 = icmp sgt i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16, %11
  %20 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %21 = load ptr, ptr @igs, align 8, !tbaa !24
  %22 = tail call ptr @gs_show_enum_alloc(ptr noundef %20, ptr noundef %21, ptr noundef nonnull @.str.15) #8
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, i32 -25, i32 0
  br label %25

25:                                               ; preds = %5, %9, %16, %19
  %26 = phi ptr [ %22, %19 ], [ undef, %16 ], [ undef, %5 ], [ undef, %9 ]
  %27 = phi i32 [ %24, %19 ], [ %17, %16 ], [ -7, %5 ], [ %10, %9 ]
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %25
  %30 = load ptr, ptr @igs, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !17
  %35 = zext i16 %34 to i32
  %36 = tail call i32 @gs_stringwidth_n_init(ptr noundef %26, ptr noundef %30, ptr noundef %32, i32 noundef %35) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %40 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %39, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  tail call void %41(ptr noundef %39, ptr noundef %26, ptr noundef nonnull @.str.15) #8
  br label %73

42:                                               ; preds = %29
  %43 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.ref_s, ptr %43, i64 8
  store ptr %44, ptr @e_stack, align 8, !tbaa !15
  %45 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1
  %46 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %46, align 8, !tbaa !5
  store i16 3712, ptr %45, align 8, !tbaa !16
  %47 = getelementptr inbounds %struct.ref_s, ptr %43, i64 1, i32 0, i32 1
  store i16 1, ptr %47, align 2, !tbaa !17
  %48 = getelementptr inbounds %struct.ref_s, ptr %43, i64 7
  store i16 3584, ptr %48, align 8, !tbaa !16
  %49 = getelementptr inbounds %struct.ref_s, ptr %43, i64 6
  %50 = getelementptr inbounds %struct.ref_s, ptr %43, i64 6, i32 1
  store i64 0, ptr %50, align 8, !tbaa !5
  store i16 2816, ptr %49, align 8, !tbaa !16
  %51 = getelementptr inbounds %struct.ref_s, ptr %43, i64 5
  %52 = getelementptr inbounds %struct.ref_s, ptr %43, i64 5, i32 1
  store i64 0, ptr %52, align 8, !tbaa !5
  store i16 2816, ptr %51, align 8, !tbaa !16
  %53 = getelementptr inbounds %struct.ref_s, ptr %43, i64 4
  %54 = getelementptr inbounds %struct.ref_s, ptr %43, i64 4, i32 1
  store i64 0, ptr %54, align 8, !tbaa !5
  store i16 2816, ptr %53, align 8, !tbaa !16
  %55 = load ptr, ptr @igs, align 8, !tbaa !24
  %56 = getelementptr inbounds %struct.gs_state_s, ptr %55, i64 0, i32 42
  %57 = load i32, ptr %56, align 8, !tbaa !51
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ref_s, ptr %43, i64 3
  %60 = getelementptr inbounds %struct.ref_s, ptr %43, i64 3, i32 1
  store i64 %58, ptr %60, align 8, !tbaa !5
  store i16 2816, ptr %59, align 8, !tbaa !16
  %61 = getelementptr inbounds %struct.ref_s, ptr %43, i64 2
  %62 = getelementptr inbounds %struct.ref_s, ptr %43, i64 2, i32 1
  store ptr @finish_stringwidth, ptr %62, align 8, !tbaa !5
  store i16 3968, ptr %61, align 8, !tbaa !16
  %63 = getelementptr inbounds %struct.ref_s, ptr %43, i64 2, i32 0, i32 1
  store i16 0, ptr %63, align 2, !tbaa !17
  %64 = getelementptr inbounds %struct.ref_s, ptr %43, i64 8, i32 1
  store ptr %26, ptr %64, align 8, !tbaa !5
  %65 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %66 = trunc i32 %65 to i16
  %67 = add i16 %66, 2048
  store i16 %67, ptr %44, align 8, !tbaa !16
  %68 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %69 = getelementptr inbounds %struct.ref_s, ptr %43, i64 8, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = tail call i32 @gs_show_next(ptr noundef %70) #8
  %72 = tail call i32 @op_show_continue_dispatch(ptr noundef nonnull %68, i32 noundef %71)
  br label %73

73:                                               ; preds = %25, %42, %38
  %74 = phi i32 [ %36, %38 ], [ %72, %42 ], [ %27, %25 ]
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define internal i32 @zwidthshow(ptr noundef %0) #0 {
  %2 = alloca [2 x float], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  %3 = getelementptr inbounds i8, ptr %0, i64 -15
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 11
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %8 = tail call i32 @check_type_failed(ptr noundef nonnull %7) #8
  br label %92

9:                                                ; preds = %1
  %10 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %11 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %12 = call i32 @num_params(ptr noundef nonnull %11, i32 noundef 2, ptr noundef nonnull %2) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %92, label %14

14:                                               ; preds = %9
  %15 = load i16, ptr %0, align 8, !tbaa !16
  %16 = and i16 %15, 16160
  %17 = icmp eq i16 %16, 4640
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %0, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 18
  br i1 %21, label %38, label %22

22:                                               ; preds = %18
  %23 = call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %38

24:                                               ; preds = %14
  %25 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %26 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.ref_s, ptr %26, i64 -10
  %28 = icmp ugt ptr %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %38

32:                                               ; preds = %29, %24
  %33 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %34 = load ptr, ptr @igs, align 8, !tbaa !24
  %35 = call ptr @gs_show_enum_alloc(ptr noundef %33, ptr noundef %34, ptr noundef nonnull @.str.15) #8
  %36 = icmp eq ptr %35, null
  %37 = select i1 %36, i32 -25, i32 0
  br label %38

38:                                               ; preds = %18, %22, %29, %32
  %39 = phi ptr [ %35, %32 ], [ undef, %29 ], [ undef, %18 ], [ undef, %22 ]
  %40 = phi i32 [ %37, %32 ], [ %30, %29 ], [ -7, %18 ], [ %23, %22 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %92

42:                                               ; preds = %38
  %43 = load ptr, ptr @igs, align 8, !tbaa !24
  %44 = load float, ptr %2, align 4, !tbaa !38
  %45 = fpext float %44 to double
  %46 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !38
  %48 = fpext float %47 to double
  %49 = load i64, ptr %10, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !5
  %52 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %53 = load i16, ptr %52, align 2, !tbaa !17
  %54 = zext i16 %53 to i32
  %55 = call i32 @gs_widthshow_n_init(ptr noundef %39, ptr noundef %43, double noundef %45, double noundef %48, i64 noundef %49, ptr noundef %51, i32 noundef %54) #8
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %42
  %58 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %58, i64 0, i32 11
  %60 = load ptr, ptr %59, align 8, !tbaa !48
  call void %60(ptr noundef %58, ptr noundef %39, ptr noundef nonnull @.str.15) #8
  br label %92

61:                                               ; preds = %42
  %62 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %63 = getelementptr inbounds %struct.ref_s, ptr %62, i64 8
  store ptr %63, ptr @e_stack, align 8, !tbaa !15
  %64 = getelementptr inbounds %struct.ref_s, ptr %62, i64 1
  %65 = getelementptr inbounds %struct.ref_s, ptr %62, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %65, align 8, !tbaa !5
  store i16 3712, ptr %64, align 8, !tbaa !16
  %66 = getelementptr inbounds %struct.ref_s, ptr %62, i64 1, i32 0, i32 1
  store i16 1, ptr %66, align 2, !tbaa !17
  %67 = getelementptr inbounds %struct.ref_s, ptr %62, i64 7
  store i16 3584, ptr %67, align 8, !tbaa !16
  %68 = getelementptr inbounds %struct.ref_s, ptr %62, i64 6
  %69 = getelementptr inbounds %struct.ref_s, ptr %62, i64 6, i32 1
  store i64 0, ptr %69, align 8, !tbaa !5
  store i16 2816, ptr %68, align 8, !tbaa !16
  %70 = getelementptr inbounds %struct.ref_s, ptr %62, i64 5
  %71 = getelementptr inbounds %struct.ref_s, ptr %62, i64 5, i32 1
  store i64 0, ptr %71, align 8, !tbaa !5
  store i16 2816, ptr %70, align 8, !tbaa !16
  %72 = getelementptr inbounds %struct.ref_s, ptr %62, i64 4
  %73 = getelementptr inbounds %struct.ref_s, ptr %62, i64 4, i32 1
  store i64 0, ptr %73, align 8, !tbaa !5
  store i16 2816, ptr %72, align 8, !tbaa !16
  %74 = load ptr, ptr @igs, align 8, !tbaa !24
  %75 = getelementptr inbounds %struct.gs_state_s, ptr %74, i64 0, i32 42
  %76 = load i32, ptr %75, align 8, !tbaa !51
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ref_s, ptr %62, i64 3
  %79 = getelementptr inbounds %struct.ref_s, ptr %62, i64 3, i32 1
  store i64 %77, ptr %79, align 8, !tbaa !5
  store i16 2816, ptr %78, align 8, !tbaa !16
  %80 = getelementptr inbounds %struct.ref_s, ptr %62, i64 2
  %81 = getelementptr inbounds %struct.ref_s, ptr %62, i64 2, i32 1
  store ptr @finish_show, ptr %81, align 8, !tbaa !5
  store i16 3968, ptr %80, align 8, !tbaa !16
  %82 = getelementptr inbounds %struct.ref_s, ptr %62, i64 2, i32 0, i32 1
  store i16 0, ptr %82, align 2, !tbaa !17
  %83 = getelementptr inbounds %struct.ref_s, ptr %62, i64 8, i32 1
  store ptr %39, ptr %83, align 8, !tbaa !5
  %84 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %85 = trunc i32 %84 to i16
  %86 = add i16 %85, 2048
  store i16 %86, ptr %63, align 8, !tbaa !16
  %87 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -4
  %88 = getelementptr inbounds %struct.ref_s, ptr %62, i64 8, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = call i32 @gs_show_next(ptr noundef %89) #8
  %91 = call i32 @op_show_continue_dispatch(ptr noundef nonnull %87, i32 noundef %90)
  br label %92

92:                                               ; preds = %9, %38, %61, %57, %6
  %93 = phi i32 [ %55, %57 ], [ %91, %61 ], [ %8, %6 ], [ %12, %9 ], [ %40, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 %93
}

; Function Attrs: nounwind uwtable
define internal i32 @zfontbbox(ptr noundef %0) #0 {
  %2 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  %3 = getelementptr inbounds i8, ptr %0, i64 1
  %4 = load i8, ptr %3, align 1, !tbaa !5
  %5 = icmp eq i8 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @check_type_failed(ptr noundef %0) #8
  br label %36

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i16, ptr %10, align 8, !tbaa !54
  %12 = and i16 %11, 32
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %8
  %15 = call i32 @font_bbox_param(ptr noundef %0, ptr noundef nonnull %2)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %14
  %18 = load float, ptr %2, align 16, !tbaa !38
  %19 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 2
  %20 = load float, ptr %19, align 8, !tbaa !38
  %21 = fcmp olt float %18, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !38
  %25 = getelementptr inbounds [4 x float], ptr %2, i64 0, i64 3
  %26 = load float, ptr %25, align 4, !tbaa !38
  %27 = fcmp olt float %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4
  %30 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !45
  %31 = icmp ugt ptr %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 4, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !56
  br label %36

33:                                               ; preds = %28
  store ptr %29, ptr @o_stack, align 8, !tbaa !15
  call void @make_reals(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4) #8
  %34 = getelementptr inbounds %struct.ref_s, ptr %0, i64 4, i32 1
  store i16 1, ptr %34, align 8, !tbaa !5
  store i16 256, ptr %29, align 8, !tbaa !16
  br label %36

35:                                               ; preds = %22, %17
  store i16 0, ptr %9, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !16
  br label %36

36:                                               ; preds = %33, %35, %14, %8, %32, %6
  %37 = phi i32 [ -16, %32 ], [ %7, %6 ], [ -7, %8 ], [ %15, %14 ], [ 0, %35 ], [ 0, %33 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %37
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @finish_show(ptr nocapture readnone %0) #4 {
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @finish_stringwidth(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  call void @gs_show_width(ptr noundef %5, ptr noundef nonnull %2) #8
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %7 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !45
  %8 = icmp ugt ptr %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !56
  br label %19

10:                                               ; preds = %1
  store ptr %6, ptr @o_stack, align 8, !tbaa !15
  %11 = load double, ptr %2, align 8, !tbaa !57
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store float %12, ptr %14, align 8, !tbaa !5
  store i16 4096, ptr %13, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %16 = load double, ptr %15, align 8, !tbaa !60
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store float %17, ptr %18, align 8, !tbaa !5
  store i16 4096, ptr %6, align 8, !tbaa !16
  br label %19

19:                                               ; preds = %10, %9
  %20 = phi i32 [ -16, %9 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @op_show_continue(ptr noundef %0) #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call i32 @gs_show_next(ptr noundef %4) #8
  %6 = tail call i32 @op_show_continue_dispatch(ptr noundef %0, i32 noundef %5)
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @op_show_setup(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load i16, ptr %0, align 8, !tbaa !16
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 4640
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 18
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #8
  br label %26

12:                                               ; preds = %2
  %13 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %14 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 -10
  %16 = icmp ugt ptr %13, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17, %12
  %21 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %22 = load ptr, ptr @igs, align 8, !tbaa !24
  %23 = tail call ptr @gs_show_enum_alloc(ptr noundef %21, ptr noundef %22, ptr noundef nonnull @.str.15) #8
  store ptr %23, ptr %1, align 8, !tbaa !24
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i32 -25, i32 0
  br label %26

26:                                               ; preds = %20, %17, %10, %6
  %27 = phi i32 [ %11, %10 ], [ -7, %6 ], [ %18, %17 ], [ %25, %20 ]
  ret i32 %27
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @op_show_enum_setup(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %4 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !45
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -10
  %6 = icmp ugt ptr %3, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 10) #8
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  %12 = load ptr, ptr @igs, align 8, !tbaa !24
  %13 = tail call ptr @gs_show_enum_alloc(ptr noundef %11, ptr noundef %12, ptr noundef nonnull @.str.15) #8
  store ptr %13, ptr %1, align 8, !tbaa !24
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, i32 -25, i32 0
  br label %16

16:                                               ; preds = %7, %10
  %17 = phi i32 [ %8, %7 ], [ %15, %10 ]
  ret i32 %17
}

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gs_show_enum_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @op_show_finish_setup(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #5 {
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 8
  store ptr %5, ptr @e_stack, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1
  %7 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1, i32 1
  store ptr @op_show_cleanup, ptr %7, align 8, !tbaa !5
  store i16 3712, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1, i32 0, i32 1
  store i16 1, ptr %8, align 2, !tbaa !17
  %9 = icmp eq ptr %2, null
  %10 = select i1 %9, ptr @finish_show, ptr %2
  %11 = getelementptr inbounds %struct.ref_s, ptr %4, i64 7
  store i16 3584, ptr %11, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.ref_s, ptr %4, i64 6
  %13 = getelementptr inbounds %struct.ref_s, ptr %4, i64 6, i32 1
  store i64 0, ptr %13, align 8, !tbaa !5
  store i16 2816, ptr %12, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.ref_s, ptr %4, i64 5
  %15 = getelementptr inbounds %struct.ref_s, ptr %4, i64 5, i32 1
  store i64 0, ptr %15, align 8, !tbaa !5
  store i16 2816, ptr %14, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.ref_s, ptr %4, i64 4
  %17 = getelementptr inbounds %struct.ref_s, ptr %4, i64 4, i32 1
  store i64 0, ptr %17, align 8, !tbaa !5
  store i16 2816, ptr %16, align 8, !tbaa !16
  %18 = load ptr, ptr @igs, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.gs_state_s, ptr %18, i64 0, i32 42
  %20 = load i32, ptr %19, align 8, !tbaa !51
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ref_s, ptr %4, i64 3
  %23 = getelementptr inbounds %struct.ref_s, ptr %4, i64 3, i32 1
  store i64 %21, ptr %23, align 8, !tbaa !5
  store i16 2816, ptr %22, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.ref_s, ptr %4, i64 2
  %25 = getelementptr inbounds %struct.ref_s, ptr %4, i64 2, i32 1
  store ptr %10, ptr %25, align 8, !tbaa !5
  store i16 3968, ptr %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.ref_s, ptr %4, i64 2, i32 0, i32 1
  store i16 0, ptr %26, align 2, !tbaa !17
  %27 = getelementptr inbounds %struct.ref_s, ptr %4, i64 8, i32 1
  store ptr %0, ptr %27, align 8, !tbaa !5
  %28 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !52
  %29 = trunc i32 %28 to i16
  %30 = add i16 %29, 2048
  store i16 %30, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @op_show_cleanup(ptr nocapture readnone %0) #0 {
  %2 = tail call fastcc i32 @op_show_restore(i32 noundef 1)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @op_show_continue_dispatch(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.ref_s, align 8
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  switch i32 %1, label %140 [
    i32 0, label %7
    i32 2, label %18
    i32 1, label %35
  ]

7:                                                ; preds = %2
  %8 = load ptr, ptr @o_stack, align 8, !tbaa !15
  store ptr %0, ptr @o_stack, align 8, !tbaa !15
  %9 = getelementptr %struct.ref_s, ptr %4, i64 -6, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = tail call i32 %10(ptr noundef %0) #8
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 -8
  store ptr %13, ptr @e_stack, align 8, !tbaa !15
  %14 = lshr i32 %11, 31
  %15 = tail call fastcc i32 @op_show_restore(i32 noundef %14)
  %16 = icmp slt i32 %11, 0
  br i1 %16, label %17, label %149

17:                                               ; preds = %7
  store ptr %8, ptr @o_stack, align 8, !tbaa !15
  br label %149

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %20 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !45
  %21 = icmp ugt ptr %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !56
  br label %149

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -1
  store ptr %19, ptr @o_stack, align 8, !tbaa !15
  %25 = tail call i64 @gs_kshow_previous_char(ptr noundef %6) #8
  %26 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i64 %25, ptr %27, align 8, !tbaa !5
  store i16 2816, ptr %26, align 8, !tbaa !16
  %28 = tail call i64 @gs_kshow_next_char(ptr noundef %6) #8
  %29 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 %28, ptr %29, align 8, !tbaa !5
  store i16 2816, ptr %19, align 8, !tbaa !16
  %30 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct.ref_s, ptr %30, i64 1
  store ptr %31, ptr @e_stack, align 8, !tbaa !15
  %32 = getelementptr inbounds %struct.ref_s, ptr %30, i64 1, i32 1
  store ptr @op_show_continue, ptr %32, align 8, !tbaa !5
  store i16 3968, ptr %31, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.ref_s, ptr %30, i64 1, i32 0, i32 1
  store i16 0, ptr %33, align 2, !tbaa !17
  %34 = getelementptr inbounds %struct.ref_s, ptr %30, i64 2
  store ptr %34, ptr @e_stack, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %24, i64 16, i1 false), !tbaa.struct !35
  br label %149

35:                                               ; preds = %2
  %36 = load ptr, ptr @igs, align 8, !tbaa !24
  %37 = tail call ptr @gs_currentfont(ptr noundef %36) #8
  %38 = getelementptr inbounds %struct.gs_font_s, ptr %37, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = tail call i64 @gs_show_current_char(ptr noundef %6) #8
  %41 = tail call i64 @gs_show_current_glyph(ptr noundef %6) #8
  %42 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %43 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !45
  %44 = icmp ugt ptr %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !56
  br label %137

46:                                               ; preds = %35
  store ptr %42, ptr @o_stack, align 8, !tbaa !15
  %47 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(16) %39, i64 16, i1 false), !tbaa.struct !35
  %48 = getelementptr inbounds %struct.gs_font_s, ptr %37, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !62
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %104

51:                                               ; preds = %46
  %52 = load i64, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_language_level, i64 0, i32 1), align 8, !tbaa !5
  %53 = and i64 %52, 4294967295
  %54 = icmp eq i64 %53, 2
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = getelementptr inbounds i8, ptr %39, i64 33
  %57 = load i8, ptr %56, align 1, !tbaa !5
  %58 = icmp ne i8 %57, 14
  %59 = icmp ne i64 %41, 2147483647
  %60 = select i1 %58, i1 %59, i1 false
  br i1 %60, label %61, label %72

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.font_data_s, ptr %39, i64 0, i32 2
  %63 = icmp ult i64 %41, 2147483648
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = trunc i64 %41 to i32
  tail call void @name_index_ref(i32 noundef %65, ptr noundef nonnull %42) #8
  br label %69

66:                                               ; preds = %61
  %67 = add i64 %41, -2147483648
  %68 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 %67, ptr %68, align 8, !tbaa !5
  store i16 2816, ptr %42, align 8, !tbaa !16
  br label %69

69:                                               ; preds = %64, %66
  %70 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %71 = getelementptr inbounds %struct.ref_s, ptr %70, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(16) %62, i64 16, i1 false), !tbaa.struct !35
  br label %122

72:                                               ; preds = %55, %51
  %73 = getelementptr inbounds %struct.font_data_s, ptr %39, i64 0, i32 1
  %74 = getelementptr inbounds i8, ptr %39, i64 17
  %75 = load i8, ptr %74, align 1, !tbaa !5
  %76 = icmp eq i8 %75, 14
  br i1 %76, label %137, label %77

77:                                               ; preds = %72
  %78 = icmp eq i64 %40, -1
  br i1 %78, label %79, label %100

79:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %80 = getelementptr inbounds %struct.font_data_s, ptr %39, i64 0, i32 3
  %81 = icmp ult i64 %41, 2147483648
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = trunc i64 %41 to i32
  call void @name_index_ref(i32 noundef %83, ptr noundef nonnull %3) #8
  br label %87

84:                                               ; preds = %79
  %85 = add i64 %41, -2147483648
  %86 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store i64 %85, ptr %86, align 8, !tbaa !5
  store i16 2816, ptr %3, align 8, !tbaa !16
  br label %87

87:                                               ; preds = %82, %84
  %88 = call fastcc i32 @map_glyph_to_char(ptr noundef nonnull %3, ptr noundef nonnull %80, ptr noundef nonnull %42), !range !63
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = call i32 @name_enter_string(ptr noundef nonnull @.str.16, ptr noundef nonnull %3) #8
  %92 = call fastcc i32 @map_glyph_to_char(ptr noundef nonnull %3, ptr noundef nonnull %80, ptr noundef nonnull %42), !range !63
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %90, %87
  %95 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %96 = getelementptr inbounds %struct.ref_s, ptr %95, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %96, ptr noundef nonnull align 8 dereferenceable(16) %73, i64 16, i1 false), !tbaa.struct !35
  br label %97

97:                                               ; preds = %90, %94
  %98 = phi i1 [ true, %94 ], [ false, %90 ]
  %99 = phi i32 [ 0, %94 ], [ 7, %90 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br i1 %98, label %122, label %137

100:                                              ; preds = %77
  %101 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 %40, ptr %101, align 8, !tbaa !5
  store i16 2816, ptr %42, align 8, !tbaa !16
  %102 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %103 = getelementptr inbounds %struct.ref_s, ptr %102, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %103, ptr noundef nonnull align 8 dereferenceable(16) %73, i64 16, i1 false), !tbaa.struct !35
  br label %122

104:                                              ; preds = %46
  %105 = icmp eq i64 %40, -1
  br i1 %105, label %111, label %106

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 %40, ptr %107, align 8, !tbaa !5
  store i16 2816, ptr %42, align 8, !tbaa !16
  %108 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %109 = getelementptr inbounds %struct.ref_s, ptr %108, i64 2
  %110 = getelementptr inbounds %struct.font_data_s, ptr %39, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %109, ptr noundef nonnull align 8 dereferenceable(16) %110, i64 16, i1 false), !tbaa.struct !35
  br label %122

111:                                              ; preds = %104
  %112 = icmp ult i64 %41, 2147483648
  br i1 %112, label %113, label %115

113:                                              ; preds = %111
  %114 = trunc i64 %41 to i32
  tail call void @name_index_ref(i32 noundef %114, ptr noundef nonnull %42) #8
  br label %118

115:                                              ; preds = %111
  %116 = add i64 %41, -2147483648
  %117 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i64 %116, ptr %117, align 8, !tbaa !5
  store i16 2816, ptr %42, align 8, !tbaa !16
  br label %118

118:                                              ; preds = %113, %115
  %119 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %120 = getelementptr inbounds %struct.ref_s, ptr %119, i64 2
  %121 = getelementptr inbounds %struct.font_data_s, ptr %39, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %120, ptr noundef nonnull align 8 dereferenceable(16) %121, i64 16, i1 false), !tbaa.struct !35
  br label %122

122:                                              ; preds = %106, %118, %69, %100, %97
  %123 = call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #8
  %124 = add i32 %123, -2
  %125 = zext i32 %124 to i64
  %126 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %127 = getelementptr %struct.ref_s, ptr %126, i64 -3, i32 1
  store i64 %125, ptr %127, align 8, !tbaa !5
  %128 = call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #8
  %129 = zext i32 %128 to i64
  %130 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %131 = getelementptr %struct.ref_s, ptr %130, i64 -4, i32 1
  store i64 %129, ptr %131, align 8, !tbaa !5
  %132 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %133 = getelementptr inbounds %struct.ref_s, ptr %132, i64 1
  store ptr %133, ptr @e_stack, align 8, !tbaa !15
  %134 = getelementptr inbounds %struct.ref_s, ptr %132, i64 1, i32 1
  store ptr @op_show_continue, ptr %134, align 8, !tbaa !5
  store i16 3968, ptr %133, align 8, !tbaa !16
  %135 = getelementptr inbounds %struct.ref_s, ptr %132, i64 1, i32 0, i32 1
  store i16 0, ptr %135, align 2, !tbaa !17
  %136 = getelementptr inbounds %struct.ref_s, ptr %132, i64 2
  store ptr %136, ptr @e_stack, align 8, !tbaa !15
  br label %137

137:                                              ; preds = %72, %97, %122, %45
  %138 = phi i32 [ 1, %45 ], [ 0, %122 ], [ %99, %97 ], [ 7, %72 ]
  switch i32 %138, label %149 [
    i32 0, label %139
    i32 7, label %140
  ]

139:                                              ; preds = %137
  br label %149

140:                                              ; preds = %2, %137
  %141 = icmp sgt i32 %1, -1
  %142 = select i1 %141, i32 -10, i32 %1
  %143 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %144 = getelementptr inbounds %struct.ref_s, ptr %143, i64 -8
  store ptr %144, ptr @e_stack, align 8, !tbaa !15
  %145 = lshr i32 %142, 31
  %146 = call fastcc i32 @op_show_restore(i32 noundef %145)
  %147 = icmp slt i32 %146, 0
  %148 = select i1 %147, i32 %146, i32 %142
  br label %149

149:                                              ; preds = %22, %23, %17, %7, %140, %139, %137
  %150 = phi i32 [ %148, %140 ], [ -16, %137 ], [ 5, %139 ], [ %11, %17 ], [ 14, %7 ], [ 5, %23 ], [ -16, %22 ]
  ret i32 %150
}

declare i32 @gs_show_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @op_show_free(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -8
  store ptr %3, ptr @e_stack, align 8, !tbaa !15
  %4 = lshr i32 %0, 31
  %5 = tail call fastcc i32 @op_show_restore(i32 noundef %4)
  %6 = icmp slt i32 %5, 0
  %7 = select i1 %6, i32 %5, i32 %0
  ret i32 %7
}

declare i64 @gs_kshow_previous_char(ptr noundef) local_unnamed_addr #2

declare i64 @gs_kshow_next_char(ptr noundef) local_unnamed_addr #2

declare ptr @gs_currentfont(ptr noundef) local_unnamed_addr #2

declare i64 @gs_show_current_char(ptr noundef) local_unnamed_addr #2

declare i64 @gs_show_current_glyph(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @map_glyph_to_char(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca %struct.ref_s, align 8
  %5 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %3
  %9 = zext i16 %6 to i64
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %20, label %13, !llvm.loop !64

13:                                               ; preds = %8, %10
  %14 = phi i64 [ 0, %8 ], [ %11, %10 ]
  %15 = call i32 @array_get(ptr noundef %1, i64 noundef %14, ptr noundef nonnull %4) #8
  %16 = call i32 @obj_eq(ptr noundef %0, ptr noundef nonnull %4) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %10, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  store i64 %14, ptr %19, align 8, !tbaa !5
  store i16 2816, ptr %2, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %10, %3, %18
  %21 = phi i32 [ 1, %18 ], [ 0, %3 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  ret i32 %21
}

declare i32 @name_enter_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @op_show_find_index() local_unnamed_addr #6 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 3, i32 1), align 8, !tbaa !5
  %2 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !8
  %3 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = lshr exact i64 %7, 4
  %9 = trunc i64 %8 to i32
  br label %10

10:                                               ; preds = %42, %0
  %11 = phi i32 [ 0, %0 ], [ %38, %42 ]
  %12 = phi ptr [ %1, %0 ], [ %40, %42 ]
  %13 = phi ptr [ %2, %0 ], [ %44, %42 ]
  %14 = phi i32 [ %9, %0 ], [ %47, %42 ]
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %37, label %16

16:                                               ; preds = %10
  %17 = add i32 %14, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ref_s, ptr %13, i64 %18
  %20 = add i32 %14, %11
  br label %21

21:                                               ; preds = %16, %32
  %22 = phi i32 [ %33, %32 ], [ %14, %16 ]
  %23 = phi ptr [ %34, %32 ], [ %19, %16 ]
  %24 = phi i32 [ %35, %32 ], [ %11, %16 ]
  %25 = load i16, ptr %23, align 8, !tbaa !16
  %26 = and i16 %25, 16256
  %27 = icmp eq i16 %26, 3712
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tas_s, ptr %23, i64 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !17
  %31 = icmp eq i16 %30, 1
  br i1 %31, label %48, label %32

32:                                               ; preds = %21, %28
  %33 = add i32 %22, -1
  %34 = getelementptr inbounds %struct.ref_s, ptr %23, i64 -1
  %35 = add i32 %24, 1
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %37, label %21, !llvm.loop !18

37:                                               ; preds = %32, %10
  %38 = phi i32 [ %11, %10 ], [ %20, %32 ]
  %39 = getelementptr inbounds %struct.ref_s, ptr %12, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.ref_stack_block_s, ptr %40, i64 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.ref_stack_block_s, ptr %40, i64 0, i32 1, i32 0, i32 1
  %46 = load i16, ptr %45, align 2, !tbaa !20
  %47 = zext i16 %46 to i32
  br label %10, !llvm.loop !22

48:                                               ; preds = %37, %28
  %49 = phi i32 [ %24, %28 ], [ 0, %37 ]
  ret i32 %49
}

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gs_setcharwidth(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #2

declare i32 @zend(ptr noundef) local_unnamed_addr #2

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pop_estack(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @op_show_restore(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !15
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 8, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.ref_s, ptr %2, i64 3, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = trunc i64 %6 to i32
  %8 = icmp eq i32 %0, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, ptr %2, i64 5, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !5
  %12 = trunc i64 %11 to i32
  %13 = tail call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #8
  %14 = icmp ugt i32 %13, %12
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = sub i32 %13, %12
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %16) #8
  br label %17

17:                                               ; preds = %9, %15, %1
  %18 = getelementptr inbounds %struct.gs_show_enum_s, ptr %4, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !65
  %20 = icmp eq i32 %19, 1
  %21 = sext i1 %20 to i32
  %22 = add nsw i32 %21, %7
  %23 = load ptr, ptr @igs, align 8, !tbaa !24
  %24 = getelementptr inbounds %struct.gs_state_s, ptr %23, i64 0, i32 42
  %25 = load i32, ptr %24, align 8, !tbaa !51
  %26 = icmp sgt i32 %25, %22
  br i1 %26, label %27, label %46

27:                                               ; preds = %17, %38
  %28 = phi ptr [ %40, %38 ], [ %23, %17 ]
  %29 = getelementptr inbounds %struct.gs_state_s, ptr %28, i64 0, i32 22
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.gs_state_s, ptr %30, i64 0, i32 22
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = tail call i32 @gs_grestore(ptr noundef %28) #8
  br label %38

38:                                               ; preds = %27, %32, %36
  %39 = phi i32 [ %37, %36 ], [ -100, %32 ], [ -100, %27 ]
  %40 = load ptr, ptr @igs, align 8, !tbaa !24
  %41 = getelementptr inbounds %struct.gs_state_s, ptr %40, i64 0, i32 42
  %42 = load i32, ptr %41, align 8, !tbaa !51
  %43 = icmp sgt i32 %42, %22
  %44 = icmp sgt i32 %39, -1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %27, label %46, !llvm.loop !73

46:                                               ; preds = %38, %17
  %47 = phi i32 [ 0, %17 ], [ %39, %38 ]
  %48 = load ptr, ptr @gs_imemory, align 8, !tbaa !46
  tail call void @gs_show_enum_release(ptr noundef %4, ptr noundef %48) #8
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define dso_local i32 @font_bbox_param(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca [4 x %struct.ref_s], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %5 = getelementptr inbounds float, ptr %1, i64 3
  %6 = getelementptr inbounds float, ptr %1, i64 2
  %7 = getelementptr inbounds float, ptr %1, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %8 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %3) #8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !24
  %12 = load i16, ptr %11, align 8, !tbaa !16
  %13 = and i16 %12, 15360
  %14 = icmp eq i16 %13, 1024
  br i1 %14, label %15, label %54

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tas_s, ptr %11, i64 0, i32 1
  %17 = load i16, ptr %16, align 2, !tbaa !17
  %18 = icmp eq i16 %17, 4
  br i1 %18, label %19, label %54

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ref_s, ptr %11, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #8
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i64 [ 0, %19 ], [ %30, %22 ]
  %24 = phi ptr [ %21, %19 ], [ %29, %22 ]
  %25 = getelementptr inbounds %struct.ref_s, ptr %4, i64 %23
  call void @packed_get(ptr noundef %24, ptr noundef nonnull %25) #8
  %26 = load i16, ptr %24, align 2, !tbaa !36
  %27 = icmp ugt i16 %26, 16383
  %28 = select i1 %27, i64 1, i64 8
  %29 = getelementptr inbounds i16, ptr %24, i64 %28
  %30 = add nuw nsw i64 %23, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %22, !llvm.loop !74

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.ref_s, ptr %4, i64 3
  %34 = call i32 @num_params(ptr noundef nonnull %33, i32 noundef 4, ptr noundef nonnull %1) #8
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load float, ptr %6, align 4, !tbaa !38
  %38 = load float, ptr %1, align 4, !tbaa !38
  %39 = fsub float %37, %38
  %40 = load float, ptr %5, align 4, !tbaa !38
  %41 = load float, ptr %7, align 4, !tbaa !38
  %42 = fsub float %40, %41
  %43 = fcmp ole float %39, 0.000000e+00
  %44 = fcmp ole float %42, 0.000000e+00
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %36
  %47 = fdiv float %42, %39
  %48 = fcmp olt float %47, 1.250000e-01
  %49 = fcmp ogt float %47, 8.000000e+00
  %50 = or i1 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %52

52:                                               ; preds = %51, %46
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  br label %54

53:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #8
  br label %54

54:                                               ; preds = %2, %15, %52, %53, %10
  %55 = phi i32 [ -20, %10 ], [ %34, %53 ], [ 0, %52 ], [ 0, %15 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %55
}

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @packed_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_ashow_n_init(ptr noundef, ptr noundef, double noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_awidthshow_n_init(ptr noundef, ptr noundef, double noundef, double noundef, i64 noundef, double noundef, double noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_charpath_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_charboxpath_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

declare i32 @gs_kshow_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_show_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_stringwidth_n_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gs_widthshow_n_init(ptr noundef, ptr noundef, double noundef, double noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @make_reals(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gs_show_width(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @name_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @obj_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_grestore(ptr noundef) local_unnamed_addr #2

declare void @gs_show_enum_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 8}
!9 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !14, i64 40, !14, i64 44, !11, i64 48, !14, i64 64, !14, i64 68, !14, i64 72, !14, i64 76, !14, i64 80, !11, i64 88, !14, i64 104, !14, i64 108, !14, i64 112, !10, i64 120}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"ref_s", !12, i64 0, !6, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !6, i64 0}
!14 = !{!"int", !6, i64 0}
!15 = !{!9, !10, i64 0}
!16 = !{!11, !13, i64 0}
!17 = !{!11, !13, i64 2}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = !{!21, !13, i64 18}
!21 = !{!"ref_stack_block_s", !11, i64 0, !11, i64 16}
!22 = distinct !{!22, !19}
!23 = !{i32 -2147483648, i32 15}
!24 = !{!10, !10, i64 0}
!25 = !{!26, !10, i64 544}
!26 = !{!"gs_state_s", !10, i64 0, !27, i64 8, !30, i64 80, !14, i64 128, !13, i64 132, !14, i64 136, !28, i64 140, !32, i64 144, !14, i64 160, !14, i64 164, !10, i64 168, !6, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !6, i64 232, !6, i64 264, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !33, i64 336, !14, i64 360, !33, i64 364, !14, i64 388, !10, i64 392, !10, i64 400, !14, i64 408, !14, i64 412, !10, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !30, i64 456, !14, i64 504, !6, i64 508, !14, i64 512, !10, i64 520, !14, i64 528, !10, i64 536, !10, i64 544, !34, i64 552}
!27 = !{!"gx_line_params_s", !28, i64 0, !14, i64 4, !14, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !28, i64 24, !29, i64 32}
!28 = !{!"float", !6, i64 0}
!29 = !{!"gx_dash_params_s", !10, i64 0, !14, i64 8, !28, i64 12, !14, i64 16, !28, i64 20, !14, i64 24, !14, i64 28, !28, i64 32}
!30 = !{!"gs_matrix_fixed_s", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !31, i64 24, !31, i64 32, !14, i64 40}
!31 = !{!"long", !6, i64 0}
!32 = !{!"gs_fixed_point_s", !31, i64 0, !31, i64 8}
!33 = !{!"gs_matrix_s", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20}
!34 = !{!"gs_state_client_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!35 = !{i64 0, i64 2, !36, i64 2, i64 2, !36, i64 8, i64 8, !37, i64 8, i64 2, !36, i64 8, i64 4, !38, i64 8, i64 8, !37, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24, i64 8, i64 8, !24}
!36 = !{!13, !13, i64 0}
!37 = !{!31, !31, i64 0}
!38 = !{!28, !28, i64 0}
!39 = distinct !{!39, !19}
!40 = !{!41, !14, i64 92}
!41 = !{!"gs_font_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !33, i64 48, !14, i64 72, !14, i64 76, !14, i64 80, !14, i64 84, !14, i64 88, !14, i64 92, !14, i64 96, !28, i64 100, !42, i64 104, !44, i64 176, !44, i64 228}
!42 = !{!"gs_font_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !43, i64 32, !10, i64 48, !10, i64 56, !10, i64 64}
!43 = !{!"gx_xfont_callbacks_s", !10, i64 0, !10, i64 8}
!44 = !{!"gs_font_name_s", !6, i64 0, !14, i64 48}
!45 = !{!9, !10, i64 16}
!46 = !{!47, !10, i64 0}
!47 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !14, i64 40, !14, i64 44, !10, i64 48, !14, i64 56, !14, i64 60}
!48 = !{!49, !10, i64 88}
!49 = !{!"gs_memory_s", !50, i64 0}
!50 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!51 = !{!26, !14, i64 528}
!52 = !{!47, !14, i64 40}
!53 = !{ptr @gs_charboxpath_n_init, ptr @gs_charpath_n_init}
!54 = !{!55, !13, i64 0}
!55 = !{!"dict_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!56 = !{!9, !14, i64 64}
!57 = !{!58, !59, i64 0}
!58 = !{!"gs_point_s", !59, i64 0, !59, i64 8}
!59 = !{!"double", !6, i64 0}
!60 = !{!58, !59, i64 8}
!61 = !{!41, !10, i64 40}
!62 = !{!41, !14, i64 72}
!63 = !{i32 0, i32 2}
!64 = distinct !{!64, !19}
!65 = !{!66, !14, i64 80}
!66 = !{!"gs_show_enum_s", !10, i64 0, !14, i64 8, !67, i64 16, !28, i64 32, !28, i64 36, !31, i64 40, !28, i64 48, !28, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !10, i64 72, !14, i64 80, !14, i64 84, !68, i64 88, !68, i64 104, !14, i64 120, !14, i64 124, !10, i64 128, !70, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !14, i64 168, !31, i64 176, !31, i64 184, !32, i64 192, !32, i64 208, !10, i64 224, !58, i64 232, !14, i64 248, !70, i64 252, !71, i64 264, !10, i64 368}
!67 = !{!"gs_const_string_s", !10, i64 0, !14, i64 8}
!68 = !{!"gs_int_rect_s", !69, i64 0, !69, i64 8}
!69 = !{!"gs_int_point_s", !14, i64 0, !14, i64 4}
!70 = !{!"gs_log2_scale_point_s", !14, i64 0, !14, i64 4}
!71 = !{!"gx_font_stack_s", !14, i64 0, !6, i64 8}
!72 = !{!26, !10, i64 320}
!73 = distinct !{!73, !19}
!74 = distinct !{!74, !19}
