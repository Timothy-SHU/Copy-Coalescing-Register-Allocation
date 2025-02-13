; ModuleID = 'liblzma/common/stream_buffer_encoder.c'
source_filename = "liblzma/common/stream_buffer_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_stream_buffer_bound(i64 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = tail call i64 @lzma_block_buffer_bound(i64 noundef %0) #4
  %3 = icmp eq i64 %2, 0
  %4 = icmp sgt i64 %2, 9223372036854775759
  %5 = or i1 %3, %4
  %6 = add i64 %2, 48
  %7 = select i1 %5, i64 0, i64 %6
  ret i64 %7
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i64 @lzma_block_buffer_bound(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_stream_buffer_encode(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 !prof !34 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.lzma_stream_flags, align 8
  %11 = alloca %struct.lzma_block, align 8
  %12 = icmp eq ptr %0, null
  %13 = icmp ugt i32 %1, 15
  %14 = or i1 %12, %13
  br i1 %14, label %80, label %15

15:                                               ; preds = %8
  %16 = icmp eq ptr %3, null
  %17 = icmp ne i64 %4, 0
  %18 = and i1 %16, %17
  %19 = icmp eq ptr %5, null
  %20 = or i1 %18, %19
  %21 = icmp eq ptr %6, null
  %22 = or i1 %20, %21
  br i1 %22, label %80, label %23

23:                                               ; preds = %15
  %24 = load i64, ptr %6, align 8, !tbaa !35
  %25 = icmp ugt i64 %24, %7
  br i1 %25, label %80, label %26

26:                                               ; preds = %23
  %27 = tail call zeroext i8 @lzma_check_is_supported(i32 noundef %1) #4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #5
  %30 = load i64, ptr %6, align 8, !tbaa !35
  %31 = sub i64 %7, %30
  %32 = icmp ult i64 %31, 25
  br i1 %32, label %78, label %33

33:                                               ; preds = %29
  %34 = add i64 %7, -12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  %35 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 2
  store i32 %1, ptr %35, align 8, !tbaa !39
  %36 = getelementptr inbounds i8, ptr %5, i64 %30
  %37 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %10, ptr noundef %36) #4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %33
  %40 = add i64 %30, 12
  store i64 %40, ptr %9, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %11) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %11, i8 0, i64 208, i1 false)
  %41 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 2
  store i32 %1, ptr %41, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 5
  store ptr %0, ptr %42, align 8, !tbaa !45
  %43 = icmp eq i64 %4, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = call i32 @lzma_block_buffer_encode(ptr noundef nonnull %11, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef %34) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %74

47:                                               ; preds = %39
  %48 = call ptr @lzma_index_init(ptr noundef %2) #4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %74, label %60

50:                                               ; preds = %44
  %51 = call ptr @lzma_index_init(ptr noundef %2) #4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %74, label %53

53:                                               ; preds = %50
  %54 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %11) #4
  %55 = getelementptr inbounds %struct.lzma_block, ptr %11, i64 0, i32 4
  %56 = load i64, ptr %55, align 8, !tbaa !46
  %57 = call i32 @lzma_index_append(ptr noundef nonnull %51, ptr noundef %2, i64 noundef %54, i64 noundef %56) #4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  call void @lzma_index_end(ptr noundef nonnull %51, ptr noundef %2) #4
  br label %74

60:                                               ; preds = %47, %53
  %61 = phi ptr [ %51, %53 ], [ %48, %47 ]
  %62 = call i32 @lzma_index_buffer_encode(ptr noundef nonnull %61, ptr noundef nonnull %5, ptr noundef nonnull %9, i64 noundef %34) #4
  %63 = call i64 @lzma_index_size(ptr noundef nonnull %61) #4
  %64 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 1
  store i64 %63, ptr %64, align 8, !tbaa !47
  call void @lzma_index_end(ptr noundef nonnull %61, ptr noundef %2) #4
  %65 = icmp eq i32 %62, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i64, ptr %9, align 8, !tbaa !35
  %68 = getelementptr inbounds i8, ptr %5, i64 %67
  %69 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %10, ptr noundef %68) #4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i64, ptr %9, align 8, !tbaa !35
  %73 = add i64 %72, 12
  store i64 %73, ptr %6, align 8, !tbaa !35
  br label %74

74:                                               ; preds = %50, %47, %59, %66, %44, %60, %71
  %75 = phi i32 [ 0, %71 ], [ %62, %60 ], [ %45, %44 ], [ 11, %66 ], [ %57, %59 ], [ 5, %47 ], [ 5, %50 ]
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %11) #5
  br label %76

76:                                               ; preds = %33, %74
  %77 = phi i32 [ %75, %74 ], [ 11, %33 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #5
  br label %78

78:                                               ; preds = %29, %76
  %79 = phi i32 [ %77, %76 ], [ 10, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #5
  br label %80

80:                                               ; preds = %26, %8, %23, %15, %78
  %81 = phi i32 [ %79, %78 ], [ 11, %15 ], [ 11, %23 ], [ 11, %8 ], [ 3, %26 ]
  ret i32 %81
}

; Function Attrs: optsize
declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_block_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_index_buffer_encode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"long", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !41, i64 16}
!40 = !{!"", !41, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !37, i64 36, !37, i64 37, !37, i64 38, !37, i64 39, !37, i64 40, !37, i64 41, !37, i64 42, !37, i64 43, !41, i64 44, !41, i64 48}
!41 = !{!"int", !37, i64 0}
!42 = !{!43, !41, i64 8}
!43 = !{!"", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !44, i64 32, !37, i64 40, !44, i64 104, !44, i64 112, !44, i64 120, !41, i64 128, !41, i64 132, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !41, i64 184, !41, i64 188, !41, i64 192, !41, i64 196, !37, i64 200, !37, i64 201, !37, i64 202, !37, i64 203, !37, i64 204, !37, i64 205, !37, i64 206, !37, i64 207}
!44 = !{!"any pointer", !37, i64 0}
!45 = !{!43, !44, i64 32}
!46 = !{!43, !36, i64 24}
!47 = !{!40, !36, i64 8}
