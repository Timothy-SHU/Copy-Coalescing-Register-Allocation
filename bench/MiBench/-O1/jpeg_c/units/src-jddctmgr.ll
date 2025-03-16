; ModuleID = 'src/jddctmgr.c'
source_filename = "src/jddctmgr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_idct_controller = type { %struct.jpeg_inverse_dct, [10 x i32] }
%struct.jpeg_inverse_dct = type { ptr, [10 x ptr] }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }

@start_pass.aanscales = internal unnamed_addr constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass.aanscalefactor = internal unnamed_addr constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 16
@switch.table.start_pass = private unnamed_addr constant [3 x ptr] [ptr @jpeg_idct_islow, ptr @jpeg_idct_ifast, ptr @jpeg_idct_float], align 8

; Function Attrs: nounwind uwtable
define dso_local void @jinit_inverse_dct(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 128) #3
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !20
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ 0, %10 ], [ %21, %13 ]
  %15 = phi ptr [ %12, %10 ], [ %22, %13 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !5
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = tail call ptr %17(ptr noundef %0, i32 noundef 1, i64 noundef 256) #3
  %19 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 0, i32 20
  store ptr %18, ptr %19, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %18, i8 0, i64 256, i1 false)
  %20 = getelementptr inbounds %struct.my_idct_controller, ptr %5, i64 0, i32 1, i64 %14
  store i32 -1, ptr %20, align 4, !tbaa !24
  %21 = add nuw nsw i64 %14, 1
  %22 = getelementptr inbounds %struct.jpeg_component_info, ptr %15, i64 1
  %23 = load i32, ptr %7, align 8, !tbaa !20
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %13, label %26, !llvm.loop !25

26:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 80
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 8
  %5 = load i32, ptr %4, align 8, !tbaa !20
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %110

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 16
  br label %11

11:                                               ; preds = %7, %104
  %12 = phi i64 [ 0, %7 ], [ %105, %104 ]
  %13 = phi ptr [ %9, %7 ], [ %106, %104 ]
  %14 = phi i32 [ 0, %7 ], [ %39, %104 ]
  %15 = phi ptr [ null, %7 ], [ %38, %104 ]
  %16 = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i64 0, i32 9
  %17 = load i32, ptr %16, align 4, !tbaa !27
  switch i32 %17, label %27 [
    i32 1, label %37
    i32 2, label %18
    i32 4, label %19
    i32 8, label %20
  ]

18:                                               ; preds = %11
  br label %37

19:                                               ; preds = %11
  br label %37

20:                                               ; preds = %11
  %21 = load i32, ptr %10, align 8, !tbaa !28
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %33, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %0, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 47, ptr %25, align 8, !tbaa !30
  %26 = load ptr, ptr %24, align 8, !tbaa !32
  tail call void %26(ptr noundef nonnull %0) #3
  br label %37

27:                                               ; preds = %11
  %28 = load ptr, ptr %0, align 8, !tbaa !29
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 6, ptr %29, align 8, !tbaa !30
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6
  store i32 %17, ptr %30, align 4, !tbaa !33
  %31 = load ptr, ptr %0, align 8, !tbaa !29
  %32 = load ptr, ptr %31, align 8, !tbaa !32
  tail call void %32(ptr noundef nonnull %0) #3
  br label %37

33:                                               ; preds = %20
  %34 = zext nneg i32 %21 to i64
  %35 = getelementptr inbounds [3 x ptr], ptr @switch.table.start_pass, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8
  br label %37

37:                                               ; preds = %33, %11, %23, %27, %19, %18
  %38 = phi ptr [ %15, %27 ], [ %15, %23 ], [ @jpeg_idct_4x4, %19 ], [ @jpeg_idct_2x2, %18 ], [ @jpeg_idct_1x1, %11 ], [ %36, %33 ]
  %39 = phi i32 [ %14, %27 ], [ %14, %23 ], [ 0, %19 ], [ 0, %18 ], [ 0, %11 ], [ %21, %33 ]
  %40 = getelementptr inbounds %struct.jpeg_inverse_dct, ptr %3, i64 0, i32 1, i64 %12
  store ptr %38, ptr %40, align 8, !tbaa !34
  %41 = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i64 0, i32 12
  %42 = load i32, ptr %41, align 8, !tbaa !35
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %104, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.my_idct_controller, ptr %3, i64 0, i32 1, i64 %12
  %46 = load i32, ptr %45, align 4, !tbaa !24
  %47 = icmp eq i32 %46, %39
  br i1 %47, label %104, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i64 0, i32 19
  %50 = load ptr, ptr %49, align 8, !tbaa !36
  %51 = icmp eq ptr %50, null
  br i1 %51, label %104, label %52

52:                                               ; preds = %48
  store i32 %39, ptr %45, align 4, !tbaa !24
  %53 = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i64 0, i32 20
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  switch i32 %39, label %103 [
    i32 0, label %55
    i32 1, label %63
    i32 2, label %78
  ]

55:                                               ; preds = %52, %55
  %56 = phi i64 [ %61, %55 ], [ 0, %52 ]
  %57 = getelementptr inbounds [64 x i16], ptr %50, i64 0, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !37
  %59 = zext i16 %58 to i32
  %60 = getelementptr inbounds i32, ptr %54, i64 %56
  store i32 %59, ptr %60, align 4, !tbaa !24
  %61 = add nuw nsw i64 %56, 1
  %62 = icmp eq i64 %61, 64
  br i1 %62, label %104, label %55, !llvm.loop !38

63:                                               ; preds = %52, %63
  %64 = phi i64 [ %76, %63 ], [ 0, %52 ]
  %65 = getelementptr inbounds [64 x i16], ptr %50, i64 0, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !37
  %67 = zext i16 %66 to i64
  %68 = getelementptr inbounds [64 x i16], ptr @start_pass.aanscales, i64 0, i64 %64
  %69 = load i16, ptr %68, align 2, !tbaa !37
  %70 = sext i16 %69 to i64
  %71 = mul nsw i64 %70, %67
  %72 = add nsw i64 %71, 2048
  %73 = ashr i64 %72, 12
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds i32, ptr %54, i64 %64
  store i32 %74, ptr %75, align 4, !tbaa !24
  %76 = add nuw nsw i64 %64, 1
  %77 = icmp eq i64 %76, 64
  br i1 %77, label %104, label %63, !llvm.loop !39

78:                                               ; preds = %52, %100
  %79 = phi i64 [ %101, %100 ], [ 0, %52 ]
  %80 = phi i64 [ %97, %100 ], [ 0, %52 ]
  %81 = getelementptr inbounds [8 x double], ptr @start_pass.aanscalefactor, i64 0, i64 %79
  %82 = load double, ptr %81, align 8, !tbaa !40
  %83 = shl i64 %80, 32
  %84 = ashr exact i64 %83, 32
  br label %85

85:                                               ; preds = %78, %85
  %86 = phi i64 [ %84, %78 ], [ %97, %85 ]
  %87 = phi i64 [ 0, %78 ], [ %98, %85 ]
  %88 = getelementptr inbounds [64 x i16], ptr %50, i64 0, i64 %86
  %89 = load i16, ptr %88, align 2, !tbaa !37
  %90 = uitofp i16 %89 to double
  %91 = fmul double %82, %90
  %92 = getelementptr inbounds [8 x double], ptr @start_pass.aanscalefactor, i64 0, i64 %87
  %93 = load double, ptr %92, align 8, !tbaa !40
  %94 = fmul double %91, %93
  %95 = fptrunc double %94 to float
  %96 = getelementptr inbounds float, ptr %54, i64 %86
  store float %95, ptr %96, align 4, !tbaa !41
  %97 = add nsw i64 %86, 1
  %98 = add nuw nsw i64 %87, 1
  %99 = icmp eq i64 %98, 8
  br i1 %99, label %100, label %85, !llvm.loop !43

100:                                              ; preds = %85
  %101 = add nuw nsw i64 %79, 1
  %102 = icmp eq i64 %101, 8
  br i1 %102, label %104, label %78, !llvm.loop !44

103:                                              ; preds = %52
  unreachable

104:                                              ; preds = %100, %63, %55, %48, %37, %44
  %105 = add nuw nsw i64 %12, 1
  %106 = getelementptr inbounds %struct.jpeg_component_info, ptr %13, i64 1
  %107 = load i32, ptr %4, align 8, !tbaa !20
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %11, label %110, !llvm.loop !45

110:                                              ; preds = %104, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare void @jpeg_idct_1x1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_2x2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_4x4(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_islow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_ifast(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @jpeg_idct_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 584}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !8, i64 88}
!19 = !{!"jpeg_inverse_dct", !7, i64 0, !8, i64 8}
!20 = !{!6, !10, i64 48}
!21 = !{!6, !7, i64 296}
!22 = !{!23, !7, i64 88}
!23 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!24 = !{!10, !10, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.unroll.disable"}
!27 = !{!23, !10, i64 36}
!28 = !{!6, !10, i64 88}
!29 = !{!6, !7, i64 0}
!30 = !{!31, !10, i64 40}
!31 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!32 = !{!31, !7, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!7, !7, i64 0}
!35 = !{!23, !10, i64 48}
!36 = !{!23, !7, i64 80}
!37 = !{!12, !12, i64 0}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !26}
!40 = !{!11, !11, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !8, i64 0}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
