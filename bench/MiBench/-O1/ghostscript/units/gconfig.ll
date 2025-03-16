; ModuleID = 'gconfig.c'
source_filename = "gconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_io_device_s = type { ptr, ptr, %struct.gx_io_device_procs_s }
%struct.gx_io_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gx_init_table = dso_local local_unnamed_addr global [14 x ptr] [ptr @gs_gscolor1_init, ptr @gs_gximage3_init, ptr @gs_igcref_init, ptr @gs_gstype1_init, ptr @gs_gximage4_init, ptr @gs_gximage5_init, ptr @gs_gstype2_init, ptr @gs_climag_init, ptr @gs_clpath_init, ptr @gs_gscolor_init, ptr @gs_gximage1_init, ptr @gs_gximage2_init, ptr @gs_roplib_init, ptr null], align 16
@gs_iodev_os = external global %struct.gx_io_device_s, align 8
@gs_iodev_null = external global %struct.gx_io_device_s, align 8
@gs_iodev_ram = external global %struct.gx_io_device_s, align 8
@gs_iodev_calendar = external global %struct.gx_io_device_s, align 8
@gs_iodev_stdin = external global %struct.gx_io_device_s, align 8
@gs_iodev_stdout = external global %struct.gx_io_device_s, align 8
@gs_iodev_stderr = external global %struct.gx_io_device_s, align 8
@gs_iodev_lineedit = external global %struct.gx_io_device_s, align 8
@gs_iodev_statementedit = external global %struct.gx_io_device_s, align 8
@gs_iodev_pipe = external global %struct.gx_io_device_s, align 8
@gx_io_device_table = dso_local local_unnamed_addr global [11 x ptr] [ptr @gs_iodev_os, ptr @gs_iodev_null, ptr @gs_iodev_ram, ptr @gs_iodev_calendar, ptr @gs_iodev_stdin, ptr @gs_iodev_stdout, ptr @gs_iodev_stderr, ptr @gs_iodev_lineedit, ptr @gs_iodev_statementedit, ptr @gs_iodev_pipe, ptr null], align 16
@gx_io_device_table_count = dso_local local_unnamed_addr global i32 10, align 4
@gx_device_list = internal global [17 x ptr] [ptr @gs_pbm_device, ptr @gs_pbmraw_device, ptr @gs_pgm_device, ptr @gs_pgmraw_device, ptr @gs_pgnm_device, ptr @gs_pgnmraw_device, ptr @gs_pnm_device, ptr @gs_pnmraw_device, ptr @gs_ppm_device, ptr @gs_ppmraw_device, ptr @gs_pdfwrite_device, ptr @gs_pswrite_device, ptr @gs_epswrite_device, ptr @gs_pxlmono_device, ptr @gs_pxlcolor_device, ptr @gs_nullpage_device, ptr null], align 16
@gx_device_st_list = internal global [17 x %struct.gs_memory_struct_type_s] zeroinitializer, align 16
@gs_pbm_device = external global %struct.gx_device_s, align 8
@gs_pbmraw_device = external global %struct.gx_device_s, align 8
@gs_pgm_device = external global %struct.gx_device_s, align 8
@gs_pgmraw_device = external global %struct.gx_device_s, align 8
@gs_pgnm_device = external global %struct.gx_device_s, align 8
@gs_pgnmraw_device = external global %struct.gx_device_s, align 8
@gs_pnm_device = external global %struct.gx_device_s, align 8
@gs_pnmraw_device = external global %struct.gx_device_s, align 8
@gs_ppm_device = external global %struct.gx_device_s, align 8
@gs_ppmraw_device = external global %struct.gx_device_s, align 8
@gs_pdfwrite_device = external global %struct.gx_device_s, align 8
@gs_pswrite_device = external global %struct.gx_device_s, align 8
@gs_epswrite_device = external global %struct.gx_device_s, align 8
@gs_pxlmono_device = external global %struct.gx_device_s, align 8
@gs_pxlcolor_device = external global %struct.gx_device_s, align 8
@gs_nullpage_device = external global %struct.gx_device_s, align 8

declare void @gs_gscolor1_init(ptr noundef) #0

declare void @gs_gximage3_init(ptr noundef) #0

declare void @gs_igcref_init(ptr noundef) #0

declare void @gs_gstype1_init(ptr noundef) #0

declare void @gs_gximage4_init(ptr noundef) #0

declare void @gs_gximage5_init(ptr noundef) #0

declare void @gs_gstype2_init(ptr noundef) #0

declare void @gs_climag_init(ptr noundef) #0

declare void @gs_clpath_init(ptr noundef) #0

declare void @gs_gscolor_init(ptr noundef) #0

declare void @gs_gximage1_init(ptr noundef) #0

declare void @gs_gximage2_init(ptr noundef) #0

declare void @gs_roplib_init(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @gs_lib_device_list(ptr noundef writeonly %0, ptr noundef writeonly %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  store ptr @gx_device_list, ptr %0, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %4, %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  store ptr @gx_device_st_list, ptr %1, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %7, %5
  ret i32 16
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
