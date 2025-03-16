; ModuleID = 'zcie.c'
source_filename = "zcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_range4_s = type { [4 x %struct.gs_range_s] }
%struct.gs_range_s = type { float, float }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_vector3_s = type { float, float, float }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.op_def = type { ptr, ptr }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix3_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s, %struct.gs_vector3_s, i32 }
%struct.gs_cie_common_proc3_s = type { [3 x ptr] }
%struct.gs_cie_abc_proc3_s = type { [3 x ptr] }
%struct.gs_cie_wb_s = type { %struct.gs_vector3_s, %struct.gs_vector3_s }
%struct.gx_color_lookup_table_s = type { i32, [4 x i32], i32, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_for_loop_params_s = type { float, float, float }
%struct.gx_cie_cache_s = type { %struct.cie_cache_params_s, [512 x float] }
%struct.cie_cache_params_s = type { i32, float, float }
%struct.gs_color_space_s = type { ptr, %union.anon }
%union.anon = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.1, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { %struct.gs_const_string_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.5 }
%struct.ref_cie_procs_s = type { %union.anon.3, %union.anon.4, %struct.ref_s }
%union.anon.3 = type { %struct.ref_s }
%union.anon.4 = type { %struct.ref_s }
%union.anon.5 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon.6, %union.anon.6, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.7, %struct.ref_s, %struct.ref_s }
%union.anon.6 = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.anon.7 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_cie_a_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range_s, ptr, %struct.gs_vector3_s, %struct.anon.9 }
%struct.gs_cie_common_s = type { %struct.gs_range3_s, %struct.gs_cie_common_proc3_s, %struct.gs_matrix3_s, %struct.gs_cie_wb_s, %struct.anon.8 }
%struct.gs_range3_s = type { [3 x %struct.gs_range_s] }
%struct.anon.8 = type { [3 x %union.gx_cie_scalar_cache_s] }
%union.gx_cie_scalar_cache_s = type { %struct.gx_cie_cache_s }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.anon.9 = type { %union.gx_cie_vector_cache_s }
%union.gx_cie_vector_cache_s = type { %struct.cie_cache_vectors_s }
%struct.cie_cache_vectors_s = type { %struct.cie_vector_cache_params_s, [512 x %struct.cie_cached_vector3_s] }
%struct.cie_vector_cache_params_s = type { i32, float, float, float }
%struct.cie_cached_vector3_s = type { float, float, float }
%struct.gs_cie_abc_s = type { %struct.gs_cie_common_s, %struct.rc_header_s, %struct.gs_range3_s, %struct.gs_cie_abc_proc3_s, %struct.gs_matrix3_s, %struct.anon.10 }
%struct.anon.10 = type { i32, [3 x %union.gx_cie_vector_cache_s] }

@Range4_default = external local_unnamed_addr constant %struct.gs_range4_s, align 4
@empty_procs = internal global [4 x %struct.ref_s] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"WhitePoint\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"BlackPoint\00", align 1
@BlackPoint_default = external constant %struct.gs_vector3_s, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"cie_table_param\00", align 1
@e_stack = external global %struct.ref_stack_s, align 8
@zcie_l2_op_defs.op_defs_ = internal constant [7 x %struct.op_def] [%struct.op_def { ptr @.str.3, ptr null }, %struct.op_def { ptr @.str.4, ptr @zsetcieaspace }, %struct.op_def { ptr @.str.5, ptr @zsetcieabcspace }, %struct.op_def { ptr @.str.6, ptr @cie_abc_finish }, %struct.op_def { ptr @.str.7, ptr @cie_a_finish }, %struct.op_def { ptr @.str.8, ptr @cie_cache_finish }, %struct.op_def { ptr null, ptr @zcie_init }], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"1.setcieaspace\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"1.setcieabcspace\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"1%cie_abc_finish\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"1%cie_a_finish\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"0%cie_cache_finish\00", align 1
@cs_type_zCIEDEFG = dso_local local_unnamed_addr global %struct.gs_color_space_type_s zeroinitializer, align 8
@cs_type_zCIEDEF = dso_local local_unnamed_addr global %struct.gs_color_space_type_s zeroinitializer, align 8
@cs_type_zCIEABC = dso_local global %struct.gs_color_space_type_s zeroinitializer, align 8
@cs_type_zCIEA = dso_local global %struct.gs_color_space_type_s zeroinitializer, align 8
@o_stack = external global %struct.ref_stack_s, align 8
@igs = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"DecodeA\00", align 1
@st_cie_a = internal constant %struct.gs_memory_struct_type_s { i32 12512, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.10 = private unnamed_addr constant [25 x i8] c"setcolorspace(CIEBasedA)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"RangeA\00", align 1
@RangeA_default = external constant %struct.gs_range_s, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"MatrixA\00", align 1
@MatrixA_default = external constant %struct.gs_vector3_s, align 4
@DecodeA_default = external local_unnamed_addr constant ptr, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"gs_cie_a\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"RangeLMN\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"DecodeLMN\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"MatrixLMN\00", align 1
@Matrix3_default = external constant %struct.gs_matrix3_s, align 4
@DecodeLMN_default = external local_unnamed_addr constant %struct.gs_cie_common_proc3_s, align 8
@st_cie_abc = internal constant %struct.gs_memory_struct_type_s { i32 24896, ptr @.str.18, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.17 = private unnamed_addr constant [27 x i8] c"setcolorspace(CIEBasedABC)\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"gs_cie_abc\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"RangeABC\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"DecodeABC\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"MatrixABC\00", align 1
@DecodeABC_default = external local_unnamed_addr constant %struct.gs_cie_abc_proc3_s, align 8
@gs_color_space_type_CIEDEFG = external local_unnamed_addr constant %struct.gs_color_space_type_s, align 8
@gs_color_space_type_CIEDEF = external local_unnamed_addr constant %struct.gs_color_space_type_s, align 8
@gs_color_space_type_CIEABC = external local_unnamed_addr constant %struct.gs_color_space_type_s, align 8
@gs_color_space_type_CIEA = external local_unnamed_addr constant %struct.gs_color_space_type_s, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"Decode.ABC\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"Decode.LMN\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"Decode.A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_ranges_param(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = shl nsw i32 %2, 1
  %6 = tail call i32 @dict_float_array_param(ptr noundef %0, ptr noundef %1, i32 noundef %5, ptr noundef %3, ptr noundef null) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %6, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = shl nsw i64 %11, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr nonnull align 4 @Range4_default, i64 %12, i1 false)
  br label %15

13:                                               ; preds = %8
  %14 = icmp eq i32 %6, %5
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %13
  br label %16

16:                                               ; preds = %13, %4, %15
  %17 = phi i32 [ 0, %15 ], [ %6, %4 ], [ -15, %13 ]
  ret i32 %17
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @dict_float_array_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_proc_array_param(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %7 = call i32 @dict_find_string(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #6
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %4
  %10 = load ptr, ptr %5, align 8, !tbaa !5
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !9
  %13 = icmp eq i8 %12, 4
  br i1 %13, label %14, label %41

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tas_s, ptr %10, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !10
  %17 = zext i16 %16 to i32
  %18 = icmp eq i32 %17, %2
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %19
  %22 = zext i32 %2 to i64
  br label %26

23:                                               ; preds = %36
  %24 = add nuw nsw i64 %27, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %38, label %26, !llvm.loop !14

26:                                               ; preds = %21, %23
  %27 = phi i64 [ 0, %21 ], [ %24, %23 ]
  %28 = phi i32 [ undef, %21 ], [ %37, %23 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #6
  %29 = load ptr, ptr %5, align 8, !tbaa !5
  %30 = call i32 @array_get(ptr noundef %29, i64 noundef %27, ptr noundef nonnull %6) #6
  %31 = load i16, ptr %6, align 8, !tbaa !16
  %32 = and i16 %31, 15552
  %33 = icmp eq i16 %32, 1216
  br i1 %33, label %36, label %34

34:                                               ; preds = %26
  %35 = call i32 @check_proc_failed(ptr noundef nonnull %6) #6
  br label %36

36:                                               ; preds = %26, %34
  %37 = phi i32 [ %35, %34 ], [ %28, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #6
  br i1 %33, label %23, label %41

38:                                               ; preds = %23, %19
  %39 = phi i32 [ undef, %19 ], [ %37, %23 ]
  %40 = load ptr, ptr %5, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %40, i64 16, i1 false), !tbaa.struct !17
  br label %41

41:                                               ; preds = %36, %14, %9, %38
  %42 = phi i32 [ %39, %38 ], [ -20, %9 ], [ -15, %14 ], [ %37, %36 ]
  %43 = phi i1 [ true, %38 ], [ false, %9 ], [ false, %14 ], [ false, %36 ]
  br i1 %43, label %48, label %49

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  store ptr @empty_procs, ptr %45, align 8, !tbaa !9
  store i16 1120, ptr %3, align 8, !tbaa !16
  %46 = trunc i32 %2 to i16
  %47 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  store i16 %46, ptr %47, align 2, !tbaa !10
  br label %48

48:                                               ; preds = %41, %44
  br label %49

49:                                               ; preds = %41, %48
  %50 = phi i32 [ 0, %48 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  ret i32 %50
}

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @check_proc_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @cie_points_param(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 3, ptr noundef %1, ptr noundef null) #6
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.gs_cie_wb_s, ptr %1, i64 0, i32 1
  %7 = tail call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef nonnull %6, ptr noundef nonnull @BlackPoint_default) #6
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %13, label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ %3, %2 ], [ %7, %5 ]
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %10, i32 -15
  br label %36

13:                                               ; preds = %5
  %14 = load float, ptr %1, align 4, !tbaa !23
  %15 = fcmp ugt float %14, 0.000000e+00
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.gs_vector3_s, ptr %1, i64 0, i32 1
  %18 = load float, ptr %17, align 4, !tbaa !26
  %19 = fcmp une float %18, 1.000000e+00
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gs_vector3_s, ptr %1, i64 0, i32 2
  %22 = load float, ptr %21, align 4, !tbaa !27
  %23 = fcmp ugt float %22, 0.000000e+00
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load float, ptr %6, align 4, !tbaa !28
  %26 = fcmp olt float %25, 0.000000e+00
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gs_cie_wb_s, ptr %1, i64 0, i32 1, i32 1
  %29 = load float, ptr %28, align 4, !tbaa !29
  %30 = fcmp olt float %29, 0.000000e+00
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gs_cie_wb_s, ptr %1, i64 0, i32 1, i32 2
  %33 = load float, ptr %32, align 4, !tbaa !30
  %34 = fcmp olt float %33, 0.000000e+00
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %13, %16, %20, %24, %27, %31, %35, %9
  %37 = phi i32 [ %12, %9 ], [ 0, %35 ], [ -15, %31 ], [ -15, %27 ], [ -15, %24 ], [ -15, %20 ], [ -15, %16 ], [ -15, %13 ]
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cie_table_param(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = zext nneg i32 %4 to i64
  br label %13

13:                                               ; preds = %11, %23
  %14 = phi i64 [ 0, %11 ], [ %26, %23 ]
  %15 = getelementptr inbounds %struct.ref_s, ptr %9, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !9
  %17 = icmp eq i8 %16, 11
  br i1 %17, label %18, label %204

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ref_s, ptr %8, i64 %14, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !9
  %21 = add i64 %20, -65536
  %22 = icmp ult i64 %21, -65534
  br i1 %22, label %204, label %23

23:                                               ; preds = %18
  %24 = trunc i64 %20 to i32
  %25 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 %14
  store i32 %24, ptr %25, align 4, !tbaa !35
  %26 = add nuw nsw i64 %14, 1
  %27 = icmp eq i64 %26, %12
  br i1 %27, label %28, label %13, !llvm.loop !36

28:                                               ; preds = %23, %3
  %29 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1
  %30 = add nsw i32 %4, -2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !35
  %34 = mul nsw i32 %33, %6
  %35 = add nsw i32 %4, -1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !35
  %39 = mul nsw i32 %34, %38
  %40 = icmp eq i32 %4, 3
  br i1 %40, label %41, label %99

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !37
  %44 = load i32, ptr %29, align 4, !tbaa !35
  %45 = tail call ptr %43(ptr noundef %2, i32 noundef %44, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %204, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.ref_s, ptr %8, i64 3
  %49 = load i32, ptr %29, align 4, !tbaa !35
  %50 = load i16, ptr %48, align 8, !tbaa !16
  %51 = and i16 %50, 16160
  %52 = icmp eq i16 %51, 1056
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds i8, ptr %8, i64 49
  %55 = load i8, ptr %54, align 1, !tbaa !9
  %56 = icmp eq i8 %55, 4
  br i1 %56, label %195, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @check_type_failed(ptr noundef nonnull %48) #6
  br label %195

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.ref_s, ptr %8, i64 3, i32 0, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !10
  %62 = zext i16 %61 to i32
  %63 = icmp eq i32 %49, %62
  br i1 %63, label %64, label %195

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.ref_s, ptr %8, i64 3, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !9
  %67 = icmp eq i32 %49, 0
  br i1 %67, label %195, label %68

68:                                               ; preds = %64
  %69 = zext i32 %49 to i64
  br label %73

70:                                               ; preds = %96
  %71 = add nuw nsw i64 %74, 1
  %72 = icmp eq i64 %71, %69
  br i1 %72, label %195, label %73, !llvm.loop !40

73:                                               ; preds = %70, %68
  %74 = phi i64 [ 0, %68 ], [ %71, %70 ]
  %75 = phi i32 [ undef, %68 ], [ %98, %70 ]
  %76 = getelementptr inbounds %struct.ref_s, ptr %66, i64 %74
  %77 = load i16, ptr %76, align 8, !tbaa !16
  %78 = and i16 %77, 16160
  %79 = icmp eq i16 %78, 4640
  br i1 %79, label %86, label %80

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, ptr %76, i64 1
  %82 = load i8, ptr %81, align 1, !tbaa !9
  %83 = icmp eq i8 %82, 18
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = tail call i32 @check_type_failed(ptr noundef nonnull %76) #6
  br label %96

86:                                               ; preds = %73
  %87 = getelementptr inbounds %struct.tas_s, ptr %76, i64 0, i32 1
  %88 = load i16, ptr %87, align 2, !tbaa !10
  %89 = zext i16 %88 to i32
  %90 = icmp eq i32 %39, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ref_s, ptr %66, i64 %74, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !9
  %94 = getelementptr inbounds %struct.gs_const_string_s, ptr %45, i64 %74
  store ptr %93, ptr %94, align 8, !tbaa !41
  %95 = getelementptr inbounds %struct.gs_const_string_s, ptr %45, i64 %74, i32 1
  store i32 %39, ptr %95, align 8, !tbaa !43
  br label %96

96:                                               ; preds = %91, %86, %84, %80
  %97 = phi i1 [ true, %91 ], [ false, %80 ], [ false, %84 ], [ false, %86 ]
  %98 = phi i32 [ %75, %91 ], [ -7, %80 ], [ %85, %84 ], [ -15, %86 ]
  br i1 %97, label %70, label %195

99:                                               ; preds = %28
  %100 = load i32, ptr %29, align 4, !tbaa !35
  %101 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 1, i64 1
  %102 = load i32, ptr %101, align 4, !tbaa !35
  %103 = mul nsw i32 %102, %100
  %104 = getelementptr inbounds %struct.ref_s, ptr %8, i64 4
  %105 = load i16, ptr %104, align 8, !tbaa !16
  %106 = and i16 %105, 16160
  %107 = icmp eq i16 %106, 1056
  br i1 %107, label %114, label %108

108:                                              ; preds = %99
  %109 = getelementptr inbounds i8, ptr %8, i64 65
  %110 = load i8, ptr %109, align 1, !tbaa !9
  %111 = icmp eq i8 %110, 4
  br i1 %111, label %190, label %112

112:                                              ; preds = %108
  %113 = tail call i32 @check_type_failed(ptr noundef nonnull %104) #6
  br label %190

114:                                              ; preds = %99
  %115 = getelementptr inbounds %struct.ref_s, ptr %8, i64 4, i32 0, i32 1
  %116 = load i16, ptr %115, align 2, !tbaa !10
  %117 = zext i16 %116 to i32
  %118 = icmp eq i32 %100, %117
  br i1 %118, label %119, label %190

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !37
  %122 = tail call ptr %121(ptr noundef %2, i32 noundef %103, i32 noundef 16, ptr noundef nonnull @.str.2) #6
  %123 = icmp eq ptr %122, null
  br i1 %123, label %190, label %124

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.ref_s, ptr %8, i64 4, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !9
  %127 = icmp sgt i32 %100, 0
  br i1 %127, label %128, label %190

128:                                              ; preds = %124
  %129 = icmp eq i32 %102, 0
  %130 = zext i32 %102 to i64
  %131 = sext i32 %102 to i64
  %132 = zext nneg i32 %100 to i64
  br label %133

133:                                              ; preds = %184, %128
  %134 = phi i64 [ 0, %128 ], [ %187, %184 ]
  %135 = getelementptr inbounds %struct.ref_s, ptr %126, i64 %134
  %136 = mul nsw i64 %134, %131
  %137 = getelementptr inbounds %struct.gs_const_string_s, ptr %122, i64 %136
  %138 = load i16, ptr %135, align 8, !tbaa !16
  %139 = and i16 %138, 16160
  %140 = icmp eq i16 %139, 1056
  br i1 %140, label %147, label %141

141:                                              ; preds = %133
  %142 = getelementptr inbounds i8, ptr %135, i64 1
  %143 = load i8, ptr %142, align 1, !tbaa !9
  %144 = icmp eq i8 %143, 4
  br i1 %144, label %184, label %145

145:                                              ; preds = %141
  %146 = tail call i32 @check_type_failed(ptr noundef nonnull %135) #6
  br label %184

147:                                              ; preds = %133
  %148 = getelementptr inbounds %struct.tas_s, ptr %135, i64 0, i32 1
  %149 = load i16, ptr %148, align 2, !tbaa !10
  %150 = zext i16 %149 to i32
  %151 = icmp eq i32 %102, %150
  br i1 %151, label %152, label %184

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.ref_s, ptr %126, i64 %134, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !9
  br i1 %129, label %184, label %158

155:                                              ; preds = %181
  %156 = add nuw nsw i64 %159, 1
  %157 = icmp eq i64 %156, %130
  br i1 %157, label %184, label %158, !llvm.loop !40

158:                                              ; preds = %152, %155
  %159 = phi i64 [ %156, %155 ], [ 0, %152 ]
  %160 = phi i32 [ %183, %155 ], [ undef, %152 ]
  %161 = getelementptr inbounds %struct.ref_s, ptr %154, i64 %159
  %162 = load i16, ptr %161, align 8, !tbaa !16
  %163 = and i16 %162, 16160
  %164 = icmp eq i16 %163, 4640
  br i1 %164, label %171, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds i8, ptr %161, i64 1
  %167 = load i8, ptr %166, align 1, !tbaa !9
  %168 = icmp eq i8 %167, 18
  br i1 %168, label %181, label %169

169:                                              ; preds = %165
  %170 = tail call i32 @check_type_failed(ptr noundef nonnull %161) #6
  br label %181

171:                                              ; preds = %158
  %172 = getelementptr inbounds %struct.tas_s, ptr %161, i64 0, i32 1
  %173 = load i16, ptr %172, align 2, !tbaa !10
  %174 = zext i16 %173 to i32
  %175 = icmp eq i32 %39, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.ref_s, ptr %154, i64 %159, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !9
  %179 = getelementptr inbounds %struct.gs_const_string_s, ptr %137, i64 %159
  store ptr %178, ptr %179, align 8, !tbaa !41
  %180 = getelementptr inbounds %struct.gs_const_string_s, ptr %137, i64 %159, i32 1
  store i32 %39, ptr %180, align 8, !tbaa !43
  br label %181

181:                                              ; preds = %176, %171, %169, %165
  %182 = phi i1 [ true, %176 ], [ false, %165 ], [ false, %169 ], [ false, %171 ]
  %183 = phi i32 [ %160, %176 ], [ -7, %165 ], [ %170, %169 ], [ -15, %171 ]
  br i1 %182, label %155, label %184

184:                                              ; preds = %155, %181, %141, %145, %147, %152
  %185 = phi i32 [ %146, %145 ], [ -7, %141 ], [ -15, %147 ], [ 0, %152 ], [ 0, %155 ], [ %183, %181 ]
  %186 = icmp slt i32 %185, 0
  %187 = add nuw nsw i64 %134, 1
  %188 = icmp eq i64 %187, %132
  %189 = select i1 %186, i1 true, i1 %188
  br i1 %189, label %190, label %133, !llvm.loop !44

190:                                              ; preds = %184, %124, %119, %114, %112, %108
  %191 = phi i1 [ false, %108 ], [ false, %112 ], [ false, %114 ], [ false, %119 ], [ true, %124 ], [ true, %184 ]
  %192 = phi ptr [ undef, %108 ], [ undef, %112 ], [ undef, %114 ], [ null, %119 ], [ %122, %124 ], [ %122, %184 ]
  %193 = phi i32 [ undef, %108 ], [ undef, %112 ], [ undef, %114 ], [ undef, %119 ], [ undef, %124 ], [ %185, %184 ]
  %194 = phi i32 [ -7, %108 ], [ %113, %112 ], [ -15, %114 ], [ -25, %119 ], [ undef, %124 ], [ undef, %184 ]
  br i1 %191, label %195, label %204

195:                                              ; preds = %96, %70, %64, %59, %57, %53, %190
  %196 = phi ptr [ %192, %190 ], [ %45, %53 ], [ %45, %57 ], [ %45, %59 ], [ %45, %64 ], [ %45, %70 ], [ %45, %96 ]
  %197 = phi i32 [ %193, %190 ], [ -7, %53 ], [ %58, %57 ], [ -15, %59 ], [ 0, %64 ], [ %98, %96 ], [ 0, %70 ]
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %2, i64 0, i32 11
  %201 = load ptr, ptr %200, align 8, !tbaa !45
  tail call void %201(ptr noundef %2, ptr noundef %196, ptr noundef nonnull @.str.2) #6
  br label %204

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.gx_color_lookup_table_s, ptr %1, i64 0, i32 3
  store ptr %196, ptr %203, align 8, !tbaa !46
  br label %204

204:                                              ; preds = %18, %13, %41, %190, %202, %199
  %205 = phi i32 [ %197, %199 ], [ 0, %202 ], [ %194, %190 ], [ -25, %41 ], [ -20, %13 ], [ -15, %18 ]
  ret i32 %205
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @cie_prepare_cache(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.gs_for_loop_params_s, align 4
  %8 = tail call ptr @gs_state_memory(ptr noundef %4) #6
  %9 = tail call i32 @imemory_space(ptr noundef %8) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  %10 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %11 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !49
  %12 = getelementptr inbounds %struct.ref_s, ptr %11, i64 -9
  %13 = icmp ugt ptr %10, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 9) #6
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %57

17:                                               ; preds = %14, %6
  %18 = load ptr, ptr @e_stack, align 8, !tbaa !47
  call void @gs_cie_cache_init(ptr noundef %2, ptr noundef nonnull %7, ptr noundef %0, ptr noundef %5) #6
  %19 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !10
  %21 = icmp eq i16 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, ptr %2, align 4, !tbaa !50
  %23 = load float, ptr %7, align 4, !tbaa !53
  %24 = getelementptr inbounds %struct.ref_s, ptr %18, i64 9
  %25 = getelementptr inbounds %struct.ref_s, ptr %18, i64 9, i32 1
  store float %23, ptr %25, align 8, !tbaa !9
  store i16 4096, ptr %24, align 8, !tbaa !16
  %26 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %7, i64 0, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !55
  %28 = getelementptr inbounds %struct.ref_s, ptr %18, i64 8
  %29 = getelementptr inbounds %struct.ref_s, ptr %18, i64 8, i32 1
  store float %27, ptr %29, align 8, !tbaa !9
  store i16 4096, ptr %28, align 8, !tbaa !16
  %30 = getelementptr inbounds %struct.gs_for_loop_params_s, ptr %7, i64 0, i32 2
  %31 = load float, ptr %30, align 4, !tbaa !56
  %32 = getelementptr inbounds %struct.ref_s, ptr %18, i64 7
  %33 = getelementptr inbounds %struct.ref_s, ptr %18, i64 7, i32 1
  store float %31, ptr %33, align 8, !tbaa !9
  store i16 4096, ptr %32, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.ref_s, ptr %18, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !17
  %35 = load i16, ptr %34, align 8, !tbaa !16
  %36 = and i16 %35, -129
  store i16 %36, ptr %34, align 8, !tbaa !16
  %37 = getelementptr inbounds %struct.ref_s, ptr %18, i64 5
  %38 = getelementptr inbounds %struct.ref_s, ptr %18, i64 5, i32 1
  store ptr @zcvx, ptr %38, align 8, !tbaa !9
  store i16 3968, ptr %37, align 8, !tbaa !16
  %39 = getelementptr inbounds %struct.ref_s, ptr %18, i64 5, i32 0, i32 1
  store i16 0, ptr %39, align 2, !tbaa !10
  %40 = getelementptr inbounds %struct.ref_s, ptr %18, i64 4
  %41 = getelementptr inbounds %struct.ref_s, ptr %18, i64 4, i32 1
  store ptr @zfor, ptr %41, align 8, !tbaa !9
  store i16 3968, ptr %40, align 8, !tbaa !16
  %42 = getelementptr inbounds %struct.ref_s, ptr %18, i64 4, i32 0, i32 1
  store i16 0, ptr %42, align 2, !tbaa !10
  %43 = getelementptr inbounds %struct.ref_s, ptr %18, i64 3
  %44 = getelementptr inbounds %struct.ref_s, ptr %18, i64 3, i32 1
  store ptr @cie_cache_finish, ptr %44, align 8, !tbaa !9
  store i16 3968, ptr %43, align 8, !tbaa !16
  %45 = getelementptr inbounds %struct.ref_s, ptr %18, i64 3, i32 0, i32 1
  store i16 0, ptr %45, align 2, !tbaa !10
  %46 = ptrtoint ptr %2 to i64
  %47 = ptrtoint ptr %3 to i64
  %48 = sub i64 %46, %47
  %49 = getelementptr inbounds %struct.ref_s, ptr %18, i64 2
  %50 = getelementptr inbounds %struct.ref_s, ptr %18, i64 2, i32 1
  store i64 %48, ptr %50, align 8, !tbaa !9
  store i16 2816, ptr %49, align 8, !tbaa !16
  %51 = getelementptr inbounds %struct.ref_s, ptr %18, i64 1
  %52 = getelementptr inbounds %struct.ref_s, ptr %18, i64 1, i32 1
  store ptr %3, ptr %52, align 8, !tbaa !9
  %53 = trunc i32 %9 to i16
  %54 = add i16 %53, 2048
  store i16 %54, ptr %51, align 8, !tbaa !16
  %55 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %56 = getelementptr inbounds %struct.ref_s, ptr %55, i64 9
  store ptr %56, ptr @e_stack, align 8, !tbaa !47
  br label %57

57:                                               ; preds = %14, %17
  %58 = phi i32 [ 5, %17 ], [ %15, %14 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  ret i32 %58
}

declare i32 @imemory_space(ptr noundef) local_unnamed_addr #2

declare ptr @gs_state_memory(ptr noundef) local_unnamed_addr #2

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @gs_cie_cache_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @zcvx(ptr noundef) #2

declare i32 @zfor(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @cie_cache_finish(ptr noundef %0) #0 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %3 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 1), align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  %5 = icmp ult ptr %2, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 7), align 8, !tbaa !58
  br label %42

7:                                                ; preds = %1
  %8 = getelementptr %struct.ref_s, ptr %2, i64 -1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !9
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %12, i64 0, i32 1
  %14 = tail call i32 @num_params(ptr noundef %0, i32 noundef 512, ptr noundef nonnull %13) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %7
  %17 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef 511) #6
  %18 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %12, i64 0, i32 1, i64 0
  %19 = tail call i32 @real_param(ptr noundef %17, ptr noundef nonnull %18) #6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %16, %26
  %22 = phi i32 [ %31, %26 ], [ %19, %16 ]
  %23 = phi i64 [ %24, %26 ], [ 0, %16 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = icmp eq i64 %24, 512
  br i1 %25, label %33, label %26, !llvm.loop !59

26:                                               ; preds = %21
  %27 = and i64 %24, 4294967295
  %28 = xor i64 %27, 511
  %29 = tail call ptr @ref_stack_index(ptr noundef nonnull @o_stack, i64 noundef %28) #6
  %30 = getelementptr inbounds %struct.gx_cie_cache_s, ptr %12, i64 0, i32 1, i64 %24
  %31 = tail call i32 @real_param(ptr noundef %29, ptr noundef nonnull %30) #6
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %21, !llvm.loop !59

33:                                               ; preds = %21, %26
  %34 = phi i32 [ %31, %26 ], [ %22, %21 ]
  %35 = icmp ugt i64 %23, 510
  br label %36

36:                                               ; preds = %33, %16
  %37 = phi i32 [ %19, %16 ], [ %34, %33 ]
  %38 = phi i1 [ false, %16 ], [ %35, %33 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %7
  tail call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef 512) #6
  %40 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %41 = getelementptr inbounds %struct.ref_s, ptr %40, i64 -2
  store ptr %41, ptr @e_stack, align 8, !tbaa !47
  br label %42

42:                                               ; preds = %36, %39, %6
  %43 = phi i32 [ -104, %6 ], [ 14, %39 ], [ %37, %36 ]
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cie_prepare_caches_3(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #6
  store ptr %2, ptr %9, align 16, !tbaa !5
  %10 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 1
  store ptr %3, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds [3 x ptr], ptr %9, i64 0, i64 2
  store ptr %4, ptr %11, align 16, !tbaa !5
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i64 [ 0, %8 ], [ %20, %12 ]
  %14 = getelementptr inbounds %struct.gs_range_s, ptr %0, i64 %13
  %15 = getelementptr inbounds %struct.ref_s, ptr %1, i64 %13
  %16 = getelementptr inbounds ptr, ptr %9, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = tail call i32 @cie_prepare_cache(ptr noundef %14, ptr noundef %15, ptr noundef %17, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %19 = icmp slt i32 %18, 0
  %20 = add nuw nsw i64 %13, 1
  %21 = icmp eq i64 %20, 3
  %22 = select i1 %19, i1 true, i1 %21
  br i1 %22, label %23, label %12, !llvm.loop !60

23:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #6
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cie_cache_push_finish(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %5 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 -2
  %7 = icmp ugt ptr %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 2) #6
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %23

11:                                               ; preds = %8, %3
  %12 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1
  store ptr %13, ptr @e_stack, align 8, !tbaa !47
  %14 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1, i32 1
  store ptr %0, ptr %14, align 8, !tbaa !9
  store i16 3968, ptr %13, align 8, !tbaa !16
  %15 = getelementptr inbounds %struct.ref_s, ptr %12, i64 1, i32 0, i32 1
  store i16 0, ptr %15, align 2, !tbaa !10
  %16 = getelementptr inbounds %struct.ref_s, ptr %12, i64 2
  store ptr %16, ptr @e_stack, align 8, !tbaa !47
  %17 = getelementptr inbounds %struct.ref_s, ptr %12, i64 2, i32 1
  store ptr %2, ptr %17, align 8, !tbaa !9
  %18 = tail call ptr @gs_state_memory(ptr noundef %1) #6
  %19 = tail call i32 @imemory_space(ptr noundef %18) #6
  %20 = trunc i32 %19 to i16
  %21 = add i16 %20, 2048
  %22 = load ptr, ptr @e_stack, align 8, !tbaa !47
  store i16 %21, ptr %22, align 8, !tbaa !16
  br label %23

23:                                               ; preds = %8, %11
  %24 = phi i32 [ %9, %8 ], [ 5, %11 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zcie_l2_op_defs() local_unnamed_addr #4 {
  ret ptr @zcie_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcieaspace(ptr noundef %0) #0 {
  %2 = alloca %struct.gs_color_space_s, align 8
  %3 = alloca %struct.ref_color_procs_s, align 8
  %4 = load ptr, ptr @igs, align 8, !tbaa !5
  %5 = tail call ptr @gs_state_memory(ptr noundef %4) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #6
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %6, align 1, !tbaa !9
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %54

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = load i16, ptr %13, align 8, !tbaa !61
  %15 = and i16 %14, 32
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %54, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @igs, align 8, !tbaa !5
  %19 = tail call ptr @gs_state_client_data(ptr noundef %18) #6
  %20 = getelementptr inbounds %struct.int_gstate_s, ptr %19, i64 0, i32 5, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %20, i64 80, i1 false), !tbaa.struct !63
  %21 = getelementptr inbounds %struct.ref_cie_procs_s, ptr %3, i64 0, i32 1
  %22 = call i32 @dict_proc_param(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %21, i32 noundef 1) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %54, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = call ptr %26(ptr noundef %5, ptr noundef nonnull @st_cie_a, ptr noundef nonnull @.str.10) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %54, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.gs_cie_a_s, ptr %27, i64 0, i32 1
  store i64 0, ptr %30, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.gs_cie_a_s, ptr %27, i64 0, i32 1, i32 1
  store ptr %5, ptr %31, align 8, !tbaa !74
  %32 = getelementptr inbounds %struct.gs_cie_a_s, ptr %27, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %32, align 8, !tbaa !75
  %33 = getelementptr inbounds %struct.gs_cie_a_s, ptr %27, i64 0, i32 2
  %34 = call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef 2, ptr noundef nonnull %33, ptr noundef nonnull @RangeA_default) #6
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.gs_cie_a_s, ptr %27, i64 0, i32 4
  %38 = call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef 3, ptr noundef nonnull %37, ptr noundef nonnull @MatrixA_default) #6
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call fastcc i32 @cie_lmnp_param(ptr noundef %0, ptr noundef nonnull %27, ptr noundef nonnull %3), !range !76
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40, %36, %29
  %44 = phi i32 [ %34, %29 ], [ %38, %36 ], [ %41, %40 ]
  %45 = load ptr, ptr %32, align 8, !tbaa !75
  %46 = load ptr, ptr %31, align 8, !tbaa !74
  call void %45(ptr noundef %46, ptr noundef nonnull %27, ptr noundef nonnull @.str.10) #6
  %47 = icmp slt i32 %44, 0
  %48 = select i1 %47, i32 %44, i32 -15
  br label %54

49:                                               ; preds = %40
  %50 = load ptr, ptr @DecodeA_default, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.gs_cie_a_s, ptr %27, i64 0, i32 3
  store ptr %50, ptr %51, align 8, !tbaa !77
  %52 = getelementptr inbounds %struct.gs_color_space_s, ptr %2, i64 0, i32 1
  store ptr %27, ptr %52, align 8, !tbaa !9
  store ptr @cs_type_zCIEA, ptr %2, align 8, !tbaa !78
  %53 = call fastcc i32 @set_cie_finish(ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %54

54:                                               ; preds = %24, %17, %11, %49, %43, %9
  %55 = phi i32 [ %48, %43 ], [ %53, %49 ], [ %10, %9 ], [ -7, %11 ], [ %22, %17 ], [ -25, %24 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #6
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcieabcspace(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca %struct.gs_color_space_s, align 8
  %5 = alloca %struct.ref_color_procs_s, align 8
  %6 = load ptr, ptr @igs, align 8, !tbaa !5
  %7 = tail call ptr @gs_state_memory(ptr noundef %6) #6
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #6
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !9
  %10 = icmp eq i8 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %102

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !9
  %16 = load i16, ptr %15, align 8, !tbaa !61
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %102, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr @igs, align 8, !tbaa !5
  %21 = tail call ptr @gs_state_client_data(ptr noundef %20) #6
  %22 = getelementptr inbounds %struct.int_gstate_s, ptr %21, i64 0, i32 5, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(80) %22, i64 80, i1 false), !tbaa.struct !63
  %23 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = tail call ptr %24(ptr noundef %7, ptr noundef nonnull @st_cie_abc, ptr noundef nonnull @.str.17) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %102, label %27

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %25, i64 0, i32 1
  store i64 0, ptr %28, align 8, !tbaa !80
  %29 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %25, i64 0, i32 1, i32 1
  store ptr %7, ptr %29, align 8, !tbaa !84
  %30 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %25, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %30, align 8, !tbaa !85
  %31 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %25, i64 0, i32 2
  %32 = tail call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef 6, ptr noundef nonnull %31, ptr noundef null) #6
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  switch i32 %32, label %37 [
    i32 0, label %35
    i32 6, label %36
  ]

35:                                               ; preds = %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %31, ptr noundef nonnull align 4 dereferenceable(24) @Range4_default, i64 24, i1 false)
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %34, %27
  %38 = phi i32 [ 0, %36 ], [ %32, %27 ], [ -15, %34 ]
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %87, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.ref_cie_procs_s, ptr %5, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  %42 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef nonnull %2) #6
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load ptr, ptr %2, align 8, !tbaa !5
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !9
  %48 = icmp eq i8 %47, 4
  br i1 %48, label %49, label %70

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tas_s, ptr %45, i64 0, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !10
  %52 = icmp eq i16 %51, 3
  br i1 %52, label %56, label %70

53:                                               ; preds = %66
  %54 = add nuw nsw i64 %57, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %68, label %56, !llvm.loop !14

56:                                               ; preds = %49, %53
  %57 = phi i64 [ %54, %53 ], [ 0, %49 ]
  %58 = phi i32 [ %67, %53 ], [ undef, %49 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %59 = load ptr, ptr %2, align 8, !tbaa !5
  %60 = call i32 @array_get(ptr noundef %59, i64 noundef %57, ptr noundef nonnull %3) #6
  %61 = load i16, ptr %3, align 8, !tbaa !16
  %62 = and i16 %61, 15552
  %63 = icmp eq i16 %62, 1216
  br i1 %63, label %66, label %64

64:                                               ; preds = %56
  %65 = call i32 @check_proc_failed(ptr noundef nonnull %3) #6
  br label %66

66:                                               ; preds = %64, %56
  %67 = phi i32 [ %65, %64 ], [ %58, %56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  br i1 %63, label %53, label %70

68:                                               ; preds = %53
  %69 = load ptr, ptr %2, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(16) %69, i64 16, i1 false), !tbaa.struct !17
  br label %70

70:                                               ; preds = %66, %68, %49, %44
  %71 = phi i32 [ %67, %68 ], [ -20, %44 ], [ -15, %49 ], [ %67, %66 ]
  %72 = phi i1 [ true, %68 ], [ false, %44 ], [ false, %49 ], [ false, %66 ]
  br i1 %72, label %76, label %77

73:                                               ; preds = %40
  %74 = getelementptr inbounds %struct.ref_cie_procs_s, ptr %5, i64 0, i32 1, i32 0, i32 1
  store ptr @empty_procs, ptr %74, align 8, !tbaa !9
  store i16 1120, ptr %41, align 8, !tbaa !16
  %75 = getelementptr inbounds %struct.ref_cie_procs_s, ptr %5, i64 0, i32 1, i32 0, i32 0, i32 1
  store i16 3, ptr %75, align 2, !tbaa !10
  br label %76

76:                                               ; preds = %73, %70
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi i32 [ 0, %76 ], [ %71, %70 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %25, i64 0, i32 4
  %82 = call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.21, i32 noundef 9, ptr noundef nonnull %81, ptr noundef nonnull @Matrix3_default) #6
  %83 = icmp eq i32 %82, 9
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = call fastcc i32 @cie_lmnp_param(ptr noundef %0, ptr noundef nonnull %25, ptr noundef nonnull %5), !range !76
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84, %80, %77, %37
  %88 = phi i32 [ %38, %37 ], [ %78, %77 ], [ %82, %80 ], [ %85, %84 ]
  %89 = icmp slt i32 %88, 0
  %90 = select i1 %89, i32 %88, i32 -15
  br label %93

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %25, i64 0, i32 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %92, ptr noundef nonnull align 8 dereferenceable(24) @DecodeABC_default, i64 24, i1 false), !tbaa.struct !86
  br label %93

93:                                               ; preds = %87, %91
  %94 = phi i32 [ %90, %87 ], [ 0, %91 ]
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load ptr, ptr %30, align 8, !tbaa !85
  %98 = load ptr, ptr %29, align 8, !tbaa !84
  call void %97(ptr noundef %98, ptr noundef nonnull %25, ptr noundef nonnull @.str.17) #6
  br label %102

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.gs_color_space_s, ptr %4, i64 0, i32 1
  store ptr %25, ptr %100, align 8, !tbaa !9
  store ptr @cs_type_zCIEABC, ptr %4, align 8, !tbaa !78
  %101 = call fastcc i32 @set_cie_finish(ptr noundef nonnull %4, ptr noundef nonnull %5)
  br label %102

102:                                              ; preds = %19, %13, %99, %96, %11
  %103 = phi i32 [ %94, %96 ], [ %101, %99 ], [ %12, %11 ], [ -7, %13 ], [ -25, %19 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #6
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cie_abc_finish(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  tail call void @gs_cie_abc_complete(ptr noundef %3) #6
  %4 = load ptr, ptr @o_stack, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -1
  store ptr %5, ptr @o_stack, align 8, !tbaa !47
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @cie_a_finish(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  tail call void @gs_cie_a_complete(ptr noundef %3) #6
  %4 = load ptr, ptr @o_stack, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 -1
  store ptr %5, ptr @o_stack, align 8, !tbaa !47
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @zcie_init() #5 {
  store ptr null, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 0, i32 1), align 8, !tbaa !9
  store i16 1248, ptr @empty_procs, align 16, !tbaa !16
  store i16 0, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 0, i32 0, i32 1), align 2, !tbaa !10
  store ptr null, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 1, i32 1), align 8, !tbaa !9
  store i16 1248, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 1), align 16, !tbaa !16
  store i16 0, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 1, i32 0, i32 1), align 2, !tbaa !10
  store ptr null, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 2, i32 1), align 8, !tbaa !9
  store i16 1248, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 2), align 16, !tbaa !16
  store i16 0, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 2, i32 0, i32 1), align 2, !tbaa !10
  store ptr null, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 3, i32 1), align 8, !tbaa !9
  store i16 1248, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 3), align 16, !tbaa !16
  store i16 0, ptr getelementptr inbounds ([4 x %struct.ref_s], ptr @empty_procs, i64 0, i64 3, i32 0, i32 1), align 2, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) @cs_type_zCIEDEFG, ptr noundef nonnull align 8 dereferenceable(96) @gs_color_space_type_CIEDEFG, i64 96, i1 false), !tbaa.struct !87
  store ptr @cs_install_zCIEDEFG, ptr getelementptr inbounds (%struct.gs_color_space_type_s, ptr @cs_type_zCIEDEFG, i64 0, i32 8), align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) @cs_type_zCIEDEF, ptr noundef nonnull align 8 dereferenceable(96) @gs_color_space_type_CIEDEF, i64 96, i1 false), !tbaa.struct !87
  store ptr @cs_install_zCIEDEF, ptr getelementptr inbounds (%struct.gs_color_space_type_s, ptr @cs_type_zCIEDEF, i64 0, i32 8), align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) @cs_type_zCIEABC, ptr noundef nonnull align 8 dereferenceable(96) @gs_color_space_type_CIEABC, i64 96, i1 false), !tbaa.struct !87
  store ptr @cs_install_zCIEABC, ptr getelementptr inbounds (%struct.gs_color_space_type_s, ptr @cs_type_zCIEABC, i64 0, i32 8), align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) @cs_type_zCIEA, ptr noundef nonnull align 8 dereferenceable(96) @gs_color_space_type_CIEA, i64 96, i1 false), !tbaa.struct !87
  store ptr @cs_install_zCIEA, ptr getelementptr inbounds (%struct.gs_color_space_type_s, ptr @cs_type_zCIEA, i64 0, i32 8), align 8, !tbaa !88
  ret void
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @real_param(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #2

declare i32 @dict_proc_param(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cie_lmnp_param(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = tail call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef 6, ptr noundef %1, ptr noundef null) #6
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  switch i32 %6, label %11 [
    i32 0, label %9
    i32 6, label %10
  ]

9:                                                ; preds = %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) @Range4_default, i64 24, i1 false)
  br label %10

10:                                               ; preds = %8, %9
  br label %11

11:                                               ; preds = %8, %3, %10
  %12 = phi i32 [ 0, %10 ], [ %6, %3 ], [ -15, %8 ]
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %96, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ref_cie_procs_s, ptr %2, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #6
  %16 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.15, ptr noundef nonnull %4) #6
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8, !tbaa !5
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !9
  %22 = icmp eq i8 %21, 4
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tas_s, ptr %19, i64 0, i32 1
  %25 = load i16, ptr %24, align 2, !tbaa !10
  %26 = icmp eq i16 %25, 3
  br i1 %26, label %30, label %44

27:                                               ; preds = %40
  %28 = add nuw nsw i64 %31, 1
  %29 = icmp eq i64 %28, 3
  br i1 %29, label %42, label %30, !llvm.loop !14

30:                                               ; preds = %23, %27
  %31 = phi i64 [ %28, %27 ], [ 0, %23 ]
  %32 = phi i32 [ %41, %27 ], [ undef, %23 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #6
  %33 = load ptr, ptr %4, align 8, !tbaa !5
  %34 = call i32 @array_get(ptr noundef %33, i64 noundef %31, ptr noundef nonnull %5) #6
  %35 = load i16, ptr %5, align 8, !tbaa !16
  %36 = and i16 %35, 15552
  %37 = icmp eq i16 %36, 1216
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = call i32 @check_proc_failed(ptr noundef nonnull %5) #6
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi i32 [ %39, %38 ], [ %32, %30 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #6
  br i1 %37, label %27, label %44

42:                                               ; preds = %27
  %43 = load ptr, ptr %4, align 8, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %43, i64 16, i1 false), !tbaa.struct !17
  br label %44

44:                                               ; preds = %40, %42, %23, %18
  %45 = phi i32 [ %41, %42 ], [ -20, %18 ], [ -15, %23 ], [ %41, %40 ]
  %46 = phi i1 [ true, %42 ], [ false, %18 ], [ false, %23 ], [ false, %40 ]
  br i1 %46, label %50, label %51

47:                                               ; preds = %14
  %48 = getelementptr inbounds %struct.ref_cie_procs_s, ptr %2, i64 0, i32 2, i32 1
  store ptr @empty_procs, ptr %48, align 8, !tbaa !9
  store i16 1120, ptr %15, align 8, !tbaa !16
  %49 = getelementptr inbounds %struct.ref_cie_procs_s, ptr %2, i64 0, i32 2, i32 0, i32 1
  store i16 3, ptr %49, align 2, !tbaa !10
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %44, %50
  %52 = phi i32 [ 0, %50 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #6
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %96, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 2
  %56 = call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef 9, ptr noundef nonnull %55, ptr noundef nonnull @Matrix3_default) #6
  %57 = icmp eq i32 %56, 9
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 3
  %60 = call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 3, ptr noundef nonnull %59, ptr noundef null) #6
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 3, i32 1
  %64 = call i32 @dict_float_array_param(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef 3, ptr noundef nonnull %63, ptr noundef nonnull @BlackPoint_default) #6
  %65 = icmp eq i32 %64, 3
  br i1 %65, label %70, label %66

66:                                               ; preds = %62, %58
  %67 = phi i32 [ %60, %58 ], [ %64, %62 ]
  %68 = icmp slt i32 %67, 0
  %69 = select i1 %68, i32 %67, i32 -15
  br label %93

70:                                               ; preds = %62
  %71 = load float, ptr %59, align 4, !tbaa !23
  %72 = fcmp ugt float %71, 0.000000e+00
  br i1 %72, label %73, label %93

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 3, i32 0, i32 1
  %75 = load float, ptr %74, align 4, !tbaa !26
  %76 = fcmp une float %75, 1.000000e+00
  br i1 %76, label %93, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 3, i32 0, i32 2
  %79 = load float, ptr %78, align 4, !tbaa !27
  %80 = fcmp ugt float %79, 0.000000e+00
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load float, ptr %63, align 4, !tbaa !28
  %83 = fcmp olt float %82, 0.000000e+00
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 3, i32 1, i32 1
  %86 = load float, ptr %85, align 4, !tbaa !29
  %87 = fcmp olt float %86, 0.000000e+00
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 3, i32 1, i32 2
  %90 = load float, ptr %89, align 4, !tbaa !30
  %91 = fcmp olt float %90, 0.000000e+00
  br i1 %91, label %93, label %92

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %66, %70, %73, %77, %81, %84, %88, %92
  %94 = phi i32 [ %69, %66 ], [ 0, %92 ], [ -15, %88 ], [ -15, %84 ], [ -15, %81 ], [ -15, %77 ], [ -15, %73 ], [ -15, %70 ]
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %54, %51, %11
  %97 = phi i32 [ %12, %11 ], [ %52, %51 ], [ %56, %54 ], [ %94, %93 ]
  %98 = icmp slt i32 %97, 0
  %99 = select i1 %98, i32 %97, i32 -15
  br label %102

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.gs_cie_common_s, ptr %1, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %101, ptr noundef nonnull align 8 dereferenceable(24) @DecodeLMN_default, i64 24, i1 false), !tbaa.struct !86
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi i32 [ %99, %96 ], [ 0, %100 ]
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @set_cie_finish(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.ref_colorspace_s, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3)
  %4 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #6
  %5 = load ptr, ptr @igs, align 8, !tbaa !5
  %6 = tail call ptr @gs_state_client_data(ptr noundef %5) #6
  %7 = getelementptr inbounds %struct.int_gstate_s, ptr %6, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %7, i64 96, i1 false), !tbaa.struct !90
  %8 = load ptr, ptr @igs, align 8, !tbaa !5
  %9 = tail call ptr @gs_state_client_data(ptr noundef %8) #6
  %10 = getelementptr inbounds %struct.int_gstate_s, ptr %9, i64 0, i32 5, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !91
  %11 = load ptr, ptr @igs, align 8, !tbaa !5
  %12 = tail call i32 @gs_setcolorspace(ptr noundef %11, ptr noundef %0) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load ptr, ptr @igs, align 8, !tbaa !5
  %16 = tail call ptr @gs_state_client_data(ptr noundef %15) #6
  %17 = getelementptr inbounds %struct.int_gstate_s, ptr %16, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %17, ptr noundef nonnull align 8 dereferenceable(96) %3, i64 96, i1 false), !tbaa.struct !90
  %18 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #6
  %19 = sub i32 %18, %4
  tail call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %19) #6
  br label %26

20:                                               ; preds = %2
  %21 = load ptr, ptr @o_stack, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 -1
  store ptr %22, ptr @o_stack, align 8, !tbaa !47
  %23 = tail call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #6
  %24 = icmp eq i32 %23, %4
  %25 = select i1 %24, i32 0, i32 5
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i32 [ %12, %14 ], [ %25, %20 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3)
  ret i32 %27
}

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #2

declare i32 @gs_setcolorspace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_cie_abc_complete(ptr noundef) local_unnamed_addr #2

declare void @gs_cie_a_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @cs_install_zCIEDEFG(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 {
  ret i32 -21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @cs_install_zCIEDEF(ptr nocapture readnone %0, ptr nocapture readnone %1) #4 {
  ret i32 -21
}

; Function Attrs: nounwind uwtable
define internal i32 @cs_install_zCIEABC(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x ptr], align 16
  %4 = alloca [3 x ptr], align 16
  %5 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %6 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = tail call ptr @gs_state_client_data(ptr noundef %1) #6
  %9 = load ptr, ptr getelementptr inbounds (%struct.gs_color_space_type_s, ptr @gs_color_space_type_CIEABC, i64 0, i32 8), align 8, !tbaa !88
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %80, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.int_gstate_s, ptr %8, i64 0, i32 7, i32 1
  %14 = tail call i32 @cie_cache_joint(ptr noundef nonnull %13, ptr noundef %1) #6
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %80, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %18 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.ref_s, ptr %18, i64 -2
  %20 = icmp ugt ptr %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 2) #6
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %36

24:                                               ; preds = %21, %16
  %25 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1
  store ptr %26, ptr @e_stack, align 8, !tbaa !47
  %27 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1, i32 1
  store ptr @cie_abc_finish, ptr %27, align 8, !tbaa !9
  store i16 3968, ptr %26, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.ref_s, ptr %25, i64 1, i32 0, i32 1
  store i16 0, ptr %28, align 2, !tbaa !10
  %29 = getelementptr inbounds %struct.ref_s, ptr %25, i64 2
  store ptr %29, ptr @e_stack, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.ref_s, ptr %25, i64 2, i32 1
  store ptr %7, ptr %30, align 8, !tbaa !9
  %31 = tail call ptr @gs_state_memory(ptr noundef %1) #6
  %32 = tail call i32 @imemory_space(ptr noundef %31) #6
  %33 = trunc i32 %32 to i16
  %34 = add i16 %33, 2048
  %35 = load ptr, ptr @e_stack, align 8, !tbaa !47
  store i16 %34, ptr %35, align 8, !tbaa !16
  br label %36

36:                                               ; preds = %21, %24
  %37 = phi i32 [ %22, %21 ], [ 5, %24 ]
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %7, i64 0, i32 2
  %41 = getelementptr inbounds %struct.int_gstate_s, ptr %8, i64 0, i32 5, i32 1, i32 0, i32 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !9
  %43 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %7, i64 0, i32 5, i32 1
  %44 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %7, i64 0, i32 5, i32 1, i64 1
  %45 = getelementptr inbounds %struct.gs_cie_abc_s, ptr %7, i64 0, i32 5, i32 1, i64 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #6
  store ptr %43, ptr %4, align 16, !tbaa !5
  %46 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  store ptr %44, ptr %46, align 8, !tbaa !5
  %47 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 2
  store ptr %45, ptr %47, align 16, !tbaa !5
  br label %48

48:                                               ; preds = %48, %39
  %49 = phi i64 [ 0, %39 ], [ %56, %48 ]
  %50 = getelementptr inbounds %struct.gs_range_s, ptr %40, i64 %49
  %51 = getelementptr inbounds %struct.ref_s, ptr %42, i64 %49
  %52 = getelementptr inbounds ptr, ptr %4, i64 %49
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = tail call i32 @cie_prepare_cache(ptr noundef nonnull %50, ptr noundef %51, ptr noundef %53, ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.22)
  %55 = icmp slt i32 %54, 0
  %56 = add nuw nsw i64 %49, 1
  %57 = icmp eq i64 %56, 3
  %58 = select i1 %55, i1 true, i1 %57
  br i1 %58, label %59, label %48, !llvm.loop !60

59:                                               ; preds = %48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #6
  br i1 %55, label %80, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.int_gstate_s, ptr %8, i64 0, i32 5, i32 1, i32 0, i32 2, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %63 = getelementptr inbounds %struct.gs_cie_common_s, ptr %7, i64 0, i32 4
  %64 = getelementptr inbounds %struct.gs_cie_common_s, ptr %7, i64 0, i32 4, i32 0, i64 1
  %65 = getelementptr inbounds %struct.gs_cie_common_s, ptr %7, i64 0, i32 4, i32 0, i64 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr %63, ptr %3, align 16, !tbaa !5
  %66 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  store ptr %64, ptr %66, align 8, !tbaa !5
  %67 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  store ptr %65, ptr %67, align 16, !tbaa !5
  br label %68

68:                                               ; preds = %68, %60
  %69 = phi i64 [ 0, %60 ], [ %76, %68 ]
  %70 = getelementptr inbounds %struct.gs_range_s, ptr %7, i64 %69
  %71 = getelementptr inbounds %struct.ref_s, ptr %62, i64 %69
  %72 = getelementptr inbounds ptr, ptr %3, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = tail call i32 @cie_prepare_cache(ptr noundef %70, ptr noundef %71, ptr noundef %73, ptr noundef %7, ptr noundef %1, ptr noundef nonnull @.str.23)
  %75 = icmp slt i32 %74, 0
  %76 = add nuw nsw i64 %69, 1
  %77 = icmp eq i64 %76, 3
  %78 = select i1 %75, i1 true, i1 %77
  br i1 %78, label %79, label %68, !llvm.loop !60

79:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br i1 %75, label %80, label %82

80:                                               ; preds = %79, %59, %36, %12, %2
  %81 = phi i32 [ %10, %2 ], [ %14, %12 ], [ %37, %36 ], [ %54, %59 ], [ %74, %79 ]
  store ptr %5, ptr @e_stack, align 8, !tbaa !47
  br label %82

82:                                               ; preds = %79, %80
  %83 = phi i32 [ %81, %80 ], [ 5, %79 ]
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define internal i32 @cs_install_zCIEA(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x ptr], align 16
  %4 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !9
  %7 = tail call ptr @gs_state_client_data(ptr noundef %1) #6
  %8 = load ptr, ptr getelementptr inbounds (%struct.gs_color_space_type_s, ptr @gs_color_space_type_CIEA, i64 0, i32 8), align 8, !tbaa !88
  %9 = tail call i32 %8(ptr noundef %0, ptr noundef %1) #6
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %64, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.int_gstate_s, ptr %7, i64 0, i32 7, i32 1
  %13 = tail call i32 @cie_cache_joint(ptr noundef nonnull %12, ptr noundef %1) #6
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %17 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !49
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -2
  %19 = icmp ugt ptr %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 2) #6
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %35

23:                                               ; preds = %20, %15
  %24 = load ptr, ptr @e_stack, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.ref_s, ptr %24, i64 1
  store ptr %25, ptr @e_stack, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.ref_s, ptr %24, i64 1, i32 1
  store ptr @cie_a_finish, ptr %26, align 8, !tbaa !9
  store i16 3968, ptr %25, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.ref_s, ptr %24, i64 1, i32 0, i32 1
  store i16 0, ptr %27, align 2, !tbaa !10
  %28 = getelementptr inbounds %struct.ref_s, ptr %24, i64 2
  store ptr %28, ptr @e_stack, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct.ref_s, ptr %24, i64 2, i32 1
  store ptr %6, ptr %29, align 8, !tbaa !9
  %30 = tail call ptr @gs_state_memory(ptr noundef %1) #6
  %31 = tail call i32 @imemory_space(ptr noundef %30) #6
  %32 = trunc i32 %31 to i16
  %33 = add i16 %32, 2048
  %34 = load ptr, ptr @e_stack, align 8, !tbaa !47
  store i16 %33, ptr %34, align 8, !tbaa !16
  br label %35

35:                                               ; preds = %20, %23
  %36 = phi i32 [ %21, %20 ], [ 5, %23 ]
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.gs_cie_a_s, ptr %6, i64 0, i32 2
  %40 = getelementptr inbounds %struct.int_gstate_s, ptr %7, i64 0, i32 5, i32 1, i32 0, i32 1
  %41 = getelementptr inbounds %struct.gs_cie_a_s, ptr %6, i64 0, i32 5
  %42 = tail call i32 @cie_prepare_cache(ptr noundef nonnull %39, ptr noundef nonnull %40, ptr noundef nonnull %41, ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.24)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.int_gstate_s, ptr %7, i64 0, i32 5, i32 1, i32 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.gs_cie_common_s, ptr %6, i64 0, i32 4
  %48 = getelementptr inbounds %struct.gs_cie_common_s, ptr %6, i64 0, i32 4, i32 0, i64 1
  %49 = getelementptr inbounds %struct.gs_cie_common_s, ptr %6, i64 0, i32 4, i32 0, i64 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr %47, ptr %3, align 16, !tbaa !5
  %50 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 1
  store ptr %48, ptr %50, align 8, !tbaa !5
  %51 = getelementptr inbounds [3 x ptr], ptr %3, i64 0, i64 2
  store ptr %49, ptr %51, align 16, !tbaa !5
  br label %52

52:                                               ; preds = %52, %44
  %53 = phi i64 [ 0, %44 ], [ %60, %52 ]
  %54 = getelementptr inbounds %struct.gs_range_s, ptr %6, i64 %53
  %55 = getelementptr inbounds %struct.ref_s, ptr %46, i64 %53
  %56 = getelementptr inbounds ptr, ptr %3, i64 %53
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = tail call i32 @cie_prepare_cache(ptr noundef %54, ptr noundef %55, ptr noundef %57, ptr noundef %6, ptr noundef %1, ptr noundef nonnull @.str.23)
  %59 = icmp slt i32 %58, 0
  %60 = add nuw nsw i64 %53, 1
  %61 = icmp eq i64 %60, 3
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %63, label %52, !llvm.loop !60

63:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br i1 %59, label %64, label %66

64:                                               ; preds = %63, %38, %35, %11, %2
  %65 = phi i32 [ %9, %2 ], [ %13, %11 ], [ %36, %35 ], [ %42, %38 ], [ %58, %63 ]
  store ptr %4, ptr @e_stack, align 8, !tbaa !47
  br label %66

66:                                               ; preds = %63, %64
  %67 = phi i32 [ %65, %64 ], [ 5, %63 ]
  ret i32 %67
}

declare i32 @cie_cache_joint(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !13, i64 2}
!11 = !{!"ref_s", !12, i64 0, !7, i64 8}
!12 = !{!"tas_s", !13, i64 0, !13, i64 2}
!13 = !{!"short", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{!11, !13, i64 0}
!17 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5}
!18 = !{!13, !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !7, i64 0}
!23 = !{!24, !22, i64 0}
!24 = !{!"gs_cie_wb_s", !25, i64 0, !25, i64 12}
!25 = !{!"gs_vector3_s", !22, i64 0, !22, i64 4, !22, i64 8}
!26 = !{!24, !22, i64 4}
!27 = !{!24, !22, i64 8}
!28 = !{!24, !22, i64 12}
!29 = !{!24, !22, i64 16}
!30 = !{!24, !22, i64 20}
!31 = !{!32, !33, i64 0}
!32 = !{!"gx_color_lookup_table_s", !33, i64 0, !7, i64 4, !33, i64 20, !6, i64 24}
!33 = !{!"int", !7, i64 0}
!34 = !{!32, !33, i64 20}
!35 = !{!33, !33, i64 0}
!36 = distinct !{!36, !15}
!37 = !{!38, !6, i64 32}
!38 = !{!"gs_memory_s", !39, i64 0}
!39 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!40 = distinct !{!40, !15}
!41 = !{!42, !6, i64 0}
!42 = !{!"gs_const_string_s", !6, i64 0, !33, i64 8}
!43 = !{!42, !33, i64 8}
!44 = distinct !{!44, !15}
!45 = !{!38, !6, i64 88}
!46 = !{!32, !6, i64 24}
!47 = !{!48, !6, i64 0}
!48 = !{!"ref_stack_s", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !33, i64 40, !33, i64 44, !11, i64 48, !33, i64 64, !33, i64 68, !33, i64 72, !33, i64 76, !33, i64 80, !11, i64 88, !33, i64 104, !33, i64 108, !33, i64 112, !6, i64 120}
!49 = !{!48, !6, i64 16}
!50 = !{!51, !33, i64 0}
!51 = !{!"gx_cie_cache_s", !52, i64 0, !7, i64 12}
!52 = !{!"cie_cache_params_s", !33, i64 0, !22, i64 4, !22, i64 8}
!53 = !{!54, !22, i64 0}
!54 = !{!"gs_for_loop_params_s", !22, i64 0, !22, i64 4, !22, i64 8}
!55 = !{!54, !22, i64 4}
!56 = !{!54, !22, i64 8}
!57 = !{!48, !6, i64 8}
!58 = !{!48, !33, i64 64}
!59 = distinct !{!59, !15}
!60 = distinct !{!60, !15}
!61 = !{!62, !13, i64 0}
!62 = !{!"dict_s", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 48}
!63 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 2, !18, i64 18, i64 2, !18, i64 24, i64 8, !19, i64 24, i64 2, !18, i64 24, i64 4, !21, i64 24, i64 8, !19, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 16, i64 2, !18, i64 18, i64 2, !18, i64 24, i64 8, !19, i64 24, i64 2, !18, i64 24, i64 4, !21, i64 24, i64 8, !19, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 2, !18, i64 34, i64 2, !18, i64 40, i64 8, !19, i64 40, i64 2, !18, i64 40, i64 4, !21, i64 40, i64 8, !19, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 2, !18, i64 50, i64 2, !18, i64 56, i64 8, !19, i64 56, i64 2, !18, i64 56, i64 4, !21, i64 56, i64 8, !19, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 2, !18, i64 66, i64 2, !18, i64 72, i64 8, !19, i64 72, i64 2, !18, i64 72, i64 4, !21, i64 72, i64 8, !19, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 48, i64 2, !18, i64 50, i64 2, !18, i64 56, i64 8, !19, i64 56, i64 2, !18, i64 56, i64 4, !21, i64 56, i64 8, !19, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5}
!64 = !{!38, !6, i64 16}
!65 = !{!66, !20, i64 6296}
!66 = !{!"gs_cie_a_s", !67, i64 0, !72, i64 6296, !73, i64 6320, !6, i64 6328, !25, i64 6336, !71, i64 6348}
!67 = !{!"gs_cie_common_s", !68, i64 0, !69, i64 24, !70, i64 48, !24, i64 88, !71, i64 112}
!68 = !{!"gs_range3_s", !7, i64 0}
!69 = !{!"gs_cie_common_proc3_s", !7, i64 0}
!70 = !{!"gs_matrix3_s", !25, i64 0, !25, i64 12, !25, i64 24, !33, i64 36}
!71 = !{!"", !7, i64 0}
!72 = !{!"rc_header_s", !20, i64 0, !6, i64 8, !6, i64 16}
!73 = !{!"gs_range_s", !22, i64 0, !22, i64 4}
!74 = !{!66, !6, i64 6304}
!75 = !{!66, !6, i64 6312}
!76 = !{i32 10, i32 9}
!77 = !{!66, !6, i64 6328}
!78 = !{!79, !6, i64 0}
!79 = !{!"gs_color_space_s", !6, i64 0, !7, i64 8}
!80 = !{!81, !20, i64 6296}
!81 = !{!"gs_cie_abc_s", !67, i64 0, !72, i64 6296, !68, i64 6320, !82, i64 6344, !70, i64 6368, !83, i64 6408}
!82 = !{!"gs_cie_abc_proc3_s", !7, i64 0}
!83 = !{!"", !33, i64 0, !7, i64 4}
!84 = !{!81, !6, i64 6304}
!85 = !{!81, !6, i64 6312}
!86 = !{i64 0, i64 24, !9}
!87 = !{i64 0, i64 4, !35, i64 4, i64 4, !35, i64 8, i64 4, !35, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 8, !5, i64 88, i64 8, !5}
!88 = !{!89, !6, i64 56}
!89 = !{!"gs_color_space_type_s", !33, i64 0, !33, i64 4, !33, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88}
!90 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 2, !18, i64 18, i64 2, !18, i64 24, i64 8, !19, i64 24, i64 2, !18, i64 24, i64 4, !21, i64 24, i64 8, !19, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 16, i64 2, !18, i64 18, i64 2, !18, i64 24, i64 8, !19, i64 24, i64 2, !18, i64 24, i64 4, !21, i64 24, i64 8, !19, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 2, !18, i64 34, i64 2, !18, i64 40, i64 8, !19, i64 40, i64 2, !18, i64 40, i64 4, !21, i64 40, i64 8, !19, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 32, i64 2, !18, i64 34, i64 2, !18, i64 40, i64 8, !19, i64 40, i64 2, !18, i64 40, i64 4, !21, i64 40, i64 8, !19, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 2, !18, i64 50, i64 2, !18, i64 56, i64 8, !19, i64 56, i64 2, !18, i64 56, i64 4, !21, i64 56, i64 8, !19, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 2, !18, i64 66, i64 2, !18, i64 72, i64 8, !19, i64 72, i64 2, !18, i64 72, i64 4, !21, i64 72, i64 8, !19, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 2, !18, i64 82, i64 2, !18, i64 88, i64 8, !19, i64 88, i64 2, !18, i64 88, i64 4, !21, i64 88, i64 8, !19, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 88, i64 8, !5, i64 64, i64 2, !18, i64 66, i64 2, !18, i64 72, i64 8, !19, i64 72, i64 2, !18, i64 72, i64 4, !21, i64 72, i64 8, !19, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5, i64 72, i64 8, !5}
!91 = !{i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 0, i64 2, !18, i64 2, i64 2, !18, i64 8, i64 8, !19, i64 8, i64 2, !18, i64 8, i64 4, !21, i64 8, i64 8, !19, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 2, !18, i64 18, i64 2, !18, i64 24, i64 8, !19, i64 24, i64 2, !18, i64 24, i64 4, !21, i64 24, i64 8, !19, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 16, i64 2, !18, i64 18, i64 2, !18, i64 24, i64 8, !19, i64 24, i64 2, !18, i64 24, i64 4, !21, i64 24, i64 8, !19, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 2, !18, i64 34, i64 2, !18, i64 40, i64 8, !19, i64 40, i64 2, !18, i64 40, i64 4, !21, i64 40, i64 8, !19, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5, i64 40, i64 8, !5}
