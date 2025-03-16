; ModuleID = 'zfdctd.c'
source_filename = "zfdctd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_DCT_state_s = type { ptr, ptr, ptr, %struct.gs_const_string_s, float, i32, i32, %union._jd, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%union._jd = type { ptr }
%struct.jpeg_decompress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32, %struct.jpeg_decompress_struct, %struct.jpeg_source_mgr, i64, i32, i32, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }

@zfdctd_op_defs.op_defs_ = internal constant [3 x %struct.op_def] [%struct.op_def { ptr @.str, ptr null }, %struct.op_def { ptr @.str.1, ptr @zDCTD }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"filterdict\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"2DCTDecode\00", align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"zDCTD\00", align 1
@s_DCTD_template = external local_unnamed_addr constant %struct.stream_template_s, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"zDCTD fail\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zfdctd_op_defs() local_unnamed_addr #0 {
  ret ptr @zfdctd_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zDCTD(ptr noundef %0) #1 {
  %2 = alloca %struct.stream_DCT_state_s, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #5
  %3 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !5
  %4 = tail call ptr %3(ptr noundef nonnull @gs_memory_default, i32 noundef 1, i32 noundef 1352, ptr noundef nonnull @.str.2) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %2, i64 0, i32 7
  store ptr %4, ptr %7, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %4, i64 0, i32 10
  store ptr null, ptr %8, align 8, !tbaa !12
  %9 = call i32 @gs_jpeg_create_decompress(ptr noundef nonnull %2) #5
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %6
  %12 = call i32 @zfdct_setup(ptr noundef %0, ptr noundef nonnull %2) #5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = load i16, ptr %0, align 8, !tbaa !22
  %18 = and i16 %17, 12
  %19 = zext nneg i16 %18 to i32
  br label %20

20:                                               ; preds = %14, %16
  %21 = phi ptr [ %0, %16 ], [ null, %14 ]
  %22 = phi i32 [ %19, %16 ], [ 0, %14 ]
  %23 = call i32 @zfdct_setup_huffman_tables(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 0) #5
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = call i32 @zfdct_setup_quantization_tables(ptr noundef %21, ptr noundef nonnull %2, i32 noundef 0) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @s_DCTD_template, i64 56, i1 false), !tbaa.struct !25
  %29 = call i32 @filter_read(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %4, ptr noundef nonnull %2, i32 noundef %22) #5
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %35, label %31

31:                                               ; preds = %28, %20, %25, %11, %6
  %32 = phi i32 [ %9, %6 ], [ %12, %11 ], [ %23, %20 ], [ %26, %25 ], [ %29, %28 ]
  %33 = call i32 @gs_jpeg_destroy(ptr noundef nonnull %2) #5
  %34 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !28
  call void %34(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %4, ptr noundef nonnull @.str.3) #5
  br label %35

35:                                               ; preds = %28, %1, %31
  %36 = phi i32 [ %32, %31 ], [ -25, %1 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #5
  ret i32 %36
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_jpeg_create_decompress(ptr noundef) local_unnamed_addr #3

declare i32 @zfdct_setup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @zfdct_setup_huffman_tables(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @zfdct_setup_quantization_tables(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare i32 @filter_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gs_jpeg_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

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
!5 = !{!6, !8, i64 32}
!6 = !{!"gs_memory_s", !7, i64 0}
!7 = !{!"gs_memory_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !8, i64 1336}
!13 = !{!"jpeg_decompress_data_s", !14, i64 0, !16, i64 56, !9, i64 224, !15, i64 424, !15, i64 428, !18, i64 432, !21, i64 1264, !17, i64 1320, !15, i64 1328, !15, i64 1332, !8, i64 1336, !15, i64 1344}
!14 = !{!"stream_template_s", !8, i64 0, !8, i64 8, !8, i64 16, !15, i64 24, !15, i64 28, !8, i64 32, !8, i64 40, !8, i64 48}
!15 = !{!"int", !9, i64 0}
!16 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !15, i64 40, !9, i64 44, !15, i64 124, !17, i64 128, !8, i64 136, !15, i64 144, !8, i64 152, !15, i64 160, !15, i64 164}
!17 = !{!"long", !9, i64 0}
!18 = !{!"jpeg_decompress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !15, i64 24, !15, i64 28, !8, i64 32, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !19, i64 72, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !15, i64 96, !15, i64 100, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !15, i64 136, !15, i64 140, !15, i64 144, !15, i64 148, !8, i64 152, !15, i64 160, !15, i64 164, !15, i64 168, !15, i64 172, !15, i64 176, !8, i64 184, !9, i64 192, !9, i64 224, !9, i64 256, !15, i64 288, !8, i64 296, !15, i64 304, !15, i64 308, !9, i64 312, !9, i64 328, !9, i64 344, !15, i64 360, !15, i64 364, !9, i64 368, !20, i64 370, !20, i64 372, !15, i64 376, !9, i64 380, !15, i64 384, !15, i64 388, !15, i64 392, !15, i64 396, !15, i64 400, !8, i64 408, !15, i64 416, !9, i64 424, !15, i64 456, !15, i64 460, !15, i64 464, !9, i64 468, !15, i64 724, !15, i64 728, !15, i64 732, !15, i64 736, !15, i64 740, !8, i64 744, !8, i64 752, !8, i64 760, !8, i64 768, !8, i64 776, !8, i64 784, !8, i64 792, !8, i64 800, !8, i64 808, !8, i64 816, !8, i64 824}
!19 = !{!"double", !9, i64 0}
!20 = !{!"short", !9, i64 0}
!21 = !{!"jpeg_source_mgr", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48}
!22 = !{!23, !20, i64 0}
!23 = !{!"ref_s", !24, i64 0, !9, i64 8}
!24 = !{!"tas_s", !20, i64 0, !20, i64 2}
!25 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26, i64 24, i64 4, !27, i64 28, i64 4, !27, i64 32, i64 8, !26, i64 40, i64 8, !26, i64 48, i64 8, !26}
!26 = !{!8, !8, i64 0}
!27 = !{!15, !15, i64 0}
!28 = !{!6, !8, i64 88}
