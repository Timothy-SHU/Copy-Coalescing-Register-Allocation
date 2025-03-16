; ModuleID = 'zht2.c'
source_filename = "zht2.c"
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
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_halftone_s = type { i32, %struct.rc_header_s, %union.anon }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon = type { %struct.gs_colorscreen_halftone_s }
%struct.gs_colorscreen_halftone_s = type { %union._css }
%union._css = type { [4 x %struct.gs_screen_halftone_s] }
%struct.gs_screen_halftone_s = type { float, float, ptr, float, float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.gs_halftone_component_s = type { i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.gs_spot_halftone_s }
%struct.gs_spot_halftone_s = type { %struct.gs_screen_halftone_s, i32, ptr }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32 }
%struct.int_gstate_s = type { %struct.ref_s, %union.anon.1, %union.anon.1, %struct.ref_s, %struct.ref_s, %struct.ref_colorspace_s, %struct.ref_s, %struct.anon.5, %struct.ref_s, %struct.ref_s }
%union.anon.1 = type { [4 x %struct.ref_s] }
%struct.ref_colorspace_s = type { %struct.ref_s, %struct.ref_color_procs_s }
%struct.ref_color_procs_s = type { %struct.ref_cie_procs_s, %union.anon.4 }
%struct.ref_cie_procs_s = type { %union.anon.2, %union.anon.3, %struct.ref_s }
%union.anon.2 = type { %struct.ref_s }
%union.anon.3 = type { %struct.ref_s }
%union.anon.4 = type { %struct.ref_separation_params_s }
%struct.ref_separation_params_s = type { %struct.ref_s, %struct.ref_s }
%struct.anon.5 = type { %struct.ref_s, %struct.ref_cie_render_procs_s }
%struct.ref_cie_render_procs_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.gs_threshold_halftone_s = type { i32, i32, %struct.gs_const_string_s, ptr }
%struct.gs_const_string_s = type { ptr, i32 }

@zht2_l2_op_defs.op_defs_ = internal constant [4 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zsethalftone5 }, %struct.op_def { ptr @.str.2, ptr @sethalftone_finish }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"level2dict\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"2.sethalftone5\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"0%sethalftone_finish\00", align 1
@zsethalftone5.color_names = internal unnamed_addr constant [9 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Gray\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"Red\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Green\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"Blue\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Cyan\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Magenta\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Yellow\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@e_stack = external global %struct.ref_stack_s, align 8
@st_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c".sethalftone5\00", align 1
@st_ht_component_element = external constant %struct.gs_memory_struct_type_s, align 8
@st_device_halftone = external constant %struct.gs_memory_struct_type_s, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c"HalftoneType\00", align 1
@igs = external local_unnamed_addr global ptr, align 8
@o_stack = external global %struct.ref_stack_s, align 8
@zcolor_remap_one_ostack = external local_unnamed_addr constant i32, align 4
@zcolor_remap_one_estack = external local_unnamed_addr constant i32, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"Frequency\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"Angle\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"SpotFunction\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"AccurateScreens\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"TransferFunction\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Width\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"Height\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"Thresholds\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"ActualFrequency\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"ActualAngle\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"sethalftone_cleanup(device halftone)\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"sethalftone_cleanup(halftone)\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zht2_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @zht2_l2_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zsethalftone5(ptr noundef %0) #1 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ref_s, align 8
  %6 = alloca [9 x %struct.ref_s], align 16
  %7 = alloca [9 x %struct.ref_s], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca %struct.ref_s, align 8
  %14 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #5
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !5
  %17 = icmp eq i8 %16, 2
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = tail call i32 @check_type_failed(ptr noundef %0) #5
  br label %368

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i16, ptr %22, align 8, !tbaa !8
  %24 = and i16 %23, 32
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %368, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %28 = getelementptr inbounds i8, ptr %0, i64 -15
  %29 = load i8, ptr %28, align 1, !tbaa !5
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @check_type_failed(ptr noundef nonnull %27) #5
  br label %368

33:                                               ; preds = %26
  %34 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = load i16, ptr %35, align 8, !tbaa !8
  %37 = and i16 %36, 32
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %368, label %44

39:                                               ; preds = %44
  %40 = zext i1 %50 to i32
  %41 = add i32 %46, %40
  %42 = add nuw nsw i64 %45, 1
  %43 = icmp eq i64 %42, 9
  br i1 %43, label %53, label %44, !llvm.loop !13

44:                                               ; preds = %33, %39
  %45 = phi i64 [ %42, %39 ], [ 0, %33 ]
  %46 = phi i32 [ %41, %39 ], [ 0, %33 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #5
  %47 = getelementptr inbounds [9 x ptr], ptr @zsethalftone5.color_names, i64 0, i64 %45
  %48 = load ptr, ptr %47, align 8, !tbaa !15
  %49 = call i32 @dict_find_string(ptr noundef %0, ptr noundef %48, ptr noundef nonnull %8) #5
  %50 = icmp sgt i32 %49, 0
  %51 = icmp ne i64 %45, 0
  %52 = or i1 %50, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #5
  br i1 %52, label %39, label %368

53:                                               ; preds = %39
  %54 = load i16, ptr %27, align 8, !tbaa !17
  %55 = lshr i16 %54, 2
  %56 = and i16 %55, 3
  %57 = zext nneg i16 %56 to i64
  %58 = getelementptr inbounds [4 x ptr], ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1), i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %61 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !21
  %62 = getelementptr inbounds %struct.ref_s, ptr %61, i64 -5
  %63 = icmp ugt ptr %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef 5) #5
  %66 = icmp sgt i32 %65, -1
  %67 = select i1 %66, i32 -20, i32 %65
  br i1 %66, label %68, label %368

68:                                               ; preds = %64, %53
  %69 = phi i32 [ %67, %64 ], [ -20, %53 ]
  call void @refset_null(ptr noundef nonnull %6, i32 noundef 9) #5
  call void @refset_null(ptr noundef nonnull %7, i32 noundef 9) #5
  %70 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !24
  %73 = call ptr %72(ptr noundef %70, ptr noundef nonnull @st_halftone, ptr noundef nonnull @.str.12) #5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.gs_halftone_s, ptr %73, i64 0, i32 1
  store i64 0, ptr %76, align 8, !tbaa !27
  %77 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %78 = getelementptr inbounds %struct.gs_halftone_s, ptr %73, i64 0, i32 1, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !31
  %79 = getelementptr inbounds %struct.gs_halftone_s, ptr %73, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %79, align 8, !tbaa !32
  br label %80

80:                                               ; preds = %68, %75
  %81 = phi ptr [ %73, %75 ], [ null, %68 ]
  %82 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %59, i64 0, i32 6
  %83 = load ptr, ptr %82, align 8, !tbaa !33
  %84 = call ptr %83(ptr noundef %59, i32 noundef %41, ptr noundef nonnull @st_ht_component_element, ptr noundef nonnull @.str.12) #5
  %85 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !24
  %88 = call ptr %87(ptr noundef %85, ptr noundef nonnull @st_device_halftone, ptr noundef nonnull @.str.12) #5
  %89 = icmp eq ptr %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %88, i64 0, i32 1
  store i64 0, ptr %91, align 8, !tbaa !34
  %92 = load ptr, ptr @gs_imemory, align 8, !tbaa !22
  %93 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %88, i64 0, i32 1, i32 1
  store ptr %92, ptr %93, align 8, !tbaa !38
  %94 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %88, i64 0, i32 1, i32 2
  store ptr @rc_free_struct_only, ptr %94, align 8, !tbaa !39
  br label %95

95:                                               ; preds = %80, %90
  %96 = phi ptr [ %88, %90 ], [ null, %80 ]
  %97 = icmp eq ptr %81, null
  %98 = icmp eq ptr %84, null
  %99 = select i1 %97, i1 true, i1 %98
  %100 = icmp eq ptr %96, null
  %101 = or i1 %99, %100
  br i1 %101, label %162, label %102

102:                                              ; preds = %95, %159
  %103 = phi i64 [ %160, %159 ], [ 0, %95 ]
  %104 = phi i32 [ %158, %159 ], [ %69, %95 ]
  %105 = phi ptr [ %157, %159 ], [ %84, %95 ]
  %106 = phi i32 [ %156, %159 ], [ 0, %95 ]
  %107 = phi i32 [ %154, %159 ], [ 0, %95 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #5
  %108 = getelementptr inbounds [9 x ptr], ptr @zsethalftone5.color_names, i64 0, i64 %103
  %109 = load ptr, ptr %108, align 8, !tbaa !15
  %110 = call i32 @dict_find_string(ptr noundef %0, ptr noundef %109, ptr noundef nonnull %10) #5
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %153

112:                                              ; preds = %102
  %113 = load ptr, ptr %10, align 8, !tbaa !15
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !5
  %116 = icmp eq i8 %115, 2
  br i1 %116, label %117, label %153

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.ref_s, ptr %113, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = load i16, ptr %119, align 8, !tbaa !8
  %121 = and i16 %120, 32
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %153, label %123

123:                                              ; preds = %117
  %124 = call i32 @dict_int_param(ptr noundef %113, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %9) #5
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %153, label %126

126:                                              ; preds = %123
  %127 = load i32, ptr %9, align 4, !tbaa !40
  switch i32 %127, label %146 [
    i32 1, label %128
    i32 3, label %136
  ]

128:                                              ; preds = %126
  %129 = load ptr, ptr %10, align 8, !tbaa !15
  %130 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %105, i64 0, i32 2
  %131 = sext i32 %107 to i64
  %132 = getelementptr inbounds %struct.ref_s, ptr %6, i64 %131
  %133 = getelementptr inbounds %struct.ref_s, ptr %7, i64 %131
  %134 = call fastcc i32 @dict_spot_params(ptr noundef %129, ptr noundef nonnull %130, ptr noundef nonnull %132, ptr noundef nonnull %133)
  %135 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %105, i64 0, i32 2, i32 0, i32 0, i32 2
  store ptr @spot_dummy, ptr %135, align 8, !tbaa !5
  br label %142

136:                                              ; preds = %126
  %137 = load ptr, ptr %10, align 8, !tbaa !15
  %138 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %105, i64 0, i32 2
  %139 = sext i32 %107 to i64
  %140 = getelementptr inbounds %struct.ref_s, ptr %7, i64 %139
  %141 = call fastcc i32 @dict_threshold_params(ptr noundef %137, ptr noundef nonnull %138, ptr noundef nonnull %140), !range !41
  br label %142

142:                                              ; preds = %128, %136
  %143 = phi i32 [ 4, %136 ], [ 3, %128 ]
  %144 = phi i32 [ %141, %136 ], [ %134, %128 ]
  %145 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %105, i64 0, i32 1
  store i32 %143, ptr %145, align 4, !tbaa !42
  br label %146

146:                                              ; preds = %142, %126
  %147 = phi i32 [ -15, %126 ], [ %144, %142 ]
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = trunc i64 %103 to i32
  store i32 %150, ptr %105, align 8, !tbaa !44
  %151 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %105, i64 1
  %152 = add nsw i32 %107, 1
  br label %153

153:                                              ; preds = %102, %149, %146, %123, %117, %112
  %154 = phi i32 [ %107, %112 ], [ %107, %117 ], [ %107, %123 ], [ %107, %146 ], [ %152, %149 ], [ %107, %102 ]
  %155 = phi i32 [ 1, %112 ], [ 1, %117 ], [ 9, %123 ], [ 9, %146 ], [ 0, %149 ], [ 0, %102 ]
  %156 = phi i32 [ %106, %112 ], [ %106, %117 ], [ -20, %123 ], [ %147, %146 ], [ %147, %149 ], [ %106, %102 ]
  %157 = phi ptr [ %105, %112 ], [ %105, %117 ], [ %105, %123 ], [ %105, %146 ], [ %151, %149 ], [ %105, %102 ]
  %158 = phi i32 [ -20, %112 ], [ -7, %117 ], [ %104, %123 ], [ %104, %146 ], [ %104, %149 ], [ %104, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #5
  switch i32 %155, label %368 [
    i32 0, label %159
    i32 9, label %162
  ]

159:                                              ; preds = %153
  %160 = add nuw nsw i64 %103, 1
  %161 = icmp eq i64 %160, 9
  br i1 %161, label %162, label %102, !llvm.loop !45

162:                                              ; preds = %159, %153, %95
  %163 = phi i32 [ -25, %95 ], [ %156, %153 ], [ %156, %159 ]
  %164 = phi i32 [ %69, %95 ], [ %158, %153 ], [ %158, %159 ]
  %165 = icmp sgt i32 %163, -1
  br i1 %165, label %166, label %177

166:                                              ; preds = %162
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #5
  store i32 0, ptr %11, align 4, !tbaa !40
  %167 = call i32 @dict_int_param(ptr noundef nonnull %27, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 5, i32 noundef 0, ptr noundef nonnull %11) #5
  %168 = load i32, ptr %11, align 4
  %169 = icmp eq i32 %168, 2
  %170 = icmp eq i32 %168, 4
  %171 = or i1 %169, %170
  %172 = select i1 %171, i32 6, i32 5
  store i32 %172, ptr %81, align 8, !tbaa !46
  %173 = getelementptr inbounds %struct.gs_halftone_s, ptr %81, i64 0, i32 2
  store ptr %84, ptr %173, align 8, !tbaa !5
  %174 = getelementptr inbounds %struct.gs_halftone_s, ptr %81, i64 0, i32 2, i32 0, i32 0, i32 0, i64 0, i32 2
  store i32 %41, ptr %174, align 8, !tbaa !5
  %175 = load ptr, ptr @igs, align 8, !tbaa !15
  %176 = call i32 @gs_sethalftone_prepare(ptr noundef %175, ptr noundef nonnull %81, ptr noundef %96) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #5
  br label %177

177:                                              ; preds = %166, %162
  %178 = phi i32 [ %176, %166 ], [ %163, %162 ]
  %179 = icmp sgt i32 %178, -1
  %180 = icmp ne i32 %41, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %182, label %241

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %184 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  br label %185

185:                                              ; preds = %182, %236
  %186 = phi ptr [ %84, %182 ], [ %239, %236 ]
  %187 = phi i32 [ %178, %182 ], [ %237, %236 ]
  %188 = phi i32 [ 0, %182 ], [ %238, %236 ]
  %189 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %186, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !42
  %191 = icmp eq i32 %190, 3
  br i1 %191, label %192, label %236

192:                                              ; preds = %185
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #5
  %193 = load i32, ptr %186, align 8, !tbaa !44
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [9 x ptr], ptr @zsethalftone5.color_names, i64 0, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !15
  %197 = call i32 @dict_find_string(ptr noundef %0, ptr noundef %196, ptr noundef nonnull %12) #5
  %198 = load ptr, ptr %12, align 8, !tbaa !15
  %199 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %186, i64 0, i32 2, i32 0, i32 0, i32 3
  %200 = load float, ptr %199, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %201 = call i32 @dict_find_string(ptr noundef %198, ptr noundef nonnull @.str.22, ptr noundef nonnull %4) #5
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %213

203:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #5
  %204 = getelementptr inbounds %struct.ref_s, ptr %198, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !5
  %206 = load i16, ptr %205, align 8, !tbaa !8
  %207 = and i16 %206, 16
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %203
  store float %200, ptr %183, align 8, !tbaa !5
  store i16 4096, ptr %5, align 8, !tbaa !17
  %210 = call i32 @dict_put_string(ptr noundef %198, ptr noundef nonnull @.str.22, ptr noundef nonnull %5) #5
  br label %211

211:                                              ; preds = %209, %203
  %212 = phi i32 [ %210, %209 ], [ -7, %203 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #5
  br label %213

213:                                              ; preds = %211, %192
  %214 = phi i32 [ 0, %192 ], [ %212, %211 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %233, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %186, i64 0, i32 2, i32 0, i32 0, i32 4
  %218 = load float, ptr %217, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  %219 = call i32 @dict_find_string(ptr noundef %198, ptr noundef nonnull @.str.23, ptr noundef nonnull %2) #5
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #5
  %222 = getelementptr inbounds %struct.ref_s, ptr %198, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !5
  %224 = load i16, ptr %223, align 8, !tbaa !8
  %225 = and i16 %224, 16
  %226 = icmp eq i16 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %221
  store float %218, ptr %184, align 8, !tbaa !5
  store i16 4096, ptr %3, align 8, !tbaa !17
  %228 = call i32 @dict_put_string(ptr noundef %198, ptr noundef nonnull @.str.23, ptr noundef nonnull %3) #5
  br label %229

229:                                              ; preds = %227, %221
  %230 = phi i32 [ %228, %227 ], [ -7, %221 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #5
  br label %231

231:                                              ; preds = %229, %216
  %232 = phi i32 [ 0, %216 ], [ %230, %229 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  br label %233

233:                                              ; preds = %213, %231
  %234 = phi i32 [ %232, %231 ], [ %214, %213 ]
  %235 = icmp slt i32 %234, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #5
  br i1 %235, label %241, label %236

236:                                              ; preds = %233, %185
  %237 = phi i32 [ %234, %233 ], [ %187, %185 ]
  %238 = add nuw i32 %188, 1
  %239 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %186, i64 1
  %240 = icmp eq i32 %238, %41
  br i1 %240, label %241, label %185, !llvm.loop !52

241:                                              ; preds = %236, %233, %177
  %242 = phi i32 [ %178, %177 ], [ %234, %233 ], [ %237, %236 ]
  %243 = icmp sgt i32 %242, -1
  br i1 %243, label %244, label %354

244:                                              ; preds = %241
  %245 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #5
  %246 = call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !53
  %247 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %248 = getelementptr inbounds %struct.ref_s, ptr %247, i64 -2
  store ptr %248, ptr @o_stack, align 8, !tbaa !18
  %249 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %250 = getelementptr inbounds %struct.ref_s, ptr %249, i64 5
  store ptr %250, ptr @e_stack, align 8, !tbaa !18
  %251 = getelementptr inbounds %struct.ref_s, ptr %249, i64 1, i32 1
  store ptr @sethalftone_cleanup, ptr %251, align 8, !tbaa !5
  %252 = getelementptr inbounds %struct.ref_s, ptr %249, i64 1
  store i16 3712, ptr %252, align 8, !tbaa !17
  %253 = getelementptr inbounds %struct.ref_s, ptr %249, i64 1, i32 0, i32 1
  store i16 0, ptr %253, align 2, !tbaa !57
  %254 = getelementptr inbounds %struct.ref_s, ptr %249, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %254, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !53
  %255 = getelementptr %struct.ref_s, ptr %249, i64 3, i32 1
  store ptr %81, ptr %255, align 8, !tbaa !5
  %256 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !58
  %257 = trunc i32 %256 to i16
  %258 = add i16 %257, 2048
  %259 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %260 = getelementptr inbounds %struct.ref_s, ptr %259, i64 -2
  store i16 %258, ptr %260, align 8, !tbaa !17
  %261 = getelementptr %struct.ref_s, ptr %259, i64 -1, i32 1
  store ptr %96, ptr %261, align 8, !tbaa !5
  %262 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !58
  %263 = trunc i32 %262 to i16
  %264 = add i16 %263, 2048
  %265 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %266 = getelementptr inbounds %struct.ref_s, ptr %265, i64 -1
  store i16 %264, ptr %266, align 8, !tbaa !17
  %267 = getelementptr inbounds %struct.ref_s, ptr %265, i64 0, i32 1
  store ptr @sethalftone_finish, ptr %267, align 8, !tbaa !5
  store i16 3968, ptr %265, align 8, !tbaa !17
  %268 = getelementptr inbounds %struct.tas_s, ptr %265, i64 0, i32 1
  store i16 0, ptr %268, align 2, !tbaa !57
  %269 = icmp eq i32 %41, 0
  br i1 %269, label %349, label %270

270:                                              ; preds = %244
  %271 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %96, i64 0, i32 3
  %272 = load i32, ptr @zcolor_remap_one_ostack, align 4
  %273 = sext i32 %272 to i64
  %274 = load i32, ptr @zcolor_remap_one_estack, align 4
  %275 = sext i32 %274 to i64
  %276 = sub nsw i64 0, %275
  %277 = zext i32 %41 to i64
  br label %278

278:                                              ; preds = %270, %345
  %279 = phi i64 [ 0, %270 ], [ %346, %345 ]
  %280 = phi i32 [ %164, %270 ], [ %344, %345 ]
  %281 = phi ptr [ %248, %270 ], [ %343, %345 ]
  %282 = phi i32 [ %242, %270 ], [ %342, %345 ]
  %283 = phi i32 [ 2, %270 ], [ %339, %345 ]
  %284 = load ptr, ptr %271, align 8, !tbaa !59
  %285 = icmp eq ptr %284, null
  %286 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %284, i64 %279
  %287 = select i1 %285, ptr %96, ptr %286
  %288 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %84, i64 %279, i32 1
  %289 = load i32, ptr %288, align 4, !tbaa !42
  switch i32 %289, label %326 [
    i32 3, label %290
    i32 4, label %295
  ]

290:                                              ; preds = %278
  %291 = getelementptr inbounds %struct.gs_halftone_component_s, ptr %84, i64 %279, i32 2
  %292 = getelementptr inbounds [9 x %struct.ref_s], ptr %6, i64 0, i64 %279
  %293 = call i32 @zscreen_enum_init(ptr noundef %281, ptr noundef %287, ptr noundef nonnull %291, ptr noundef nonnull %292, i32 noundef 0, ptr noundef null, ptr noundef %59) #5
  %294 = icmp slt i32 %293, 0
  br i1 %294, label %326, label %295

295:                                              ; preds = %290, %278
  %296 = phi i32 [ %282, %278 ], [ %293, %290 ]
  %297 = getelementptr inbounds %struct.ref_s, ptr %7, i64 %279
  %298 = getelementptr inbounds i8, ptr %297, i64 1
  %299 = load i8, ptr %298, align 1, !tbaa !5
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %326, label %301

301:                                              ; preds = %295
  %302 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !21
  %303 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %304 = ptrtoint ptr %302 to i64
  %305 = ptrtoint ptr %303 to i64
  %306 = sub i64 %304, %305
  %307 = ashr exact i64 %306, 4
  %308 = icmp slt i64 %307, %273
  br i1 %308, label %309, label %310

309:                                              ; preds = %301
  store i32 %272, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !60
  br label %338

310:                                              ; preds = %301
  %311 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %312 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @e_stack, i64 0, i32 2), align 8, !tbaa !21
  %313 = getelementptr inbounds %struct.ref_s, ptr %312, i64 %276
  %314 = icmp ugt ptr %311, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %310
  %316 = call i32 @ref_stack_extend(ptr noundef nonnull @e_stack, i32 noundef %274) #5
  %317 = icmp sgt i32 %316, -1
  %318 = select i1 %317, i32 %280, i32 %316
  br i1 %317, label %319, label %338

319:                                              ; preds = %315, %310
  %320 = phi i32 [ %318, %315 ], [ %280, %310 ]
  %321 = getelementptr inbounds %struct.gx_ht_order_s, ptr %287, i64 0, i32 13
  %322 = load ptr, ptr %321, align 8, !tbaa !61
  %323 = load ptr, ptr @igs, align 8, !tbaa !15
  %324 = call i32 @zcolor_remap_one(ptr noundef nonnull %297, ptr noundef %281, ptr noundef %322, ptr noundef %323, ptr noundef nonnull @zcolor_remap_one_finish) #5
  %325 = load ptr, ptr @o_stack, align 8, !tbaa !18
  br label %326

326:                                              ; preds = %278, %295, %319, %290
  %327 = phi i32 [ %282, %278 ], [ %296, %295 ], [ %324, %319 ], [ %293, %290 ]
  %328 = phi ptr [ %281, %278 ], [ %281, %295 ], [ %325, %319 ], [ %281, %290 ]
  %329 = phi i32 [ %280, %278 ], [ %280, %295 ], [ %320, %319 ], [ %280, %290 ]
  %330 = icmp slt i32 %327, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %326
  %332 = call i32 @ref_stack_count(ptr noundef nonnull @o_stack) #5
  %333 = sub i32 %332, %246
  call void @ref_stack_pop(ptr noundef nonnull @o_stack, i32 noundef %333) #5
  %334 = call i32 @ref_stack_count(ptr noundef nonnull @e_stack) #5
  %335 = sub i32 %334, %245
  call void @ref_stack_pop(ptr noundef nonnull @e_stack, i32 noundef %335) #5
  %336 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %337 = getelementptr inbounds %struct.ref_s, ptr %336, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %337, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %336, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !53
  br label %338

338:                                              ; preds = %326, %315, %331, %309
  %339 = phi i32 [ %283, %331 ], [ %283, %309 ], [ %283, %315 ], [ 0, %326 ]
  %340 = phi i1 [ false, %331 ], [ false, %309 ], [ false, %315 ], [ true, %326 ]
  %341 = phi i32 [ 16, %331 ], [ 1, %309 ], [ 1, %315 ], [ 0, %326 ]
  %342 = phi i32 [ %327, %331 ], [ %296, %309 ], [ %296, %315 ], [ %327, %326 ]
  %343 = phi ptr [ %336, %331 ], [ %281, %309 ], [ %281, %315 ], [ %328, %326 ]
  %344 = phi i32 [ %329, %331 ], [ -16, %309 ], [ %318, %315 ], [ %329, %326 ]
  switch i32 %341, label %349 [
    i32 0, label %345
    i32 16, label %348
  ]

345:                                              ; preds = %338
  %346 = add nuw nsw i64 %279, 1
  %347 = icmp eq i64 %346, %277
  br i1 %347, label %348, label %278, !llvm.loop !62

348:                                              ; preds = %338, %345
  br label %349

349:                                              ; preds = %338, %348, %244
  %350 = phi i32 [ 2, %244 ], [ %339, %348 ], [ %339, %338 ]
  %351 = phi i1 [ true, %244 ], [ true, %348 ], [ %340, %338 ]
  %352 = phi i32 [ %242, %244 ], [ %342, %348 ], [ %342, %338 ]
  %353 = phi i32 [ %164, %244 ], [ %344, %348 ], [ %344, %338 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13)
  br i1 %351, label %354, label %368

354:                                              ; preds = %349, %241
  %355 = phi i32 [ %350, %349 ], [ 2, %241 ]
  %356 = phi i32 [ %352, %349 ], [ %242, %241 ]
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %363

358:                                              ; preds = %354
  %359 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %59, i64 0, i32 11
  %360 = load ptr, ptr %359, align 8, !tbaa !63
  call void %360(ptr noundef %59, ptr noundef %96, ptr noundef nonnull @.str.12) #5
  %361 = load ptr, ptr %359, align 8, !tbaa !63
  call void %361(ptr noundef %59, ptr noundef %84, ptr noundef nonnull @.str.12) #5
  %362 = load ptr, ptr %359, align 8, !tbaa !63
  call void %362(ptr noundef %59, ptr noundef %81, ptr noundef nonnull @.str.12) #5
  br label %368

363:                                              ; preds = %354
  %364 = load ptr, ptr @o_stack, align 8, !tbaa !18
  %365 = zext nneg i32 %355 to i64
  %366 = sub nsw i64 0, %365
  %367 = getelementptr inbounds %struct.ref_s, ptr %364, i64 %366
  store ptr %367, ptr @o_stack, align 8, !tbaa !18
  br label %368

368:                                              ; preds = %44, %153, %33, %20, %64, %349, %363, %358, %31, %18
  %369 = phi i32 [ %356, %358 ], [ 5, %363 ], [ %353, %349 ], [ %67, %64 ], [ %32, %31 ], [ %19, %18 ], [ -7, %20 ], [ -7, %33 ], [ %158, %153 ], [ -20, %44 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #5
  ret i32 %369
}

; Function Attrs: nounwind uwtable
define internal i32 @sethalftone_finish(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %6, i64 96, i1 false), !tbaa.struct !64
  br label %9

9:                                                ; preds = %8, %1
  %10 = load ptr, ptr @igs, align 8, !tbaa !15
  %11 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %12 = getelementptr %struct.ref_s, ptr %11, i64 -1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call i32 @gx_ht_install(ptr noundef %10, ptr noundef %13, ptr noundef %4) #5
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr @igs, align 8, !tbaa !15
  %18 = tail call ptr @gs_state_client_data(ptr noundef %17) #5
  %19 = getelementptr inbounds %struct.int_gstate_s, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !53
  %22 = getelementptr inbounds %struct.ref_s, ptr %20, i64 -4
  store ptr %22, ptr @e_stack, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.ref_s, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr %struct.ref_s, ptr %20, i64 -1, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %24, i64 0, i32 1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %28, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  tail call void %30(ptr noundef %28, ptr noundef %24, ptr noundef nonnull @.str.24) #5
  %31 = getelementptr inbounds %struct.gs_halftone_s, ptr %26, i64 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !31
  %33 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %32, i64 0, i32 11
  %34 = load ptr, ptr %33, align 8, !tbaa !63
  tail call void %34(ptr noundef %32, ptr noundef %26, ptr noundef nonnull @.str.25) #5
  br label %35

35:                                               ; preds = %9, %16
  %36 = phi i32 [ 14, %16 ], [ %14, %9 ]
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #3

declare i32 @dict_find_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @ref_stack_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @refset_null(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @dict_int_param(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dict_spot_params(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i16, ptr %6, align 8, !tbaa !8
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @dict_float_param(ptr noundef %0, ptr noundef nonnull @.str.14, double noundef 0.000000e+00, ptr noundef %1) #5
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gs_screen_halftone_s, ptr %1, i64 0, i32 1
  %15 = tail call i32 @dict_float_param(ptr noundef %0, ptr noundef nonnull @.str.15, double noundef 0.000000e+00, ptr noundef nonnull %14) #5
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = tail call i32 @dict_proc_param(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %2, i32 noundef 0) #5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = tail call i32 @gs_currentaccuratescreens() #5
  %22 = getelementptr inbounds %struct.gs_spot_halftone_s, ptr %1, i64 0, i32 1
  %23 = tail call i32 @dict_bool_param(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %21, ptr noundef nonnull %22) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = tail call i32 @dict_proc_param(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %3, i32 noundef 0) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %20, %17, %13, %10
  %29 = phi i32 [ %11, %10 ], [ %15, %13 ], [ %18, %17 ], [ %23, %20 ], [ %26, %25 ]
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, i32 %29, i32 -21
  br label %36

32:                                               ; preds = %25
  %33 = icmp eq i32 %26, 0
  %34 = select i1 %33, ptr @gs_mapped_transfer, ptr null
  %35 = getelementptr inbounds %struct.gs_spot_halftone_s, ptr %1, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !65
  br label %36

36:                                               ; preds = %4, %32, %28
  %37 = phi i32 [ %31, %28 ], [ 0, %32 ], [ -7, %4 ]
  ret i32 %37
}

declare float @spot_dummy(double noundef, double noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dict_threshold_params(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i16, ptr %6, align 8, !tbaa !8
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef 1, i32 noundef 32767, i32 noundef -1, ptr noundef %1) #5
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gs_threshold_halftone_s, ptr %1, i64 0, i32 1
  %15 = tail call i32 @dict_int_param(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef 32767, i32 noundef -1, ptr noundef nonnull %14) #5
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = call i32 @dict_find_string(ptr noundef %0, ptr noundef nonnull @.str.21, ptr noundef nonnull %4) #5
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = call i32 @dict_proc_param(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %2, i32 noundef 0) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %17, %13, %10
  %24 = phi i32 [ %11, %10 ], [ %15, %13 ], [ %18, %17 ], [ %21, %20 ]
  %25 = icmp slt i32 %24, 0
  %26 = select i1 %25, i32 %24, i32 -21
  br label %56

27:                                               ; preds = %20
  %28 = load ptr, ptr %4, align 8, !tbaa !15
  %29 = load i16, ptr %28, align 8, !tbaa !17
  %30 = and i16 %29, 16160
  %31 = icmp eq i16 %30, 4640
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds i8, ptr %28, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !5
  %35 = icmp eq i8 %34, 18
  %36 = select i1 %35, i32 -7, i32 -20
  br label %56

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.tas_s, ptr %28, i64 0, i32 1
  %39 = load i16, ptr %38, align 2, !tbaa !57
  %40 = zext i16 %39 to i64
  %41 = load i32, ptr %1, align 8, !tbaa !66
  %42 = sext i32 %41 to i64
  %43 = load i32, ptr %14, align 4, !tbaa !69
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, %42
  %46 = icmp eq i64 %45, %40
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = getelementptr inbounds %struct.ref_s, ptr %28, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = getelementptr inbounds %struct.gs_threshold_halftone_s, ptr %1, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !70
  %51 = zext i16 %39 to i32
  %52 = getelementptr inbounds %struct.gs_threshold_halftone_s, ptr %1, i64 0, i32 2, i32 1
  store i32 %51, ptr %52, align 8, !tbaa !71
  %53 = icmp eq i32 %21, 0
  %54 = select i1 %53, ptr @gs_mapped_transfer, ptr null
  %55 = getelementptr inbounds %struct.gs_threshold_halftone_s, ptr %1, i64 0, i32 3
  store ptr %54, ptr %55, align 8, !tbaa !72
  br label %56

56:                                               ; preds = %37, %3, %47, %32, %23
  %57 = phi i32 [ %26, %23 ], [ 0, %47 ], [ %36, %32 ], [ -7, %3 ], [ -15, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %57
}

declare i32 @gs_sethalftone_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @sethalftone_cleanup(ptr nocapture readnone %0) #1 {
  %2 = load ptr, ptr @e_stack, align 8, !tbaa !18
  %3 = getelementptr inbounds %struct.ref_s, ptr %2, i64 4, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.ref_s, ptr %2, i64 3, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %4, i64 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  tail call void %10(ptr noundef %8, ptr noundef %4, ptr noundef nonnull @.str.24) #5
  %11 = getelementptr inbounds %struct.gs_halftone_s, ptr %6, i64 0, i32 1, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %12, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  tail call void %14(ptr noundef %12, ptr noundef %6, ptr noundef nonnull @.str.25) #5
  ret i32 0
}

declare i32 @zscreen_enum_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @zcolor_remap_one(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @zcolor_remap_one_finish(ptr noundef) #3

declare void @ref_stack_pop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dict_float_param(ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dict_proc_param(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @dict_bool_param(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_currentaccuratescreens() local_unnamed_addr #3

declare float @gs_mapped_transfer(double noundef, ptr noundef) #3

declare i32 @dict_put_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gx_ht_install(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gs_state_client_data(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

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
!8 = !{!9, !12, i64 0}
!9 = !{!"dict_s", !10, i64 0, !10, i64 16, !10, i64 32, !10, i64 48}
!10 = !{!"ref_s", !11, i64 0, !6, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !6, i64 0}
!17 = !{!10, !12, i64 0}
!18 = !{!19, !16, i64 0}
!19 = !{!"ref_stack_s", !16, i64 0, !16, i64 8, !16, i64 16, !10, i64 24, !20, i64 40, !20, i64 44, !10, i64 48, !20, i64 64, !20, i64 68, !20, i64 72, !20, i64 76, !20, i64 80, !10, i64 88, !20, i64 104, !20, i64 108, !20, i64 112, !16, i64 120}
!20 = !{!"int", !6, i64 0}
!21 = !{!19, !16, i64 16}
!22 = !{!23, !16, i64 0}
!23 = !{!"gs_dual_memory_s", !16, i64 0, !6, i64 8, !20, i64 40, !20, i64 44, !16, i64 48, !20, i64 56, !20, i64 60}
!24 = !{!25, !16, i64 16}
!25 = !{!"gs_memory_s", !26, i64 0}
!26 = !{!"gs_memory_procs_s", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152}
!27 = !{!28, !30, i64 8}
!28 = !{!"gs_halftone_s", !20, i64 0, !29, i64 8, !6, i64 32}
!29 = !{!"rc_header_s", !30, i64 0, !16, i64 8, !16, i64 16}
!30 = !{!"long", !6, i64 0}
!31 = !{!28, !16, i64 16}
!32 = !{!28, !16, i64 24}
!33 = !{!25, !16, i64 48}
!34 = !{!35, !30, i64 96}
!35 = !{!"gx_device_halftone_s", !36, i64 0, !29, i64 96, !30, i64 120, !16, i64 128, !20, i64 136, !6, i64 140, !20, i64 156, !20, i64 160}
!36 = !{!"gx_ht_order_s", !37, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !12, i64 48, !12, i64 50, !20, i64 52, !20, i64 56, !20, i64 60, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88}
!37 = !{!"gx_ht_cell_params_s", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !30, i64 16, !12, i64 24, !12, i64 26, !20, i64 28, !20, i64 32, !20, i64 36}
!38 = !{!35, !16, i64 104}
!39 = !{!35, !16, i64 112}
!40 = !{!20, !20, i64 0}
!41 = !{i32 -2147483648, i32 1}
!42 = !{!43, !20, i64 4}
!43 = !{!"gs_halftone_component_s", !20, i64 0, !20, i64 4, !6, i64 8}
!44 = !{!43, !20, i64 0}
!45 = distinct !{!45, !14}
!46 = !{!28, !20, i64 0}
!47 = !{!48, !50, i64 16}
!48 = !{!"gs_spot_halftone_s", !49, i64 0, !20, i64 24, !16, i64 32}
!49 = !{!"gs_screen_halftone_s", !50, i64 0, !50, i64 4, !16, i64 8, !50, i64 16, !50, i64 20}
!50 = !{!"float", !6, i64 0}
!51 = !{!48, !50, i64 20}
!52 = distinct !{!52, !14}
!53 = !{i64 0, i64 2, !54, i64 2, i64 2, !54, i64 8, i64 8, !55, i64 8, i64 2, !54, i64 8, i64 4, !56, i64 8, i64 8, !55, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15, i64 8, i64 8, !15}
!54 = !{!12, !12, i64 0}
!55 = !{!30, !30, i64 0}
!56 = !{!50, !50, i64 0}
!57 = !{!10, !12, i64 2}
!58 = !{!23, !20, i64 40}
!59 = !{!35, !16, i64 128}
!60 = !{!19, !20, i64 64}
!61 = !{!36, !16, i64 88}
!62 = distinct !{!62, !14}
!63 = !{!25, !16, i64 88}
!64 = !{i64 0, i64 2, !54, i64 2, i64 2, !54, i64 4, i64 2, !54, i64 6, i64 2, !54, i64 8, i64 2, !54, i64 10, i64 2, !54, i64 16, i64 8, !55, i64 24, i64 2, !54, i64 26, i64 2, !54, i64 28, i64 4, !40, i64 32, i64 4, !40, i64 36, i64 4, !40, i64 40, i64 2, !54, i64 42, i64 2, !54, i64 44, i64 2, !54, i64 46, i64 2, !54, i64 48, i64 2, !54, i64 50, i64 2, !54, i64 52, i64 4, !40, i64 56, i64 4, !40, i64 60, i64 4, !40, i64 64, i64 8, !15, i64 72, i64 8, !15, i64 80, i64 8, !15, i64 88, i64 8, !15}
!65 = !{!48, !16, i64 32}
!66 = !{!67, !20, i64 0}
!67 = !{!"gs_threshold_halftone_s", !20, i64 0, !20, i64 4, !68, i64 8, !16, i64 24}
!68 = !{!"gs_const_string_s", !16, i64 0, !20, i64 8}
!69 = !{!67, !20, i64 4}
!70 = !{!67, !16, i64 8}
!71 = !{!67, !20, i64 16}
!72 = !{!67, !16, i64 24}
