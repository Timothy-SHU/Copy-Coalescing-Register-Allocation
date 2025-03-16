; ModuleID = 'jcprepct.c'
source_filename = "jcprepct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.jpeg_c_prep_controller = type { ptr, ptr }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.my_prep_controller = type { %struct.jpeg_c_prep_controller, [10 x ptr], i32, i32 }
%struct.jpeg_color_converter = type { ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_c_prep_controller(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %5, i64 0, i32 5
  store i32 4, ptr %6, align 8, !tbaa !13
  %7 = load ptr, ptr %5, align 8, !tbaa !16
  tail call void %7(ptr noundef nonnull %0) #3
  br label %8

8:                                                ; preds = %4, %2
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 1, i64 noundef 104) #3
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  store ptr %12, ptr %13, align 8, !tbaa !20
  store ptr @start_pass_prep, ptr %12, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.jpeg_downsampler, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %8
  %20 = load ptr, ptr %0, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 47, ptr %21, align 8, !tbaa !13
  %22 = load ptr, ptr %20, align 8, !tbaa !16
  tail call void %22(ptr noundef nonnull %0) #3
  br label %59

23:                                               ; preds = %8
  %24 = getelementptr inbounds %struct.jpeg_c_prep_controller, ptr %12, i64 0, i32 1
  store ptr @pre_process_data, ptr %24, align 8, !tbaa !27
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !28
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %30 = load ptr, ptr %29, align 8, !tbaa !29
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  br label %33

33:                                               ; preds = %28, %33
  %34 = phi i64 [ 0, %28 ], [ %54, %33 ]
  %35 = phi ptr [ %30, %28 ], [ %55, %33 ]
  %36 = load ptr, ptr %9, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !30
  %39 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !31
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load i32, ptr %31, align 8, !tbaa !33
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %42, %44
  %46 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !34
  %48 = sext i32 %47 to i64
  %49 = sdiv i64 %45, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32, ptr %32, align 4, !tbaa !35
  %52 = tail call ptr %38(ptr noundef %0, i32 noundef 1, i32 noundef %50, i32 noundef %51) #3
  %53 = getelementptr inbounds %struct.my_prep_controller, ptr %12, i64 0, i32 1, i64 %34
  store ptr %52, ptr %53, align 8, !tbaa !36
  %54 = add nuw nsw i64 %34, 1
  %55 = getelementptr inbounds %struct.jpeg_component_info, ptr %35, i64 1
  %56 = load i32, ptr %25, align 4, !tbaa !28
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %33, label %59, !llvm.loop !37

59:                                               ; preds = %33, %23, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_prep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 4, ptr %8, align 8, !tbaa !13
  %9 = load ptr, ptr %7, align 8, !tbaa !16
  tail call void %9(ptr noundef nonnull %0) #3
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pre_process_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = load i32, ptr %2, align 4, !tbaa !42
  %11 = icmp ult i32 %10, %3
  br i1 %11, label %12, label %124

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %14 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 3
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %16 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1
  %17 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 2
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  br label %21

21:                                               ; preds = %12, %121
  %22 = phi i32 [ %10, %12 ], [ %122, %121 ]
  %23 = load i32, ptr %5, align 4, !tbaa !42
  %24 = icmp ult i32 %23, %6
  br i1 %24, label %25, label %124

25:                                               ; preds = %21
  %26 = sub i32 %3, %22
  %27 = load i32, ptr %13, align 4, !tbaa !35
  %28 = load i32, ptr %14, align 4, !tbaa !41
  %29 = sub nsw i32 %27, %28
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %26)
  %31 = load ptr, ptr %15, align 8, !tbaa !43
  %32 = getelementptr inbounds %struct.jpeg_color_converter, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = zext i32 %22 to i64
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34
  tail call void %33(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %16, i32 noundef %28, i32 noundef %30) #3
  %36 = load i32, ptr %2, align 4, !tbaa !42
  %37 = add i32 %36, %30
  store i32 %37, ptr %2, align 4, !tbaa !42
  %38 = load i32, ptr %14, align 4, !tbaa !41
  %39 = add nsw i32 %38, %30
  store i32 %39, ptr %14, align 4, !tbaa !41
  %40 = load i32, ptr %17, align 8, !tbaa !40
  %41 = sub i32 %40, %30
  store i32 %41, ptr %17, align 8, !tbaa !40
  %42 = icmp eq i32 %40, %30
  br i1 %42, label %43, label %70

43:                                               ; preds = %25
  %44 = load i32, ptr %13, align 4, !tbaa !35
  %45 = icmp slt i32 %39, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = load i32, ptr %18, align 4, !tbaa !28
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46, %63
  %50 = phi i64 [ %64, %63 ], [ 0, %46 ]
  %51 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !36
  %53 = load i32, ptr %19, align 8, !tbaa !46
  %54 = load i32, ptr %14, align 4, !tbaa !41
  %55 = load i32, ptr %13, align 4, !tbaa !35
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = add nsw i32 %54, -1
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ %54, %57 ], [ %61, %59 ]
  tail call void @jcopy_sample_rows(ptr noundef %52, i32 noundef %58, ptr noundef %52, i32 noundef %60, i32 noundef 1, i32 noundef %53) #3
  %61 = add i32 %60, 1
  %62 = icmp eq i32 %61, %55
  br i1 %62, label %63, label %59, !llvm.loop !47

63:                                               ; preds = %59, %49
  %64 = add nuw nsw i64 %50, 1
  %65 = load i32, ptr %18, align 4, !tbaa !28
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %49, label %68, !llvm.loop !48

68:                                               ; preds = %63, %46
  %69 = load i32, ptr %13, align 4, !tbaa !35
  store i32 %69, ptr %14, align 4, !tbaa !41
  br label %70

70:                                               ; preds = %68, %43, %25
  %71 = load i32, ptr %14, align 4, !tbaa !41
  %72 = load i32, ptr %13, align 4, !tbaa !35
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load ptr, ptr %20, align 8, !tbaa !24
  %76 = getelementptr inbounds %struct.jpeg_downsampler, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !49
  %78 = load i32, ptr %5, align 4, !tbaa !42
  tail call void %77(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 0, ptr noundef %4, i32 noundef %78) #3
  store i32 0, ptr %14, align 4, !tbaa !41
  %79 = load i32, ptr %5, align 4, !tbaa !42
  %80 = add i32 %79, 1
  store i32 %80, ptr %5, align 4, !tbaa !42
  br label %81

81:                                               ; preds = %74, %70
  %82 = load i32, ptr %17, align 8, !tbaa !40
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %81
  %85 = load i32, ptr %5, align 4, !tbaa !42
  %86 = icmp ult i32 %85, %6
  br i1 %86, label %87, label %121

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %89 = load i32, ptr %88, align 4, !tbaa !28
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %120

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %93 = load ptr, ptr %92, align 8, !tbaa !29
  br label %94

94:                                               ; preds = %91, %114
  %95 = phi i64 [ 0, %91 ], [ %115, %114 ]
  %96 = phi ptr [ %93, %91 ], [ %116, %114 ]
  %97 = getelementptr inbounds ptr, ptr %4, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !36
  %99 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i64 0, i32 7
  %100 = load i32, ptr %99, align 4, !tbaa !31
  %101 = shl i32 %100, 3
  %102 = load i32, ptr %5, align 4, !tbaa !42
  %103 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !50
  %105 = mul i32 %104, %102
  %106 = mul i32 %104, %6
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %94
  %109 = add nsw i32 %105, -1
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi i32 [ %105, %108 ], [ %112, %110 ]
  tail call void @jcopy_sample_rows(ptr noundef %98, i32 noundef %109, ptr noundef %98, i32 noundef %111, i32 noundef 1, i32 noundef %101) #3
  %112 = add i32 %111, 1
  %113 = icmp eq i32 %112, %106
  br i1 %113, label %114, label %110, !llvm.loop !47

114:                                              ; preds = %110, %94
  %115 = add nuw nsw i64 %95, 1
  %116 = getelementptr inbounds %struct.jpeg_component_info, ptr %96, i64 1
  %117 = load i32, ptr %88, align 4, !tbaa !28
  %118 = sext i32 %117 to i64
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %94, label %120, !llvm.loop !51

120:                                              ; preds = %114, %87
  store i32 %6, ptr %5, align 4, !tbaa !42
  br label %124

121:                                              ; preds = %84, %81
  %122 = load i32, ptr %2, align 4, !tbaa !42
  %123 = icmp ult i32 %122, %3
  br i1 %123, label %21, label %124, !llvm.loop !52

124:                                              ; preds = %21, %121, %7, %120
  ret void
}

declare void @jcopy_sample_rows(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !10, i64 40}
!14 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!15 = !{!"long", !8, i64 0}
!16 = !{!14, !7, i64 0}
!17 = !{!6, !7, i64 8}
!18 = !{!19, !7, i64 0}
!19 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!20 = !{!6, !7, i64 440}
!21 = !{!22, !7, i64 0}
!22 = !{!"", !23, i64 0, !8, i64 16, !10, i64 96, !10, i64 100}
!23 = !{!"jpeg_c_prep_controller", !7, i64 0, !7, i64 8}
!24 = !{!6, !7, i64 472}
!25 = !{!26, !10, i64 16}
!26 = !{!"jpeg_downsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!27 = !{!22, !7, i64 8}
!28 = !{!6, !10, i64 68}
!29 = !{!6, !7, i64 80}
!30 = !{!19, !7, i64 16}
!31 = !{!32, !10, i64 28}
!32 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!33 = !{!6, !10, i64 304}
!34 = !{!32, !10, i64 8}
!35 = !{!6, !10, i64 308}
!36 = !{!7, !7, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = !{!6, !10, i64 44}
!40 = !{!22, !10, i64 96}
!41 = !{!22, !10, i64 100}
!42 = !{!10, !10, i64 0}
!43 = !{!6, !7, i64 464}
!44 = !{!45, !7, i64 8}
!45 = !{!"jpeg_color_converter", !7, i64 0, !7, i64 8}
!46 = !{!6, !10, i64 40}
!47 = distinct !{!47, !38}
!48 = distinct !{!48, !38}
!49 = !{!26, !7, i64 8}
!50 = !{!32, !10, i64 12}
!51 = distinct !{!51, !38}
!52 = distinct !{!52, !38}
