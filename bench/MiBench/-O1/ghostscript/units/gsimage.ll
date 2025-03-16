; ModuleID = 'gsimage.c'
source_filename = "gsimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_image_enum_s = type { ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x %struct.gs_const_string_s], [4 x %struct.gs_string_s], i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_string_s = type { ptr, i32 }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@st_gs_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 208, ptr @.str.2, ptr null, ptr null, ptr @gs_image_enum_enum_ptrs, ptr @gs_image_enum_reloc_ptrs, ptr null }, align 8
@gx_dc_procs_none = external constant %struct.gx_device_color_procs_s, align 8
@.str = private unnamed_addr constant [19 x i8] c"gs_image_next(row)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"gs_image_cleanup(row)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"gs_image_enum\00", align 1
@ptr_string_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @gs_image_enum_alloc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call ptr %4(ptr noundef %0, ptr noundef nonnull @st_gs_image_enum, ptr noundef %1) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  store ptr %0, ptr %5, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.gs_image_enum_s, ptr %5, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.gs_image_enum_s, ptr %5, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !15
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi i64 [ 0, %7 ], [ %16, %10 ]
  %12 = getelementptr inbounds %struct.gs_image_enum_s, ptr %5, i64 0, i32 14, i64 %11
  store ptr null, ptr %12, align 8, !tbaa !16
  %13 = getelementptr inbounds %struct.gs_image_enum_s, ptr %5, i64 0, i32 14, i64 %11, i32 1
  store i32 0, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds %struct.gs_image_enum_s, ptr %5, i64 0, i32 15, i64 %11
  store ptr null, ptr %14, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.gs_image_enum_s, ptr %5, i64 0, i32 15, i64 %11, i32 1
  store i32 0, ptr %15, align 8, !tbaa !21
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %10, !llvm.loop !22

18:                                               ; preds = %10, %2
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_image_init(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.gs_image_s, align 8
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 43
  %7 = load ptr, ptr %6, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #7
  %8 = load i32, ptr %1, align 8, !tbaa !35
  %9 = sext i32 %8 to i64
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %119, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gs_image_s, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !37
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %119, label %15

15:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !38
  %16 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 3
  store ptr null, ptr %16, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 1
  store ptr null, ptr %17, align 8, !tbaa !15
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i64 [ 0, %15 ], [ %24, %18 ]
  %20 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 14, i64 %19
  store ptr null, ptr %20, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 14, i64 %19, i32 1
  store i32 0, ptr %21, align 8, !tbaa !18
  %22 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %19
  store ptr null, ptr %22, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %19, i32 1
  store i32 0, ptr %23, align 8, !tbaa !21
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, 4
  br i1 %25, label %26, label %18, !llvm.loop !22

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 40
  %28 = load i32, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 2
  store i32 %28, ptr %29, align 8, !tbaa !44
  %30 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 7
  %31 = load i32, ptr %30, align 4, !tbaa !45
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 4
  store ptr null, ptr %34, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 39
  %36 = load i8, ptr %35, align 4, !tbaa !47
  %37 = icmp ult i8 %36, 2
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 8
  store i32 0, ptr %39, align 8, !tbaa !48
  br label %40

40:                                               ; preds = %38, %33
  %41 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 6
  store i32 1, ptr %41, align 8, !tbaa !49
  %42 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 4
  store i32 1, ptr %42, align 8, !tbaa !50
  br label %63

43:                                               ; preds = %26
  %44 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 39
  %45 = load i8, ptr %44, align 4, !tbaa !47
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %119

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = tail call ptr @gs_color_space_DeviceGray() #7
  store ptr %52, ptr %48, align 8, !tbaa !46
  br label %53

53:                                               ; preds = %51, %47
  %54 = load ptr, ptr %48, align 8, !tbaa !46
  %55 = tail call i32 @gs_color_space_num_components(ptr noundef %54) #7
  %56 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 4
  store i32 %55, ptr %56, align 8, !tbaa !50
  %57 = icmp eq i32 %2, 0
  %58 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 6
  br i1 %57, label %60, label %59

59:                                               ; preds = %53
  store i32 %55, ptr %58, align 8, !tbaa !49
  br label %63

60:                                               ; preds = %53
  store i32 1, ptr %58, align 8, !tbaa !49
  %61 = sext i32 %55 to i64
  %62 = mul nsw i64 %61, %9
  br label %63

63:                                               ; preds = %59, %60, %40
  %64 = phi i64 [ %9, %40 ], [ %9, %59 ], [ %62, %60 ]
  %65 = load i32, ptr %30, align 4, !tbaa !45
  %66 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 9
  %67 = load i32, ptr %66, align 4, !tbaa !51
  %68 = or i32 %67, %65
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 34
  %72 = load ptr, ptr %71, align 8, !tbaa !52
  %73 = load ptr, ptr %72, align 8, !tbaa !53
  %74 = icmp eq ptr %73, @gx_dc_procs_none
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = tail call i32 @gx_remap_color(ptr noundef %3) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %70, %75, %63
  %79 = load i32, ptr %29, align 8, !tbaa !44
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 21, i32 31
  %83 = load ptr, ptr %82, align 8, !tbaa !59
  %84 = icmp ne i32 %2, 0
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 34
  %87 = load ptr, ptr %86, align 8, !tbaa !52
  %88 = getelementptr inbounds %struct.gs_state_s, ptr %3, i64 0, i32 29
  %89 = load ptr, ptr %88, align 8, !tbaa !64
  %90 = load ptr, ptr %0, align 8, !tbaa !11
  %91 = call i32 %83(ptr noundef %7, ptr noundef %3, ptr noundef nonnull %5, i32 noundef %85, ptr noundef null, ptr noundef %87, ptr noundef %89, ptr noundef %90, ptr noundef nonnull %16) #7
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %119, label %93

93:                                               ; preds = %81, %78
  store ptr %7, ptr %17, align 8, !tbaa !15
  %94 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 5
  store i32 %2, ptr %94, align 4, !tbaa !65
  %95 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !66
  %97 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 4
  %98 = load i32, ptr %97, align 8, !tbaa !50
  %99 = mul nsw i32 %98, %96
  %100 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 6
  %101 = load i32, ptr %100, align 8, !tbaa !49
  %102 = sdiv i32 %99, %101
  %103 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 9
  store i32 %102, ptr %103, align 4, !tbaa !67
  %104 = load i32, ptr %5, align 8, !tbaa !35
  %105 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 7
  store i32 %104, ptr %105, align 4, !tbaa !68
  %106 = getelementptr inbounds %struct.gs_image_s, ptr %5, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !37
  %108 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 8
  store i32 %107, ptr %108, align 8, !tbaa !69
  %109 = sext i32 %96 to i64
  %110 = mul i64 %64, %109
  %111 = add i64 %110, 7
  %112 = lshr i64 %111, 3
  %113 = trunc i64 %112 to i32
  %114 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 10
  store i32 %113, ptr %114, align 8, !tbaa !70
  %115 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %115, align 4, !tbaa !71
  %116 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 12
  store i32 0, ptr %116, align 8, !tbaa !72
  %117 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 13
  store i32 0, ptr %117, align 4, !tbaa !73
  %118 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 16
  store i32 0, ptr %118, align 8, !tbaa !74
  br label %119

119:                                              ; preds = %81, %43, %4, %11, %75, %93
  %120 = phi i32 [ 0, %93 ], [ %76, %75 ], [ 1, %11 ], [ 1, %4 ], [ -21, %43 ], [ %91, %81 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #7
  ret i32 %120
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare ptr @gs_color_space_DeviceGray() local_unnamed_addr #3

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #3

declare i32 @gx_remap_color(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_image_bytes_per_row(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !70
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gs_image_next(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca [4 x ptr], align 16
  %6 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 11
  %7 = load i32, ptr %6, align 4, !tbaa !71
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 14, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !18
  %12 = icmp eq i32 %11, %2
  br i1 %12, label %13, label %212

13:                                               ; preds = %9, %4
  %14 = sext i32 %7 to i64
  %15 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 14, i64 %14
  store ptr %1, ptr %15, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 14, i64 %14, i32 1
  store i32 %2, ptr %16, align 8, !tbaa !18
  %17 = add nsw i32 %7, 1
  store i32 %17, ptr %6, align 4, !tbaa !71
  %18 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !49
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %212

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 10
  %25 = load i32, ptr %24, align 8, !tbaa !70
  %26 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 13
  %27 = load i32, ptr %26, align 4, !tbaa !73
  %28 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 12
  %29 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 8
  %30 = icmp sgt i32 %19, 0
  %31 = zext i32 %2 to i64
  %32 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 2
  %33 = getelementptr inbounds %struct.gx_device_s, ptr %23, i64 0, i32 21, i32 32
  %34 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 3
  %35 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 16
  %36 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15
  %37 = icmp sgt i32 %19, 0
  %38 = icmp sgt i32 %19, 0
  %39 = icmp sgt i32 %19, 0
  %40 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 2
  %41 = getelementptr inbounds %struct.gx_device_s, ptr %23, i64 0, i32 21, i32 32
  %42 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 3
  %43 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 16
  %44 = zext nneg i32 %19 to i64
  %45 = zext nneg i32 %19 to i64
  %46 = zext nneg i32 %19 to i64
  br label %47

47:                                               ; preds = %201, %21
  %48 = phi i32 [ %27, %21 ], [ %202, %201 ]
  %49 = phi i32 [ 0, %21 ], [ %203, %201 ]
  %50 = phi i32 [ %2, %21 ], [ %205, %201 ]
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %207, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %28, align 8, !tbaa !72
  %54 = load i32, ptr %29, align 8, !tbaa !69
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %207

56:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #7
  br i1 %30, label %57, label %69

57:                                               ; preds = %56
  %58 = zext i32 %50 to i64
  %59 = sub nsw i64 0, %58
  br label %60

60:                                               ; preds = %57, %60
  %61 = phi i64 [ 0, %57 ], [ %67, %60 ]
  %62 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 14, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  %64 = getelementptr inbounds i8, ptr %63, i64 %31
  %65 = getelementptr inbounds i8, ptr %64, i64 %59
  %66 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %61
  store ptr %65, ptr %66, align 8, !tbaa !41
  %67 = add nuw nsw i64 %61, 1
  %68 = icmp eq i64 %67, %44
  br i1 %68, label %69, label %60, !llvm.loop !75

69:                                               ; preds = %60, %56
  %70 = icmp ne i32 %48, 0
  %71 = icmp ult i32 %50, %25
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %102, label %73

73:                                               ; preds = %69
  %74 = udiv i32 %50, %25
  %75 = sub nsw i32 %54, %53
  %76 = call i32 @llvm.smin.i32(i32 %74, i32 %75)
  %77 = load i32, ptr %32, align 8, !tbaa !44
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %73
  %80 = add nsw i32 %76, %53
  %81 = icmp sge i32 %80, %54
  %82 = zext i1 %81 to i32
  br label %88

83:                                               ; preds = %73
  %84 = load ptr, ptr %33, align 8, !tbaa !76
  %85 = load ptr, ptr %34, align 8, !tbaa !14
  %86 = load i32, ptr %24, align 8, !tbaa !70
  %87 = call i32 %84(ptr noundef %23, ptr noundef %85, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %86, i32 noundef %76) #7
  br label %88

88:                                               ; preds = %83, %79
  %89 = phi i32 [ %82, %79 ], [ %87, %83 ]
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 1, ptr %35, align 8, !tbaa !74
  br label %92

92:                                               ; preds = %88, %91
  %93 = icmp sgt i32 %89, -1
  br i1 %93, label %94, label %99

94:                                               ; preds = %92
  %95 = mul i32 %76, %25
  %96 = sub i32 %50, %95
  %97 = load i32, ptr %28, align 8, !tbaa !72
  %98 = add nsw i32 %97, %76
  store i32 %98, ptr %28, align 8, !tbaa !72
  br label %99

99:                                               ; preds = %92, %94
  %100 = phi i32 [ 0, %94 ], [ 3, %92 ]
  %101 = phi i32 [ %96, %94 ], [ %50, %92 ]
  br i1 %93, label %197, label %201

102:                                              ; preds = %69
  %103 = sub i32 %25, %48
  %104 = call i32 @llvm.umin.i32(i32 %50, i32 %103)
  %105 = load ptr, ptr %36, align 8, !tbaa !19
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %144

107:                                              ; preds = %102
  br i1 %37, label %108, label %141

108:                                              ; preds = %107, %135
  %109 = phi i32 [ %138, %135 ], [ 0, %107 ]
  %110 = phi i32 [ %136, %135 ], [ %49, %107 ]
  %111 = load ptr, ptr %0, align 8, !tbaa !11
  %112 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %111, i64 0, i32 12
  %113 = load ptr, ptr %112, align 8, !tbaa !77
  %114 = call ptr %113(ptr noundef %111, i32 noundef %25, ptr noundef nonnull @.str) #7
  %115 = icmp ne ptr %114, null
  br i1 %115, label %131, label %116

116:                                              ; preds = %108
  %117 = add i32 %109, -1
  %118 = icmp sgt i32 %109, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = zext i32 %117 to i64
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi i64 [ %120, %119 ], [ %129, %121 ]
  %123 = load ptr, ptr %0, align 8, !tbaa !11
  %124 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %123, i64 0, i32 15
  %125 = load ptr, ptr %124, align 8, !tbaa !78
  %126 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %122
  %127 = load ptr, ptr %126, align 8, !tbaa !19
  call void %125(ptr noundef %123, ptr noundef %127, i32 noundef %25, ptr noundef nonnull @.str) #7
  store ptr null, ptr %126, align 8, !tbaa !19
  %128 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %122, i32 1
  store i32 0, ptr %128, align 8, !tbaa !21
  %129 = add nsw i64 %122, -1
  %130 = icmp sgt i64 %122, 0
  br i1 %130, label %121, label %135, !llvm.loop !79

131:                                              ; preds = %108
  %132 = sext i32 %109 to i64
  %133 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %132
  store ptr %114, ptr %133, align 8, !tbaa !19
  %134 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %132, i32 1
  store i32 %25, ptr %134, align 8, !tbaa !21
  br label %135

135:                                              ; preds = %121, %116, %131
  %136 = phi i32 [ %110, %131 ], [ -25, %116 ], [ -25, %121 ]
  %137 = phi i32 [ %109, %131 ], [ %117, %116 ], [ -1, %121 ]
  %138 = add nsw i32 %137, 1
  %139 = icmp slt i32 %138, %19
  %140 = select i1 %115, i1 %139, i1 false
  br i1 %140, label %108, label %141, !llvm.loop !80

141:                                              ; preds = %135, %107
  %142 = phi i32 [ %49, %107 ], [ %136, %135 ]
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %191, label %144

144:                                              ; preds = %141, %102
  %145 = phi i32 [ %142, %141 ], [ %49, %102 ]
  br i1 %38, label %146, label %158

146:                                              ; preds = %144
  %147 = zext i32 %48 to i64
  %148 = zext i32 %104 to i64
  br label %149

149:                                              ; preds = %146, %149
  %150 = phi i64 [ 0, %146 ], [ %156, %149 ]
  %151 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !19
  %153 = getelementptr inbounds i8, ptr %152, i64 %147
  %154 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %150
  %155 = load ptr, ptr %154, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %153, ptr align 1 %155, i64 %148, i1 false)
  %156 = add nuw nsw i64 %150, 1
  %157 = icmp eq i64 %156, %45
  br i1 %157, label %158, label %149, !llvm.loop !81

158:                                              ; preds = %149, %144
  %159 = add i32 %104, %48
  %160 = sub i32 %50, %104
  %161 = icmp eq i32 %159, %25
  br i1 %161, label %162, label %191

162:                                              ; preds = %158
  br i1 %39, label %163, label %170

163:                                              ; preds = %162, %163
  %164 = phi i64 [ %168, %163 ], [ 0, %162 ]
  %165 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %164
  %166 = load ptr, ptr %165, align 8, !tbaa !19
  %167 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %164
  store ptr %166, ptr %167, align 8, !tbaa !41
  %168 = add nuw nsw i64 %164, 1
  %169 = icmp eq i64 %168, %46
  br i1 %169, label %170, label %163, !llvm.loop !82

170:                                              ; preds = %163, %162
  %171 = load i32, ptr %40, align 8, !tbaa !44
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %179, label %173

173:                                              ; preds = %170
  %174 = load i32, ptr %28, align 8, !tbaa !72
  %175 = add nsw i32 %174, 1
  %176 = load i32, ptr %29, align 8, !tbaa !69
  %177 = icmp sge i32 %175, %176
  %178 = zext i1 %177 to i32
  br label %184

179:                                              ; preds = %170
  %180 = load ptr, ptr %41, align 8, !tbaa !76
  %181 = load ptr, ptr %42, align 8, !tbaa !14
  %182 = load i32, ptr %24, align 8, !tbaa !70
  %183 = call i32 %180(ptr noundef %23, ptr noundef %181, ptr noundef nonnull %5, i32 noundef 0, i32 noundef %182, i32 noundef 1) #7
  br label %184

184:                                              ; preds = %179, %173
  %185 = phi i32 [ %178, %173 ], [ %183, %179 ]
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 1, ptr %43, align 8, !tbaa !74
  br label %191

188:                                              ; preds = %184
  %189 = load i32, ptr %28, align 8, !tbaa !72
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %28, align 8, !tbaa !72
  br label %191

191:                                              ; preds = %187, %158, %188, %141
  %192 = phi i32 [ %48, %141 ], [ %159, %187 ], [ 0, %188 ], [ %159, %158 ]
  %193 = phi i32 [ %142, %141 ], [ %185, %187 ], [ %185, %188 ], [ %145, %158 ]
  %194 = phi i1 [ false, %141 ], [ false, %187 ], [ true, %188 ], [ true, %158 ]
  %195 = phi i32 [ 3, %141 ], [ 3, %187 ], [ 0, %188 ], [ 0, %158 ]
  %196 = phi i32 [ %50, %141 ], [ %160, %187 ], [ %160, %188 ], [ %160, %158 ]
  br i1 %194, label %197, label %201

197:                                              ; preds = %191, %99
  %198 = phi i32 [ 0, %99 ], [ %192, %191 ]
  %199 = phi i32 [ %89, %99 ], [ %193, %191 ]
  %200 = phi i32 [ %101, %99 ], [ %196, %191 ]
  br label %201

201:                                              ; preds = %99, %191, %197
  %202 = phi i32 [ %198, %197 ], [ 0, %99 ], [ %192, %191 ]
  %203 = phi i32 [ %199, %197 ], [ %89, %99 ], [ %193, %191 ]
  %204 = phi i32 [ 0, %197 ], [ %100, %99 ], [ %195, %191 ]
  %205 = phi i32 [ %200, %197 ], [ %101, %99 ], [ %196, %191 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #7
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %47, label %207

207:                                              ; preds = %201, %47, %52
  %208 = phi i32 [ %202, %201 ], [ %48, %52 ], [ %48, %47 ]
  %209 = phi i32 [ %203, %201 ], [ %49, %52 ], [ %49, %47 ]
  %210 = phi i32 [ %205, %201 ], [ %50, %52 ], [ 0, %47 ]
  store i32 %208, ptr %26, align 4, !tbaa !73
  store i32 0, ptr %6, align 4, !tbaa !71
  %211 = sub i32 %2, %210
  store i32 %211, ptr %3, align 4, !tbaa !39
  br label %212

212:                                              ; preds = %13, %9, %207
  %213 = phi i32 [ %209, %207 ], [ -15, %9 ], [ 0, %13 ]
  ret i32 %213
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_image_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !49
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %1 ]
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %9, i64 0, i32 15
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %8
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %8, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !21
  tail call void %11(ptr noundef %9, ptr noundef %13, i32 noundef %15, ptr noundef nonnull @.str.1) #7
  %16 = add nuw nsw i64 %8, 1
  %17 = load i32, ptr %4, align 8, !tbaa !49
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %7, label %20, !llvm.loop !83

20:                                               ; preds = %7, %1
  %21 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !44
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %3, i64 0, i32 21, i32 33
  %26 = load ptr, ptr %25, align 8, !tbaa !84
  %27 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 16
  %30 = load i32, ptr %29, align 8, !tbaa !74
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = tail call i32 %26(ptr noundef %3, ptr noundef %28, i32 noundef %32) #7
  br label %34

34:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @gs_image_enum_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #5 {
  switch i32 %2, label %5 [
    i32 0, label %21
    i32 1, label %24
  ]

5:                                                ; preds = %4
  %6 = add i32 %2, -2
  %7 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !71
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 14, i64 %11
  br label %27

13:                                               ; preds = %5
  %14 = sub i32 %6, %8
  %15 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !49
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = zext i32 %14 to i64
  %20 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %19
  br label %27

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  br label %27

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !14
  br label %27

27:                                               ; preds = %24, %21, %18, %10
  %28 = phi ptr [ %12, %10 ], [ %20, %18 ], [ %23, %21 ], [ %26, %24 ]
  %29 = phi ptr [ @ptr_string_procs, %10 ], [ @ptr_string_procs, %18 ], [ @ptr_struct_procs, %21 ], [ @ptr_struct_procs, %24 ]
  store ptr %28, ptr %3, align 8, !tbaa !41
  br label %30

30:                                               ; preds = %27, %13
  %31 = phi ptr [ null, %13 ], [ %29, %27 ]
  ret ptr %31
}

; Function Attrs: nounwind uwtable
define internal void @gs_image_enum_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #7
  store ptr %6, ptr %4, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #7
  store ptr %9, ptr %7, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !71
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %17, %3
  %14 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 8, !tbaa !49
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %24, label %31

17:                                               ; preds = %3, %17
  %18 = phi i64 [ %20, %17 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 14, i64 %18
  tail call void @gs_reloc_const_string(ptr noundef nonnull %19, ptr noundef %2) #7
  %20 = add nuw nsw i64 %18, 1
  %21 = load i32, ptr %10, align 4, !tbaa !71
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %17, label %13, !llvm.loop !85

24:                                               ; preds = %13, %24
  %25 = phi i64 [ %27, %24 ], [ 0, %13 ]
  %26 = getelementptr inbounds %struct.gs_image_enum_s, ptr %0, i64 0, i32 15, i64 %25
  tail call void @gs_reloc_string(ptr noundef nonnull %26, ptr noundef %2) #7
  %27 = add nuw nsw i64 %25, 1
  %28 = load i32, ptr %14, align 8, !tbaa !49
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %24, label %31, !llvm.loop !86

31:                                               ; preds = %24, %13
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gs_reloc_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 16}
!6 = !{!"gs_memory_s", !7, i64 0}
!7 = !{!"gs_memory_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 0}
!12 = !{!"gs_image_enum_s", !8, i64 0, !8, i64 8, !13, i64 16, !8, i64 24, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !9, i64 72, !9, i64 136, !13, i64 200}
!13 = !{!"int", !9, i64 0}
!14 = !{!12, !8, i64 24}
!15 = !{!12, !8, i64 8}
!16 = !{!17, !8, i64 0}
!17 = !{!"gs_const_string_s", !8, i64 0, !13, i64 8}
!18 = !{!17, !13, i64 8}
!19 = !{!20, !8, i64 0}
!20 = !{!"gs_string_s", !8, i64 0, !13, i64 8}
!21 = !{!20, !13, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!25, !8, i64 536}
!25 = !{!"gs_state_s", !8, i64 0, !26, i64 8, !29, i64 80, !13, i64 128, !31, i64 132, !13, i64 136, !27, i64 140, !32, i64 144, !13, i64 160, !13, i64 164, !8, i64 168, !9, i64 176, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !9, i64 232, !9, i64 264, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !33, i64 336, !13, i64 360, !33, i64 364, !13, i64 388, !8, i64 392, !8, i64 400, !13, i64 408, !13, i64 412, !8, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !29, i64 456, !13, i64 504, !9, i64 508, !13, i64 512, !8, i64 520, !13, i64 528, !8, i64 536, !8, i64 544, !34, i64 552}
!26 = !{!"gx_line_params_s", !27, i64 0, !13, i64 4, !13, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !27, i64 24, !28, i64 32}
!27 = !{!"float", !9, i64 0}
!28 = !{!"gx_dash_params_s", !8, i64 0, !13, i64 8, !27, i64 12, !13, i64 16, !27, i64 20, !13, i64 24, !13, i64 28, !27, i64 32}
!29 = !{!"gs_matrix_fixed_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20, !30, i64 24, !30, i64 32, !13, i64 40}
!30 = !{!"long", !9, i64 0}
!31 = !{!"short", !9, i64 0}
!32 = !{!"gs_fixed_point_s", !30, i64 0, !30, i64 8}
!33 = !{!"gs_matrix_s", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !27, i64 16, !27, i64 20}
!34 = !{!"gs_state_client_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!35 = !{!36, !13, i64 0}
!36 = !{!"gs_image_s", !13, i64 0, !13, i64 4, !33, i64 8, !13, i64 32, !8, i64 40, !9, i64 48, !13, i64 80, !13, i64 84, !13, i64 88, !13, i64 92}
!37 = !{!36, !13, i64 4}
!38 = !{i64 0, i64 4, !39, i64 4, i64 4, !39, i64 8, i64 4, !40, i64 12, i64 4, !40, i64 16, i64 4, !40, i64 20, i64 4, !40, i64 24, i64 4, !40, i64 28, i64 4, !40, i64 32, i64 4, !39, i64 40, i64 8, !41, i64 48, i64 32, !42, i64 80, i64 4, !39, i64 84, i64 4, !39, i64 88, i64 4, !39, i64 92, i64 4, !39}
!39 = !{!13, !13, i64 0}
!40 = !{!27, !27, i64 0}
!41 = !{!8, !8, i64 0}
!42 = !{!9, !9, i64 0}
!43 = !{!25, !13, i64 512}
!44 = !{!12, !13, i64 16}
!45 = !{!36, !13, i64 84}
!46 = !{!36, !8, i64 40}
!47 = !{!25, !9, i64 508}
!48 = !{!36, !13, i64 88}
!49 = !{!12, !13, i64 40}
!50 = !{!12, !13, i64 32}
!51 = !{!36, !13, i64 92}
!52 = !{!25, !8, i64 432}
!53 = !{!54, !8, i64 0}
!54 = !{!"gx_device_color_s", !8, i64 0, !9, i64 8, !55, i64 48, !56, i64 56}
!55 = !{!"gs_int_point_s", !13, i64 0, !13, i64 4}
!56 = !{!"_mask", !57, i64 0, !30, i64 24, !8, i64 32}
!57 = !{!"gs_client_color_s", !58, i64 0, !8, i64 16}
!58 = !{!"gs_paint_color_s", !9, i64 0}
!59 = !{!60, !8, i64 440}
!60 = !{!"gx_device_s", !13, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !13, i64 40, !13, i64 44, !61, i64 48, !13, i64 64, !13, i64 68, !9, i64 72, !9, i64 80, !13, i64 96, !9, i64 100, !9, i64 108, !9, i64 116, !9, i64 124, !30, i64 144, !30, i64 152, !13, i64 160, !62, i64 168, !63, i64 192}
!61 = !{!"gx_device_color_info_s", !13, i64 0, !13, i64 4, !31, i64 8, !31, i64 10, !31, i64 12, !31, i64 14}
!62 = !{!"gx_page_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16}
!63 = !{!"gx_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288}
!64 = !{!25, !8, i64 400}
!65 = !{!12, !13, i64 36}
!66 = !{!36, !13, i64 32}
!67 = !{!12, !13, i64 52}
!68 = !{!12, !13, i64 44}
!69 = !{!12, !13, i64 48}
!70 = !{!12, !13, i64 56}
!71 = !{!12, !13, i64 60}
!72 = !{!12, !13, i64 64}
!73 = !{!12, !13, i64 68}
!74 = !{!12, !13, i64 200}
!75 = distinct !{!75, !23}
!76 = !{!60, !8, i64 448}
!77 = !{!6, !8, i64 96}
!78 = !{!6, !8, i64 120}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23}
!83 = distinct !{!83, !23}
!84 = !{!60, !8, i64 456}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
