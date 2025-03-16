; ModuleID = 'srld.c'
source_filename = "srld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_RLD_state_s = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@st_RLD_state = internal constant %struct.gs_memory_struct_type_s { i32 40, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@s_RLD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_RLD_state, ptr @s_RLD_init, ptr @s_RLD_process, i32 1, i32 1, ptr null, ptr @s_RLD_set_defaults, ptr null }, align 8
@.str = private unnamed_addr constant [22 x i8] c"RunLengthDecode state\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @s_RLD_init(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %2, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @s_RLD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #1 {
  %5 = load ptr, ptr %1, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !15
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !16
  %12 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %0, i64 0, i32 4
  %13 = ptrtoint ptr %11 to i64
  %14 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %0, i64 0, i32 5
  %15 = ptrtoint ptr %9 to i64
  %16 = ptrtoint ptr %11 to i64
  %17 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %0, i64 0, i32 3
  %19 = ptrtoint ptr %9 to i64
  %20 = ptrtoint ptr %11 to i64
  %21 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %0, i64 0, i32 5
  br label %23

22:                                               ; preds = %114
  br label %23, !llvm.loop !17

23:                                               ; preds = %22, %4
  %24 = phi ptr [ %7, %4 ], [ %115, %22 ]
  %25 = phi ptr [ %5, %4 ], [ %116, %22 ]
  %26 = phi i32 [ 0, %4 ], [ %117, %22 ]
  %27 = load i32, ptr %12, align 4, !tbaa !5
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %23
  %30 = ptrtoint ptr %24 to i64
  %31 = sub i64 %13, %30
  %32 = trunc i64 %31 to i32
  %33 = tail call i32 @llvm.umin.i32(i32 %27, i32 %32)
  %34 = load i32, ptr %14, align 8, !tbaa !19
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = getelementptr inbounds i8, ptr %24, i64 1
  %38 = trunc i32 %34 to i8
  %39 = zext nneg i32 %33 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %37, i8 %38, i64 %39, i1 false)
  br label %51

40:                                               ; preds = %29
  %41 = ptrtoint ptr %25 to i64
  %42 = sub i64 %15, %41
  %43 = trunc i64 %42 to i32
  %44 = icmp ult i32 %33, %43
  %45 = tail call i32 @llvm.umin.i32(i32 %33, i32 %43)
  %46 = zext i1 %44 to i32
  %47 = getelementptr inbounds i8, ptr %24, i64 1
  %48 = getelementptr inbounds i8, ptr %25, i64 1
  %49 = zext nneg i32 %45 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr nonnull align 1 %48, i64 %49, i1 false)
  %50 = getelementptr inbounds i8, ptr %25, i64 %49
  br label %51

51:                                               ; preds = %40, %36
  %52 = phi ptr [ %25, %36 ], [ %50, %40 ]
  %53 = phi i32 [ %33, %36 ], [ %45, %40 ]
  %54 = phi i32 [ 1, %36 ], [ %46, %40 ]
  %55 = zext nneg i32 %53 to i64
  %56 = getelementptr inbounds i8, ptr %24, i64 %55
  %57 = load i32, ptr %12, align 4, !tbaa !5
  %58 = sub nsw i32 %57, %53
  store i32 %58, ptr %12, align 4, !tbaa !5
  %59 = icmp sgt i32 %58, 0
  %60 = select i1 %59, i32 %54, i32 %26
  br i1 %59, label %119, label %61

61:                                               ; preds = %51, %23
  %62 = phi ptr [ %24, %23 ], [ %56, %51 ]
  %63 = phi ptr [ %25, %23 ], [ %52, %51 ]
  %64 = phi i32 [ %26, %23 ], [ %60, %51 ]
  br label %65

65:                                               ; preds = %61, %114
  %66 = phi ptr [ %115, %114 ], [ %62, %61 ]
  %67 = phi ptr [ %116, %114 ], [ %63, %61 ]
  %68 = phi i32 [ %117, %114 ], [ %64, %61 ]
  %69 = icmp ult ptr %67, %9
  br i1 %69, label %70, label %119

70:                                               ; preds = %65
  %71 = getelementptr inbounds i8, ptr %67, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !20
  %73 = zext i8 %72 to i32
  %74 = icmp sgt i8 %72, -1
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = add nuw nsw i32 %73, 1
  %77 = zext nneg i32 %76 to i64
  %78 = ptrtoint ptr %71 to i64
  %79 = sub i64 %19, %78
  %80 = icmp slt i64 %79, %77
  %81 = ptrtoint ptr %66 to i64
  %82 = sub i64 %20, %81
  %83 = icmp slt i64 %82, %77
  %84 = select i1 %80, i1 true, i1 %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 %76, ptr %12, align 4, !tbaa !5
  store i32 -1, ptr %21, align 8, !tbaa !19
  br label %114

86:                                               ; preds = %75
  %87 = getelementptr inbounds i8, ptr %66, i64 1
  %88 = getelementptr inbounds i8, ptr %67, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %87, ptr noundef nonnull align 1 dereferenceable(1) %88, i64 %77, i1 false)
  %89 = getelementptr inbounds i8, ptr %71, i64 %77
  %90 = getelementptr inbounds i8, ptr %66, i64 %77
  br label %114

91:                                               ; preds = %70
  %92 = icmp eq i8 %72, -128
  br i1 %92, label %93, label %98

93:                                               ; preds = %91
  %94 = load i32, ptr %18, align 8, !tbaa !21
  %95 = icmp eq i32 %94, 0
  %96 = select i1 %95, i32 %68, i32 -1
  %97 = select i1 %95, i32 0, i32 5
  br label %114

98:                                               ; preds = %91
  %99 = icmp eq ptr %71, %9
  br i1 %99, label %114, label %100

100:                                              ; preds = %98
  %101 = sub nuw nsw i32 257, %73
  %102 = zext nneg i32 %101 to i64
  %103 = ptrtoint ptr %66 to i64
  %104 = sub i64 %16, %103
  %105 = icmp slt i64 %104, %102
  %106 = getelementptr inbounds i8, ptr %67, i64 2
  br i1 %105, label %107, label %110

107:                                              ; preds = %100
  store i32 %101, ptr %12, align 4, !tbaa !5
  %108 = load i8, ptr %106, align 1, !tbaa !20
  %109 = zext i8 %108 to i32
  store i32 %109, ptr %17, align 8, !tbaa !19
  br label %114

110:                                              ; preds = %100
  %111 = getelementptr inbounds i8, ptr %66, i64 1
  %112 = load i8, ptr %106, align 1, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %111, i8 %112, i64 %102, i1 false)
  %113 = getelementptr inbounds i8, ptr %66, i64 %102
  br label %114

114:                                              ; preds = %93, %86, %110, %98, %107, %85
  %115 = phi ptr [ %66, %85 ], [ %66, %107 ], [ %66, %98 ], [ %90, %86 ], [ %113, %110 ], [ %66, %93 ]
  %116 = phi ptr [ %71, %85 ], [ %106, %107 ], [ %67, %98 ], [ %89, %86 ], [ %106, %110 ], [ %71, %93 ]
  %117 = phi i32 [ %68, %85 ], [ %68, %107 ], [ %68, %98 ], [ %68, %86 ], [ %68, %110 ], [ %96, %93 ]
  %118 = phi i32 [ 2, %85 ], [ 2, %107 ], [ 5, %98 ], [ 0, %86 ], [ 0, %110 ], [ %97, %93 ]
  switch i32 %118, label %123 [
    i32 0, label %65
    i32 2, label %22
    i32 5, label %119
  ], !llvm.loop !17

119:                                              ; preds = %51, %65, %114
  %120 = phi ptr [ %115, %114 ], [ %66, %65 ], [ %56, %51 ]
  %121 = phi ptr [ %116, %114 ], [ %67, %65 ], [ %52, %51 ]
  %122 = phi i32 [ %117, %114 ], [ %68, %65 ], [ %60, %51 ]
  store ptr %121, ptr %1, align 8, !tbaa !11
  store ptr %120, ptr %6, align 8, !tbaa !13
  ret i32 %122

123:                                              ; preds = %114
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @s_RLD_set_defaults(ptr nocapture noundef writeonly %0) #0 {
  %2 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %0, i64 0, i32 3
  store i32 1, ptr %2, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 28}
!6 = !{!"stream_RLD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !10, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!12, !7, i64 0}
!12 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!13 = !{!14, !7, i64 8}
!14 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!15 = !{!12, !7, i64 8}
!16 = !{!14, !7, i64 16}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!6, !10, i64 32}
!20 = !{!8, !8, i64 0}
!21 = !{!6, !10, i64 24}
