; ModuleID = 'zht1.c'
source_filename = "zht1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, ptr, float, float }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32 }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon.0, %union.anon.0, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.4, %struct.ref_s, %struct.ref_s }
%union.anon.0 = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.3 }
%struct.ref_cie_procs_s = type { %union.anon.1, %union.anon.2, %struct.ref_s }
%union.anon.1 = type { %struct.ref_s }
%union.anon.2 = type { %struct.ref_s }
%union.anon.3 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.4 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }

@zht1_op_defs.op_defs_ = internal constant [3 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zsetcolorscreen }, %struct.op_def { ptr @.str.1, ptr @setcolorscreen_finish }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"<setcolorscreen\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"0%setcolorscreen_finish\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@st_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"setcolorscreen(halftone)\00", align 1
@st_device_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"setcolorscreen(device halftone)\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"setcolorscreen_cleanup(device halftone)\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"setcolorscreen_cleanup(halftone)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @spot_dummy(double noundef %0, double noundef %1) #0 {
  %3 = fadd double %0, %1
  %4 = fmul double %3, 5.000000e-01
  %5 = fptrunc double %4 to float
  ret float %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zht1_op_defs() local_unnamed_addr #0 {
  ret ptr @zht1_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zsetcolorscreen(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_colorscreen_halftone_s, align 8
  %3 = alloca [4 x %struct.ref_s], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -9
  br label %8

5:                                                ; preds = %25
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, 4
  br i1 %7, label %28, label %8, !llvm.loop !5

8:                                                ; preds = %1, %5
  %9 = phi i64 [ 0, %1 ], [ %6, %5 ]
  %10 = phi i32 [ undef, %1 ], [ %27, %5 ]
  %11 = phi i32 [ 0, %1 ], [ %26, %5 ]
  %12 = mul nuw nsw i64 %9, 3
  %13 = getelementptr inbounds %struct.ref_s, ptr %4, i64 %12
  %14 = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], ptr %2, i64 0, i64 %9
  %15 = call i32 @zscreen_params(ptr noundef nonnull %13, ptr noundef nonnull %14) #6
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %25

17:                                               ; preds = %8
  %18 = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], ptr %2, i64 0, i64 %9, i32 2
  store ptr @spot_dummy, ptr %18, align 8, !tbaa !7
  %19 = getelementptr inbounds [4 x %struct.ref_s], ptr %3, i64 0, i64 %9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !10
  %20 = load i16, ptr %13, align 8, !tbaa !19
  %21 = lshr i16 %20, 2
  %22 = and i16 %21, 3
  %23 = zext nneg i16 %22 to i32
  %24 = call i32 @llvm.smax.i32(i32 %11, i32 %23)
  br label %25

25:                                               ; preds = %8, %17
  %26 = phi i32 [ %24, %17 ], [ %11, %8 ]
  %27 = phi i32 [ %10, %17 ], [ %15, %8 ]
  br i1 %16, label %5, label %116

28:                                               ; preds = %5
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [4 x ptr], ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1), i64 0, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %33 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !25
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 -8
  %35 = icmp ugt ptr %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 8) #6
  %38 = icmp sgt i32 %37, -1
  %39 = select i1 %38, i32 %27, i32 %37
  br i1 %38, label %40, label %116

40:                                               ; preds = %28, %36
  %41 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %31, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !26
  %43 = call ptr %42(ptr noundef %31, ptr noundef nonnull @st_halftone, ptr noundef nonnull @.str.2) #6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.gs_halftone_s, ptr %43, i64 0, i32 1
  store i64 0, ptr %46, align 8, !tbaa !29
  %47 = getelementptr inbounds %struct.gs_halftone_s, ptr %43, i64 0, i32 1, i32 1
  store ptr %31, ptr %47, align 8, !tbaa !32
  %48 = getelementptr inbounds %struct.gs_halftone_s, ptr %43, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %48, align 8, !tbaa !33
  br label %49

49:                                               ; preds = %40, %45
  %50 = phi ptr [ %43, %45 ], [ null, %40 ]
  %51 = load ptr, ptr %41, align 8, !tbaa !26
  %52 = call ptr %51(ptr noundef %31, ptr noundef nonnull @st_device_halftone, ptr noundef nonnull @.str.3) #6
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %52, i64 0, i32 1
  store i64 0, ptr %55, align 8, !tbaa !34
  %56 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %52, i64 0, i32 1, i32 1
  store ptr %31, ptr %56, align 8, !tbaa !38
  %57 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %52, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %57, align 8, !tbaa !39
  br label %58

58:                                               ; preds = %49, %54
  %59 = phi ptr [ %52, %54 ], [ null, %49 ]
  %60 = icmp eq ptr %50, null
  %61 = icmp eq ptr %59, null
  %62 = or i1 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  store i32 2, ptr %50, align 8, !tbaa !40
  %64 = getelementptr inbounds %struct.gs_halftone_s, ptr %50, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %64, ptr noundef nonnull align 8 dereferenceable(96) %2, i64 96, i1 false), !tbaa.struct !41
  %65 = load ptr, ptr @igs, align 8, !tbaa !17
  %66 = call i32 @gs_sethalftone_prepare(ptr noundef %65, ptr noundef nonnull %50, ptr noundef %59) #6
  br label %67

67:                                               ; preds = %58, %63
  %68 = phi i32 [ %66, %63 ], [ -25, %58 ]
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.ref_s, ptr %71, i64 8
  store ptr %72, ptr @e_stack, align 8, !tbaa !22
  %73 = getelementptr inbounds %struct.ref_s, ptr %71, i64 1, i32 1
  store ptr @setcolorscreen_cleanup, ptr %73, align 8, !tbaa !7
  %74 = getelementptr inbounds %struct.ref_s, ptr %71, i64 1
  store i16 3712, ptr %74, align 8, !tbaa !19
  %75 = getelementptr inbounds %struct.ref_s, ptr %71, i64 1, i32 0, i32 1
  store i16 0, ptr %75, align 2, !tbaa !42
  %76 = getelementptr inbounds %struct.ref_s, ptr %71, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %76, ptr noundef nonnull align 16 dereferenceable(64) %3, i64 64, i1 false)
  %77 = getelementptr %struct.ref_s, ptr %71, i64 6, i32 1
  store ptr %50, ptr %77, align 8, !tbaa !7
  %78 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !43
  %79 = trunc i32 %78 to i16
  %80 = add i16 %79, 2048
  %81 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %82 = getelementptr inbounds %struct.ref_s, ptr %81, i64 -2
  store i16 %80, ptr %82, align 8, !tbaa !19
  %83 = getelementptr %struct.ref_s, ptr %81, i64 -1, i32 1
  store ptr %59, ptr %83, align 8, !tbaa !7
  %84 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !43
  %85 = trunc i32 %84 to i16
  %86 = add i16 %85, 2048
  %87 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %88 = getelementptr inbounds %struct.ref_s, ptr %87, i64 -1
  store i16 %86, ptr %88, align 8, !tbaa !19
  %89 = getelementptr inbounds %struct.ref_s, ptr %87, i64 0, i32 1
  store ptr @setcolorscreen_finish, ptr %89, align 8, !tbaa !7
  store i16 3968, ptr %87, align 8, !tbaa !19
  %90 = getelementptr inbounds %struct.tas_s, ptr %87, i64 0, i32 1
  store i16 0, ptr %90, align 2, !tbaa !42
  %91 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %59, i64 0, i32 3
  %92 = getelementptr inbounds %struct.gs_halftone_s, ptr %50, i64 0, i32 2
  br label %95

93:                                               ; preds = %95
  %94 = icmp eq i64 %98, 4
  br i1 %94, label %106, label %95, !llvm.loop !45

95:                                               ; preds = %70, %93
  %96 = phi i64 [ 0, %70 ], [ %98, %93 ]
  %97 = load ptr, ptr %91, align 8, !tbaa !46
  %98 = add nuw nsw i64 %96, 1
  %99 = and i64 %98, 3
  %100 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %97, i64 %99
  %101 = getelementptr inbounds [4 x %struct.gs_screen_halftone_s], ptr %92, i64 0, i64 %96
  %102 = getelementptr inbounds [4 x %struct.ref_s], ptr %3, i64 0, i64 %96
  %103 = call i32 @zscreen_enum_init(ptr noundef %0, ptr noundef %100, ptr noundef nonnull %101, ptr noundef nonnull %102, i32 noundef 0, ptr noundef null, ptr noundef %31) #6
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %93, !llvm.loop !45

105:                                              ; preds = %95
  store ptr %71, ptr @e_stack, align 8, !tbaa !22
  br label %106

106:                                              ; preds = %93, %105, %67
  %107 = phi i32 [ %68, %67 ], [ %103, %105 ], [ %103, %93 ]
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %31, i64 0, i32 11
  %111 = load ptr, ptr %110, align 8, !tbaa !47
  call void %111(ptr noundef %31, ptr noundef %59, ptr noundef nonnull @.str.3) #6
  %112 = load ptr, ptr %110, align 8, !tbaa !47
  call void %112(ptr noundef %31, ptr noundef %50, ptr noundef nonnull @.str.2) #6
  br label %116

113:                                              ; preds = %106
  %114 = load ptr, ptr @o_stack, align 8, !tbaa !22
  %115 = getelementptr inbounds %struct.ref_s, ptr %114, i64 -12
  store ptr %115, ptr @o_stack, align 8, !tbaa !22
  br label %116

116:                                              ; preds = %25, %36, %113, %109
  %117 = phi i32 [ %107, %109 ], [ 5, %113 ], [ %39, %36 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %2) #6
  ret i32 %117
}

; Function Attrs: nounwind uwtable
define internal i32 @setcolorscreen_finish(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 96, i1 false), !tbaa.struct !48
  %7 = load ptr, ptr @igs, align 8, !tbaa !17
  %8 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %9 = getelementptr %struct.ref_s, ptr %8, i64 -1, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = tail call i32 @gx_ht_install(ptr noundef %7, ptr noundef %10, ptr noundef %4) #6
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr @igs, align 8, !tbaa !17
  %15 = tail call ptr @gs_state_client_data(ptr noundef %14) #6
  %16 = getelementptr inbounds %struct.int_gstate_s, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %18, i64 64, i1 false)
  %19 = load ptr, ptr @igs, align 8, !tbaa !17
  %20 = tail call ptr @gs_state_client_data(ptr noundef %19) #6
  %21 = getelementptr inbounds %struct.int_gstate_s, ptr %20, i64 0, i32 8
  store i16 3584, ptr %21, align 8, !tbaa !50
  %22 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 -7
  store ptr %23, ptr @e_stack, align 8, !tbaa !22
  %24 = getelementptr %struct.ref_s, ptr %22, i64 -1, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = getelementptr inbounds %struct.ref_s, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %27, i64 0, i32 1, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %29, i64 0, i32 11
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  tail call void %31(ptr noundef %29, ptr noundef %27, ptr noundef nonnull @.str.4) #6
  %32 = getelementptr inbounds %struct.gs_halftone_s, ptr %25, i64 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %33, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  tail call void %35(ptr noundef %33, ptr noundef %25, ptr noundef nonnull @.str.5) #6
  br label %36

36:                                               ; preds = %1, %13
  %37 = phi i32 [ 14, %13 ], [ %11, %1 ]
  ret i32 %37
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @zscreen_params(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @gs_sethalftone_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @setcolorscreen_cleanup(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 6, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.ref_s, ptr %2, i64 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %6, i64 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  tail call void %10(ptr noundef %8, ptr noundef %6, ptr noundef nonnull @.str.4) #6
  %11 = getelementptr inbounds %struct.gs_halftone_s, ptr %4, i64 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  tail call void %14(ptr noundef %12, ptr noundef %4, ptr noundef nonnull @.str.5) #6
  ret i32 0
}

declare i32 @zscreen_enum_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_ht_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{i64 0, i64 2, !11, i64 2, i64 2, !11, i64 8, i64 8, !13, i64 8, i64 2, !11, i64 8, i64 4, !15, i64 8, i64 8, !13, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17, i64 8, i64 8, !17}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"float", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !8, i64 0}
!19 = !{!20, !12, i64 0}
!20 = !{!"ref_s", !21, i64 0, !8, i64 8}
!21 = !{!"tas_s", !12, i64 0, !12, i64 2}
!22 = !{!23, !18, i64 0}
!23 = !{!"ref_stack_s", !18, i64 0, !18, i64 8, !18, i64 16, !20, i64 24, !24, i64 40, !24, i64 44, !20, i64 48, !24, i64 64, !24, i64 68, !24, i64 72, !24, i64 76, !24, i64 80, !20, i64 88, !24, i64 104, !24, i64 108, !24, i64 112, !18, i64 120}
!24 = !{!"int", !8, i64 0}
!25 = !{!23, !18, i64 16}
!26 = !{!27, !18, i64 16}
!27 = !{!"gs_memory_s", !28, i64 0}
!28 = !{!"gs_memory_procs_s", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152}
!29 = !{!30, !14, i64 8}
!30 = !{!"gs_halftone_s", !24, i64 0, !31, i64 8, !8, i64 32}
!31 = !{!"rc_header_s", !14, i64 0, !18, i64 8, !18, i64 16}
!32 = !{!30, !18, i64 16}
!33 = !{!30, !18, i64 24}
!34 = !{!35, !14, i64 96}
!35 = !{!"gx_device_halftone_s", !36, i64 0, !31, i64 96, !14, i64 120, !18, i64 128, !24, i64 136, !8, i64 140, !24, i64 156, !24, i64 160}
!36 = !{!"gx_ht_order_s", !37, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !24, i64 52, !24, i64 56, !24, i64 60, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88}
!37 = !{!"gx_ht_cell_params_s", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !14, i64 16, !12, i64 24, !12, i64 26, !24, i64 28, !24, i64 32, !24, i64 36}
!38 = !{!35, !18, i64 104}
!39 = !{!35, !18, i64 112}
!40 = !{!30, !24, i64 0}
!41 = !{i64 0, i64 96, !7, i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 8, !17, i64 16, i64 4, !15, i64 20, i64 4, !15, i64 24, i64 4, !15, i64 28, i64 4, !15, i64 32, i64 8, !17, i64 40, i64 4, !15, i64 44, i64 4, !15, i64 48, i64 4, !15, i64 52, i64 4, !15, i64 56, i64 8, !17, i64 64, i64 4, !15, i64 68, i64 4, !15, i64 72, i64 4, !15, i64 76, i64 4, !15, i64 80, i64 8, !17, i64 88, i64 4, !15, i64 92, i64 4, !15}
!42 = !{!20, !12, i64 2}
!43 = !{!44, !24, i64 40}
!44 = !{!"gs_dual_memory_s", !18, i64 0, !8, i64 8, !24, i64 40, !24, i64 44, !18, i64 48, !24, i64 56, !24, i64 60}
!45 = distinct !{!45, !6}
!46 = !{!35, !18, i64 128}
!47 = !{!27, !18, i64 88}
!48 = !{i64 0, i64 2, !11, i64 2, i64 2, !11, i64 4, i64 2, !11, i64 6, i64 2, !11, i64 8, i64 2, !11, i64 10, i64 2, !11, i64 16, i64 8, !13, i64 24, i64 2, !11, i64 26, i64 2, !11, i64 28, i64 4, !49, i64 32, i64 4, !49, i64 36, i64 4, !49, i64 40, i64 2, !11, i64 42, i64 2, !11, i64 44, i64 2, !11, i64 46, i64 2, !11, i64 48, i64 2, !11, i64 50, i64 2, !11, i64 52, i64 4, !49, i64 56, i64 4, !49, i64 60, i64 4, !49, i64 64, i64 8, !17, i64 72, i64 8, !17, i64 80, i64 8, !17, i64 88, i64 8, !17}
!49 = !{!24, !24, i64 0}
!50 = !{!51, !12, i64 368}
!51 = !{!"int_gstate_s", !20, i64 0, !8, i64 16, !8, i64 80, !20, i64 144, !20, i64 160, !52, i64 176, !20, i64 272, !55, i64 288, !20, i64 368, !20, i64 384}
!52 = !{!"ref_colorspace_s", !20, i64 0, !53, i64 16}
!53 = !{!"ref_color_procs_s", !54, i64 0, !8, i64 48}
!54 = !{!"ref_cie_procs_s", !8, i64 0, !8, i64 16, !20, i64 32}
!55 = !{!"", !20, i64 0, !56, i64 16}
!56 = !{!"ref_cie_render_procs_s", !20, i64 0, !20, i64 16, !20, i64 32, !20, i64 48}
