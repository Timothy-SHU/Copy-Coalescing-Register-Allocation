; ModuleID = 'gscsepr.c'
source_filename = "gscsepr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_color_space_s = type { ptr, %union.anon }
%union.anon = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.1, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_indexed_map_s = type { %struct.rc_header_s, %union.anon.3, i32, ptr }
%struct.rc_header_s = type { i64, ptr, ptr }
%union.anon.3 = type { ptr }
%struct.gs_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_s, i32, %struct.gs_matrix_s, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.gs_matrix_fixed_s, i32, i8, i32, ptr, i32, ptr, ptr, %struct.gs_state_client_procs_s }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_state_client_procs_s = type { ptr, ptr, ptr, ptr }

@gs_color_space_type_Separation = dso_local local_unnamed_addr constant %struct.gs_color_space_type_s { i32 7, i32 1, i32 0, ptr @gx_init_Separation, ptr @gx_concrete_space_Separation, ptr @gx_concretize_Separation, ptr @gx_remap_concrete_Separation, ptr @gx_default_remap_color, ptr @gx_install_Separation, ptr @gx_adjust_cspace_Separation, ptr @gx_no_adjust_color_count, ptr @gx_enum_ptrs_Separation, ptr @gx_reloc_ptrs_Separation }, align 8
@.str = private unnamed_addr constant [21 x i8] c"gx_adjust_Separation\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @gx_init_Separation(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1) #0 {
  store float 1.000000e+00, ptr %0, align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @gx_concrete_space_Separation(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = tail call ptr %6(ptr noundef nonnull %3, ptr noundef %1) #6
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define internal i32 @gx_concretize_Separation(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #1 {
  %5 = alloca %struct.gs_client_color_s, align 8
  %6 = load float, ptr %0, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #6
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1
  %9 = fcmp olt float %6, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = fcmp ogt float %6, 1.000000e+00
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %4, %10, %12
  %14 = phi float [ 1.000000e+00, %12 ], [ %6, %10 ], [ 0.000000e+00, %4 ]
  %15 = getelementptr inbounds %struct.gs_color_space_s, ptr %1, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.gs_indexed_map_s, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !15
  %19 = fpext float %14 to double
  %20 = call i32 %18(ptr noundef nonnull %7, double noundef %19, ptr noundef nonnull %5) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %8, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  %26 = call i32 %25(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3) #6
  br label %27

27:                                               ; preds = %13, %22
  %28 = phi i32 [ %26, %22 ], [ %20, %13 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #6
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @gx_remap_concrete_Separation(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i32 %4) #2 {
  ret i32 -15
}

declare i32 @gx_default_remap_color(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @gx_install_Separation(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %4, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = tail call i32 %6(ptr noundef nonnull %3, ptr noundef %1) #6
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal void @gx_adjust_cspace_Separation(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %3
  %8 = sext i32 %2 to i64
  %9 = load i64, ptr %5, align 8, !tbaa !18
  %10 = add nsw i64 %9, %8
  store i64 %10, ptr %5, align 8, !tbaa !18
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load ptr, ptr %4, align 8, !tbaa !15
  %14 = getelementptr inbounds %struct.rc_header_s, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.rc_header_s, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !23
  tail call void %15(ptr noundef %17, ptr noundef %13, ptr noundef nonnull @.str) #6
  br label %18

18:                                               ; preds = %3, %7, %12
  %19 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !15
  %21 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %20, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  tail call void %22(ptr noundef nonnull %19, ptr noundef %1, i32 noundef %2) #6
  ret void
}

declare void @gx_no_adjust_color_count(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal ptr @gx_enum_ptrs_Separation(ptr noundef %0, i32 %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = add i32 %2, -1
  %12 = tail call ptr %10(ptr noundef nonnull %7, i32 noundef 16, i32 noundef %11, ptr noundef %3) #6
  br label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  store ptr %15, ptr %3, align 8, !tbaa !26
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi ptr [ @ptr_struct_procs, %13 ], [ %12, %6 ]
  ret ptr %17
}

; Function Attrs: nounwind uwtable
define internal void @gx_reloc_ptrs_Separation(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #6
  store ptr %6, ptr %4, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.gs_color_space_s, ptr %0, i64 0, i32 1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %8, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  tail call void %10(ptr noundef nonnull %7, i32 noundef 16, ptr noundef %2) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @gs_setoverprint(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 5
  store i32 %1, ptr %3, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_currentoverprint(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gs_state_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !28
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"float", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"gs_color_space_s", !11, i64 0, !7, i64 8}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 24}
!13 = !{!"gs_color_space_type_s", !14, i64 0, !14, i64 4, !14, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88}
!14 = !{!"int", !7, i64 0}
!15 = !{!7, !7, i64 0}
!16 = !{!13, !11, i64 32}
!17 = !{!13, !11, i64 56}
!18 = !{!19, !21, i64 0}
!19 = !{!"gs_indexed_map_s", !20, i64 0, !7, i64 24, !14, i64 32, !11, i64 40}
!20 = !{!"rc_header_s", !21, i64 0, !11, i64 8, !11, i64 16}
!21 = !{!"long", !7, i64 0}
!22 = !{!19, !11, i64 16}
!23 = !{!19, !11, i64 8}
!24 = !{!13, !11, i64 64}
!25 = !{!13, !11, i64 80}
!26 = !{!11, !11, i64 0}
!27 = !{!13, !11, i64 88}
!28 = !{!29, !14, i64 136}
!29 = !{!"gs_state_s", !11, i64 0, !30, i64 8, !32, i64 80, !14, i64 128, !33, i64 132, !14, i64 136, !6, i64 140, !34, i64 144, !14, i64 160, !14, i64 164, !11, i64 168, !7, i64 176, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !7, i64 232, !7, i64 264, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !35, i64 336, !14, i64 360, !35, i64 364, !14, i64 388, !11, i64 392, !11, i64 400, !14, i64 408, !14, i64 412, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !32, i64 456, !14, i64 504, !7, i64 508, !14, i64 512, !11, i64 520, !14, i64 528, !11, i64 536, !11, i64 544, !36, i64 552}
!30 = !{!"gx_line_params_s", !6, i64 0, !14, i64 4, !14, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !31, i64 32}
!31 = !{!"gx_dash_params_s", !11, i64 0, !14, i64 8, !6, i64 12, !14, i64 16, !6, i64 20, !14, i64 24, !14, i64 28, !6, i64 32}
!32 = !{!"gs_matrix_fixed_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !21, i64 24, !21, i64 32, !14, i64 40}
!33 = !{!"short", !7, i64 0}
!34 = !{!"gs_fixed_point_s", !21, i64 0, !21, i64 8}
!35 = !{!"gs_matrix_s", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!36 = !{!"gs_state_client_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
