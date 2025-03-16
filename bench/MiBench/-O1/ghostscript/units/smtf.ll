; ModuleID = 'smtf.c'
source_filename = "smtf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_MTF_state_s = type { ptr, ptr, ptr, %union._p }
%union._p = type { [32 x i64] }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@st_MTF_state = internal constant %struct.gs_memory_struct_type_s { i32 280, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_MTFE_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_MTF_state, ptr @s_MTF_init, ptr @s_MTFE_process, i32 1, i32 1, ptr null, ptr null, ptr null }, align 8
@s_MTFD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_MTF_state, ptr @s_MTF_init, ptr @s_MTFD_process, i32 1, i32 1, ptr null, ptr null, ptr @s_MTF_init }, align 8
@.str = private unnamed_addr constant [31 x i8] c"MoveToFrontEncode/Decode state\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal noundef i32 @s_MTF_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.stream_MTF_state_s, ptr %0, i64 0, i32 3
  br label %3

3:                                                ; preds = %1, %3
  %4 = phi i64 [ 0, %1 ], [ %7, %3 ]
  %5 = trunc i64 %4 to i8
  %6 = getelementptr inbounds [256 x i8], ptr %2, i64 0, i64 %4
  store i8 %5, ptr %6, align 1, !tbaa !5
  %7 = add nuw nsw i64 %4, 1
  %8 = icmp eq i64 %7, 256
  br i1 %8, label %9, label %3, !llvm.loop !8

9:                                                ; preds = %3
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_MTFE_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #1 {
  %5 = load ptr, ptr %1, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %7 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp uge i32 %13, %19
  %21 = and i64 %18, 4294967295
  %22 = getelementptr inbounds i8, ptr %5, i64 %21
  %23 = select i1 %20, ptr %22, ptr %9
  %24 = icmp ult ptr %5, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.stream_MTF_state_s, ptr %0, i64 0, i32 3
  br label %27

27:                                               ; preds = %25, %45
  %28 = phi ptr [ %5, %25 ], [ %30, %45 ]
  %29 = phi ptr [ %7, %25 ], [ %49, %45 ]
  %30 = getelementptr inbounds i8, ptr %28, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = load i8, ptr %26, align 1, !tbaa !5
  %33 = icmp eq i8 %32, %31
  br i1 %33, label %45, label %34

34:                                               ; preds = %27, %34
  %35 = phi i64 [ %39, %34 ], [ 0, %27 ]
  %36 = phi i8 [ %41, %34 ], [ %32, %27 ]
  %37 = phi ptr [ %40, %34 ], [ %26, %27 ]
  %38 = phi i8 [ %36, %34 ], [ %31, %27 ]
  store i8 %38, ptr %37, align 1, !tbaa !5
  %39 = add nuw nsw i64 %35, 1
  %40 = getelementptr inbounds [256 x i8], ptr %26, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !5
  %42 = icmp eq i8 %41, %31
  br i1 %42, label %43, label %34, !llvm.loop !17

43:                                               ; preds = %34
  %44 = trunc i64 %39 to i8
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi i8 [ 0, %27 ], [ %44, %43 ]
  %47 = phi i8 [ %31, %27 ], [ %36, %43 ]
  %48 = phi ptr [ %26, %27 ], [ %40, %43 ]
  store i8 %47, ptr %48, align 1, !tbaa !5
  %49 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %46, ptr %49, align 1, !tbaa !5
  %50 = icmp eq ptr %30, %23
  br i1 %50, label %51, label %27, !llvm.loop !18

51:                                               ; preds = %45, %4
  %52 = phi ptr [ %7, %4 ], [ %49, %45 ]
  %53 = phi ptr [ %5, %4 ], [ %30, %45 ]
  %54 = zext i1 %20 to i32
  store ptr %53, ptr %1, align 8, !tbaa !10
  store ptr %52, ptr %6, align 8, !tbaa !13
  ret i32 %54
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_MTFD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #1 {
  %5 = load ptr, ptr %1, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %5 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %7 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp ugt i32 %13, %19
  %21 = and i64 %18, 4294967295
  %22 = getelementptr inbounds i8, ptr %5, i64 %21
  %23 = select i1 %20, ptr %22, ptr %9
  %24 = getelementptr inbounds %struct.stream_MTF_state_s, ptr %0, i64 0, i32 3
  %25 = load i8, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds i8, ptr %0, i64 25
  %27 = load i8, ptr %26, align 1, !tbaa !5
  %28 = getelementptr inbounds i8, ptr %0, i64 26
  %29 = load i8, ptr %28, align 2, !tbaa !5
  %30 = getelementptr inbounds i8, ptr %0, i64 27
  %31 = load i8, ptr %30, align 1, !tbaa !5
  %32 = icmp ult ptr %5, %23
  br i1 %32, label %33, label %128

33:                                               ; preds = %4
  %34 = getelementptr inbounds i8, ptr %0, i64 28
  %35 = getelementptr inbounds i8, ptr %0, i64 29
  %36 = getelementptr inbounds i8, ptr %0, i64 30
  %37 = getelementptr inbounds i8, ptr %0, i64 31
  %38 = getelementptr inbounds i8, ptr %0, i64 30
  %39 = getelementptr inbounds i8, ptr %0, i64 31
  %40 = getelementptr inbounds i8, ptr %0, i64 29
  %41 = getelementptr inbounds i8, ptr %0, i64 30
  %42 = getelementptr inbounds i8, ptr %0, i64 28
  %43 = getelementptr inbounds i8, ptr %0, i64 29
  %44 = getelementptr inbounds i8, ptr %0, i64 28
  br label %45

45:                                               ; preds = %33, %121
  %46 = phi i8 [ %31, %33 ], [ %126, %121 ]
  %47 = phi i8 [ %29, %33 ], [ %125, %121 ]
  %48 = phi i8 [ %27, %33 ], [ %124, %121 ]
  %49 = phi i8 [ %25, %33 ], [ %123, %121 ]
  %50 = phi ptr [ %5, %33 ], [ %52, %121 ]
  %51 = phi ptr [ %7, %33 ], [ %122, %121 ]
  %52 = getelementptr inbounds i8, ptr %50, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !5
  switch i8 %53, label %56 [
    i8 0, label %54
    i8 7, label %88
    i8 6, label %95
    i8 5, label %102
    i8 4, label %109
    i8 3, label %115
    i8 2, label %117
    i8 1, label %119
  ]

54:                                               ; preds = %45
  %55 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %49, ptr %55, align 1, !tbaa !5
  br label %121, !llvm.loop !19

56:                                               ; preds = %45
  %57 = zext i8 %53 to i32
  %58 = zext i8 %53 to i64
  %59 = getelementptr inbounds [256 x i8], ptr %24, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !5
  %61 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %60, ptr %61, align 1, !tbaa !5
  %62 = and i8 %53, 7
  %63 = zext nneg i8 %62 to i32
  br label %64

64:                                               ; preds = %64, %56
  %65 = phi i32 [ %57, %56 ], [ %71, %64 ]
  %66 = phi ptr [ %59, %56 ], [ %67, %64 ]
  %67 = getelementptr inbounds i8, ptr %66, i64 -1
  %68 = load i8, ptr %67, align 1, !tbaa !5
  store i8 %68, ptr %66, align 1, !tbaa !5
  %69 = and i32 %65, 7
  %70 = icmp eq i32 %69, 0
  %71 = add nsw i32 %65, -1
  br i1 %70, label %72, label %64, !llvm.loop !20

72:                                               ; preds = %64
  %73 = sub nsw i32 %57, %63
  %74 = add nsw i32 %73, -8
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %91, label %76

76:                                               ; preds = %72, %76
  %77 = phi i32 [ %86, %76 ], [ %74, %72 ]
  %78 = phi ptr [ %79, %76 ], [ %66, %72 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 -8
  %80 = load i64, ptr %79, align 8, !tbaa !21
  %81 = shl i64 %80, 8
  %82 = getelementptr inbounds i8, ptr %78, i64 -9
  %83 = load i8, ptr %82, align 1, !tbaa !5
  %84 = zext i8 %83 to i64
  %85 = or disjoint i64 %81, %84
  store i64 %85, ptr %79, align 8, !tbaa !21
  %86 = add i32 %77, -8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %76, !llvm.loop !23

88:                                               ; preds = %45
  %89 = load i8, ptr %37, align 1, !tbaa !5
  %90 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %89, ptr %90, align 1, !tbaa !5
  br label %91

91:                                               ; preds = %76, %72, %88
  %92 = phi ptr [ %90, %88 ], [ %61, %72 ], [ %61, %76 ]
  %93 = phi i8 [ %89, %88 ], [ %60, %72 ], [ %60, %76 ]
  %94 = load i8, ptr %38, align 2, !tbaa !5
  store i8 %94, ptr %39, align 1, !tbaa !5
  br label %98

95:                                               ; preds = %45
  %96 = load i8, ptr %36, align 2, !tbaa !5
  %97 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %96, ptr %97, align 1, !tbaa !5
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi ptr [ %92, %91 ], [ %97, %95 ]
  %100 = phi i8 [ %93, %91 ], [ %96, %95 ]
  %101 = load i8, ptr %40, align 1, !tbaa !5
  store i8 %101, ptr %41, align 2, !tbaa !5
  br label %105

102:                                              ; preds = %45
  %103 = load i8, ptr %35, align 1, !tbaa !5
  %104 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %103, ptr %104, align 1, !tbaa !5
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi ptr [ %99, %98 ], [ %104, %102 ]
  %107 = phi i8 [ %100, %98 ], [ %103, %102 ]
  %108 = load i8, ptr %42, align 4, !tbaa !5
  store i8 %108, ptr %43, align 1, !tbaa !5
  br label %112

109:                                              ; preds = %45
  %110 = load i8, ptr %34, align 4, !tbaa !5
  %111 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %110, ptr %111, align 1, !tbaa !5
  br label %112

112:                                              ; preds = %109, %105
  %113 = phi ptr [ %106, %105 ], [ %111, %109 ]
  %114 = phi i8 [ %107, %105 ], [ %110, %109 ]
  store i8 %46, ptr %44, align 4, !tbaa !5
  br label %121

115:                                              ; preds = %45
  %116 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %46, ptr %116, align 1, !tbaa !5
  br label %121

117:                                              ; preds = %45
  %118 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %47, ptr %118, align 1, !tbaa !5
  br label %121

119:                                              ; preds = %45
  %120 = getelementptr inbounds i8, ptr %51, i64 1
  store i8 %48, ptr %120, align 1, !tbaa !5
  br label %121

121:                                              ; preds = %117, %119, %115, %112, %54
  %122 = phi ptr [ %55, %54 ], [ %120, %119 ], [ %118, %117 ], [ %113, %112 ], [ %116, %115 ]
  %123 = phi i8 [ %49, %54 ], [ %48, %119 ], [ %47, %117 ], [ %114, %112 ], [ %46, %115 ]
  %124 = phi i8 [ %48, %54 ], [ %49, %119 ], [ %49, %117 ], [ %49, %112 ], [ %49, %115 ]
  %125 = phi i8 [ %47, %54 ], [ %47, %119 ], [ %48, %117 ], [ %48, %112 ], [ %48, %115 ]
  %126 = phi i8 [ %46, %54 ], [ %46, %119 ], [ %46, %117 ], [ %47, %112 ], [ %47, %115 ]
  %127 = icmp eq ptr %52, %23
  br i1 %127, label %128, label %45

128:                                              ; preds = %121, %4
  %129 = phi ptr [ %7, %4 ], [ %122, %121 ]
  %130 = phi ptr [ %5, %4 ], [ %52, %121 ]
  %131 = phi i8 [ %25, %4 ], [ %123, %121 ]
  %132 = phi i8 [ %27, %4 ], [ %124, %121 ]
  %133 = phi i8 [ %29, %4 ], [ %125, %121 ]
  %134 = phi i8 [ %31, %4 ], [ %126, %121 ]
  %135 = zext i1 %20 to i32
  store i8 %131, ptr %24, align 8, !tbaa !5
  store i8 %132, ptr %26, align 1, !tbaa !5
  store i8 %133, ptr %28, align 2, !tbaa !5
  store i8 %134, ptr %30, align 1, !tbaa !5
  store ptr %130, ptr %1, align 8, !tbaa !10
  store ptr %129, ptr %6, align 8, !tbaa !13
  ret i32 %135
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !12, i64 0}
!11 = !{!"stream_cursor_read_s", !12, i64 0, !12, i64 8, !12, i64 16}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !12, i64 8}
!14 = !{!"stream_cursor_write_s", !12, i64 0, !12, i64 8, !12, i64 16}
!15 = !{!11, !12, i64 8}
!16 = !{!14, !12, i64 16}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = !{!22, !22, i64 0}
!22 = !{!"long", !6, i64 0}
!23 = distinct !{!23, !9}
