; ModuleID = 'gxclpage.c'
source_filename = "gxclpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_printer_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [944 x i8], %struct.gx_printer_device_procs_s, %struct.gdev_prn_space_params_s, [80 x i8], i32, i32, i32, i32, i32, i32, ptr, i64, ptr, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_printer_device_procs_s = type { ptr, ptr, ptr }
%struct.gdev_prn_space_params_s = type { i64, i64, %struct.gx_band_params_s }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_device_clist_writer_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, i32, %struct.gx_band_params_s, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, ptr, i32, i32, %struct.gx_band_page_info_s, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, [11 x float], ptr, i64, i8, %struct.gs_indexed_params_s, [4 x i64], i64, i64, i64, i32 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_bits_cache_s = type { ptr, i32, i32, i32 }
%struct.gx_band_page_info_s = type { [60 x i8], ptr, [60 x i8], ptr, i32, i64, %struct.gx_band_params_s }
%struct.cmd_list_s = type { ptr, ptr }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.0, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gx_saved_page_s = type { %struct.gx_device_s, [9 x i8], %struct.gx_band_page_info_s, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_placed_page_s = type { ptr, %struct.gs_int_point_s }
%struct.gx_device_clist_reader_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, i32, %struct.gx_band_params_s, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, ptr, i32, i32, %struct.gx_band_page_info_s, i32, ptr, i32 }

@gs_clist_device_procs = external local_unnamed_addr global %struct.gx_device_procs_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_save_page(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  %5 = load i64, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #6
  %11 = icmp ugt i64 %10, 8
  br i1 %11, label %37, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @clist_end_page(ptr noundef %0) #7
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34
  %17 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !20
  %19 = tail call i32 @clist_fclose(ptr noundef %18, ptr noundef nonnull %16, i32 noundef 0) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 2
  %25 = tail call i32 @clist_fclose(ptr noundef %23, ptr noundef nonnull %24, i32 noundef 0) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %1, ptr noundef nonnull align 8 dereferenceable(488) %0, i64 488, i1 false)
  %28 = getelementptr inbounds %struct.gx_saved_page_s, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %8, align 8, !tbaa !19
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %29) #7
  %31 = getelementptr inbounds %struct.gx_saved_page_s, ptr %1, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %31, ptr noundef nonnull align 8 dereferenceable(176) %16, i64 176, i1 false), !tbaa.struct !37
  %32 = getelementptr inbounds %struct.gx_saved_page_s, ptr %1, i64 0, i32 2, i32 1
  store ptr null, ptr %32, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.gx_saved_page_s, ptr %1, i64 0, i32 2, i32 3
  store ptr null, ptr %33, align 8, !tbaa !45
  %34 = getelementptr inbounds %struct.gx_saved_page_s, ptr %1, i64 0, i32 3
  store i32 %2, ptr %34, align 8, !tbaa !46
  %35 = load ptr, ptr @gs_clist_device_procs, align 8, !tbaa !47
  %36 = tail call i32 %35(ptr noundef %0) #7
  br label %37

37:                                               ; preds = %12, %15, %21, %7, %3, %27
  %38 = phi i32 [ %36, %27 ], [ -15, %3 ], [ -13, %7 ], [ %13, %12 ], [ %19, %15 ], [ %25, %21 ]
  ret i32 %38
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

declare i32 @clist_end_page(ptr noundef) local_unnamed_addr #2

declare i32 @clist_fclose(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @gdev_prn_render_pages(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %55

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 33
  %10 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %11 = zext nneg i32 %2 to i64
  %12 = zext nneg i32 %2 to i64
  br label %17

13:                                               ; preds = %51
  %14 = add nuw nsw i64 %18, 1
  %15 = icmp ult i64 %14, %11
  %16 = icmp eq i64 %14, %12
  br i1 %16, label %55, label %17, !llvm.loop !48

17:                                               ; preds = %5, %13
  %18 = phi i64 [ 0, %5 ], [ %14, %13 ]
  %19 = phi i1 [ %4, %5 ], [ %15, %13 ]
  %20 = phi i32 [ undef, %5 ], [ %52, %13 ]
  %21 = getelementptr inbounds %struct.gx_placed_page_s, ptr %1, i64 %18
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.gx_saved_page_s, ptr %22, i64 0, i32 1
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %7) #6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %22, i64 0, i32 7
  %28 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %27, ptr noundef nonnull dereferenceable(16) %8, i64 16)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gx_placed_page_s, ptr %1, i64 %18, i32 1, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.gx_saved_page_s, ptr %22, i64 0, i32 2, i32 6, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !53
  %37 = load i64, ptr %9, align 8, !tbaa !5
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.gx_saved_page_s, ptr %22, i64 0, i32 2, i32 6
  %41 = load i32, ptr %40, align 8, !tbaa !54
  %42 = load i32, ptr %10, align 8, !tbaa !55
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = icmp eq i64 %18, 0
  %46 = getelementptr inbounds %struct.gx_saved_page_s, ptr %22, i64 0, i32 2, i32 6, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, %20
  %49 = select i1 %45, i32 %47, i32 %20
  %50 = select i1 %45, i1 true, i1 %48
  br label %51

51:                                               ; preds = %44, %34, %39, %30, %17, %26
  %52 = phi i32 [ %20, %26 ], [ %20, %17 ], [ %20, %30 ], [ %20, %39 ], [ %20, %34 ], [ %49, %44 ]
  %53 = phi i1 [ false, %26 ], [ false, %17 ], [ false, %30 ], [ false, %39 ], [ false, %34 ], [ %50, %44 ]
  br i1 %53, label %13, label %54

54:                                               ; preds = %51
  br i1 %19, label %79, label %55

55:                                               ; preds = %13, %3, %54
  %56 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 33
  store i32 0, ptr %56, align 4, !tbaa !56
  %57 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 32
  store i32 0, ptr %57, align 8, !tbaa !58
  %58 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 36
  store ptr %1, ptr %58, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 37
  store i32 %2, ptr %59, align 8, !tbaa !60
  %60 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 21, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = load ptr, ptr %1, align 8, !tbaa !50
  %63 = getelementptr inbounds %struct.gx_saved_page_s, ptr %62, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !46
  %65 = tail call i32 %61(ptr noundef %0, i32 noundef %64, i32 noundef 1) #7
  %66 = icmp sgt i32 %2, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %55
  %68 = zext nneg i32 %2 to i64
  br label %69

69:                                               ; preds = %67, %69
  %70 = phi i64 [ 0, %67 ], [ %77, %69 ]
  %71 = getelementptr inbounds %struct.gx_placed_page_s, ptr %1, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !50
  %73 = getelementptr inbounds %struct.gx_saved_page_s, ptr %72, i64 0, i32 2
  %74 = tail call i32 @clist_unlink(ptr noundef nonnull %73) #7
  %75 = getelementptr inbounds %struct.gx_saved_page_s, ptr %72, i64 0, i32 2, i32 2
  %76 = tail call i32 @clist_unlink(ptr noundef nonnull %75) #7
  %77 = add nuw nsw i64 %70, 1
  %78 = icmp eq i64 %77, %68
  br i1 %78, label %79, label %69, !llvm.loop !62

79:                                               ; preds = %69, %55, %54
  %80 = phi i32 [ -15, %54 ], [ %65, %55 ], [ %65, %69 ]
  ret i32 %80
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

declare i32 @clist_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !13, i64 1600}
!6 = !{!"gx_device_printer_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !8, i64 488, !16, i64 1432, !17, i64 1456, !8, i64 1488, !7, i64 1568, !7, i64 1572, !7, i64 1576, !7, i64 1580, !7, i64 1584, !7, i64 1588, !10, i64 1592, !13, i64 1600, !10, i64 1608, !15, i64 1616}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!"gx_printer_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!"gdev_prn_space_params_s", !13, i64 0, !13, i64 8, !18, i64 16}
!18 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !13, i64 8}
!19 = !{!6, !10, i64 16}
!20 = !{!21, !10, i64 672}
!21 = !{!"gx_device_clist_writer_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !10, i64 496, !10, i64 504, !7, i64 512, !18, i64 520, !22, i64 536, !23, i64 560, !7, i64 584, !7, i64 588, !10, i64 592, !7, i64 600, !7, i64 604, !24, i64 608, !7, i64 784, !7, i64 788, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824, !25, i64 832, !7, i64 848, !7, i64 852, !7, i64 856, !7, i64 860, !26, i64 864, !7, i64 904, !7, i64 908, !7, i64 912, !28, i64 920, !8, i64 1240, !10, i64 1288, !13, i64 1296, !8, i64 1304, !34, i64 1312, !8, i64 1360, !13, i64 1392, !13, i64 1400, !13, i64 1408, !7, i64 1416}
!22 = !{!"gx_bits_cache_chunk_s", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20}
!23 = !{!"gx_bits_cache_s", !10, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!24 = !{!"gx_band_page_info_s", !8, i64 0, !10, i64 64, !8, i64 72, !10, i64 136, !7, i64 144, !13, i64 152, !18, i64 160}
!25 = !{!"cmd_list_s", !10, i64 0, !10, i64 8}
!26 = !{!"gx_strip_bitmap_s", !10, i64 0, !7, i64 8, !27, i64 12, !13, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38}
!27 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!28 = !{!"gs_imager_state_s", !10, i64 0, !29, i64 8, !32, i64 80, !7, i64 128, !12, i64 132, !7, i64 136, !30, i64 140, !33, i64 144, !7, i64 160, !7, i64 164, !10, i64 168, !8, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !8, i64 232, !8, i64 264, !10, i64 296, !10, i64 304, !10, i64 312}
!29 = !{!"gx_line_params_s", !30, i64 0, !7, i64 4, !7, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !31, i64 32}
!30 = !{!"float", !8, i64 0}
!31 = !{!"gx_dash_params_s", !10, i64 0, !7, i64 8, !30, i64 12, !7, i64 16, !30, i64 20, !7, i64 24, !7, i64 28, !30, i64 32}
!32 = !{!"gs_matrix_fixed_s", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !13, i64 24, !13, i64 32, !7, i64 40}
!33 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!34 = !{!"gs_indexed_params_s", !35, i64 0, !7, i64 16, !8, i64 24, !7, i64 40}
!35 = !{!"gs_base_color_space_s", !10, i64 0, !8, i64 8}
!36 = !{!21, !10, i64 744}
!37 = !{i64 0, i64 60, !38, i64 64, i64 8, !39, i64 72, i64 60, !38, i64 136, i64 8, !39, i64 144, i64 4, !40, i64 152, i64 8, !41, i64 160, i64 4, !40, i64 164, i64 4, !40, i64 168, i64 8, !41}
!38 = !{!8, !8, i64 0}
!39 = !{!10, !10, i64 0}
!40 = !{!7, !7, i64 0}
!41 = !{!13, !13, i64 0}
!42 = !{!43, !10, i64 568}
!43 = !{!"gx_saved_page_s", !44, i64 0, !8, i64 488, !24, i64 504, !7, i64 680}
!44 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!45 = !{!43, !10, i64 640}
!46 = !{!43, !7, i64 680}
!47 = !{!15, !10, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !10, i64 0}
!51 = !{!"gx_placed_page_s", !10, i64 0, !27, i64 8}
!52 = !{!51, !7, i64 12}
!53 = !{!43, !13, i64 672}
!54 = !{!43, !7, i64 664}
!55 = !{!6, !7, i64 64}
!56 = !{!57, !7, i64 604}
!57 = !{!"gx_device_clist_reader_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !10, i64 496, !10, i64 504, !7, i64 512, !18, i64 520, !22, i64 536, !23, i64 560, !7, i64 584, !7, i64 588, !10, i64 592, !7, i64 600, !7, i64 604, !24, i64 608, !7, i64 784, !10, i64 792, !7, i64 800}
!58 = !{!57, !7, i64 600}
!59 = !{!57, !10, i64 792}
!60 = !{!57, !7, i64 800}
!61 = !{!6, !10, i64 216}
!62 = distinct !{!62, !49}
