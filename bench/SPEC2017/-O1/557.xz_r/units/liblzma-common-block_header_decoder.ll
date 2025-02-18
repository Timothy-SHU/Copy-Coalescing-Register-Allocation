; ModuleID = 'liblzma/common/block_header_decoder.c'
source_filename = "liblzma/common/block_header_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_block_header_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !38 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %15

7:                                                ; preds = %15
  store i32 0, ptr %0, align 8, !tbaa !46
  %8 = load i8, ptr %2, align 1, !tbaa !47
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 2
  %11 = add nuw nsw i32 %10, 4
  %12 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !48
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %21, label %131, !prof !49

15:                                               ; preds = %3, %15
  %16 = phi i64 [ 0, %3 ], [ %19, %15 ]
  %17 = getelementptr inbounds %struct.lzma_filter, ptr %6, i64 %16
  store i64 -1, ptr %17, align 8, !tbaa !50
  %18 = getelementptr inbounds %struct.lzma_filter, ptr %6, i64 %16, i32 1
  store ptr null, ptr %18, align 8, !tbaa !52
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 5
  br i1 %20, label %7, label %15, !prof !53, !llvm.loop !54

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !57
  %24 = icmp ugt i32 %23, 15
  br i1 %24, label %131, label %25, !prof !58

25:                                               ; preds = %21
  %26 = add nsw i32 %13, -4
  %27 = zext nneg i32 %26 to i64
  %28 = tail call i32 @lzma_crc32(ptr noundef nonnull %2, i64 noundef %27, i32 noundef 0) #3
  %29 = getelementptr inbounds i8, ptr %2, i64 %27
  %30 = load i8, ptr %29, align 1, !tbaa !47
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds i8, ptr %29, i64 1
  %33 = load i8, ptr %32, align 1, !tbaa !47
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = or disjoint i32 %35, %31
  %37 = getelementptr inbounds i8, ptr %29, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !47
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 16
  %41 = or disjoint i32 %36, %40
  %42 = getelementptr inbounds i8, ptr %29, i64 3
  %43 = load i8, ptr %42, align 1, !tbaa !47
  %44 = zext i8 %43 to i32
  %45 = shl nuw i32 %44, 24
  %46 = or disjoint i32 %41, %45
  %47 = icmp eq i32 %28, %46
  br i1 %47, label %48, label %131, !prof !49

48:                                               ; preds = %25
  %49 = getelementptr inbounds i8, ptr %2, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !47
  %51 = and i8 %50, 60
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %131, !prof !49

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  store i64 2, ptr %4, align 8, !tbaa !59
  %54 = and i8 %50, 64
  %55 = icmp eq i8 %54, 0
  %56 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  br i1 %55, label %63, label %57, !prof !49

57:                                               ; preds = %53
  %58 = call i32 @lzma_vli_decode(ptr noundef nonnull %56, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef %27) #3
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %129

60:                                               ; preds = %57
  %61 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %0) #3
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %129, label %64

63:                                               ; preds = %53
  store i64 -1, ptr %56, align 8, !tbaa !60
  br label %64

64:                                               ; preds = %60, %63
  %65 = phi i32 [ %58, %60 ], [ undef, %63 ]
  %66 = load i8, ptr %49, align 1, !tbaa !47
  %67 = icmp sgt i8 %66, -1
  %68 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 4
  br i1 %67, label %73, label %69, !prof !49

69:                                               ; preds = %64
  %70 = call i32 @lzma_vli_decode(ptr noundef nonnull %68, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef %27) #3
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 %65, i32 %70
  br i1 %71, label %74, label %129

73:                                               ; preds = %64
  store i64 -1, ptr %68, align 8, !tbaa !61
  br label %74

74:                                               ; preds = %69, %73
  %75 = phi i32 [ %72, %69 ], [ %65, %73 ]
  %76 = load i8, ptr %49, align 1, !tbaa !47
  %77 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  br label %85

78:                                               ; preds = %103
  %79 = and i8 %76, 3
  %80 = add nuw nsw i8 %79, 1
  %81 = zext nneg i8 %80 to i64
  %82 = add nuw nsw i64 %88, 1
  %83 = icmp ult i64 %82, %81
  %84 = icmp eq i64 %82, %81
  br i1 %84, label %105, label %85, !prof !49, !llvm.loop !62

85:                                               ; preds = %74, %78
  %86 = phi i1 [ true, %74 ], [ %83, %78 ]
  %87 = phi i32 [ %75, %74 ], [ %104, %78 ]
  %88 = phi i64 [ 0, %74 ], [ %82, %78 ]
  %89 = load ptr, ptr %77, align 8, !tbaa !39
  %90 = getelementptr inbounds %struct.lzma_filter, ptr %89, i64 %88
  %91 = call i32 @lzma_filter_flags_decode(ptr noundef %90, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %4, i64 noundef %27) #3
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %103, label %93, !prof !49

93:                                               ; preds = %85, %93
  %94 = phi i64 [ %101, %93 ], [ 0, %85 ]
  %95 = load ptr, ptr %77, align 8, !tbaa !39
  %96 = getelementptr inbounds %struct.lzma_filter, ptr %95, i64 %94, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !52
  call void @lzma_free(ptr noundef %97, ptr noundef %1) #3
  %98 = load ptr, ptr %77, align 8, !tbaa !39
  %99 = getelementptr inbounds %struct.lzma_filter, ptr %98, i64 %94
  store i64 -1, ptr %99, align 8, !tbaa !50
  %100 = getelementptr inbounds %struct.lzma_filter, ptr %98, i64 %94, i32 1
  store ptr null, ptr %100, align 8, !tbaa !52
  %101 = add nuw nsw i64 %94, 1
  %102 = icmp eq i64 %101, 4
  br i1 %102, label %103, label %93, !llvm.loop !63

103:                                              ; preds = %93, %85
  %104 = phi i32 [ %87, %85 ], [ %91, %93 ]
  br i1 %92, label %78, label %105, !prof !49

105:                                              ; preds = %78, %103
  %106 = phi i1 [ %83, %78 ], [ %86, %103 ]
  br i1 %106, label %129, label %107, !prof !58

107:                                              ; preds = %105
  %108 = load i64, ptr %4, align 8, !tbaa !59
  br label %109

109:                                              ; preds = %107, %112
  %110 = phi i64 [ %108, %107 ], [ %113, %112 ]
  %111 = icmp ult i64 %110, %27
  br i1 %111, label %112, label %129, !prof !64

112:                                              ; preds = %109
  %113 = add nuw nsw i64 %110, 1
  store i64 %113, ptr %4, align 8, !tbaa !59
  %114 = getelementptr inbounds i8, ptr %2, i64 %110
  %115 = load i8, ptr %114, align 1, !tbaa !47
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %109, label %117, !prof !65, !llvm.loop !66

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 5
  br label %119

119:                                              ; preds = %117, %119
  %120 = phi i64 [ 0, %117 ], [ %127, %119 ]
  %121 = load ptr, ptr %118, align 8, !tbaa !39
  %122 = getelementptr inbounds %struct.lzma_filter, ptr %121, i64 %120, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !52
  call void @lzma_free(ptr noundef %123, ptr noundef %1) #3
  %124 = load ptr, ptr %118, align 8, !tbaa !39
  %125 = getelementptr inbounds %struct.lzma_filter, ptr %124, i64 %120
  store i64 -1, ptr %125, align 8, !tbaa !50
  %126 = getelementptr inbounds %struct.lzma_filter, ptr %124, i64 %120, i32 1
  store ptr null, ptr %126, align 8, !tbaa !52
  %127 = add nuw nsw i64 %120, 1
  %128 = icmp eq i64 %127, 4
  br i1 %128, label %129, label %119, !llvm.loop !63

129:                                              ; preds = %109, %119, %105, %60, %57, %69
  %130 = phi i32 [ %72, %69 ], [ %58, %57 ], [ 9, %60 ], [ %104, %105 ], [ 8, %119 ], [ 0, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  br label %131

131:                                              ; preds = %129, %25, %48, %7, %21
  %132 = phi i32 [ 11, %21 ], [ 11, %7 ], [ %130, %129 ], [ 9, %25 ], [ 8, %48 ]
  ret i32 %132
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_filter_flags_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @lzma_block_header_decode, ptr @lzma_crc32, i64 2}
!36 = !{ptr @lzma_block_header_decode, ptr @lzma_filter_flags_decode, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !45, i64 32}
!40 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !44, i64 16, !44, i64 24, !45, i64 32, !42, i64 40, !45, i64 104, !45, i64 112, !45, i64 120, !41, i64 128, !41, i64 132, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !42, i64 200, !42, i64 201, !42, i64 202, !42, i64 203, !42, i64 204, !42, i64 205, !42, i64 206, !42, i64 207}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"long", !42, i64 0}
!45 = !{!"any pointer", !42, i64 0}
!46 = !{!40, !41, i64 0}
!47 = !{!42, !42, i64 0}
!48 = !{!40, !41, i64 4}
!49 = !{!"branch_weights", i32 2, i32 0}
!50 = !{!51, !44, i64 0}
!51 = !{!"", !44, i64 0, !45, i64 8}
!52 = !{!51, !45, i64 8}
!53 = !{!"branch_weights", i32 2, i32 8}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!40, !41, i64 8}
!58 = !{!"branch_weights", i32 0, i32 2}
!59 = !{!44, !44, i64 0}
!60 = !{!40, !44, i64 16}
!61 = !{!40, !44, i64 24}
!62 = distinct !{!62, !55, !56}
!63 = distinct !{!63, !55, !56}
!64 = !{!"branch_weights", i32 6, i32 2}
!65 = !{!"branch_weights", i32 6, i32 0}
!66 = distinct !{!66, !55, !56}
