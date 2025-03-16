; ModuleID = 'jdpostct.c'
source_filename = "jdpostct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.my_post_controller = type { %struct.jpeg_d_post_controller, ptr, ptr, i32, i32, i32 }
%struct.jpeg_d_post_controller = type { ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_upsampler = type { ptr, ptr, i32 }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_d_post_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load ptr, ptr %4, align 8, !tbaa !13
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef 1, i64 noundef 48) #4
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  store ptr %6, ptr %7, align 8, !tbaa !16
  store ptr @start_pass_dpost, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.my_post_controller, ptr %6, i64 0, i32 1
  %9 = getelementptr inbounds %struct.my_post_controller, ptr %6, i64 0, i32 2
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %11 = load i32, ptr %10, align 4, !tbaa !20
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 58
  %15 = load i32, ptr %14, align 8, !tbaa !21
  %16 = getelementptr inbounds %struct.my_post_controller, ptr %6, i64 0, i32 3
  store i32 %15, ptr %16, align 8, !tbaa !22
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !23
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %19, i64 0, i32 5
  store i32 4, ptr %20, align 8, !tbaa !24
  %21 = load ptr, ptr %19, align 8, !tbaa !26
  tail call void %21(ptr noundef nonnull %0) #4
  br label %32

22:                                               ; preds = %13
  %23 = load ptr, ptr %3, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !27
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %27 = load i32, ptr %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %29 = load i32, ptr %28, align 8, !tbaa !29
  %30 = mul i32 %29, %27
  %31 = tail call ptr %25(ptr noundef %0, i32 noundef 1, i32 noundef %30, i32 noundef %15) #4
  store ptr %31, ptr %9, align 8, !tbaa !30
  br label %32

32:                                               ; preds = %18, %22, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_pass_dpost(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 19
  %8 = load i32, ptr %7, align 4, !tbaa !20
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %4, i64 0, i32 1
  store ptr @post_process_1pass, ptr %11, align 8, !tbaa !31
  %12 = getelementptr inbounds %struct.my_post_controller, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !30
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %17, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = getelementptr inbounds %struct.my_post_controller, ptr %4, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  %22 = getelementptr inbounds %struct.my_post_controller, ptr %4, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !22
  %24 = tail call ptr %19(ptr noundef %0, ptr noundef %21, i32 noundef 0, i32 noundef %23, i32 noundef 1) #4
  store ptr %24, ptr %12, align 8, !tbaa !30
  br label %35

25:                                               ; preds = %6
  %26 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %27 = load ptr, ptr %26, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.jpeg_upsampler, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.jpeg_d_post_controller, ptr %4, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !31
  br label %35

31:                                               ; preds = %2
  %32 = load ptr, ptr %0, align 8, !tbaa !23
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %32, i64 0, i32 5
  store i32 4, ptr %33, align 8, !tbaa !24
  %34 = load ptr, ptr %32, align 8, !tbaa !26
  tail call void %34(ptr noundef nonnull %0) #4
  br label %35

35:                                               ; preds = %25, %15, %10, %31
  %36 = getelementptr inbounds %struct.my_post_controller, ptr %4, i64 0, i32 5
  store i32 0, ptr %36, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.my_post_controller, ptr %4, i64 0, i32 4
  store i32 0, ptr %37, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @post_process_1pass(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 76
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  %11 = load i32, ptr %5, align 4, !tbaa !39
  %12 = sub i32 %6, %11
  %13 = getelementptr inbounds %struct.my_post_controller, ptr %10, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !22
  %15 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14)
  store i32 0, ptr %8, align 4, !tbaa !39
  %16 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 81
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = getelementptr inbounds %struct.jpeg_upsampler, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.my_post_controller, ptr %10, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !30
  call void %19(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %21, ptr noundef nonnull %8, i32 noundef %15) #4
  %22 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !41
  %26 = load ptr, ptr %20, align 8, !tbaa !30
  %27 = load i32, ptr %5, align 4, !tbaa !39
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %4, i64 %28
  %30 = load i32, ptr %8, align 4, !tbaa !39
  call void %25(ptr noundef %0, ptr noundef %26, ptr noundef %29, i32 noundef %30) #4
  %31 = load i32, ptr %8, align 4, !tbaa !39
  %32 = load i32, ptr %5, align 4, !tbaa !39
  %33 = add i32 %32, %31
  store i32 %33, ptr %5, align 4, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 724, !10, i64 728, !10, i64 732, !10, i64 736, !10, i64 740, !7, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 768}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 36, !10, i64 40}
!19 = !{!"jpeg_d_post_controller", !7, i64 0, !7, i64 8}
!20 = !{!6, !10, i64 100}
!21 = !{!6, !10, i64 392}
!22 = !{!18, !10, i64 32}
!23 = !{!6, !7, i64 0}
!24 = !{!25, !10, i64 40}
!25 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!26 = !{!25, !7, i64 0}
!27 = !{!14, !7, i64 16}
!28 = !{!6, !10, i64 128}
!29 = !{!6, !10, i64 136}
!30 = !{!18, !7, i64 24}
!31 = !{!18, !7, i64 8}
!32 = !{!14, !7, i64 56}
!33 = !{!18, !7, i64 16}
!34 = !{!6, !7, i64 808}
!35 = !{!36, !7, i64 8}
!36 = !{!"jpeg_upsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!37 = !{!18, !10, i64 40}
!38 = !{!18, !10, i64 36}
!39 = !{!10, !10, i64 0}
!40 = !{!6, !7, i64 824}
!41 = !{!42, !7, i64 8}
!42 = !{!"jpeg_color_quantizer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
