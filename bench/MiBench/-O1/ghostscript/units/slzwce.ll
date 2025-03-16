; ModuleID = 'slzwce.c'
source_filename = "slzwce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_LZW_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union._lzt, i32, i32, i32, i32, i32, i32, i32, i32 }
%union._lzt = type { ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@st_LZW_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_LZWE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_LZW_state, ptr @s_LZWE_init, ptr @s_LZWE_process, i32 1, i32 2, ptr null, ptr @s_LZW_set_defaults, ptr @s_LZWE_reset }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @s_LZWE_reset(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !5
  %4 = add nsw i32 %3, 1
  %5 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 12
  store i32 %4, ptr %5, align 4, !tbaa !11
  %6 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 8
  store i32 8, ptr %6, align 4, !tbaa !12
  %7 = shl nuw i32 1, %3
  %8 = add nuw nsw i32 %7, 2
  %9 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 11
  store i32 %8, ptr %9, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_LZWE_init(ptr nocapture noundef writeonly %0) #1 {
  %2 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 3
  store i32 8, ptr %2, align 8, !tbaa !5
  %3 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 12
  store i32 9, ptr %4, align 4, !tbaa !11
  %5 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 8
  store i32 8, ptr %5, align 4, !tbaa !12
  %6 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 11
  store i32 258, ptr %6, align 8, !tbaa !13
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @s_LZWE_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #2 {
  %5 = load ptr, ptr %1, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 12
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = add nsw i32 %13, -1
  %15 = shl nuw i32 1, %14
  %16 = shl nsw i32 -1, %13
  %17 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 11
  %18 = load i32, ptr %17, align 8, !tbaa !13
  %19 = ptrtoint ptr %11 to i64
  %20 = icmp uge ptr %5, %7
  br i1 %20, label %97, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 8
  %24 = add nuw nsw i32 %15, 2
  %25 = ptrtoint ptr %11 to i64
  %26 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 8
  br label %28

28:                                               ; preds = %21, %92
  %29 = phi i1 [ %20, %21 ], [ %95, %92 ]
  %30 = phi i32 [ %18, %21 ], [ %94, %92 ]
  %31 = phi ptr [ %5, %21 ], [ %69, %92 ]
  %32 = phi ptr [ %9, %21 ], [ %93, %92 ]
  %33 = xor i32 %30, %16
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %62

35:                                               ; preds = %28
  %36 = ptrtoint ptr %32 to i64
  %37 = sub i64 %19, %36
  %38 = icmp slt i64 %37, 2
  br i1 %38, label %97, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %12, align 4, !tbaa !11
  %41 = load i32, ptr %22, align 8, !tbaa !21
  %42 = load i32, ptr %23, align 4, !tbaa !12
  %43 = shl i32 %41, %42
  %44 = sub i32 %40, %42
  %45 = lshr i32 %15, %44
  %46 = add i32 %45, %43
  %47 = trunc i32 %46 to i8
  %48 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %47, ptr %48, align 1, !tbaa !14
  %49 = load i32, ptr %23, align 4, !tbaa !12
  %50 = sub i32 %49, %40
  %51 = add i32 %50, 8
  store i32 %51, ptr %23, align 4, !tbaa !12
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %60

53:                                               ; preds = %39
  %54 = sub i32 -8, %50
  %55 = lshr i32 %15, %54
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds i8, ptr %32, i64 2
  store i8 %56, ptr %57, align 1, !tbaa !14
  %58 = load i32, ptr %23, align 4, !tbaa !12
  %59 = add nsw i32 %58, 8
  store i32 %59, ptr %23, align 4, !tbaa !12
  br label %60

60:                                               ; preds = %39, %53
  %61 = phi ptr [ %57, %53 ], [ %48, %39 ]
  store i32 %15, ptr %22, align 8, !tbaa !21
  br label %62

62:                                               ; preds = %60, %28
  %63 = phi ptr [ %61, %60 ], [ %32, %28 ]
  %64 = phi i32 [ %24, %60 ], [ %30, %28 ]
  %65 = ptrtoint ptr %63 to i64
  %66 = sub i64 %25, %65
  %67 = icmp slt i64 %66, 2
  br i1 %67, label %97, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds i8, ptr %31, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !14
  %71 = zext i8 %70 to i32
  %72 = load i32, ptr %12, align 4, !tbaa !11
  %73 = load i32, ptr %26, align 8, !tbaa !21
  %74 = load i32, ptr %27, align 4, !tbaa !12
  %75 = shl i32 %73, %74
  %76 = sub i32 %72, %74
  %77 = lshr i32 %71, %76
  %78 = add i32 %77, %75
  %79 = trunc i32 %78 to i8
  %80 = getelementptr inbounds i8, ptr %63, i64 1
  store i8 %79, ptr %80, align 1, !tbaa !14
  %81 = load i32, ptr %27, align 4, !tbaa !12
  %82 = sub i32 %81, %72
  %83 = add i32 %82, 8
  store i32 %83, ptr %27, align 4, !tbaa !12
  %84 = icmp slt i32 %83, 1
  br i1 %84, label %85, label %92

85:                                               ; preds = %68
  %86 = sub i32 -8, %82
  %87 = lshr i32 %71, %86
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds i8, ptr %63, i64 2
  store i8 %88, ptr %89, align 1, !tbaa !14
  %90 = load i32, ptr %27, align 4, !tbaa !12
  %91 = add nsw i32 %90, 8
  store i32 %91, ptr %27, align 4, !tbaa !12
  br label %92

92:                                               ; preds = %68, %85
  %93 = phi ptr [ %89, %85 ], [ %80, %68 ]
  store i32 %71, ptr %26, align 8, !tbaa !21
  %94 = add i32 %64, 1
  %95 = icmp uge ptr %69, %7
  %96 = icmp eq ptr %69, %7
  br i1 %96, label %97, label %28, !llvm.loop !22

97:                                               ; preds = %92, %35, %62, %4
  %98 = phi ptr [ %5, %4 ], [ %69, %92 ], [ %31, %35 ], [ %31, %62 ]
  %99 = phi i1 [ %20, %4 ], [ %95, %92 ], [ %29, %35 ], [ %29, %62 ]
  %100 = phi i32 [ 0, %4 ], [ 0, %92 ], [ 1, %35 ], [ 1, %62 ]
  %101 = phi ptr [ %9, %4 ], [ %93, %92 ], [ %32, %35 ], [ %63, %62 ]
  %102 = phi i32 [ %18, %4 ], [ %94, %92 ], [ %30, %35 ], [ %64, %62 ]
  %103 = icmp ne i32 %3, 0
  %104 = and i1 %103, %99
  br i1 %104, label %105, label %142

105:                                              ; preds = %97
  %106 = ptrtoint ptr %11 to i64
  %107 = ptrtoint ptr %101 to i64
  %108 = sub i64 %106, %107
  %109 = icmp slt i64 %108, 2
  br i1 %109, label %142, label %110

110:                                              ; preds = %105
  %111 = add nuw nsw i32 %15, 1
  %112 = load i32, ptr %12, align 4, !tbaa !11
  %113 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 7
  %114 = load i32, ptr %113, align 8, !tbaa !21
  %115 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 8
  %116 = load i32, ptr %115, align 4, !tbaa !12
  %117 = shl i32 %114, %116
  %118 = sub i32 %112, %116
  %119 = lshr i32 %111, %118
  %120 = add i32 %119, %117
  %121 = trunc i32 %120 to i8
  %122 = getelementptr inbounds i8, ptr %101, i64 1
  store i8 %121, ptr %122, align 1, !tbaa !14
  %123 = load i32, ptr %115, align 4, !tbaa !12
  %124 = sub i32 %123, %112
  %125 = add i32 %124, 8
  store i32 %125, ptr %115, align 4, !tbaa !12
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %127, label %134

127:                                              ; preds = %110
  %128 = sub i32 -8, %124
  %129 = lshr i32 %111, %128
  %130 = trunc i32 %129 to i8
  %131 = getelementptr inbounds i8, ptr %101, i64 2
  store i8 %130, ptr %131, align 1, !tbaa !14
  %132 = load i32, ptr %115, align 4, !tbaa !12
  %133 = add nsw i32 %132, 8
  store i32 %133, ptr %115, align 4, !tbaa !12
  br label %134

134:                                              ; preds = %110, %127
  %135 = phi ptr [ %131, %127 ], [ %122, %110 ]
  store i32 %111, ptr %113, align 8, !tbaa !21
  %136 = load i32, ptr %115, align 4, !tbaa !12
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = shl i32 %111, %136
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds i8, ptr %135, i64 1
  store i8 %140, ptr %141, align 1, !tbaa !14
  br label %142

142:                                              ; preds = %105, %138, %134, %97
  %143 = phi i32 [ 0, %138 ], [ 0, %134 ], [ %100, %97 ], [ 1, %105 ]
  %144 = phi ptr [ %141, %138 ], [ %135, %134 ], [ %101, %97 ], [ %101, %105 ]
  store i32 %102, ptr %17, align 8, !tbaa !13
  store ptr %98, ptr %1, align 8, !tbaa !15
  store ptr %144, ptr %8, align 8, !tbaa !18
  ret i32 %143
}

declare void @s_LZW_set_defaults(ptr noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 24}
!6 = !{!"stream_LZW_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !8, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !10, i64 68}
!12 = !{!6, !10, i64 44}
!13 = !{!6, !10, i64 64}
!14 = !{!8, !8, i64 0}
!15 = !{!16, !7, i64 0}
!16 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!17 = !{!16, !7, i64 8}
!18 = !{!19, !7, i64 8}
!19 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!20 = !{!19, !7, i64 16}
!21 = !{!6, !10, i64 40}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
