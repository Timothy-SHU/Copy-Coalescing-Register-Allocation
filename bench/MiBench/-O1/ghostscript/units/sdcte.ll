; ModuleID = 'sdcte.c'
source_filename = "sdcte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_DCT_state_s = type { ptr, ptr, ptr, %struct.gs_const_string_s, float, i32, i32, %union._jd, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%union._jd = type { ptr }
%struct.jpeg_compress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32, %struct.jpeg_compress_struct, %struct.jpeg_destination_mgr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@st_DCT_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_DCTE_template = dso_local constant %struct.stream_template_s { ptr @st_DCT_state, ptr @s_DCTE_init, ptr @s_DCTE_process, i32 1000, i32 4000, ptr @s_DCTE_release, ptr null, ptr null }, align 8
@s_DCTE_process.Adobe = internal unnamed_addr constant [16 x i8] c"\FF\EE\00\0EAdobe\00d\00\00\00\00\00", align 16
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [15 x i8] c"s_DCTE_release\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @s_DCTE_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %3, i64 0, i32 6
  %5 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %3, i64 0, i32 6, i32 2
  store ptr @dcte_init_destination, ptr %5, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %3, i64 0, i32 6, i32 3
  store ptr @dcte_empty_output_buffer, ptr %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %3, i64 0, i32 6, i32 4
  store ptr @dcte_term_destination, ptr %7, align 8, !tbaa !13
  %8 = load ptr, ptr %2, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %8, i64 0, i32 5, i32 5
  store ptr %4, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %10, align 4, !tbaa !22
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_DCTE_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %7, i64 0, i32 5, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  store ptr %12, ptr %9, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !29
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %11 to i64
  %17 = sub i64 %15, %16
  %18 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %9, i64 0, i32 1
  store i64 %17, ptr %18, align 8, !tbaa !30
  %19 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 4, !tbaa !22
  switch i32 %20, label %121 [
    i32 0, label %21
    i32 1, label %27
    i32 2, label %45
    i32 3, label %70
    i32 4, label %108
    i32 5, label %122
  ]

21:                                               ; preds = %4
  %22 = tail call i32 @gs_jpeg_start_compress(ptr noundef %0, i32 noundef 1) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %122, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 8, !tbaa !28
  %26 = getelementptr inbounds i8, ptr %25, i64 -1
  store ptr %26, ptr %10, align 8, !tbaa !26
  store i32 1, ptr %19, align 4, !tbaa !22
  br label %27

27:                                               ; preds = %4, %24
  %28 = load ptr, ptr %13, align 8, !tbaa !29
  %29 = load ptr, ptr %10, align 8, !tbaa !26
  %30 = ptrtoint ptr %28 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 3, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !31
  %35 = zext i32 %34 to i64
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %122, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 3
  %39 = getelementptr inbounds i8, ptr %29, i64 1
  %40 = load ptr, ptr %38, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %39, ptr align 1 %40, i64 %35, i1 false)
  %41 = load i32, ptr %33, align 8, !tbaa !31
  %42 = load ptr, ptr %10, align 8, !tbaa !26
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  store ptr %44, ptr %10, align 8, !tbaa !26
  store i32 2, ptr %19, align 4, !tbaa !22
  br label %45

45:                                               ; preds = %4, %37
  %46 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !33
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load ptr, ptr %13, align 8, !tbaa !29
  %51 = load ptr, ptr %10, align 8, !tbaa !26
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = icmp ult i64 %54, 16
  br i1 %55, label %122, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds i8, ptr %51, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %57, ptr noundef nonnull align 16 dereferenceable(16) @s_DCTE_process.Adobe, i64 16, i1 false)
  %58 = load ptr, ptr %10, align 8, !tbaa !26
  %59 = getelementptr inbounds i8, ptr %58, i64 16
  store ptr %59, ptr %10, align 8, !tbaa !26
  %60 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 5
  %61 = load i32, ptr %60, align 4, !tbaa !34
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %59, align 1, !tbaa !5
  br label %63

63:                                               ; preds = %56, %45
  %64 = load ptr, ptr %10, align 8, !tbaa !26
  %65 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %65, ptr %9, align 8, !tbaa !28
  %66 = load ptr, ptr %13, align 8, !tbaa !29
  %67 = ptrtoint ptr %66 to i64
  %68 = ptrtoint ptr %64 to i64
  %69 = sub i64 %67, %68
  store i64 %69, ptr %18, align 8, !tbaa !30
  store i32 3, ptr %19, align 4, !tbaa !22
  br label %70

70:                                               ; preds = %4, %63
  %71 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %7, i64 0, i32 5, i32 7
  %72 = getelementptr inbounds %struct.jpeg_compress_data_s, ptr %7, i64 0, i32 5, i32 36
  %73 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %74 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 8
  %75 = icmp eq i32 %3, 0
  %76 = select i1 %75, i32 0, i32 -2
  br label %77

77:                                               ; preds = %104, %70
  %78 = phi i32 [ undef, %70 ], [ %106, %104 ]
  %79 = load i32, ptr %71, align 4, !tbaa !35
  %80 = load i32, ptr %72, align 8, !tbaa !36
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %82, label %107

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %83 = load ptr, ptr %1, align 8, !tbaa !37
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  store ptr %84, ptr %5, align 8, !tbaa !39
  %85 = load ptr, ptr %73, align 8, !tbaa !40
  %86 = ptrtoint ptr %85 to i64
  %87 = ptrtoint ptr %83 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = load i32, ptr %74, align 8, !tbaa !41
  %91 = icmp ugt i32 %90, %89
  br i1 %91, label %104, label %92

92:                                               ; preds = %82
  %93 = call i32 @gs_jpeg_write_scanlines(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #6
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %9, align 8, !tbaa !28
  %97 = getelementptr inbounds i8, ptr %96, i64 -1
  store ptr %97, ptr %10, align 8, !tbaa !26
  %98 = icmp eq i32 %93, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %74, align 8, !tbaa !41
  %101 = load ptr, ptr %1, align 8, !tbaa !37
  %102 = zext i32 %100 to i64
  %103 = getelementptr inbounds i8, ptr %101, i64 %102
  store ptr %103, ptr %1, align 8, !tbaa !37
  br label %104

104:                                              ; preds = %82, %95, %92, %99
  %105 = phi i1 [ true, %99 ], [ false, %92 ], [ false, %95 ], [ false, %82 ]
  %106 = phi i32 [ %78, %99 ], [ -2, %92 ], [ 1, %95 ], [ %76, %82 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br i1 %105, label %77, label %122, !llvm.loop !42

107:                                              ; preds = %77
  store i32 4, ptr %19, align 4, !tbaa !22
  br label %108

108:                                              ; preds = %4, %107
  %109 = load ptr, ptr %13, align 8, !tbaa !29
  %110 = load ptr, ptr %10, align 8, !tbaa !26
  %111 = ptrtoint ptr %109 to i64
  %112 = ptrtoint ptr %110 to i64
  %113 = sub i64 %111, %112
  %114 = icmp slt i64 %113, 100
  br i1 %114, label %122, label %115

115:                                              ; preds = %108
  %116 = call i32 @gs_jpeg_finish_compress(ptr noundef %0) #6
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %9, align 8, !tbaa !28
  %120 = getelementptr inbounds i8, ptr %119, i64 -1
  store ptr %120, ptr %10, align 8, !tbaa !26
  store i32 5, ptr %19, align 4, !tbaa !22
  br label %122

121:                                              ; preds = %4
  br label %122

122:                                              ; preds = %104, %118, %4, %115, %108, %49, %27, %21, %121
  %123 = phi i32 [ -2, %121 ], [ -2, %21 ], [ 1, %27 ], [ 1, %49 ], [ 1, %108 ], [ -2, %115 ], [ -1, %4 ], [ -1, %118 ], [ %106, %104 ]
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define internal void @s_DCTE_release(ptr noundef %0) #1 {
  %2 = tail call i32 @gs_jpeg_destroy(ptr noundef %0) #6
  %3 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !44
  %4 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  tail call void %3(ptr noundef nonnull @gs_memory_default, ptr noundef %5, ptr noundef nonnull @.str) #6
  store ptr @s_DCTE_template, ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @dcte_init_destination(ptr nocapture readnone %0) #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dcte_empty_output_buffer(ptr nocapture readnone %0) #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @dcte_term_destination(ptr nocapture readnone %0) #3 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_jpeg_start_compress(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @gs_jpeg_write_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @gs_jpeg_finish_compress(ptr noundef) local_unnamed_addr #4

declare i32 @gs_jpeg_destroy(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"jpeg_destination_mgr", !10, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 24}
!13 = !{!9, !10, i64 32}
!14 = !{!15, !10, i64 464}
!15 = !{!"jpeg_compress_data_s", !16, i64 0, !18, i64 56, !6, i64 224, !17, i64 424, !17, i64 428, !19, i64 432, !9, i64 928}
!16 = !{!"stream_template_s", !10, i64 0, !10, i64 8, !10, i64 16, !17, i64 24, !17, i64 28, !10, i64 32, !10, i64 40, !10, i64 48}
!17 = !{!"int", !6, i64 0}
!18 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !17, i64 40, !6, i64 44, !17, i64 124, !11, i64 128, !10, i64 136, !17, i64 144, !10, i64 152, !17, i64 160, !17, i64 164}
!19 = !{!"jpeg_compress_struct", !10, i64 0, !10, i64 8, !10, i64 16, !17, i64 24, !17, i64 28, !10, i64 32, !17, i64 40, !17, i64 44, !17, i64 48, !17, i64 52, !20, i64 56, !17, i64 64, !17, i64 68, !17, i64 72, !10, i64 80, !6, i64 88, !6, i64 120, !6, i64 152, !6, i64 184, !6, i64 200, !6, i64 216, !17, i64 232, !10, i64 240, !17, i64 248, !17, i64 252, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !17, i64 272, !17, i64 276, !17, i64 280, !6, i64 284, !21, i64 286, !21, i64 288, !17, i64 292, !17, i64 296, !17, i64 300, !17, i64 304, !17, i64 308, !17, i64 312, !17, i64 316, !6, i64 320, !17, i64 352, !17, i64 356, !17, i64 360, !6, i64 364, !17, i64 404, !17, i64 408, !17, i64 412, !17, i64 416, !10, i64 424, !10, i64 432, !10, i64 440, !10, i64 448, !10, i64 456, !10, i64 464, !10, i64 472, !10, i64 480, !10, i64 488}
!20 = !{!"double", !6, i64 0}
!21 = !{!"short", !6, i64 0}
!22 = !{!23, !17, i64 68}
!23 = !{!"stream_DCT_state_s", !10, i64 0, !10, i64 8, !10, i64 16, !24, i64 24, !25, i64 40, !17, i64 44, !17, i64 48, !6, i64 56, !17, i64 64, !17, i64 68}
!24 = !{!"gs_const_string_s", !10, i64 0, !17, i64 8}
!25 = !{!"float", !6, i64 0}
!26 = !{!27, !10, i64 8}
!27 = !{!"stream_cursor_write_s", !10, i64 0, !10, i64 8, !10, i64 16}
!28 = !{!9, !10, i64 0}
!29 = !{!27, !10, i64 16}
!30 = !{!9, !11, i64 8}
!31 = !{!23, !17, i64 32}
!32 = !{!23, !10, i64 24}
!33 = !{!23, !17, i64 48}
!34 = !{!23, !17, i64 44}
!35 = !{!15, !17, i64 476}
!36 = !{!15, !17, i64 728}
!37 = !{!38, !10, i64 0}
!38 = !{!"stream_cursor_read_s", !10, i64 0, !10, i64 8, !10, i64 16}
!39 = !{!10, !10, i64 0}
!40 = !{!38, !10, i64 8}
!41 = !{!23, !17, i64 64}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!45, !10, i64 88}
!45 = !{!"gs_memory_s", !46, i64 0}
!46 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!47 = !{!48, !10, i64 0}
!48 = !{!"stream_state_s", !10, i64 0, !10, i64 8, !10, i64 16}
