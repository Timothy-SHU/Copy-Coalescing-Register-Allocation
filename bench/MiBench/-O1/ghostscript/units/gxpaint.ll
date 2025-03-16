; ModuleID = 'gxpaint.c'
source_filename = "gxpaint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_stroke_params_s = type { float }

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_fill_path(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.gx_fill_params_s, align 8
  %8 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #3
  store i32 %3, ptr %7, align 8, !tbaa !20
  %10 = getelementptr inbounds %struct.gx_fill_params_s, ptr %7, i64 0, i32 1
  store i64 %4, ptr %10, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.gx_fill_params_s, ptr %7, i64 0, i32 1, i32 1
  store i64 %5, ptr %11, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 39
  %13 = load i8, ptr %12, align 4, !tbaa !24
  %14 = icmp ugt i8 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 6
  %17 = load float, ptr %16, align 4, !tbaa !25
  br label %18

18:                                               ; preds = %6, %15
  %19 = phi float [ %17, %15 ], [ 0.000000e+00, %6 ]
  %20 = getelementptr inbounds %struct.gx_fill_params_s, ptr %7, i64 0, i32 2
  store float %19, ptr %20, align 8, !tbaa !26
  %21 = or i64 %5, %4
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.gx_fill_params_s, ptr %7, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !27
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %9, i64 0, i32 21, i32 24
  %26 = load ptr, ptr %25, align 8, !tbaa !28
  %27 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 29
  %28 = load ptr, ptr %27, align 8, !tbaa !33
  %29 = call i32 %26(ptr noundef %9, ptr noundef %2, ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef %28) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #3
  ret i32 %29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_stroke_fill(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gx_stroke_params_s, align 4
  %4 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 43
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  %6 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 39
  %7 = load i8, ptr %6, align 4, !tbaa !24
  %8 = icmp ugt i8 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 6
  %11 = load float, ptr %10, align 4, !tbaa !25
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi float [ %11, %9 ], [ 0.000000e+00, %2 ]
  store float %13, ptr %3, align 4, !tbaa !34
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 25
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 34
  %17 = load ptr, ptr %16, align 8, !tbaa !37
  %18 = getelementptr inbounds %struct.gs_state_s, ptr %1, i64 0, i32 29
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = call i32 %15(ptr noundef %5, ptr noundef %1, ptr noundef %0, ptr noundef nonnull %3, ptr noundef %17, ptr noundef %19) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define dso_local i32 @gx_stroke_add(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.gx_stroke_params_s, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #3
  %5 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 39
  %6 = load i8, ptr %5, align 4, !tbaa !24
  %7 = icmp ugt i8 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 6
  %10 = load float, ptr %9, align 4, !tbaa !25
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi float [ %10, %8 ], [ 0.000000e+00, %3 ]
  store float %12, ptr %4, align 4, !tbaa !34
  %13 = getelementptr inbounds %struct.gs_state_s, ptr %2, i64 0, i32 43
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = call i32 @gx_stroke_path_only(ptr noundef %0, ptr noundef %1, ptr noundef %14, ptr noundef %2, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #3
  ret i32 %15
}

declare i32 @gx_stroke_path_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 536}
!6 = !{!"gs_state_s", !7, i64 0, !10, i64 8, !14, i64 80, !12, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !17, i64 144, !12, i64 160, !12, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !18, i64 336, !12, i64 360, !18, i64 364, !12, i64 388, !7, i64 392, !7, i64 400, !12, i64 408, !12, i64 412, !7, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !14, i64 456, !12, i64 504, !8, i64 508, !12, i64 512, !7, i64 520, !12, i64 528, !7, i64 536, !7, i64 544, !19, i64 552}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gx_line_params_s", !11, i64 0, !12, i64 4, !12, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !13, i64 32}
!11 = !{!"float", !8, i64 0}
!12 = !{!"int", !8, i64 0}
!13 = !{!"gx_dash_params_s", !7, i64 0, !12, i64 8, !11, i64 12, !12, i64 16, !11, i64 20, !12, i64 24, !12, i64 28, !11, i64 32}
!14 = !{!"gs_matrix_fixed_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !15, i64 24, !15, i64 32, !12, i64 40}
!15 = !{!"long", !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!"gs_fixed_point_s", !15, i64 0, !15, i64 8}
!18 = !{!"gs_matrix_s", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20}
!19 = !{!"gs_state_client_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!20 = !{!21, !12, i64 0}
!21 = !{!"gx_fill_params_s", !12, i64 0, !17, i64 8, !11, i64 24, !12, i64 28}
!22 = !{!21, !15, i64 8}
!23 = !{!21, !15, i64 16}
!24 = !{!6, !8, i64 508}
!25 = !{!6, !11, i64 140}
!26 = !{!21, !11, i64 24}
!27 = !{!21, !12, i64 28}
!28 = !{!29, !7, i64 384}
!29 = !{!"gx_device_s", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !30, i64 48, !12, i64 64, !12, i64 68, !8, i64 72, !8, i64 80, !12, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !15, i64 144, !15, i64 152, !12, i64 160, !31, i64 168, !32, i64 192}
!30 = !{!"gx_device_color_info_s", !12, i64 0, !12, i64 4, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14}
!31 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!32 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!33 = !{!6, !7, i64 400}
!34 = !{!35, !11, i64 0}
!35 = !{!"gx_stroke_params_s", !11, i64 0}
!36 = !{!29, !7, i64 392}
!37 = !{!6, !7, i64 432}
