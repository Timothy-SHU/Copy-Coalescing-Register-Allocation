; ModuleID = 'zchar1.c'
source_filename = "zchar1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_type1_state_s = type { ptr, ptr, ptr, i32, i32, %struct.fixed_coeff, float, %struct.point_scale_s, %struct.font_hints_s, %struct.gs_fixed_point_s, [48 x i64], i32, [11 x %struct.ip_state], i32, i32, i32, i32, i32, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, i64, %struct.gs_fixed_point_s, i32, [8 x %struct.gs_fixed_point_s], i32, i32, i32, i32, %struct.gs_fixed_point_s, i32, %struct.gs_fixed_point_s, ptr, i32, %struct.gs_fixed_point_s, %struct.stem_hint_table, %struct.stem_hint_table, [32 x i64] }
%struct.fixed_coeff = type { %struct.coeff1, %struct.coeff1, %struct.coeff1, %struct.coeff1, i32, i32, i32, i64 }
%struct.coeff1 = type { i64, i64 }
%struct.point_scale_s = type { %struct.pixel_scale_s, %struct.pixel_scale_s }
%struct.pixel_scale_s = type { i64, i64, i32 }
%struct.font_hints_s = type { i32, i32, i32, i32, i32, %struct.point_scale_s, %struct.stem_snap_table, %struct.stem_snap_table, i64, i64, i32, i32, [12 x %struct.alignment_zone] }
%struct.stem_snap_table = type { i32, [13 x i64] }
%struct.alignment_zone = type { i32, i64, i64, i64 }
%struct.ip_state = type { ptr, i16, %struct.gs_const_string_s }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.stem_hint_table = type { i32, i32, i32, [96 x %struct.stem_hint] }
%struct.stem_hint = type { i64, i64, i64, i64 }
%struct.gs_point_s = type { double, double }
%struct.gs_font_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_font_procs_s = type { ptr, ptr, ptr, ptr, %struct.gx_xfont_callbacks_s, ptr, ptr, ptr }
%struct.gx_xfont_callbacks_s = type { ptr, ptr }
%struct.gs_font_name_s = type { [48 x i8], i32 }
%struct.gs_font_type1_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32, %struct.gs_type1_data_s }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
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
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gs_show_enum_s = type { ptr, i32, %struct.gs_const_string_s, float, float, i64, float, float, i32, i32, i32, i32, ptr, i32, i32, %struct.gs_int_rect_s, %struct.gs_int_rect_s, i32, i32, ptr, %struct.gs_log2_scale_point_s, ptr, ptr, ptr, i32, i64, i64, %struct.gs_fixed_point_s, %struct.gs_fixed_point_s, ptr, %struct.gs_point_s, i32, %struct.gs_log2_scale_point_s, %struct.gx_font_stack_s, ptr }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_font_stack_s = type { i32, [6 x %struct.gx_font_stack_item_s] }
%struct.gx_font_stack_item_s = type { ptr, i32 }
%struct.font_data_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s, %union._fs }
%union._fs = type { %struct._f1 }
%struct._f1 = type { %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_font_base_s = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, i32, i32, i32, i32, i32, i32, float, %struct.gs_font_procs_s, %struct.gs_font_name_s, %struct.gs_font_name_s, %struct.gs_rect_s, %struct.gs_uid_s, i32, i32 }

@zchar1_op_defs.op_defs_ = internal constant [9 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @ztype1execchar }, %struct.op_def { ptr @.str.1, ptr @type1addpath_continue }, %struct.op_def { ptr @.str.2, ptr @nobbox_fill }, %struct.op_def { ptr @.str.3, ptr @nobbox_stroke }, %struct.op_def { ptr @.str.4, ptr @type1getsbw_continue }, %struct.op_def { ptr @.str.5, ptr @bbox_fill }, %struct.op_def { ptr @.str.6, ptr @bbox_stroke }, %struct.op_def { ptr @.str.7, ptr @nobbox_continue }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"4.type1execchar\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"0%type1addpath_continue\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"3%nobbox_fill\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"3%nobbox_stroke\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"0%type1getsbw_continue\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"4%bbox_fill\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"4%bbox_stroke\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"3%nobbox_continue\00", align 1
@registered_Encodings = external local_unnamed_addr global %struct.ref_s, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@st_gs_type1_state = external constant %struct.gs_memory_struct_type_s, align 8
@.str.8 = private unnamed_addr constant [14 x i8] c".type1addpath\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"op_type1_cleanup\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"op_type1_free\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zchar1_op_defs() local_unnamed_addr #0 {
  ret ptr @zchar1_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @ztype1execchar(ptr noundef %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gs_const_string_s, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gs_type1_state_s, align 8
  %6 = alloca [4 x float], align 16
  %7 = alloca %struct.ref_s, align 8
  %8 = alloca %struct.ref_s, align 8
  %9 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -3
  %11 = call i32 @font_param(ptr noundef nonnull %10, ptr noundef nonnull %4) #7
  %12 = call ptr @op_show_find() #7
  call void @llvm.lifetime.start.p0(i64 8400, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #7
  %13 = icmp slt i32 %11, 0
  br i1 %13, label %192, label %14

14:                                               ; preds = %1
  %15 = icmp eq ptr %12, null
  br i1 %15, label %192, label %16

16:                                               ; preds = %14
  %17 = load ptr, ptr %4, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.gs_font_s, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !9
  switch i32 %19, label %192 [
    i32 1, label %20
    i32 4, label %20
  ]

20:                                               ; preds = %16, %16
  %21 = getelementptr inbounds %struct.gs_font_s, ptr %17, i64 0, i32 13
  %22 = load i32, ptr %21, align 8, !tbaa !17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @igs, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.gs_font_s, ptr %17, i64 0, i32 14
  %27 = load float, ptr %26, align 4, !tbaa !18
  %28 = fpext float %27 to double
  %29 = call i32 @gs_setlinewidth(ptr noundef %25, double noundef %28) #7
  br label %30

30:                                               ; preds = %24, %20
  %31 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %32 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !24
  %33 = getelementptr inbounds %struct.ref_s, ptr %32, i64 -3
  %34 = icmp ugt ptr %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 3) #7
  %37 = icmp sgt i32 %36, -1
  br i1 %37, label %38, label %192

38:                                               ; preds = %35, %30
  %39 = load i16, ptr %0, align 8, !tbaa !25
  %40 = and i16 %39, 15552
  %41 = icmp eq i16 %40, 1216
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @zchar_exec_char_proc(ptr noundef nonnull %0) #7
  br label %192

44:                                               ; preds = %38
  %45 = getelementptr inbounds i8, ptr %0, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !26
  %47 = icmp eq i8 %46, 18
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = call i32 @check_type_failed(ptr noundef nonnull %0) #7
  br label %192

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %52 = load i16, ptr %51, align 2, !tbaa !27
  %53 = zext i16 %52 to i32
  %54 = getelementptr inbounds %struct.gs_font_type1_s, ptr %17, i64 0, i32 22, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !28
  %56 = call i32 @llvm.smax.i32(i32 %55, i32 0)
  %57 = icmp ult i32 %56, %53
  br i1 %57, label %58, label %192

58:                                               ; preds = %50
  %59 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !24
  %60 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %61 = ptrtoint ptr %59 to i64
  %62 = ptrtoint ptr %60 to i64
  %63 = sub i64 %61, %62
  %64 = icmp slt i64 %63, 48
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !32
  br label %192

66:                                               ; preds = %58
  %67 = load ptr, ptr %4, align 8, !tbaa !5
  %68 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %69 = call i32 @zchar_get_metrics(ptr noundef %67, ptr noundef nonnull %68, ptr noundef nonnull %6) #7
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %192, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr @igs, align 8, !tbaa !5
  %73 = call i32 @gs_moveto(ptr noundef %72, double noundef 0.000000e+00, double noundef 0.000000e+00) #7
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %192, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %12, align 8, !tbaa !33
  %77 = getelementptr inbounds %struct.gs_state_s, ptr %76, i64 0, i32 28
  %78 = load ptr, ptr %77, align 8, !tbaa !43
  %79 = getelementptr inbounds %struct.gs_show_enum_s, ptr %12, i64 0, i32 32
  %80 = call i32 @gs_show_in_charpath(ptr noundef nonnull %12) #7
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load ptr, ptr %4, align 8, !tbaa !5
  %84 = getelementptr inbounds %struct.gs_font_type1_s, ptr %83, i64 0, i32 13
  %85 = load i32, ptr %84, align 8, !tbaa !49
  %86 = call i32 @gs_type1_interp_init(ptr noundef nonnull %5, ptr noundef %76, ptr noundef %78, ptr noundef nonnull %79, i32 noundef %82, i32 noundef %85, ptr noundef %83) #7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %192, label %88

88:                                               ; preds = %75
  %89 = load ptr, ptr %4, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.gs_font_type1_s, ptr %89, i64 0, i32 18
  %91 = getelementptr inbounds %struct.gs_font_type1_s, ptr %89, i64 0, i32 18, i32 1
  %92 = load double, ptr %91, align 8, !tbaa !53
  %93 = load double, ptr %90, align 8, !tbaa !54
  %94 = fcmp ogt double %92, %93
  br i1 %94, label %95, label %145

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.gs_font_type1_s, ptr %89, i64 0, i32 18, i32 1, i32 1
  %97 = load double, ptr %96, align 8, !tbaa !55
  %98 = getelementptr inbounds %struct.gs_font_type1_s, ptr %89, i64 0, i32 18, i32 0, i32 1
  %99 = load double, ptr %98, align 8, !tbaa !56
  %100 = fcmp ogt double %97, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %95
  %102 = icmp eq i32 %69, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %68, i64 16, i1 false), !tbaa.struct !57
  %104 = call fastcc i32 @type1_continue_dispatch(ptr noundef nonnull %5, ptr noundef nonnull %0, ptr noundef nonnull %7)
  switch i32 %104, label %105 [
    i32 2, label %108
    i32 1, label %110
  ]

105:                                              ; preds = %103
  %106 = icmp slt i32 %104, 0
  %107 = select i1 %106, i32 %104, i32 -10
  br label %138

108:                                              ; preds = %103
  %109 = call fastcc i32 @type1_call_OtherSubr(ptr noundef nonnull %5, ptr noundef nonnull @type1getsbw_continue, ptr noundef nonnull %7), !range !61
  br label %138

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.gs_type1_state_s, ptr %5, i64 0, i32 18
  %112 = load i64, ptr %111, align 8, !tbaa !62
  %113 = sitofp i64 %112 to double
  %114 = fmul double %113, 0x3F30000000000000
  %115 = fptrunc double %114 to float
  store float %115, ptr %6, align 16, !tbaa !60
  %116 = getelementptr inbounds %struct.gs_type1_state_s, ptr %5, i64 0, i32 18, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !71
  %118 = sitofp i64 %117 to double
  %119 = fmul double %118, 0x3F30000000000000
  %120 = fptrunc double %119 to float
  %121 = getelementptr inbounds float, ptr %6, i64 1
  store float %120, ptr %121, align 4, !tbaa !60
  %122 = getelementptr inbounds %struct.gs_type1_state_s, ptr %5, i64 0, i32 19
  %123 = load i64, ptr %122, align 8, !tbaa !72
  %124 = sitofp i64 %123 to double
  %125 = fmul double %124, 0x3F30000000000000
  %126 = fptrunc double %125 to float
  %127 = getelementptr inbounds float, ptr %6, i64 2
  store float %126, ptr %127, align 8, !tbaa !60
  %128 = getelementptr inbounds %struct.gs_type1_state_s, ptr %5, i64 0, i32 19, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !73
  %130 = sitofp i64 %129 to double
  %131 = fmul double %130, 0x3F30000000000000
  %132 = fptrunc double %131 to float
  %133 = getelementptr inbounds float, ptr %6, i64 3
  store float %132, ptr %133, align 4, !tbaa !60
  %134 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %135 = load ptr, ptr %4, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.gs_font_type1_s, ptr %135, i64 0, i32 18
  %137 = call i32 @zchar_set_cache(ptr noundef %134, ptr noundef %135, ptr noundef nonnull %8, ptr noundef null, ptr noundef nonnull %127, ptr noundef nonnull %136, ptr noundef nonnull @bbox_fill, ptr noundef nonnull @bbox_stroke) #7
  br label %138

138:                                              ; preds = %110, %108, %105
  %139 = phi i32 [ %107, %105 ], [ %137, %110 ], [ %109, %108 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  br label %192

140:                                              ; preds = %101
  %141 = icmp eq i32 %69, 2
  %142 = select i1 %141, ptr %6, ptr null
  %143 = getelementptr inbounds float, ptr %6, i64 2
  %144 = call i32 @zchar_set_cache(ptr noundef nonnull %0, ptr noundef %89, ptr noundef nonnull %68, ptr noundef %142, ptr noundef nonnull %143, ptr noundef nonnull %90, ptr noundef nonnull @bbox_fill, ptr noundef nonnull @bbox_stroke) #7
  br label %192

145:                                              ; preds = %95, %88
  %146 = icmp eq i32 %69, 2
  br i1 %146, label %147, label %154

147:                                              ; preds = %145
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  %148 = load float, ptr %6, align 16, !tbaa !60
  %149 = fpext float %148 to double
  store double %149, ptr %9, align 8, !tbaa !74
  %150 = getelementptr inbounds [4 x float], ptr %6, i64 0, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !60
  %152 = fpext float %151 to double
  %153 = getelementptr inbounds %struct.gs_point_s, ptr %9, i64 0, i32 1
  store double %152, ptr %153, align 8, !tbaa !75
  call void @gs_type1_set_lsb(ptr noundef nonnull %5, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  br label %154

154:                                              ; preds = %147, %145
  %155 = getelementptr inbounds %struct.gs_const_string_s, ptr %3, i64 0, i32 1
  br label %156

156:                                              ; preds = %180, %154
  %157 = phi ptr [ %0, %154 ], [ null, %180 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %158 = icmp eq ptr %157, null
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.ref_s, ptr %157, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !26
  store ptr %161, ptr %3, align 8, !tbaa !76
  %162 = getelementptr inbounds %struct.tas_s, ptr %157, i64 0, i32 1
  %163 = load i16, ptr %162, align 2, !tbaa !27
  %164 = zext i16 %163 to i32
  store i32 %164, ptr %155, align 8, !tbaa !77
  br label %165

165:                                              ; preds = %159, %156
  %166 = phi ptr [ %3, %159 ], [ null, %156 ]
  %167 = call i32 @gs_type1_interpret(ptr noundef nonnull %5, ptr noundef %166, ptr noundef nonnull %2) #7
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load ptr, ptr @igs, align 8, !tbaa !5
  %171 = call ptr @gs_currentfont(ptr noundef %170) #7
  %172 = getelementptr inbounds %struct.gs_font_s, ptr %171, i64 0, i32 5
  %173 = load ptr, ptr %172, align 8, !tbaa !78
  %174 = getelementptr inbounds %struct.font_data_s, ptr %173, i64 0, i32 5
  %175 = load i32, ptr %2, align 4, !tbaa !79
  %176 = sext i32 %175 to i64
  %177 = call i32 @array_get(ptr noundef nonnull %174, i64 noundef %176, ptr noundef nonnull %7) #7
  %178 = icmp slt i32 %177, 0
  %179 = select i1 %178, i32 %177, i32 2
  br label %180

180:                                              ; preds = %165, %169
  %181 = phi i32 [ %179, %169 ], [ %167, %165 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  switch i32 %181, label %192 [
    i32 0, label %188
    i32 2, label %182
    i32 1, label %156
  ]

182:                                              ; preds = %180
  %183 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %184 = getelementptr inbounds %struct.ref_s, ptr %183, i64 1
  store ptr %184, ptr @e_stack, align 8, !tbaa !19
  %185 = getelementptr inbounds %struct.ref_s, ptr %183, i64 1, i32 1
  store ptr @nobbox_continue, ptr %185, align 8, !tbaa !26
  store i16 3968, ptr %184, align 8, !tbaa !25
  %186 = getelementptr inbounds %struct.ref_s, ptr %183, i64 1, i32 0, i32 1
  store i16 0, ptr %186, align 2, !tbaa !27
  %187 = call fastcc i32 @type1_call_OtherSubr(ptr noundef nonnull %5, ptr noundef nonnull @type1addpath_continue, ptr noundef nonnull %7), !range !61
  br label %192

188:                                              ; preds = %180
  %189 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %190 = getelementptr inbounds %struct.ref_s, ptr %189, i64 -1
  store ptr %190, ptr @o_stack, align 8, !tbaa !19
  %191 = call i32 @nobbox_continue(ptr noundef nonnull %68)
  br label %192

192:                                              ; preds = %180, %182, %188, %75, %71, %66, %50, %14, %16, %1, %35, %140, %138, %65, %48, %42
  %193 = phi i32 [ %43, %42 ], [ -16, %65 ], [ %139, %138 ], [ %144, %140 ], [ %49, %48 ], [ %36, %35 ], [ %11, %1 ], [ -21, %16 ], [ -21, %14 ], [ -10, %50 ], [ %69, %66 ], [ %73, %71 ], [ %86, %75 ], [ %187, %182 ], [ %191, %188 ], [ %181, %180 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8400, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %193
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @type1addpath_continue(ptr nocapture readnone %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !26
  br label %7

7:                                                ; preds = %21, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %8 = call i32 @gs_type1_interpret(ptr noundef %6, ptr noundef null, ptr noundef nonnull %2) #7
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load ptr, ptr @igs, align 8, !tbaa !5
  %12 = call ptr @gs_currentfont(ptr noundef %11) #7
  %13 = getelementptr inbounds %struct.gs_font_s, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = getelementptr inbounds %struct.font_data_s, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %2, align 4, !tbaa !79
  %17 = sext i32 %16 to i64
  %18 = call i32 @array_get(ptr noundef nonnull %15, i64 noundef %17, ptr noundef nonnull %3) #7
  %19 = icmp slt i32 %18, 0
  %20 = select i1 %19, i32 %18, i32 2
  br label %21

21:                                               ; preds = %7, %10
  %22 = phi i32 [ %20, %10 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  switch i32 %22, label %43 [
    i32 0, label %23
    i32 2, label %59
    i32 1, label %7
  ]

23:                                               ; preds = %21
  %24 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %25, align 1, !tbaa !26
  %27 = icmp eq i8 %26, 18
  %28 = select i1 %27, i64 -1, i64 -3
  %29 = getelementptr inbounds %struct.ref_s, ptr %24, i64 %28
  store ptr %29, ptr @o_stack, align 8, !tbaa !19
  %30 = load ptr, ptr @gs_imemory, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %30, i64 0, i32 11
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !26
  call void %32(ptr noundef %30, ptr noundef %35, ptr noundef nonnull @.str.10) #7
  %36 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %37 = getelementptr %struct.ref_s, ptr %36, i64 -1, i32 1
  store ptr null, ptr %37, align 8, !tbaa !26
  %38 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %39 = getelementptr inbounds %struct.ref_s, ptr %38, i64 -1
  store i16 1248, ptr %39, align 8, !tbaa !25
  %40 = getelementptr %struct.ref_s, ptr %38, i64 -1, i32 0, i32 1
  store i16 0, ptr %40, align 2, !tbaa !27
  %41 = getelementptr inbounds %struct.ref_s, ptr %38, i64 0, i32 1
  store ptr null, ptr %41, align 8, !tbaa !26
  store i16 1248, ptr %38, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.tas_s, ptr %38, i64 0, i32 1
  store i16 0, ptr %42, align 2, !tbaa !27
  br label %65

43:                                               ; preds = %21
  %44 = load ptr, ptr @gs_imemory, align 8, !tbaa !80
  %45 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !82
  %47 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %48 = getelementptr inbounds %struct.ref_s, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  call void %46(ptr noundef %44, ptr noundef %49, ptr noundef nonnull @.str.10) #7
  %50 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %51 = getelementptr %struct.ref_s, ptr %50, i64 -1, i32 1
  store ptr null, ptr %51, align 8, !tbaa !26
  %52 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %53 = getelementptr inbounds %struct.ref_s, ptr %52, i64 -1
  store i16 1248, ptr %53, align 8, !tbaa !25
  %54 = getelementptr %struct.ref_s, ptr %52, i64 -1, i32 0, i32 1
  store i16 0, ptr %54, align 2, !tbaa !27
  %55 = getelementptr inbounds %struct.ref_s, ptr %52, i64 0, i32 1
  store ptr null, ptr %55, align 8, !tbaa !26
  store i16 1248, ptr %52, align 8, !tbaa !25
  %56 = getelementptr inbounds %struct.tas_s, ptr %52, i64 0, i32 1
  store i16 0, ptr %56, align 2, !tbaa !27
  %57 = icmp slt i32 %22, 0
  %58 = select i1 %57, i32 %22, i32 -10
  br label %65

59:                                               ; preds = %21
  %60 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %61 = getelementptr inbounds %struct.ref_s, ptr %60, i64 1
  store ptr %61, ptr @e_stack, align 8, !tbaa !19
  %62 = getelementptr inbounds %struct.ref_s, ptr %60, i64 1, i32 1
  store ptr @type1addpath_continue, ptr %62, align 8, !tbaa !26
  store i16 3968, ptr %61, align 8, !tbaa !25
  %63 = getelementptr inbounds %struct.ref_s, ptr %60, i64 1, i32 0, i32 1
  store i16 0, ptr %63, align 2, !tbaa !27
  %64 = getelementptr inbounds %struct.ref_s, ptr %60, i64 2
  store ptr %64, ptr @e_stack, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  br label %65

65:                                               ; preds = %59, %43, %23
  %66 = phi i32 [ %58, %43 ], [ 5, %59 ], [ 0, %23 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @nobbox_fill(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -3
  store ptr %3, ptr @o_stack, align 8, !tbaa !19
  %4 = load ptr, ptr @igs, align 8, !tbaa !5
  %5 = tail call i32 @gs_fill(ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @nobbox_stroke(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 -3
  store ptr %3, ptr @o_stack, align 8, !tbaa !19
  %4 = load ptr, ptr @igs, align 8, !tbaa !5
  %5 = tail call i32 @gs_stroke(ptr noundef %4) #7
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @type1getsbw_continue(ptr nocapture readnone %0) #1 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !24
  %9 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp slt i64 %12, 48
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 3, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !32
  br label %94

15:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  %16 = call i32 @gs_type1_interpret(ptr noundef %7, ptr noundef null, ptr noundef nonnull %2) #7
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load ptr, ptr @igs, align 8, !tbaa !5
  %20 = call ptr @gs_currentfont(ptr noundef %19) #7
  %21 = getelementptr inbounds %struct.gs_font_s, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct.font_data_s, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %2, align 4, !tbaa !79
  %25 = sext i32 %24 to i64
  %26 = call i32 @array_get(ptr noundef nonnull %23, i64 noundef %25, ptr noundef nonnull %3) #7
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 %26, i32 2
  br label %29

29:                                               ; preds = %15, %18
  %30 = phi i32 [ %28, %18 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  switch i32 %30, label %31 [
    i32 2, label %47
    i32 1, label %53
  ]

31:                                               ; preds = %29
  %32 = load ptr, ptr @gs_imemory, align 8, !tbaa !80
  %33 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %32, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !82
  %35 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %36 = getelementptr inbounds %struct.ref_s, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !26
  call void %34(ptr noundef %32, ptr noundef %37, ptr noundef nonnull @.str.10) #7
  %38 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %39 = getelementptr %struct.ref_s, ptr %38, i64 -1, i32 1
  store ptr null, ptr %39, align 8, !tbaa !26
  %40 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -1
  store i16 1248, ptr %41, align 8, !tbaa !25
  %42 = getelementptr %struct.ref_s, ptr %40, i64 -1, i32 0, i32 1
  store i16 0, ptr %42, align 2, !tbaa !27
  %43 = getelementptr inbounds %struct.ref_s, ptr %40, i64 0, i32 1
  store ptr null, ptr %43, align 8, !tbaa !26
  store i16 1248, ptr %40, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.tas_s, ptr %40, i64 0, i32 1
  store i16 0, ptr %44, align 2, !tbaa !27
  %45 = icmp slt i32 %30, 0
  %46 = select i1 %45, i32 %30, i32 -10
  br label %94

47:                                               ; preds = %29
  %48 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 1
  store ptr %49, ptr @e_stack, align 8, !tbaa !19
  %50 = getelementptr inbounds %struct.ref_s, ptr %48, i64 1, i32 1
  store ptr @type1getsbw_continue, ptr %50, align 8, !tbaa !26
  store i16 3968, ptr %49, align 8, !tbaa !25
  %51 = getelementptr inbounds %struct.ref_s, ptr %48, i64 1, i32 0, i32 1
  store i16 0, ptr %51, align 2, !tbaa !27
  %52 = getelementptr inbounds %struct.ref_s, ptr %48, i64 2
  store ptr %52, ptr @e_stack, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !57
  br label %94

53:                                               ; preds = %29
  %54 = load ptr, ptr @o_stack, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %55 = load ptr, ptr %7, align 8, !tbaa !85
  %56 = getelementptr inbounds %struct.gs_type1_state_s, ptr %7, i64 0, i32 18
  %57 = load i64, ptr %56, align 8, !tbaa !62
  %58 = sitofp i64 %57 to double
  %59 = fmul double %58, 0x3F30000000000000
  %60 = fptrunc double %59 to float
  store float %60, ptr %4, align 16, !tbaa !60
  %61 = getelementptr inbounds %struct.gs_type1_state_s, ptr %7, i64 0, i32 18, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !71
  %63 = sitofp i64 %62 to double
  %64 = fmul double %63, 0x3F30000000000000
  %65 = fptrunc double %64 to float
  %66 = getelementptr inbounds float, ptr %4, i64 1
  store float %65, ptr %66, align 4, !tbaa !60
  %67 = getelementptr inbounds %struct.gs_type1_state_s, ptr %7, i64 0, i32 19
  %68 = load i64, ptr %67, align 8, !tbaa !72
  %69 = sitofp i64 %68 to double
  %70 = fmul double %69, 0x3F30000000000000
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds float, ptr %4, i64 2
  store float %71, ptr %72, align 8, !tbaa !60
  %73 = getelementptr inbounds %struct.gs_type1_state_s, ptr %7, i64 0, i32 19, i32 1
  %74 = load i64, ptr %73, align 8, !tbaa !73
  %75 = sitofp i64 %74 to double
  %76 = fmul double %75, 0x3F30000000000000
  %77 = fptrunc double %76 to float
  %78 = getelementptr inbounds float, ptr %4, i64 3
  store float %77, ptr %78, align 4, !tbaa !60
  %79 = load ptr, ptr @gs_imemory, align 8, !tbaa !80
  %80 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %79, i64 0, i32 11
  %81 = load ptr, ptr %80, align 8, !tbaa !82
  %82 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %83 = getelementptr inbounds %struct.ref_s, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !26
  call void %81(ptr noundef %79, ptr noundef %84, ptr noundef nonnull @.str.10) #7
  %85 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %86 = getelementptr %struct.ref_s, ptr %85, i64 -1, i32 1
  store ptr null, ptr %86, align 8, !tbaa !26
  %87 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %88 = getelementptr inbounds %struct.ref_s, ptr %87, i64 -1
  store i16 1248, ptr %88, align 8, !tbaa !25
  %89 = getelementptr %struct.ref_s, ptr %87, i64 -1, i32 0, i32 1
  store i16 0, ptr %89, align 2, !tbaa !27
  %90 = getelementptr inbounds %struct.ref_s, ptr %87, i64 0, i32 1
  store ptr null, ptr %90, align 8, !tbaa !26
  store i16 1248, ptr %87, align 8, !tbaa !25
  %91 = getelementptr inbounds %struct.tas_s, ptr %87, i64 0, i32 1
  store i16 0, ptr %91, align 2, !tbaa !27
  %92 = getelementptr inbounds %struct.gs_font_base_s, ptr %55, i64 0, i32 18
  %93 = call i32 @zchar_set_cache(ptr noundef %54, ptr noundef %55, ptr noundef %54, ptr noundef nonnull %4, ptr noundef nonnull %72, ptr noundef nonnull %92, ptr noundef nonnull @bbox_fill, ptr noundef nonnull @bbox_stroke) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  br label %94

94:                                               ; preds = %53, %47, %31, %14
  %95 = phi i32 [ -16, %14 ], [ %46, %31 ], [ %93, %53 ], [ 5, %47 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_fill(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @bbox_finish(ptr noundef %0, ptr noundef nonnull @nobbox_fill)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @bbox_stroke(ptr noundef %0) #1 {
  %2 = tail call fastcc i32 @bbox_finish(ptr noundef %0, ptr noundef nonnull @nobbox_stroke)
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @nobbox_continue(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_rect_s, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4 x float], align 16
  %5 = alloca %struct.gs_point_s, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = call i32 @gs_upathbbox(ptr noundef %6, ptr noundef nonnull %2, i32 noundef 0) #7
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %11 = call i32 @font_param(ptr noundef nonnull %10, ptr noundef nonnull %3) #7
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8, !tbaa !5
  %15 = call i32 @zchar_get_metrics(ptr noundef %14, ptr noundef %0, ptr noundef nonnull %4) #7
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %13
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %20 = load ptr, ptr @igs, align 8, !tbaa !5
  %21 = call i32 @gs_currentpoint(ptr noundef %20, ptr noundef nonnull %5) #7
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %35

23:                                               ; preds = %19
  %24 = load double, ptr %5, align 8, !tbaa !74
  %25 = fptrunc double %24 to float
  %26 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  store float %25, ptr %26, align 8, !tbaa !60
  %27 = getelementptr inbounds %struct.gs_point_s, ptr %5, i64 0, i32 1
  %28 = load double, ptr %27, align 8, !tbaa !75
  %29 = fptrunc double %28 to float
  %30 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  store float %29, ptr %30, align 4, !tbaa !60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %31

31:                                               ; preds = %23, %17
  %32 = load ptr, ptr %3, align 8, !tbaa !5
  %33 = getelementptr inbounds float, ptr %4, i64 2
  %34 = call i32 @zchar_set_cache(ptr noundef %0, ptr noundef %32, ptr noundef %0, ptr noundef null, ptr noundef nonnull %33, ptr noundef nonnull %2, ptr noundef nonnull @nobbox_fill, ptr noundef nonnull @nobbox_stroke) #7
  br label %36

35:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %36

36:                                               ; preds = %35, %1, %9, %13, %31
  %37 = phi i32 [ %34, %31 ], [ %7, %1 ], [ %11, %9 ], [ %15, %13 ], [ %21, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #7
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local i32 @z1_subr_proc(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #1 {
  %5 = alloca %struct.ref_s, align 8
  %6 = getelementptr inbounds %struct.gs_font_type1_s, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %8 = icmp eq i32 %2, 0
  %9 = getelementptr inbounds %struct.font_data_s, ptr %7, i64 0, i32 5, i32 0, i32 2
  %10 = getelementptr inbounds %struct.font_data_s, ptr %7, i64 0, i32 5, i32 0, i32 1
  %11 = select i1 %8, ptr %10, ptr %9
  %12 = sext i32 %1 to i64
  %13 = call i32 @array_get(ptr noundef nonnull %11, i64 noundef %12, ptr noundef nonnull %5) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %5, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !26
  %18 = icmp eq i8 %17, 18
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  store ptr %21, ptr %3, align 8, !tbaa !76
  %22 = getelementptr inbounds %struct.tas_s, ptr %5, i64 0, i32 1
  %23 = load i16, ptr %22, align 2, !tbaa !27
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.gs_const_string_s, ptr %3, i64 0, i32 1
  store i32 %24, ptr %25, align 8, !tbaa !77
  br label %26

26:                                               ; preds = %15, %4, %19
  %27 = phi i32 [ 0, %19 ], [ %13, %4 ], [ -20, %15 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  ret i32 %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @z1_seac_proc(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #1 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = getelementptr inbounds %struct.gs_font_type1_s, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %8 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @registered_Encodings, i64 0, i32 1), align 8, !tbaa !26
  %9 = sext i32 %1 to i64
  %10 = call i32 @array_get(ptr noundef %8, i64 noundef %9, ptr noundef nonnull %5) #7
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.font_data_s, ptr %7, i64 0, i32 4
  %14 = call i32 @dict_find(ptr noundef nonnull %13, ptr noundef nonnull %5, ptr noundef nonnull %4) #7
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %28, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %4, align 8, !tbaa !5
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !26
  %20 = icmp eq i8 %19, 18
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.ref_s, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  store ptr %23, ptr %2, align 8, !tbaa !76
  %24 = getelementptr inbounds %struct.tas_s, ptr %17, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !27
  %26 = zext i16 %25 to i32
  %27 = getelementptr inbounds %struct.gs_const_string_s, ptr %2, i64 0, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !77
  br label %28

28:                                               ; preds = %16, %12, %3, %21
  %29 = phi i32 [ 0, %21 ], [ %10, %3 ], [ -21, %12 ], [ -20, %16 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret i32 %29
}

declare i32 @dict_find(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @z1_push_proc(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = sext i32 %2 to i64
  %5 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !24
  %6 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 4
  %11 = icmp slt i64 %10, %4
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 %2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !32
  br label %32

13:                                               ; preds = %3
  %14 = icmp sgt i32 %2, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %13
  %16 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %17 = getelementptr inbounds i64, ptr %1, i64 %4
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i32 [ %29, %18 ], [ 0, %15 ]
  %20 = phi ptr [ %22, %18 ], [ %17, %15 ]
  %21 = phi ptr [ %23, %18 ], [ %16, %15 ]
  %22 = getelementptr inbounds i64, ptr %20, i64 -1
  %23 = getelementptr inbounds %struct.ref_s, ptr %21, i64 1
  %24 = load i64, ptr %22, align 8, !tbaa !59
  %25 = sitofp i64 %24 to double
  %26 = fmul double %25, 0x3F30000000000000
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds %struct.ref_s, ptr %21, i64 1, i32 1
  store float %27, ptr %28, align 8, !tbaa !26
  store i16 4096, ptr %23, align 8, !tbaa !25
  %29 = add nuw nsw i32 %19, 1
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %18, !llvm.loop !87

31:                                               ; preds = %18
  store ptr %23, ptr @o_stack, align 8, !tbaa !19
  br label %32

32:                                               ; preds = %13, %31, %12
  %33 = phi i32 [ -16, %12 ], [ 0, %31 ], [ 0, %13 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define dso_local i32 @z1_pop_proc(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #1 {
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %4 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %5 = call i32 @num_params(ptr noundef %4, i32 noundef 1, ptr noundef nonnull %3) #7
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load float, ptr %3, align 4, !tbaa !60
  %9 = fmul float %8, 4.096000e+03
  %10 = fptosi float %9 to i64
  store i64 %10, ptr %1, align 8, !tbaa !59
  %11 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 -1
  store ptr %12, ptr @o_stack, align 8, !tbaa !19
  br label %13

13:                                               ; preds = %2, %7
  %14 = phi i32 [ 0, %7 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %14
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @font_param(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @op_show_find() local_unnamed_addr #3

declare i32 @gs_setlinewidth(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @zchar_exec_char_proc(ptr noundef) local_unnamed_addr #3

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @zchar_get_metrics(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_moveto(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @gs_type1_interp_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_show_in_charpath(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @type1_continue_dispatch(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs_const_string_s, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %6 = icmp eq ptr %1, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  store ptr %9, ptr %5, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !27
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.gs_const_string_s, ptr %5, i64 0, i32 1
  store i32 %12, ptr %13, align 8, !tbaa !77
  br label %14

14:                                               ; preds = %3, %7
  %15 = phi ptr [ %5, %7 ], [ null, %3 ]
  %16 = call i32 @gs_type1_interpret(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %4) #7
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load ptr, ptr @igs, align 8, !tbaa !5
  %20 = call ptr @gs_currentfont(ptr noundef %19) #7
  %21 = getelementptr inbounds %struct.gs_font_s, ptr %20, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !78
  %23 = getelementptr inbounds %struct.font_data_s, ptr %22, i64 0, i32 5
  %24 = load i32, ptr %4, align 4, !tbaa !79
  %25 = sext i32 %24 to i64
  %26 = call i32 @array_get(ptr noundef nonnull %23, i64 noundef %25, ptr noundef %2) #7
  %27 = icmp slt i32 %26, 0
  %28 = select i1 %27, i32 %26, i32 2
  br label %29

29:                                               ; preds = %14, %18
  %30 = phi i32 [ %28, %18 ], [ %16, %14 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @type1_call_OtherSubr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 {
  %4 = load ptr, ptr @gs_imemory, align 8, !tbaa !80
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = tail call ptr %6(ptr noundef %4, ptr noundef nonnull @st_gs_type1_state, ptr noundef nonnull @.str.8) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8400) %7, ptr noundef nonnull align 8 dereferenceable(8400) %0, i64 8400, i1 false), !tbaa.struct !90
  %10 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.ref_s, ptr %10, i64 1
  store ptr %11, ptr @e_stack, align 8, !tbaa !19
  %12 = getelementptr inbounds %struct.ref_s, ptr %10, i64 1, i32 1
  store ptr @op_type1_cleanup, ptr %12, align 8, !tbaa !26
  store i16 3712, ptr %11, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.ref_s, ptr %10, i64 1, i32 0, i32 1
  store i16 1, ptr %13, align 2, !tbaa !27
  %14 = getelementptr inbounds %struct.ref_s, ptr %10, i64 2
  store ptr %14, ptr @e_stack, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.ref_s, ptr %10, i64 2, i32 1
  store ptr %7, ptr %15, align 8, !tbaa !26
  %16 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !91
  %17 = trunc i32 %16 to i16
  %18 = add i16 %17, 2048
  store i16 %18, ptr %14, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.ref_s, ptr %10, i64 3
  store ptr %19, ptr @e_stack, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.ref_s, ptr %10, i64 3, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !26
  store i16 3968, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.ref_s, ptr %10, i64 3, i32 0, i32 1
  store i16 0, ptr %21, align 2, !tbaa !27
  %22 = getelementptr inbounds %struct.ref_s, ptr %10, i64 4
  store ptr %22, ptr @e_stack, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !57
  br label %23

23:                                               ; preds = %3, %9
  %24 = phi i32 [ 5, %9 ], [ -25, %3 ]
  ret i32 %24
}

declare i32 @zchar_set_cache(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_type1_set_lsb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_type1_interpret(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gs_currentfont(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @op_type1_cleanup(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @gs_imemory, align 8, !tbaa !80
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !26
  tail call void %4(ptr noundef %2, ptr noundef %7, ptr noundef nonnull @.str.9) #7
  ret i32 0
}

declare i32 @gs_fill(ptr noundef) local_unnamed_addr #3

declare i32 @gs_stroke(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bbox_finish(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gs_const_string_s, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gs_type1_state_s, align 8
  %7 = alloca [2 x float], align 4
  %8 = alloca %struct.gs_point_s, align 8
  %9 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  %10 = tail call ptr @op_show_find() #7
  call void @llvm.lifetime.start.p0(i64 8400, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #7
  %11 = getelementptr inbounds i8, ptr %0, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !26
  %13 = icmp eq i8 %12, 18
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 1), align 8, !tbaa !92
  %16 = getelementptr inbounds %struct.ref_s, ptr %15, i64 2
  %17 = icmp ugt ptr %16, %0
  br i1 %17, label %117, label %18

18:                                               ; preds = %14
  %19 = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %7) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %117, label %21

21:                                               ; preds = %18
  %22 = load float, ptr %7, align 4, !tbaa !60
  %23 = fpext float %22 to double
  store double %23, ptr %8, align 8, !tbaa !74
  %24 = getelementptr inbounds [2 x float], ptr %7, i64 0, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !60
  %26 = fpext float %25 to double
  %27 = getelementptr inbounds %struct.gs_point_s, ptr %8, i64 0, i32 1
  store double %26, ptr %27, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -2
  %29 = getelementptr inbounds i8, ptr %0, i64 -31
  %30 = load i8, ptr %29, align 1, !tbaa !26
  %31 = icmp eq i8 %30, 18
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = call i32 @check_type_failed(ptr noundef nonnull %28) #7
  br label %117

34:                                               ; preds = %21, %2
  %35 = phi ptr [ null, %2 ], [ %8, %21 ]
  %36 = phi ptr [ %0, %2 ], [ %28, %21 ]
  %37 = getelementptr inbounds %struct.ref_s, ptr %36, i64 -3
  %38 = call i32 @font_param(ptr noundef nonnull %37, ptr noundef nonnull %5) #7
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %117, label %40

40:                                               ; preds = %34
  %41 = icmp eq ptr %10, null
  br i1 %41, label %117, label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %5, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.gs_font_s, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !9
  switch i32 %45, label %117 [
    i32 1, label %46
    i32 4, label %46
  ]

46:                                               ; preds = %42, %42
  %47 = getelementptr inbounds %struct.tas_s, ptr %36, i64 0, i32 1
  %48 = load i16, ptr %47, align 2, !tbaa !27
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.gs_font_type1_s, ptr %43, i64 0, i32 22, i32 6
  %51 = load i32, ptr %50, align 8, !tbaa !28
  %52 = call i32 @llvm.smax.i32(i32 %51, i32 0)
  %53 = icmp ult i32 %52, %49
  br i1 %53, label %54, label %117

54:                                               ; preds = %46
  %55 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %56 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !24
  %57 = getelementptr inbounds %struct.ref_s, ptr %56, i64 -5
  %58 = icmp ugt ptr %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #7
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %117

62:                                               ; preds = %59, %54
  %63 = load ptr, ptr %10, align 8, !tbaa !33
  %64 = getelementptr inbounds %struct.gs_state_s, ptr %63, i64 0, i32 28
  %65 = load ptr, ptr %64, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.gs_show_enum_s, ptr %10, i64 0, i32 32
  %67 = call i32 @gs_show_in_charpath(ptr noundef nonnull %10) #7
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load ptr, ptr %5, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.gs_font_type1_s, ptr %70, i64 0, i32 13
  %72 = load i32, ptr %71, align 8, !tbaa !49
  %73 = call i32 @gs_type1_interp_init(ptr noundef nonnull %6, ptr noundef %63, ptr noundef %65, ptr noundef nonnull %66, i32 noundef %69, i32 noundef %72, ptr noundef %70) #7
  %74 = icmp eq ptr %35, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %62
  call void @gs_type1_set_lsb(ptr noundef nonnull %6, ptr noundef nonnull %35) #7
  br label %76

76:                                               ; preds = %62, %75
  %77 = icmp slt i32 %73, 0
  br i1 %77, label %117, label %78

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.gs_const_string_s, ptr %4, i64 0, i32 1
  br label %80

80:                                               ; preds = %78, %104
  %81 = phi ptr [ null, %104 ], [ %36, %78 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.ref_s, ptr %81, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !26
  store ptr %85, ptr %4, align 8, !tbaa !76
  %86 = getelementptr inbounds %struct.tas_s, ptr %81, i64 0, i32 1
  %87 = load i16, ptr %86, align 2, !tbaa !27
  %88 = zext i16 %87 to i32
  store i32 %88, ptr %79, align 8, !tbaa !77
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi ptr [ %4, %83 ], [ null, %80 ]
  %91 = call i32 @gs_type1_interpret(ptr noundef nonnull %6, ptr noundef %90, ptr noundef nonnull %3) #7
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load ptr, ptr @igs, align 8, !tbaa !5
  %95 = call ptr @gs_currentfont(ptr noundef %94) #7
  %96 = getelementptr inbounds %struct.gs_font_s, ptr %95, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !78
  %98 = getelementptr inbounds %struct.font_data_s, ptr %97, i64 0, i32 5
  %99 = load i32, ptr %3, align 4, !tbaa !79
  %100 = sext i32 %99 to i64
  %101 = call i32 @array_get(ptr noundef nonnull %98, i64 noundef %100, ptr noundef nonnull %9) #7
  %102 = icmp slt i32 %101, 0
  %103 = select i1 %102, i32 %101, i32 2
  br label %104

104:                                              ; preds = %89, %93
  %105 = phi i32 [ %103, %93 ], [ %91, %89 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  switch i32 %105, label %117 [
    i32 0, label %106
    i32 2, label %111
    i32 1, label %80
  ]

106:                                              ; preds = %104
  %107 = load ptr, ptr @o_stack, align 8, !tbaa !19
  %108 = select i1 %74, i64 -1, i64 -3
  %109 = getelementptr inbounds %struct.ref_s, ptr %107, i64 %108
  store ptr %109, ptr @o_stack, align 8, !tbaa !19
  %110 = call i32 %1(ptr noundef nonnull %109) #7, !callees !93
  br label %117

111:                                              ; preds = %104
  %112 = load ptr, ptr @e_stack, align 8, !tbaa !19
  %113 = getelementptr inbounds %struct.ref_s, ptr %112, i64 1
  store ptr %113, ptr @e_stack, align 8, !tbaa !19
  %114 = getelementptr inbounds %struct.ref_s, ptr %112, i64 1, i32 1
  store ptr %1, ptr %114, align 8, !tbaa !26
  store i16 3968, ptr %113, align 8, !tbaa !25
  %115 = getelementptr inbounds %struct.ref_s, ptr %112, i64 1, i32 0, i32 1
  store i16 0, ptr %115, align 2, !tbaa !27
  %116 = call fastcc i32 @type1_call_OtherSubr(ptr noundef nonnull %6, ptr noundef nonnull @type1addpath_continue, ptr noundef nonnull %9), !range !61
  br label %117

117:                                              ; preds = %104, %76, %46, %40, %42, %34, %18, %14, %59, %111, %106, %32
  %118 = phi i32 [ %116, %111 ], [ %110, %106 ], [ %60, %59 ], [ %33, %32 ], [ -17, %14 ], [ %19, %18 ], [ %38, %34 ], [ -21, %42 ], [ -21, %40 ], [ -10, %46 ], [ %73, %76 ], [ %105, %104 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 8400, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  ret i32 %118
}

declare i32 @gs_upathbbox(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_currentpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!27 = !{!21, !23, i64 2}
!28 = !{!29, !13, i64 48}
!29 = !{!"gs_type1_data_s", !13, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !13, i64 48, !13, i64 52, !13, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !13, i64 88, !12, i64 92, !12, i64 96, !31, i64 100, !12, i64 160, !13, i64 164, !31, i64 168, !31, i64 228, !13, i64 272, !31, i64 276, !13, i64 320, !31, i64 324, !31, i64 332, !31, i64 340, !31, i64 392, !31, i64 444}
!30 = !{!"long", !7, i64 0}
!31 = !{!"", !13, i64 0, !7, i64 4}
!32 = !{!20, !13, i64 64}
!33 = !{!34, !6, i64 0}
!34 = !{!"gs_show_enum_s", !6, i64 0, !13, i64 8, !35, i64 16, !12, i64 32, !12, i64 36, !30, i64 40, !12, i64 48, !12, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !6, i64 72, !13, i64 80, !13, i64 84, !36, i64 88, !36, i64 104, !13, i64 120, !13, i64 124, !6, i64 128, !38, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !13, i64 168, !30, i64 176, !30, i64 184, !39, i64 192, !39, i64 208, !6, i64 224, !40, i64 232, !13, i64 248, !38, i64 252, !42, i64 264, !6, i64 368}
!35 = !{!"gs_const_string_s", !6, i64 0, !13, i64 8}
!36 = !{!"gs_int_rect_s", !37, i64 0, !37, i64 8}
!37 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!38 = !{!"gs_log2_scale_point_s", !13, i64 0, !13, i64 4}
!39 = !{!"gs_fixed_point_s", !30, i64 0, !30, i64 8}
!40 = !{!"gs_point_s", !41, i64 0, !41, i64 8}
!41 = !{!"double", !7, i64 0}
!42 = !{!"gx_font_stack_s", !13, i64 0, !7, i64 8}
!43 = !{!44, !6, i64 392}
!44 = !{!"gs_state_s", !6, i64 0, !45, i64 8, !47, i64 80, !13, i64 128, !23, i64 132, !13, i64 136, !12, i64 140, !39, i64 144, !13, i64 160, !13, i64 164, !6, i64 168, !7, i64 176, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !7, i64 232, !7, i64 264, !6, i64 296, !6, i64 304, !6, i64 312, !6, i64 320, !6, i64 328, !11, i64 336, !13, i64 360, !11, i64 364, !13, i64 388, !6, i64 392, !6, i64 400, !13, i64 408, !13, i64 412, !6, i64 416, !6, i64 424, !6, i64 432, !6, i64 440, !6, i64 448, !47, i64 456, !13, i64 504, !7, i64 508, !13, i64 512, !6, i64 520, !13, i64 528, !6, i64 536, !6, i64 544, !48, i64 552}
!45 = !{!"gx_line_params_s", !12, i64 0, !13, i64 4, !13, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !46, i64 32}
!46 = !{!"gx_dash_params_s", !6, i64 0, !13, i64 8, !12, i64 12, !13, i64 16, !12, i64 20, !13, i64 24, !13, i64 28, !12, i64 32}
!47 = !{!"gs_matrix_fixed_s", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !30, i64 24, !30, i64 32, !13, i64 40}
!48 = !{!"gs_state_client_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24}
!49 = !{!50, !13, i64 96}
!50 = !{!"gs_font_type1_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !11, i64 48, !13, i64 72, !13, i64 76, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92, !13, i64 96, !12, i64 100, !14, i64 104, !16, i64 176, !16, i64 228, !51, i64 280, !52, i64 312, !13, i64 328, !13, i64 332, !29, i64 336}
!51 = !{!"gs_rect_s", !40, i64 0, !40, i64 16}
!52 = !{!"gs_uid_s", !30, i64 0, !6, i64 8}
!53 = !{!50, !41, i64 296}
!54 = !{!50, !41, i64 280}
!55 = !{!50, !41, i64 304}
!56 = !{!50, !41, i64 288}
!57 = !{i64 0, i64 2, !58, i64 2, i64 2, !58, i64 8, i64 8, !59, i64 8, i64 2, !58, i64 8, i64 4, !60, i64 8, i64 8, !59, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!58 = !{!23, !23, i64 0}
!59 = !{!30, !30, i64 0}
!60 = !{!12, !12, i64 0}
!61 = !{i32 -25, i32 6}
!62 = !{!63, !30, i64 1664}
!63 = !{!"gs_type1_state_s", !6, i64 0, !6, i64 8, !6, i64 16, !13, i64 24, !13, i64 28, !64, i64 32, !12, i64 120, !66, i64 128, !68, i64 176, !39, i64 880, !7, i64 896, !13, i64 1280, !7, i64 1288, !13, i64 1640, !13, i64 1644, !13, i64 1648, !13, i64 1652, !13, i64 1656, !39, i64 1664, !39, i64 1680, !13, i64 1696, !39, i64 1704, !30, i64 1720, !39, i64 1728, !13, i64 1744, !7, i64 1752, !13, i64 1880, !13, i64 1884, !13, i64 1888, !13, i64 1892, !39, i64 1896, !13, i64 1912, !39, i64 1920, !6, i64 1936, !13, i64 1944, !39, i64 1952, !70, i64 1968, !70, i64 5056, !7, i64 8144}
!64 = !{!"", !65, i64 0, !65, i64 16, !65, i64 32, !65, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !30, i64 80}
!65 = !{!"", !30, i64 0, !30, i64 8}
!66 = !{!"point_scale_s", !67, i64 0, !67, i64 24}
!67 = !{!"pixel_scale_s", !30, i64 0, !30, i64 8, !13, i64 16}
!68 = !{!"font_hints_s", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !66, i64 24, !69, i64 72, !69, i64 184, !30, i64 296, !30, i64 304, !13, i64 312, !13, i64 316, !7, i64 320}
!69 = !{!"", !13, i64 0, !7, i64 8}
!70 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !7, i64 16}
!71 = !{!63, !30, i64 1672}
!72 = !{!63, !30, i64 1680}
!73 = !{!63, !30, i64 1688}
!74 = !{!40, !41, i64 0}
!75 = !{!40, !41, i64 8}
!76 = !{!35, !6, i64 0}
!77 = !{!35, !13, i64 8}
!78 = !{!10, !6, i64 40}
!79 = !{!13, !13, i64 0}
!80 = !{!81, !6, i64 0}
!81 = !{!"gs_dual_memory_s", !6, i64 0, !7, i64 8, !13, i64 40, !13, i64 44, !6, i64 48, !13, i64 56, !13, i64 60}
!82 = !{!83, !6, i64 88}
!83 = !{!"gs_memory_s", !84, i64 0}
!84 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!85 = !{!63, !6, i64 0}
!86 = !{!50, !6, i64 40}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !{!83, !6, i64 16}
!90 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 4, !79, i64 28, i64 4, !79, i64 32, i64 8, !59, i64 40, i64 8, !59, i64 48, i64 8, !59, i64 56, i64 8, !59, i64 64, i64 8, !59, i64 72, i64 8, !59, i64 80, i64 8, !59, i64 88, i64 8, !59, i64 96, i64 4, !79, i64 100, i64 4, !79, i64 104, i64 4, !79, i64 112, i64 8, !59, i64 120, i64 4, !60, i64 128, i64 8, !59, i64 136, i64 8, !59, i64 144, i64 4, !79, i64 152, i64 8, !59, i64 160, i64 8, !59, i64 168, i64 4, !79, i64 176, i64 4, !79, i64 180, i64 4, !79, i64 184, i64 4, !79, i64 188, i64 4, !79, i64 192, i64 4, !79, i64 200, i64 8, !59, i64 208, i64 8, !59, i64 216, i64 4, !79, i64 224, i64 8, !59, i64 232, i64 8, !59, i64 240, i64 4, !79, i64 248, i64 4, !79, i64 256, i64 104, !26, i64 360, i64 4, !79, i64 368, i64 104, !26, i64 472, i64 8, !59, i64 480, i64 8, !59, i64 488, i64 4, !79, i64 492, i64 4, !79, i64 496, i64 384, !26, i64 880, i64 8, !59, i64 888, i64 8, !59, i64 896, i64 384, !26, i64 1280, i64 4, !79, i64 1288, i64 352, !26, i64 1640, i64 4, !79, i64 1644, i64 4, !79, i64 1648, i64 4, !79, i64 1652, i64 4, !79, i64 1656, i64 4, !79, i64 1664, i64 8, !59, i64 1672, i64 8, !59, i64 1680, i64 8, !59, i64 1688, i64 8, !59, i64 1696, i64 4, !79, i64 1704, i64 8, !59, i64 1712, i64 8, !59, i64 1720, i64 8, !59, i64 1728, i64 8, !59, i64 1736, i64 8, !59, i64 1744, i64 4, !79, i64 1752, i64 128, !26, i64 1880, i64 4, !79, i64 1884, i64 4, !79, i64 1888, i64 4, !79, i64 1892, i64 4, !79, i64 1896, i64 8, !59, i64 1904, i64 8, !59, i64 1912, i64 4, !79, i64 1920, i64 8, !59, i64 1928, i64 8, !59, i64 1936, i64 8, !5, i64 1944, i64 4, !79, i64 1952, i64 8, !59, i64 1960, i64 8, !59, i64 1968, i64 4, !79, i64 1972, i64 4, !79, i64 1976, i64 4, !79, i64 1984, i64 3072, !26, i64 5056, i64 4, !79, i64 5060, i64 4, !79, i64 5064, i64 4, !79, i64 5072, i64 3072, !26, i64 8144, i64 256, !26}
!91 = !{!81, !13, i64 40}
!92 = !{!20, !6, i64 8}
!93 = !{ptr @nobbox_fill, ptr @nobbox_stroke}
