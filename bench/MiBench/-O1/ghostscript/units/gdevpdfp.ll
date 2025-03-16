; ModuleID = 'gdevpdfp.c'
source_filename = "gdevpdfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_pdf_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64, %struct.psdf_distiller_params_s, float, i32, i64, i32, [81 x i8], ptr, i64, i64, i64, i64, i64, i32, [300 x i64], i32, i32, i64, i64, i32, float, %struct.gx_line_params_s, ptr, i32, i32, [5 x ptr], ptr, ptr, %struct.gs_string_s, %struct.gs_string_s, %struct.gs_string_s, [8 x %struct.pdf_outline_level_s], i32, i32, i32, ptr, ptr, %struct.pdf_text_state_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_point_s = type { double, double }
%struct.psdf_distiller_params_s = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32 }
%struct.psdf_image_params_s = type { i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.gs_param_string_array_s = type { ptr, i32, i32 }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_string_s = type { ptr, i32 }
%struct.pdf_outline_level_s = type { %struct.pdf_outline_node_s, %struct.pdf_outline_node_s, i32 }
%struct.pdf_outline_node_s = type { i64, i64, i64, i64, i64, i32, %struct.gs_string_s }
%struct.pdf_text_state_s = type { float, ptr, float, float, float }
%struct.gs_param_collection_s = type { ptr, i32 }

@.str = private unnamed_addr constant [19 x i8] c"CompatibilityLevel\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"CoreDistVersion\00", align 1
@CoreDistVersion = internal constant i32 3000, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"DoThumbnails\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"FirstObjectNumber\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pdfmark\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"show\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_pdf_get_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @gdev_psdf_get_params(ptr noundef %0, ptr noundef %1) #4
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 41
  %10 = tail call i32 %8(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %9) #4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %1, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = tail call i32 %15(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @CoreDistVersion) #4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8, !tbaa !5
  %20 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 42
  %23 = tail call i32 %21(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %22) #4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %1, align 8, !tbaa !5
  %27 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 43
  %30 = tail call i32 %28(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %29) #4
  br label %31

31:                                               ; preds = %25, %2, %5, %12, %18
  %32 = phi i32 [ %3, %2 ], [ %10, %5 ], [ %16, %12 ], [ %23, %18 ], [ %30, %25 ]
  ret i32 %32
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @gdev_psdf_get_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_pdf_put_params(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gs_param_string_array_s, align 8
  %8 = alloca %struct.gs_param_collection_s, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %9 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 41
  %10 = load float, ptr %9, align 8, !tbaa !15
  store float %10, ptr %3, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %11 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 42
  %12 = load i32, ptr %11, align 4, !tbaa !42
  store i32 %12, ptr %4, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #4
  %13 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 43
  %14 = load i64, ptr %13, align 8, !tbaa !44
  store i64 %14, ptr %5, align 8, !tbaa !45
  %15 = load ptr, ptr %1, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !10
  %18 = call i32 %17(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef nonnull %3) #4
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %1, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %21, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = call i32 %23(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %18) #4
  br label %25

25:                                               ; preds = %2, %20
  %26 = phi i32 [ %18, %20 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 3000, ptr %6, align 4, !tbaa !43
  %27 = call i32 @psdf_put_int_param(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %6, i32 noundef %26) #4
  %28 = load i32, ptr %6, align 4, !tbaa !43
  %29 = icmp eq i32 %28, 3000
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %31, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = call i32 %33(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i32 noundef -15) #4
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i32 [ -15, %30 ], [ %27, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  %37 = call i32 @psdf_put_bool_param(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, i32 noundef %36) #4
  %38 = load ptr, ptr %1, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !14
  %41 = call i32 %40(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #4
  switch i32 %41, label %54 [
    i32 0, label %42
    i32 1, label %59
  ]

42:                                               ; preds = %35
  %43 = load i64, ptr %5, align 8
  %44 = add i64 %43, -2147418113
  %45 = icmp ult i64 %44, -2147418112
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 47
  %48 = load i64, ptr %47, align 8, !tbaa !47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load i64, ptr %13, align 8, !tbaa !44
  %52 = add nsw i64 %51, 2
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %42, %50, %35
  %55 = load ptr, ptr %1, align 8, !tbaa !5
  %56 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %55, i64 0, i32 15
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = call i32 %57(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i32 noundef %41) #4
  br label %59

59:                                               ; preds = %46, %50, %54, %35
  %60 = phi i32 [ %41, %54 ], [ %37, %35 ], [ %37, %50 ], [ %37, %46 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #4
  %61 = load ptr, ptr %1, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %61, i64 0, i32 9
  %63 = load ptr, ptr %62, align 8, !tbaa !48
  %64 = call i32 %63(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %7) #4
  switch i32 %64, label %68 [
    i32 0, label %65
    i32 1, label %74
  ]

65:                                               ; preds = %59
  call void @pdf_open_document(ptr noundef %0) #4
  %66 = call i32 @pdfmark_process(ptr noundef %0, ptr noundef nonnull %7) #4
  %67 = icmp sgt i32 %66, -1
  br i1 %67, label %74, label %68

68:                                               ; preds = %65, %59
  %69 = phi i32 [ %64, %59 ], [ %66, %65 ]
  %70 = load ptr, ptr %1, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %70, i64 0, i32 15
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = call i32 %72(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, i32 noundef %69) #4
  br label %74

74:                                               ; preds = %65, %68, %59
  %75 = phi i32 [ %69, %68 ], [ %60, %59 ], [ %60, %65 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #4
  %76 = load ptr, ptr %1, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %76, i64 0, i32 11
  %78 = load ptr, ptr %77, align 8, !tbaa !49
  %79 = call i32 %78(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %8, i32 noundef 0) #4
  switch i32 %79, label %87 [
    i32 0, label %80
    i32 1, label %93
  ]

80:                                               ; preds = %74
  call void @pdf_open_document(ptr noundef %0) #4
  %81 = call i32 @pdfshow_process(ptr noundef %0, ptr noundef nonnull %8) #4
  %82 = load ptr, ptr %1, align 8, !tbaa !5
  %83 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %82, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !50
  %85 = call i32 %84(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #4
  %86 = icmp sgt i32 %81, -1
  br i1 %86, label %93, label %87

87:                                               ; preds = %80, %74
  %88 = phi i32 [ %79, %74 ], [ %81, %80 ]
  %89 = load ptr, ptr %1, align 8, !tbaa !5
  %90 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %89, i64 0, i32 15
  %91 = load ptr, ptr %90, align 8, !tbaa !46
  %92 = call i32 %91(ptr noundef nonnull %1, ptr noundef nonnull @.str.5, i32 noundef %88) #4
  br label %93

93:                                               ; preds = %80, %87, %74
  %94 = phi i32 [ %88, %87 ], [ %75, %74 ], [ %75, %80 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %112, label %96

96:                                               ; preds = %93
  %97 = call i32 @gdev_psdf_put_params(ptr noundef %0, ptr noundef nonnull %1) #4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %96
  %100 = load float, ptr %3, align 4, !tbaa !41
  store float %100, ptr %9, align 8, !tbaa !15
  %101 = load i32, ptr %4, align 4, !tbaa !43
  store i32 %101, ptr %11, align 4, !tbaa !42
  %102 = load i64, ptr %5, align 8, !tbaa !45
  %103 = load i64, ptr %13, align 8, !tbaa !44
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %99
  store i64 %102, ptr %13, align 8, !tbaa !44
  %106 = getelementptr inbounds %struct.gx_device_pdf_s, ptr %0, i64 0, i32 46
  %107 = load ptr, ptr %106, align 8, !tbaa !51
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = call i32 @fseek(ptr noundef nonnull %107, i64 noundef 0, i32 noundef 0)
  call void @pdf_initialize_ids(ptr noundef %0) #4
  br label %111

111:                                              ; preds = %105, %109, %99
  call void @pdf_set_scale(ptr noundef %0) #4
  br label %112

112:                                              ; preds = %96, %93, %111
  %113 = phi i32 [ 0, %111 ], [ %94, %93 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret i32 %113
}

declare i32 @psdf_put_int_param(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @psdf_put_bool_param(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pdf_open_document(ptr noundef) local_unnamed_addr #2

declare i32 @pdfmark_process(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @pdfshow_process(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gdev_psdf_put_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @pdf_initialize_ids(ptr noundef) local_unnamed_addr #2

declare void @pdf_set_scale(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gs_param_list_s", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 32}
!11 = !{!"gs_param_list_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128}
!12 = !{!11, !7, i64 16}
!13 = !{!11, !7, i64 8}
!14 = !{!11, !7, i64 24}
!15 = !{!16, !25, i64 1512}
!16 = !{!"gx_device_pdf_s", !17, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !17, i64 40, !17, i64 44, !18, i64 48, !17, i64 64, !17, i64 68, !8, i64 72, !8, i64 80, !17, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !20, i64 144, !20, i64 152, !17, i64 160, !21, i64 168, !22, i64 192, !7, i64 488, !7, i64 496, !8, i64 504, !7, i64 592, !7, i64 600, !7, i64 608, !17, i64 616, !23, i64 624, !8, i64 944, !29, i64 992, !29, i64 1088, !20, i64 1184, !20, i64 1192, !34, i64 1200, !17, i64 1216, !7, i64 1224, !20, i64 1232, !20, i64 1240, !36, i64 1248, !25, i64 1512, !17, i64 1516, !20, i64 1520, !17, i64 1528, !8, i64 1532, !7, i64 1616, !20, i64 1624, !20, i64 1632, !20, i64 1640, !20, i64 1648, !20, i64 1656, !17, i64 1664, !8, i64 1672, !17, i64 4072, !17, i64 4076, !20, i64 4080, !20, i64 4088, !17, i64 4096, !25, i64 4100, !24, i64 4104, !7, i64 4176, !17, i64 4184, !17, i64 4188, !8, i64 4192, !7, i64 4232, !7, i64 4240, !39, i64 4248, !39, i64 4264, !39, i64 4280, !8, i64 4296, !17, i64 5384, !17, i64 5388, !17, i64 5392, !7, i64 5400, !7, i64 5408, !40, i64 5416}
!17 = !{!"int", !8, i64 0}
!18 = !{!"gx_device_color_info_s", !17, i64 0, !17, i64 4, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14}
!19 = !{!"short", !8, i64 0}
!20 = !{!"long", !8, i64 0}
!21 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!22 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!23 = !{!"gs_imager_state_s", !7, i64 0, !24, i64 8, !27, i64 80, !17, i64 128, !19, i64 132, !17, i64 136, !25, i64 140, !28, i64 144, !17, i64 160, !17, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!24 = !{!"gx_line_params_s", !25, i64 0, !17, i64 4, !17, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !25, i64 24, !26, i64 32}
!25 = !{!"float", !8, i64 0}
!26 = !{!"gx_dash_params_s", !7, i64 0, !17, i64 8, !25, i64 12, !17, i64 16, !25, i64 20, !17, i64 24, !17, i64 28, !25, i64 32}
!27 = !{!"gs_matrix_fixed_s", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !25, i64 16, !25, i64 20, !20, i64 24, !20, i64 32, !17, i64 40}
!28 = !{!"gs_fixed_point_s", !20, i64 0, !20, i64 8}
!29 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !30, i64 48, !31, i64 56}
!30 = !{!"gs_int_point_s", !17, i64 0, !17, i64 4}
!31 = !{!"_mask", !32, i64 0, !20, i64 24, !7, i64 32}
!32 = !{!"gs_client_color_s", !33, i64 0, !7, i64 16}
!33 = !{!"gs_paint_color_s", !8, i64 0}
!34 = !{!"gs_point_s", !35, i64 0, !35, i64 8}
!35 = !{!"double", !8, i64 0}
!36 = !{!"psdf_distiller_params_s", !17, i64 0, !17, i64 4, !17, i64 8, !20, i64 16, !17, i64 24, !17, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !37, i64 56, !17, i64 104, !17, i64 108, !17, i64 112, !37, i64 120, !37, i64 168, !38, i64 216, !38, i64 232, !17, i64 248, !17, i64 252, !17, i64 256}
!37 = !{!"psdf_image_params_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !7, i64 24, !17, i64 32, !7, i64 40}
!38 = !{!"gs_param_string_array_s", !7, i64 0, !17, i64 8, !17, i64 12}
!39 = !{!"gs_string_s", !7, i64 0, !17, i64 8}
!40 = !{!"pdf_text_state_s", !25, i64 0, !7, i64 8, !25, i64 16, !25, i64 20, !25, i64 24}
!41 = !{!25, !25, i64 0}
!42 = !{!16, !17, i64 1516}
!43 = !{!17, !17, i64 0}
!44 = !{!16, !20, i64 1520}
!45 = !{!20, !20, i64 0}
!46 = !{!11, !7, i64 120}
!47 = !{!16, !20, i64 1624}
!48 = !{!11, !7, i64 72}
!49 = !{!11, !7, i64 88}
!50 = !{!11, !7, i64 96}
!51 = !{!16, !7, i64 1616}
